; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/realtek/8139too.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/8139too.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.anon.124 = type { ptr, i32, i32 }
%struct.anon.125 = type { i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.126 = type { [32 x i8] }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.rtl8139_private = type { ptr, i32, ptr, i32, %struct.napi_struct, ptr, ptr, i32, %struct.rtl8139_stats, i32, i32, i32, i32, %struct.rtl8139_stats, [4 x ptr], ptr, i32, [4 x i8], i8, i8, i8, i8, %struct.spinlock, %struct.spinlock, i32, i32, %struct.rtl_extra_stats, %struct.delayed_work, %struct.mii_if_info, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rtl8139_stats = type { i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rtl_extra_stats = type { i32, i32, i32, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author343 = internal constant [47 x i8] c"8139too.author=Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [58 x i8] c"8139too.description=RealTek RTL-8139 Fast Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [50 x i8] c"8139too.file=drivers/net/ethernet/realtek/8139too\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"8139too.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version347 = internal constant [23 x i8] c"8139too.version=0.9.28\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8139too\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.9.28\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_use_io = internal constant [15 x i8] c"8139too.use_io\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_io = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_io = internal constant %struct.kernel_param { ptr @__param_str_use_io, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_io } }, section "__param", align 4
@__UNIQUE_ID_use_iotype348 = internal constant [29 x i8] c"8139too.parmtype=use_io:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_io349 = internal constant [63 x i8] c"8139too.parm=use_io:Force use of I/O access mode. 0=MMIO 1=PIO\00", section ".modinfo", align 1
@__param_str_multicast_filter_limit = internal constant [31 x i8] c"8139too.multicast_filter_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype350 = internal constant [44 x i8] c"8139too.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__param_str_media = internal constant [14 x i8] c"8139too.media\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_media = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @media }, align 4
@__param_media = internal constant %struct.kernel_param { ptr @__param_str_media, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_media } }, section "__param", align 4
@__UNIQUE_ID_mediatype351 = internal constant [36 x i8] c"8139too.parmtype=media:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [20 x i8] c"8139too.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype352 = internal constant [42 x i8] c"8139too.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"8139too.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype353 = internal constant [27 x i8] c"8139too.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug354 = internal constant [59 x i8] c"8139too.parm=debug:8139too bitmapped message enable number\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit355 = internal constant [91 x i8] c"8139too.parm=multicast_filter_limit:8139too maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__UNIQUE_ID_media356 = internal constant [72 x i8] c"8139too.parm=media:8139too: Bits 4+9: force full duplex, bit 5: 100Mbps\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex357 = internal constant [69 x i8] c"8139too.parm=full_duplex:8139too: Force full duplex for board(s) (1)\00", section ".modinfo", align 1
@rtl8139_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rtl8139_pci_tbl, ptr @rtl8139_init_one, ptr @rtl8139_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_8139too__390_2677_rtl8139_init_module6 = internal global ptr @rtl8139_init_module, section ".initcall6.init", align 4
@__exitcall_rtl8139_cleanup_module = internal global ptr @rtl8139_cleanup_module, section ".exitcall.exit", align 4
@media = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@rtl8139_pci_tbl = internal constant { [25 x %struct.pci_device_id], [192 x i8] } { [25 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33081, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33080, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4371, i32 4625, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5376, i32 4960, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 16435, i32 4960, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 4864, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 4928, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5073, i32 43782, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4697, i32 41239, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4697, i32 41246, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5354, i32 43782, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5354, i32 43783, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4571, i32 4660, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5170, i32 37168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 684, i32 4114, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 394, i32 262, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4716, i32 4625, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5955, i32 33081, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 539, i32 33081, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5868, i32 43782, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4332, i32 33065, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 -1, i32 33081, i32 4332, i32 33081, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 33081, i32 4486, i32 4864, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 33081, i32 5073, i32 43782, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@rtl8139_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl8139_suspend, ptr @rtl8139_resume, ptr @rtl8139_suspend, ptr @rtl8139_resume, ptr @rtl8139_suspend, ptr @rtl8139_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl8139_init_one.board_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0138139too: Assertion failed! %s,%s,%s,line=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8139_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/realtek/8139too.c\00", [57 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr = internal global ptr @rtl8139_init_one._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdev != NULL\00", [19 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.8 = internal global ptr @rtl8139_init_one._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ent != NULL\00", [20 x i8] zeroinitializer }, align 32
@rtl8139_init_one.printed_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtl8139_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\0168139too: 8139too Fast Ethernet driver 0.9.28\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.12 = internal global ptr @rtl8139_init_one._entry.10, section ".printk_index", align 4
@rtl8139_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 973, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"This (id %04x:%04x rev %02x) is an enhanced 8139C+ chip, use 8139cp\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.17 = internal global ptr @rtl8139_init_one._entry.13, section ".printk_index", align 4
@rtl8139_init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0168139too: OQO Model 2 detected. Forcing PIO\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.20 = internal global ptr @rtl8139_init_one._entry.18, section ".printk_index", align 4
@rtl8139_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.22 = internal global ptr @rtl8139_init_one._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev != NULL\00", [20 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_init_one._entry_ptr.25 = internal global ptr @rtl8139_init_one._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioaddr != NULL\00", [17 x i8] zeroinitializer }, align 32
@rtl8139_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rtl8139_open, ptr @rtl8139_close, ptr @rtl8139_start_xmit, ptr null, ptr null, ptr null, ptr @rtl8139_set_rx_mode, ptr @rtl8139_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_tx_timeout, ptr @rtl8139_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rtl8139_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @rtl8139_get_drvinfo, ptr @rtl8139_get_regs_len, ptr @rtl8139_get_regs, ptr @rtl8139_get_wol, ptr @rtl8139_set_wol, ptr @rtl8139_get_msglevel, ptr @rtl8139_set_msglevel, ptr @rtl8139_nway_reset, ptr @rtl8139_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_get_strings, ptr null, ptr @rtl8139_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8139_get_link_ksettings, ptr @rtl8139_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@board_info = internal constant { [2 x %struct.anon.122], [16 x i8] } { [2 x %struct.anon.122] [%struct.anon.122 { ptr @.str.110, i32 393216 }, %struct.anon.122 { ptr @.str.111, i32 65536 }], [16 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tp->lock\00", [22 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tp->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&tp->thread)->work)\00", [56 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&tp->thread)->timer\00", [42 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.34, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"about to register device named %s (%p)...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"8139too: about to register device named %s (%p)...\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s at 0x%p, %pM, IRQ %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtl8139_init_one.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.37, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Identified 8139 chip type '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl_chip_info = internal constant { [10 x %struct.anon.124], [40 x i8] } { [10 x %struct.anon.124] [%struct.anon.124 { ptr @.str.124, i32 1073741824, i32 1 }, %struct.anon.124 { ptr @.str.125, i32 1610612736, i32 1 }, %struct.anon.124 { ptr @.str.126, i32 1879048192, i32 1 }, %struct.anon.124 { ptr @.str.127, i32 1887436800, i32 1 }, %struct.anon.124 { ptr @.str.128, i32 2013265920, i32 2 }, %struct.anon.124 { ptr @.str.129, i32 2080374784, i32 2 }, %struct.anon.124 { ptr @.str.130, i32 1946157056, i32 2 }, %struct.anon.124 { ptr @.str.131, i32 2021654528, i32 2 }, %struct.anon.124 { ptr @.str.132, i32 1950351360, i32 3 }, %struct.anon.124 { ptr @.str.133, i32 1958739968, i32 2 }], [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MII transceiver %d status 0x%04x advertising %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"No MII transceivers found! Assuming SYM transceiver\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Media type forced to Full Duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"  Forcing %dMbps %s-duplex operation\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@rtl8139_init_board.res = internal constant { [2 x %struct.anon.125], [16 x i8] } { [2 x %struct.anon.125] [%struct.anon.125 { i32 256, ptr @.str.44 }, %struct.anon.125 { i32 512, ptr @.str.45 }], [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MMIO\00", [27 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.46, ptr @.str.5, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8139_init_board\00", [45 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry_ptr = internal global ptr @rtl8139_init_board._entry, section ".printk_index", align 4
@rtl8139_init_board.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&tp->rx_stats.syncp)->seq\00", [36 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&tp->tx_stats.syncp)->seq\00", [36 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.50, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s region size = 0x%02lX\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.5, i32 810, ptr @.str.53, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"region #%d not a %s resource, aborting\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry_ptr.54 = internal global ptr @rtl8139_init_board._entry.51, section ".printk_index", align 4
@rtl8139_init_board._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.5, i32 816, ptr @.str.53, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid PCI %s region size(s), aborting\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry_ptr.57 = internal global ptr @rtl8139_init_board._entry.55, section ".printk_index", align 4
@rtl8139_init_board._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.46, ptr @.str.5, i32 823, ptr @.str.53, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cannot map %s\0A\00", [17 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry_ptr.60 = internal global ptr @rtl8139_init_board._entry.58, section ".printk_index", align 4
@rtl8139_init_board._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.46, ptr @.str.5, i32 839, ptr @.str.53, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chip not responding, ignoring board\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl8139_init_board._entry_ptr.63 = internal global ptr @rtl8139_init_board._entry.61, section ".printk_index", align 4
@rtl8139_init_board.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.64, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unknown chip version, assuming RTL-8139\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.65, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxConfig = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.66, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"chipset id (%d) == index %d, '%s'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"8139too: chipset id (%d) == index %d, '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.68, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCI PM wakeup\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"8139too: PCI PM wakeup\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8139_init_board.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.5, ptr @.str.70, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Old chip wakeup\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"8139too: Old chip wakeup\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8139_open.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtl8139_open\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s() ioaddr %#llx IRQ %d GP Pins %02x %s-duplex\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8139_interrupt.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.5, ptr @.str.75, i8 2, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8139_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"exiting interrupt, intr_status=%#4.4x\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.5, ptr @.str.77, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8139_weird_interrupt\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Abnormal interrupt, status %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.76, ptr @.str.5, i32 2096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt._entry_ptr = internal global ptr @rtl8139_weird_interrupt._entry, section ".printk_index", align 4
@rtl8139_weird_interrupt._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.76, ptr @.str.5, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt._entry_ptr.79 = internal global ptr @rtl8139_weird_interrupt._entry.78, section ".printk_index", align 4
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tp != NULL\00", [21 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.76, ptr @.str.5, i32 2098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_weird_interrupt._entry_ptr.82 = internal global ptr @rtl8139_weird_interrupt._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI Bus error %04x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8139_tx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.84, ptr @.str.5, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8139_tx_interrupt\00", [43 x i8] zeroinitializer }, align 32
@rtl8139_tx_interrupt._entry_ptr = internal global ptr @rtl8139_tx_interrupt._entry, section ".printk_index", align 4
@rtl8139_tx_interrupt._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.84, ptr @.str.5, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8139_tx_interrupt._entry_ptr.86 = internal global ptr @rtl8139_tx_interrupt._entry.85, section ".printk_index", align 4
@rtl8139_tx_interrupt.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.84, ptr @.str.5, ptr @.str.87, i8 1, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transmit error, Tx status %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Out-of-sync dirty pointer, %ld vs. %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rtl8139_hw_start.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.5, ptr @.str.91, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtl8139_hw_start\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"init buffer addresses\0A\00", [41 x i8] zeroinitializer }, align 32
@next_tick = internal global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtl8139_close.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.92, ptr @.str.5, ptr @.str.93, i8 2, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl8139_close\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Shutting down ethercard, status was 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl8139_start_xmit.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8139_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Queued Tx packet size %u to slot %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__set_rx_mode.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.96, ptr @.str.5, ptr @.str.97, i8 2, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__set_rx_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rtl8139_set_rx_mode(%04x) done -- Rx config %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@rtl8139_tx_timeout.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rtl8139_tx_timeout.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ethtool_stats_keys = internal constant { [4 x %struct.anon.126], [32 x i8] } { [4 x %struct.anon.126] [%struct.anon.126 { [32 x i8] c"early_rx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tx_buf_mapped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"tx_timeouts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.126 { [32 x i8] c"rx_lost_in_ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [32 x i8] zeroinitializer }, align 32
@rtl8139_rx.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 1, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl8139_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"In %s(), current %04x BufAddr %04x, free to %04x, Cmd %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl8139_rx.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.101, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s() status %04x, size %04x, cur %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rtl8139_rx.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.102, i8 1, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hung FIFO. Reset\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl8139_rx.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.103, i8 1, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fifo copy in progress\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl8139_rx.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.104, i8 2, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Done %s(), current %04x BufAddr %04x, free to %04x, Cmd %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8139_rx_err.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.106, i8 1, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl8139_rx_err\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Ethernet frame had errors, status %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl8139_rx_err.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.107, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Oversized Ethernet frame, status %04x!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx stop wait too long\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx/rx enable wait too long\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl8139_rx_err.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.91, i8 1, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RealTek RTL8139\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RealTek RTL8129\00", [16 x i8] zeroinitializer }, align 32
@rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.5, ptr @.str.113, i8 1, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8139_tx_timeout_task\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Transmit timeout, status %02x %04x %04x media %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.5, ptr @.str.114, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tx queue start entry %ld  dirty entry %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.5, ptr @.str.115, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tx descriptor %d is %08x%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (queue head)\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Setting %s-duplex based on MII #%d link partner ability of %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"media is unconnected, link down, or incompatible connection\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8139_thread_iter.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.5, ptr @.str.121, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8139_thread_iter\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Media selection tick, Link partner %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl8139_thread_iter.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.5, ptr @.str.122, i8 1, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Other registers are IntMask %04x IntStatus %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8139_thread_iter.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.120, ptr @.str.5, ptr @.str.123, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chip config %02x %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@param = internal constant { [4 x [4 x i32]], [32 x i8] } { [4 x [4 x i32]] [[4 x i32] [i32 -885399997, i32 -885404093, i32 -80159229, i32 -885465533], [4 x i32] [i32 -885399997, i32 -885404093, i32 -885404029, i32 -885404029], [4 x i32] [i32 -885399997, i32 -885404093, i32 -885404029, i32 -885404029], [4 x i32] [i32 -1153835453, i32 -1153839549, i32 -1153839485, i32 -1153839485]], [32 x i8] zeroinitializer }, align 32
@mii_2_8139_map = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bd\00\00fhj\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RTL-8139\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RTL-8139 rev K\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL-8139A\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RTL-8139A rev G\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL-8139B\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RTL-8130\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RTL-8139C\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RTL-8100\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RTL-8100B/8139D\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RTL-8101\00", [23 x i8] zeroinitializer }, align 32
@__rtl8139_cleanup_dev._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.134, ptr @.str.5, i32 723, ptr null, ptr null }, align 1
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__rtl8139_cleanup_dev\00", [42 x i8] zeroinitializer }, align 32
@__rtl8139_cleanup_dev._entry_ptr = internal global ptr @__rtl8139_cleanup_dev._entry, section ".printk_index", align 4
@__rtl8139_cleanup_dev._entry.135 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.134, ptr @.str.5, i32 724, ptr null, ptr null }, align 1
@__rtl8139_cleanup_dev._entry_ptr.136 = internal global ptr @__rtl8139_cleanup_dev._entry.135, section ".printk_index", align 4
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tp->pci_dev != NULL\00", [44 x i8] zeroinitializer }, align 32
@rtl8139_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.138, ptr @.str.5, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8139_remove_one\00", [45 x i8] zeroinitializer }, align 32
@rtl8139_remove_one._entry_ptr = internal global ptr @rtl8139_remove_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.139 = internal global [12 x i64] [i64 10, i64 16, i64 64, i64 96, i64 112, i64 116, i64 120, i64 124, i64 16500, i64 32880, i64 32888, i64 49268]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 28672]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 626, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"use_io\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 152, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 159, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 162, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"rtl8139_pci_driver\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2649, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 147, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 148, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"rtl8139_pci_tbl\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 241, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"rtl8139_pm_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2647, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"board_idx\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 951, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 953, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 954, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"printed_version\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 963, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 965, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 971, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 981, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 989, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 994, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"rtl8139_netdev_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 927, i32 36 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"rtl8139_ethtool_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2484, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"board_info\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 235, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1029, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1030, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1031, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1039, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1046, i32 19 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1050, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"rtl_chip_info\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 513, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1064, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1069, i32 21 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1088, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1094, i32 20 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1096, i32 25 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1096, i32 34 }
@___asan_gen_.304 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 768, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 769, i32 21 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 770, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 773, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 797, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 798, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 806, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 809, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 815, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 823, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 839, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 854, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 855, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 859, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 864, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 883, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1358, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2212, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2094, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2096, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2097, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2098, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2122, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1768, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1769, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1785, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1818, i32 19 }
@___asan_gen_.434 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 271, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1421, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [10 x i8] c"next_tick\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1463, i32 12 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2265, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1755, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2558, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1710, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant [19 x i8] c"ethtool_stats_keys\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 285, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1956, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1977, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1993, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1997, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2071, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1842, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1847, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1880, i32 20 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1891, i32 20 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 236, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 237, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1668, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1672, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1675, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1583, i32 22 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1587, i32 22 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1601, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1603, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1605, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1475, i32 28 }
@___asan_gen_.550 = private unnamed_addr constant [15 x i8] c"mii_2_8139_map\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1207, i32 19 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 514, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 519, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 524, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 529, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 534, i32 4 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 539, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 544, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 549, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 554, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 560, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 723, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 724, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.593 = private constant [42 x i8] c"../drivers/net/ethernet/realtek/8139too.c\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1120, i32 2 }
@llvm.compiler.used = appending global [197 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_debug354, ptr @__UNIQUE_ID_debugtype353, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_full_duplex357, ptr @__UNIQUE_ID_full_duplextype352, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_media356, ptr @__UNIQUE_ID_mediatype351, ptr @__UNIQUE_ID_multicast_filter_limit355, ptr @__UNIQUE_ID_multicast_filter_limittype350, ptr @__UNIQUE_ID_use_io349, ptr @__UNIQUE_ID_use_iotype348, ptr @__UNIQUE_ID_version347, ptr @__exitcall_rtl8139_cleanup_module, ptr @__initcall__kmod_8139too__390_2677_rtl8139_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_media, ptr @__param_multicast_filter_limit, ptr @__param_use_io, ptr @__rtl8139_cleanup_dev._entry, ptr @__rtl8139_cleanup_dev._entry.135, ptr @__rtl8139_cleanup_dev._entry_ptr, ptr @__rtl8139_cleanup_dev._entry_ptr.136, ptr @rtl8139_cleanup_module, ptr @rtl8139_init_board._entry, ptr @rtl8139_init_board._entry.51, ptr @rtl8139_init_board._entry.55, ptr @rtl8139_init_board._entry.58, ptr @rtl8139_init_board._entry.61, ptr @rtl8139_init_board._entry_ptr, ptr @rtl8139_init_board._entry_ptr.54, ptr @rtl8139_init_board._entry_ptr.57, ptr @rtl8139_init_board._entry_ptr.60, ptr @rtl8139_init_board._entry_ptr.63, ptr @rtl8139_init_one._entry, ptr @rtl8139_init_one._entry.10, ptr @rtl8139_init_one._entry.13, ptr @rtl8139_init_one._entry.18, ptr @rtl8139_init_one._entry.21, ptr @rtl8139_init_one._entry.24, ptr @rtl8139_init_one._entry.7, ptr @rtl8139_init_one._entry_ptr, ptr @rtl8139_init_one._entry_ptr.12, ptr @rtl8139_init_one._entry_ptr.17, ptr @rtl8139_init_one._entry_ptr.20, ptr @rtl8139_init_one._entry_ptr.22, ptr @rtl8139_init_one._entry_ptr.25, ptr @rtl8139_init_one._entry_ptr.8, ptr @rtl8139_remove_one._entry, ptr @rtl8139_remove_one._entry_ptr, ptr @rtl8139_tx_interrupt._entry, ptr @rtl8139_tx_interrupt._entry.85, ptr @rtl8139_tx_interrupt._entry_ptr, ptr @rtl8139_tx_interrupt._entry_ptr.86, ptr @rtl8139_weird_interrupt._entry, ptr @rtl8139_weird_interrupt._entry.78, ptr @rtl8139_weird_interrupt._entry.81, ptr @rtl8139_weird_interrupt._entry_ptr, ptr @rtl8139_weird_interrupt._entry_ptr.79, ptr @rtl8139_weird_interrupt._entry_ptr.82, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @use_io, ptr @multicast_filter_limit, ptr @debug, ptr @rtl8139_pci_driver, ptr @media, ptr @full_duplex, ptr @rtl8139_pci_tbl, ptr @rtl8139_pm_ops, ptr @rtl8139_init_one.board_idx, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @rtl8139_init_one.printed_version, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.23, ptr @.str.26, ptr @rtl8139_netdev_ops, ptr @rtl8139_ethtool_ops, ptr @board_info, ptr @rtl8139_init_one.__key, ptr @.str.27, ptr @rtl8139_init_one.__key.28, ptr @.str.29, ptr @rtl8139_init_one.__key.30, ptr @.str.31, ptr @rtl8139_init_one.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @rtl_chip_info, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @rtl8139_init_board.res, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @rtl8139_init_board.__key, ptr @.str.47, ptr @rtl8139_init_board.__key.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @next_tick, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @rtl8139_tx_timeout.__key, ptr @rtl8139_tx_timeout.__key.98, ptr @ethtool_stats_keys, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @param, ptr @mii_2_8139_map, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.137, ptr @.str.138], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_io to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_pci_tbl to i32), i32 800, i32 992, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.board_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.printed_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_one.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl_chip_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board.res to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_init_board._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_weird_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_weird_interrupt._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_weird_interrupt._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_tx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_tx_interrupt._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_tick to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_tx_timeout.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_tx_timeout.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_stats_keys to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_2_8139_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8139_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_cleanup_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl8139_pci_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl8139_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_init_one(ptr noundef %pdev, ptr noundef readonly %ent) #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #18
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %addr, align 2, !annotation !363
  %1 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !363
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !363
  %cmp.not = icmp eq ptr %pdev, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 953) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp3.not = icmp eq ptr %ent, null
  br i1 %cmp3.not, label %do.end15, label %if.end.if.end18_crit_edge, !prof !364

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 954) #21
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end.if.end18_crit_edge
  %5 = load i32, ptr @rtl8139_init_one.board_idx, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @rtl8139_init_one.board_idx, align 4
  %6 = load i32, ptr @rtl8139_init_one.printed_version, align 4
  %inc19 = add i32 %6, 1
  store i32 %inc19, ptr @rtl8139_init_one.printed_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %do.end24, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #21
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end18.if.end27_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %8)
  %cmp28 = icmp eq i16 %8, 4332
  br i1 %cmp28, label %land.lhs.true, label %if.end27.if.end72_crit_edge

if.end27.if.end72_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end27
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32455, i16 %10)
  %cmp31 = icmp eq i16 %10, -32455
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

land.lhs.true33:                                  ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %12)
  %cmp35 = icmp ugt i8 %12, 31
  br i1 %cmp35, label %do.end40, label %land.lhs.true53

do.end40:                                         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #20
  %conv34 = zext i8 %12 to i32
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev41, ptr noundef nonnull @.str.14, i32 noundef 4332, i32 noundef 33081, i32 noundef %conv34) #21
  br label %cleanup

land.lhs.true53:                                  ; preds = %land.lhs.true33
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %.pr = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32455, i16 %.pr)
  %cmp56 = icmp eq i16 %.pr, -32455
  br i1 %cmp56, label %land.lhs.true58, label %land.lhs.true53.if.end72_crit_edge

land.lhs.true53.if.end72_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

land.lhs.true58:                                  ; preds = %land.lhs.true53
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %14 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5772, i16 %15)
  %cmp60 = icmp eq i16 %15, 5772
  br i1 %cmp60, label %land.lhs.true62, label %land.lhs.true58.if.end72_crit_edge

land.lhs.true58.if.end72_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %16 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32455, i16 %17)
  %cmp64 = icmp eq i16 %17, -32455
  br i1 %cmp64, label %do.end69, label %land.lhs.true62.if.end72_crit_edge

land.lhs.true62.if.end72_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

do.end69:                                         ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #21
  store i8 1, ptr @use_io, align 1
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %land.lhs.true62.if.end72_crit_edge, %land.lhs.true58.if.end72_crit_edge, %land.lhs.true53.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end27.if.end72_crit_edge
  %call73 = tail call fastcc ptr @rtl8139_init_board(ptr noundef %pdev)
  %cmp.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %cmp78.not = icmp eq ptr %call73, null
  br i1 %cmp78.not, label %do.end91, label %if.end77.if.end94_crit_edge, !prof !364

if.end77.if.end94_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end94

do.end91:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 989) #21
  br label %if.end94

if.end94:                                         ; preds = %do.end91, %if.end77.if.end94_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call73, i32 2304
  %dev96 = getelementptr i8, ptr %call73, i32 2544
  %19 = ptrtoint ptr %dev96 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call73, ptr %dev96, align 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %cmp97.not = icmp eq ptr %21, null
  br i1 %cmp97.not, label %do.end110, label %if.end94.if.end113_crit_edge, !prof !364

if.end94.if.end113_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end113

do.end110:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #20
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 994) #21
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %if.end94.if.end113_crit_edge
  %call114 = tail call fastcc i32 @read_eeprom(ptr noundef %21, i32 noundef 0, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 33065, i32 %call114)
  %cmp115 = icmp eq i32 %call114, 33065
  %cond = select i1 %cmp115, i32 8, i32 6
  %call119 = tail call fastcc i32 @read_eeprom(ptr noundef %21, i32 noundef 7, i32 noundef %cond)
  %conv120 = trunc i32 %call119 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv120)
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %addr, align 2
  %call119.1 = tail call fastcc i32 @read_eeprom(ptr noundef %21, i32 noundef 8, i32 noundef %cond)
  %conv120.1 = trunc i32 %call119.1 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv120.1)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %1, align 2
  %call119.2 = tail call fastcc i32 @read_eeprom(ptr noundef %21, i32 noundef 9, i32 noundef %cond)
  %conv120.2 = trunc i32 %call119.2 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv120.2)
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %3, align 2
  call void @dev_addr_mod(ptr noundef %call73, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #18
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rtl8139_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 44
  %29 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rtl8139_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 115
  %30 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 600, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call73, i32 2320
  call void @netif_napi_add(ptr noundef %call73, ptr noundef %napi, ptr noundef nonnull @rtl8139_poll, i32 noundef 64) #18
  %features = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 23
  %31 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %features, align 16
  %or = or i64 %32, 41
  store i64 %or, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 26
  %33 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or, ptr %vlan_features, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 24
  %34 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %hw_features, align 8
  %or125 = or i64 %35, 26388279066624
  store i64 %or125, ptr %hw_features, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 30
  %36 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 31
  %37 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1770, ptr %max_mtu, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %38 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %driver_data, align 4
  %hw_flags = getelementptr [2 x %struct.anon.122], ptr @board_info, i32 0, i32 %39, i32 1
  %40 = ptrtoint ptr %hw_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_flags, align 4
  %drv_flags = getelementptr i8, ptr %call73, i32 2308
  %42 = ptrtoint ptr %drv_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %drv_flags, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %21, ptr %add.ptr.i, align 8
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp129 = icmp slt i32 %44, 0
  %notmask = shl nsw i32 -1, %44
  %sub = xor i32 %notmask, -1
  %cond131 = select i1 %cmp129, i32 7, i32 %sub
  %msg_enable = getelementptr i8, ptr %call73, i32 2316
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond131, ptr %msg_enable, align 4
  %lock = getelementptr i8, ptr %call73, i32 2704
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @rtl8139_init_one.__key, i16 noundef signext 3) #18
  %rx_lock = getelementptr i8, ptr %call73, i32 2748
  call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @rtl8139_init_one.__key.28, i16 noundef signext 3) #18
  %thread = getelementptr i8, ptr %call73, i32 2816
  call void @__init_work(ptr noundef %thread, i32 noundef 0) #18
  %46 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %thread, align 8
  %lockdep_map = getelementptr i8, ptr %call73, i32 2832
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @rtl8139_init_one.__key.30, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry148 = getelementptr i8, ptr %call73, i32 2820
  %47 = ptrtoint ptr %entry148 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry148, ptr %entry148, align 4
  %prev.i = getelementptr i8, ptr %call73, i32 2824
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry148, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call73, i32 2828
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rtl8139_thread, ptr %func, align 4
  %timer = getelementptr i8, ptr %call73, i32 2860
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @rtl8139_init_one.__key.32) #18
  %mii = getelementptr i8, ptr %call73, i32 2916
  %dev159 = getelementptr i8, ptr %call73, i32 2936
  %50 = ptrtoint ptr %dev159 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call73, ptr %dev159, align 4
  %mdio_read = getelementptr i8, ptr %call73, i32 2940
  %51 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call73, i32 2944
  %52 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call73, i32 2924
  %53 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 63, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call73, i32 2928
  %54 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 31, ptr %reg_num_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_one.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_one, %if.then174)) #18
          to label %do.end178 [label %if.then174], !srcloc !365

if.then174:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8139_init_one.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.35, ptr noundef %call73, ptr noundef %call73) #18
  br label %do.end178

do.end178:                                        ; preds = %if.then174, %if.end113
  %call179 = call i32 @register_netdev(ptr noundef %call73) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end182, label %err_out

if.end182:                                        ; preds = %do.end178
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call73, ptr %driver_data.i.i, align 4
  %56 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %driver_data, align 4
  %arrayidx184 = getelementptr [2 x %struct.anon.122], ptr @board_info, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx184, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call73, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call73, ptr noundef nonnull @.str.36, ptr noundef %59, ptr noundef %21, ptr noundef %61, i32 noundef %63) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_one.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_one, %if.then199)) #18
          to label %do.end206 [label %if.then199], !srcloc !365

if.then199:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #20
  %chipset = getelementptr i8, ptr %call73, i32 2792
  %64 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chipset, align 8
  %arrayidx200 = getelementptr [10 x %struct.anon.124], ptr @rtl_chip_info, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx200, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_init_one.__UNIQUE_ID_ddebug365, ptr noundef %call73, ptr noundef nonnull @.str.37, ptr noundef %67) #18
  br label %do.end206

do.end206:                                        ; preds = %if.then199, %if.end182
  %68 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %drv_flags, align 4
  %and = and i32 %69, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool208.not = icmp eq i32 %and, 0
  br i1 %tobool208.not, label %do.end206.if.end241.sink.split_crit_edge, label %do.end206.for.body215_crit_edge

do.end206.for.body215_crit_edge:                  ; preds = %do.end206
  br label %for.body215

do.end206.if.end241.sink.split_crit_edge:         ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end241.sink.split

for.body215:                                      ; preds = %if.end229.for.body215_crit_edge, %do.end206.for.body215_crit_edge
  %phy_idx.0473 = phi i32 [ %phy_idx.1, %if.end229.for.body215_crit_edge ], [ 0, %do.end206.for.body215_crit_edge ]
  %phy.0471 = phi i32 [ %inc231, %if.end229.for.body215_crit_edge ], [ 0, %do.end206.for.body215_crit_edge ]
  %call216 = call i32 @mdio_read(ptr noundef %call73, i32 noundef %phy.0471, i32 noundef 1)
  %70 = zext i32 %call216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call216, label %if.then222 [
    i32 65535, label %for.body215.if.end229_crit_edge
    i32 0, label %for.body215.if.end229_crit_edge475
  ]

for.body215.if.end229_crit_edge475:               ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end229

for.body215.if.end229_crit_edge:                  ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end229

if.then222:                                       ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #20
  %call223 = call i32 @mdio_read(ptr noundef %call73, i32 noundef %phy.0471, i32 noundef 4)
  %conv225 = trunc i32 %phy.0471 to i8
  %inc226 = add nuw nsw i32 %phy_idx.0473, 1
  %arrayidx227 = getelementptr %struct.rtl8139_private, ptr %add.ptr.i, i32 0, i32 17, i32 %phy_idx.0473
  %71 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv225, ptr %arrayidx227, align 1
  %conv228 = and i32 %call223, 65535
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call73, ptr noundef nonnull @.str.38, i32 noundef %phy.0471, i32 noundef %call216, i32 noundef %conv228) #21
  br label %if.end229

if.end229:                                        ; preds = %if.then222, %for.body215.if.end229_crit_edge, %for.body215.if.end229_crit_edge475
  %phy_idx.1 = phi i32 [ %inc226, %if.then222 ], [ %phy_idx.0473, %for.body215.if.end229_crit_edge ], [ %phy_idx.0473, %for.body215.if.end229_crit_edge475 ]
  %inc231 = add nuw nsw i32 %phy.0471, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.0471)
  %cmp211 = icmp ult i32 %phy.0471, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp213 = icmp ult i32 %phy_idx.1, 4
  %or.cond = select i1 %cmp211, i1 %cmp213, i1 false
  br i1 %or.cond, label %if.end229.for.body215_crit_edge, label %for.end232

if.end229.for.body215_crit_edge:                  ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body215

for.end232:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp233 = icmp eq i32 %phy_idx.1, 0
  br i1 %cmp233, label %if.then235, label %for.end232.if.end241_crit_edge

for.end232.if.end241_crit_edge:                   ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end241

if.then235:                                       ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call73, ptr noundef nonnull @.str.39) #21
  br label %if.end241.sink.split

if.end241.sink.split:                             ; preds = %if.then235, %do.end206.if.end241.sink.split_crit_edge
  %phys236 = getelementptr i8, ptr %call73, i32 2696
  %72 = ptrtoint ptr %phys236 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 32, ptr %phys236, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.end241.sink.split, %for.end232.if.end241_crit_edge
  %phys242 = getelementptr i8, ptr %call73, i32 2696
  %73 = ptrtoint ptr %phys242 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %phys242, align 8
  %conv244 = sext i8 %74 to i32
  %75 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv244, ptr %mii, align 4
  %76 = load i32, ptr @rtl8139_init_one.board_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %76)
  %cmp246 = icmp sgt i32 %76, 7
  br i1 %cmp246, label %if.end241.if.end294_crit_edge, label %cond.end251

if.end241.if.end294_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end294

cond.end251:                                      ; preds = %if.end241
  %arrayidx250 = getelementptr [8 x i32], ptr @media, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp253 = icmp sgt i32 %78, 0
  br i1 %cmp253, label %if.then255, label %cond.end251.land.lhs.true280_crit_edge

cond.end251.land.lhs.true280_crit_edge:           ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true280

if.then255:                                       ; preds = %cond.end251
  %and256 = and i32 %78, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not.not = icmp eq i32 %and256, 0
  %full_duplex = getelementptr i8, ptr %call73, i32 2932
  %79 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.shl = select i1 %tobool257.not.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %full_duplex, align 4
  %default_port = getelementptr i8, ptr %call73, i32 2703
  %80 = trunc i32 %78 to i8
  %81 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load261 = load i8, ptr %default_port, align 1
  %bf.value262 = shl i8 %80, 3
  %bf.shl263 = and i8 %bf.value262, 120
  %bf.clear264 = and i8 %bf.load261, -121
  %bf.set265 = or i8 %bf.clear264, %bf.shl263
  store i8 %bf.set265, ptr %default_port, align 1
  %bf.clear269 = and i32 %78, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear269)
  %tobool270.not = icmp eq i32 %bf.clear269, 0
  br i1 %tobool270.not, label %if.then255.land.lhs.true280_crit_edge, label %if.then271

if.then255.land.lhs.true280_crit_edge:            ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true280

if.then271:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #20
  %bf.set275 = or i8 %bf.set, 64
  %82 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bf.set275, ptr %full_duplex, align 4
  br label %land.lhs.true280

land.lhs.true280:                                 ; preds = %if.then271, %if.then255.land.lhs.true280_crit_edge, %cond.end251.land.lhs.true280_crit_edge
  %arrayidx281 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %76
  %83 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp282 = icmp sgt i32 %84, 0
  br i1 %cmp282, label %if.then284, label %land.lhs.true280.if.end294_crit_edge

land.lhs.true280.if.end294_crit_edge:             ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end294

if.then284:                                       ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #20
  %full_duplex287 = getelementptr i8, ptr %call73, i32 2932
  %85 = trunc i32 %84 to i8
  %86 = ptrtoint ptr %full_duplex287 to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load288 = load i8, ptr %full_duplex287, align 4
  %bf.shl290 = shl i8 %85, 7
  %bf.clear291 = and i8 %bf.load288, 127
  %bf.set292 = or i8 %bf.clear291, %bf.shl290
  store i8 %bf.set292, ptr %full_duplex287, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then284, %land.lhs.true280.if.end294_crit_edge, %if.end241.if.end294_crit_edge
  %cond252465468 = phi i32 [ %78, %if.then284 ], [ %78, %land.lhs.true280.if.end294_crit_edge ], [ 0, %if.end241.if.end294_crit_edge ]
  %full_duplex296 = getelementptr i8, ptr %call73, i32 2932
  %87 = ptrtoint ptr %full_duplex296 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load297 = load i8, ptr %full_duplex296, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load297)
  %tobool300.not = icmp sgt i8 %bf.load297, -1
  br i1 %tobool300.not, label %if.end294.if.end307_crit_edge, label %if.then301

if.end294.if.end307_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end307

if.then301:                                       ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call73, ptr noundef nonnull @.str.40) #21
  %88 = ptrtoint ptr %full_duplex296 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load304 = load i8, ptr %full_duplex296, align 4
  %bf.set306 = or i8 %bf.load304, 64
  store i8 %bf.set306, ptr %full_duplex296, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then301, %if.end294.if.end307_crit_edge
  %default_port308 = getelementptr i8, ptr %call73, i32 2703
  %89 = ptrtoint ptr %default_port308 to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load309 = load i8, ptr %default_port308, align 1
  %90 = and i8 %bf.load309, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool313.not = icmp eq i8 %90, 0
  br i1 %tobool313.not, label %if.end307.if.end331_crit_edge, label %if.then314

if.end307.if.end331_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end331

if.then314:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #20
  %and315 = and i32 %cond252465468, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  %cond317 = select i1 %tobool316.not, i32 10, i32 100
  %and318 = and i32 %cond252465468, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  %cond320 = select i1 %tobool319.not, ptr @.str.43, ptr @.str.42
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %call73, ptr noundef nonnull @.str.41, i32 noundef %cond317, ptr noundef nonnull %cond320) #21
  %91 = ptrtoint ptr %phys242 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %phys242, align 8
  %conv323 = sext i8 %92 to i32
  %93 = shl nuw nsw i32 %and315, 8
  %94 = shl nuw nsw i32 %and318, 4
  %or330 = or i32 %93, %94
  call void @mdio_write(ptr noundef %call73, i32 noundef %conv323, i32 noundef 0, i32 noundef %or330)
  br label %if.end331

if.end331:                                        ; preds = %if.then314, %if.end307.if.end331_crit_edge
  %chipset332 = getelementptr i8, ptr %call73, i32 2792
  %95 = ptrtoint ptr %chipset332 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %chipset332, align 8
  %97 = and i32 %96, 1073741823
  %98 = lshr i32 752, %97
  %99 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool335.not.not = icmp eq i32 %99, 0
  br i1 %tobool335.not.not, label %if.then336, label %if.end331.cleanup_crit_edge

if.end331.cleanup_crit_edge:                      ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then336:                                       ; preds = %if.end331
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %21, i32 91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  call void @arm_heavy_mb() #18
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 72) #18, !srcloc !367
  br label %cleanup

err_out:                                          ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @__rtl8139_cleanup_dev(ptr noundef %call73)
  call void @pci_disable_device(ptr noundef %pdev) #18
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then336, %if.end331.cleanup_crit_edge, %if.then75, %do.end40
  %retval.0 = phi i32 [ -19, %do.end40 ], [ %18, %if.then75 ], [ %call179, %err_out ], [ 0, %if.then336 ], [ 0, %if.end331.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.138, i32 noundef 1120) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %thread = getelementptr i8, ptr %1, i32 2816
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %thread) #18
  tail call void @unregister_netdev(ptr noundef %1) #18
  tail call fastcc void @__rtl8139_cleanup_dev(ptr noundef %1)
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtl8139_init_board(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %cmp.not = icmp eq ptr %pdev, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.46, i32 noundef 773) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 656, i32 noundef 1, i32 noundef 1) #18
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %pci_dev = getelementptr i8, ptr %call4, i32 2312
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pci_dev, align 8
  %call12 = tail call i32 @pci_enable_device(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.if.end.i348_crit_edge

if.end8.if.end.i348_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i348

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.if.end.i348_crit_edge

if.end15.if.end.i348_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i348

if.end19:                                         ; preds = %if.end15
  tail call void @pci_set_master(ptr noundef %pdev) #18
  %syncp = getelementptr i8, ptr %call4, i32 2576
  %dep_map.i = getelementptr i8, ptr %call4, i32 2580
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @rtl8139_init_board.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %2 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %syncp, align 4
  %syncp24 = getelementptr i8, ptr %call4, i32 2640
  %dep_map.i346 = getelementptr i8, ptr %call4, i32 2644
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i346, ptr noundef nonnull @.str.49, ptr noundef nonnull @rtl8139_init_board.__key.48, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %3 = ptrtoint ptr %syncp24 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %syncp24, align 4
  br label %retry

retry:                                            ; preds = %if.then80, %if.end19
  %4 = load i8, ptr @use_io, align 1, !range !368
  %5 = xor i8 %4, 1
  %6 = zext i8 %5 to i32
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %6, i32 1
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp31 = icmp eq i32 %8, 0
  br i1 %cmp31, label %retry.cond.end_crit_edge, label %cond.false

retry.cond.end_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %8, 1
  %add = sub i32 %sub, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %retry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %retry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then47)) #18
          to label %do.end51 [label %if.then47], !srcloc !365

if.then47:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %type = getelementptr [2 x %struct.anon.125], ptr @rtl8139_init_board.res, i32 0, i32 %6, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef %12, i32 noundef %cond) #18
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %cond.end
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %6, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %arrayidx54 = getelementptr [2 x %struct.anon.125], ptr @rtl8139_init_board.res, i32 0, i32 %6
  %15 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx54, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #20
  %type61 = getelementptr [2 x %struct.anon.125], ptr @rtl8139_init_board.res, i32 0, i32 %6, i32 1
  %17 = ptrtoint ptr %type61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %6, ptr noundef %18) #21
  br label %if.end.i348

if.end62:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cond)
  %cmp63 = icmp ult i32 %cond, 128
  br i1 %cmp63, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  %type69 = getelementptr [2 x %struct.anon.125], ptr @rtl8139_init_board.res, i32 0, i32 %6, i32 1
  %19 = ptrtoint ptr %type69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %20) #21
  br label %if.end.i348

if.end70:                                         ; preds = %if.end62
  %call71 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %6, i32 noundef 0) #18
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %do.end76, label %if.end82

do.end76:                                         ; preds = %if.end70
  %type78 = getelementptr [2 x %struct.anon.125], ptr @rtl8139_init_board.res, i32 0, i32 %6, i32 1
  %21 = ptrtoint ptr %type78 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %22) #21
  %23 = load i8, ptr @use_io, align 1, !range !368
  %tobool79.not = icmp eq i8 %23, 0
  br i1 %tobool79.not, label %if.then80, label %do.end76.if.end.i348_crit_edge

do.end76.if.end.i348_crit_edge:                   ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i348

if.then80:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #20
  store i8 1, ptr @use_io, align 1
  br label %retry

if.end82:                                         ; preds = %if.end70
  %regs_len = getelementptr i8, ptr %call4, i32 2948
  %24 = ptrtoint ptr %regs_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %regs_len, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call71, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %call71, i32 91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 82) #18, !srcloc !367
  %add.ptr83 = getelementptr i8, ptr %call71, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp85 = icmp eq i32 %26, -1
  br i1 %cmp85, label %do.end89, label %if.end91

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #21
  br label %if.end.i348

if.end91:                                         ; preds = %if.end82
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %28 = and i32 %27, 49276
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %trunc = trunc i32 %28 to i16
  %30 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.139)
  switch i16 %trunc, label %for.inc.9 [
    i16 64, label %if.end91.do.body138_crit_edge
    i16 96, label %if.then99.fold.split
    i16 112, label %if.then99.fold.split379
    i16 -32656, label %if.then99.fold.split380
    i16 120, label %if.then99.fold.split381
    i16 124, label %if.then99.fold.split382
    i16 116, label %if.then99.fold.split383
    i16 -32648, label %if.then99.fold.split384
    i16 16500, label %if.then99.fold.split385
    i16 -16268, label %if.then99.fold.split386
  ]

if.end91.do.body138_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split:                             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split379:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split380:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split381:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split382:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split383:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split384:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split385:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

if.then99.fold.split386:                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body138

for.inc.9:                                        ; preds = %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then113)) #18
          to label %do.body118 [label %if.then113], !srcloc !365

if.then113:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.64) #18
  br label %do.body118

do.body118:                                       ; preds = %if.then113, %for.inc.9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then130)) #18
          to label %do.body138 [label %if.then130], !srcloc !365

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #18, !srcloc !369
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %32) #18
  br label %do.body138

do.body138:                                       ; preds = %if.then130, %do.body118, %if.then99.fold.split386, %if.then99.fold.split385, %if.then99.fold.split384, %if.then99.fold.split383, %if.then99.fold.split382, %if.then99.fold.split381, %if.then99.fold.split380, %if.then99.fold.split379, %if.then99.fold.split, %if.end91.do.body138_crit_edge
  %i.0363.lcssa.sink = phi i32 [ 0, %if.end91.do.body138_crit_edge ], [ 1, %if.then99.fold.split ], [ 2, %if.then99.fold.split379 ], [ 3, %if.then99.fold.split380 ], [ 4, %if.then99.fold.split381 ], [ 5, %if.then99.fold.split382 ], [ 6, %if.then99.fold.split383 ], [ 7, %if.then99.fold.split384 ], [ 8, %if.then99.fold.split385 ], [ 9, %if.then99.fold.split386 ], [ 0, %do.body118 ], [ 0, %if.then130 ]
  %chipset = getelementptr i8, ptr %call4, i32 2792
  %33 = ptrtoint ptr %chipset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0363.lcssa.sink, ptr %chipset, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then150)) #18
          to label %do.end154 [label %if.then150], !srcloc !365

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx151 = getelementptr [10 x %struct.anon.124], ptr @rtl_chip_info, i32 0, i32 %i.0363.lcssa.sink
  %34 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx151, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.67, i32 noundef %29, i32 noundef %i.0363.lcssa.sink, ptr noundef %35) #18
  br label %do.end154

do.end154:                                        ; preds = %if.then150, %do.body138
  %chipset155 = getelementptr i8, ptr %call4, i32 2792
  %36 = ptrtoint ptr %chipset155 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chipset155, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp156 = icmp ugt i32 %37, 3
  br i1 %cmp156, label %if.then157, label %do.body219

if.then157:                                       ; preds = %do.end154
  %add.ptr158 = getelementptr i8, ptr %call71, i32 82
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr158) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then172)) #18
          to label %do.end175 [label %if.then172], !srcloc !365

if.then172:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.69) #18
  br label %do.end175

do.end175:                                        ; preds = %if.then172, %if.then157
  %39 = ptrtoint ptr %chipset155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chipset155, align 8
  %41 = and i32 %40, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool180.not = icmp eq i32 %41, 0
  %42 = and i8 %38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool182.not = icmp eq i8 %42, 0
  %or.cond = select i1 %tobool180.not, i1 true, i1 %tobool182.not
  %and185 = and i8 %38, -18
  %new_tmp8.0 = select i1 %or.cond, i8 %38, i8 %and185
  %43 = or i8 %new_tmp8.0, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %38)
  %cmp192.not = icmp eq i8 %43, %38
  br i1 %cmp192.not, label %do.end175.if.end198_crit_edge, label %if.then194

do.end175.if.end198_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198

if.then194:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr195 = getelementptr i8, ptr %call71, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr195, i8 -64) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr158, i8 %38) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr195, i8 0) #18, !srcloc !367
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %do.end175.if.end198_crit_edge
  %44 = ptrtoint ptr %chipset155 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chipset155, align 8
  %46 = and i32 %45, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool203.not = icmp eq i32 %46, 0
  br i1 %tobool203.not, label %if.end198.if.end241_crit_edge, label %if.then204

if.end198.if.end241_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end241

if.then204:                                       ; preds = %if.end198
  %add.ptr205 = getelementptr i8, ptr %call71, i32 90
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr205) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %48 = and i8 %47, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool209.not = icmp eq i8 %48, 0
  br i1 %tobool209.not, label %if.then204.if.end241_crit_edge, label %if.then210

if.then204.if.end241_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end241

if.then210:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr211 = getelementptr i8, ptr %call71, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr211, i8 -64) #18, !srcloc !367
  %and213 = and i8 %47, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr205, i8 %and213) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr211, i8 0) #18, !srcloc !367
  br label %if.end241

do.body219:                                       ; preds = %do.end154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_init_board.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_init_board, %if.then231)) #18
          to label %do.end234 [label %if.then231], !srcloc !365

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rtl8139_init_board.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.71) #18
  br label %do.end234

do.end234:                                        ; preds = %if.then231, %do.body219
  %add.ptr235 = getelementptr i8, ptr %call71, i32 82
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr235) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %50 = and i8 %49, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr235, i8 %50) #18, !srcloc !367
  br label %if.end241

if.end241:                                        ; preds = %do.end234, %if.then210, %if.then204.if.end241_crit_edge, %if.end198.if.end241_crit_edge
  %add.ptr.i347 = getelementptr i8, ptr %call71, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i347, i8 16) #18, !srcloc !367
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end241
  %i.06.i = phi i32 [ 1000, %if.end241 ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !373
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i347) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %52 = and i8 %51, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp2.i = icmp eq i8 %52, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #18
  %dec.i = add nsw i32 %i.06.i, -1
  %cmp.i = icmp ugt i32 %i.06.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end.i348:                                      ; preds = %do.end89, %do.end76.if.end.i348_crit_edge, %do.end67, %do.end59, %if.end15.if.end.i348_crit_edge, %if.end8.if.end.i348_crit_edge
  %rc.0 = phi i32 [ %call12, %if.end8.if.end.i348_crit_edge ], [ %call16, %if.end15.if.end.i348_crit_edge ], [ -19, %do.end67 ], [ -5, %do.end89 ], [ -19, %do.end59 ], [ -19, %do.end76.if.end.i348_crit_edge ]
  %54 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci_dev, align 8
  %cmp4.not.i = icmp eq ptr %55, null
  br i1 %cmp4.not.i, label %do.end16.i, label %if.end.i348.if.end19.i_crit_edge, !prof !364

if.end.i348.if.end19.i_crit_edge:                 ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19.i

do.end16.i:                                       ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #20
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.134, i32 noundef 724) #21
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %if.end.i348.if.end19.i_crit_edge
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 8
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 8
  %tobool21.not.i = icmp eq ptr %59, null
  br i1 %tobool21.not.i, label %if.end19.i.__rtl8139_cleanup_dev.exit_crit_edge, label %if.then22.i

if.end19.i.__rtl8139_cleanup_dev.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__rtl8139_cleanup_dev.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_iounmap(ptr noundef %57, ptr noundef nonnull %59) #18
  br label %__rtl8139_cleanup_dev.exit

__rtl8139_cleanup_dev.exit:                       ; preds = %if.then22.i, %if.end19.i.__rtl8139_cleanup_dev.exit_crit_edge
  tail call void @pci_release_regions(ptr noundef %57) #18
  tail call void @free_netdev(ptr noundef nonnull %call4) #18
  br i1 %tobool13.not, label %if.then243, label %__rtl8139_cleanup_dev.exit.if.end244_crit_edge

__rtl8139_cleanup_dev.exit.if.end244_crit_edge:   ; preds = %__rtl8139_cleanup_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end244

if.then243:                                       ; preds = %__rtl8139_cleanup_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %__rtl8139_cleanup_dev.exit.if.end244_crit_edge
  %60 = inttoptr i32 %rc.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end244, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %60, %if.end244 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call4, %for.body.i.cleanup_crit_edge ], [ %call4, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_eeprom(ptr noundef %ioaddr, i32 noundef %location, i32 noundef %addr_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 6, %addr_len
  %or = or i32 %shl, %location
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -128) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #18, !srcloc !367
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %add = add i32 %addr_len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp64 = icmp sgt i32 %add, -1
  br i1 %cmp64, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.065 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %add, %entry.for.body_crit_edge ]
  %shl4 = shl nuw i32 1, %i.065
  %and = and i32 %shl4, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i8 -120, i8 -118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #18, !srcloc !367
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv11 = or i8 %conv, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv11) #18, !srcloc !367
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec = add nsw i32 %i.065, -1
  %cmp.not = icmp eq i32 %i.065, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #18, !srcloc !367
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end
  %i.167 = phi i32 [ 16, %for.end ], [ %dec37, %for.body21.for.body21_crit_edge ]
  %retval1.066 = phi i32 [ 0, %for.end ], [ %or32, %for.body21.for.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -116) #18, !srcloc !367
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %shl25 = shl i32 %retval1.066, 1
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %6 = and i8 %5, 1
  %7 = zext i8 %6 to i32
  %or32 = or i32 %shl25, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -120) #18, !srcloc !367
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec37 = add nsw i32 %i.167, -1
  %cmp19 = icmp ugt i32 %i.167, 1
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.end38

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body21

for.end38:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #18, !srcloc !367
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  ret i32 %or32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -16
  %dev1 = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %rx_lock = getelementptr i8, ptr %napi, i32 428
  tail call void @_raw_spin_lock(ptr noundef %rx_lock) #18
  %add.ptr2 = getelementptr i8, ptr %3, i32 62
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %5 = and i16 %4, 20736
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call fastcc i32 @rtl8139_rx(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %budget)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work_done.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp = icmp slt i32 %work_done.0, %budget
  br i1 %cmp, label %if.then7, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then7:                                         ; preds = %if.end
  %lock = getelementptr i8, ptr %napi, i32 384
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %call16 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0) #18
  br i1 %call16, label %do.body18, label %if.then7.if.end24_crit_edge

if.then7.if.end24_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

do.body18:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr19 = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 32704) #18, !srcloc !377
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  br label %if.end24

if.end24:                                         ; preds = %do.body18, %if.then7.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #18
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end.if.end26_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock) #18
  ret i32 %work_done.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_thread(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -512
  %dev1 = getelementptr i8, ptr %work, i32 120
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = load i32, ptr @next_tick, align 4
  tail call void @rtnl_lock() #18
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.end:                                           ; preds = %entry
  %watchdog_fired = getelementptr i8, ptr %work, i32 -113
  %5 = ptrtoint ptr %watchdog_fired to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %watchdog_fired, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear = and i8 %bf.load, 127
  %6 = ptrtoint ptr %watchdog_fired to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.clear, ptr %watchdog_fired, align 1
  tail call fastcc void @rtl8139_tx_timeout_task(ptr noundef %work)
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @rtl8139_thread_iter(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %9 = ptrtoint ptr %watchdog_fired to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load6 = load i8, ptr %watchdog_fired, align 1
  %10 = and i8 %bf.load6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %if.end5.out_unlock_crit_edge, label %if.then11

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_unlock

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work, i32 noundef %2) #18
  br label %out_unlock

out_unlock:                                       ; preds = %if.then11, %if.end5.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  tail call void @rtnl_unlock() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %location
  %or2 = or i32 %or, 251904
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy_id)
  %cmp = icmp sgt i32 %phy_id, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %location)
  %cmp5 = icmp slt i32 %location, 8
  br i1 %cmp5, label %land.lhs.true, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %2 = lshr i32 140, %location
  %3 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %cond.true, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [8 x i8], ptr @mii_2_8139_map, i32 0, i32 %location
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv9 = zext i16 %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i72 = getelementptr i8, ptr %1, i32 90
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.09.i = phi i32 [ 32, %if.end ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 -124) #18, !srcloc !367
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 -123) #18, !srcloc !367
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec.i = add nsw i32 %i.09.i, -1
  %cmp.not.i = icmp eq i32 %i.09.i, 0
  br i1 %cmp.not.i, label %for.body.i.for.body_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.i.for.body_crit_edge
  %i.073 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 15, %for.body.i.for.body_crit_edge ]
  %shl12 = shl nuw i32 1, %i.073
  %and = and i32 %shl12, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %conv16 = select i1 %tobool13.not, i8 -128, i8 -124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 %conv16) #18, !srcloc !367
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv22 = or i8 %conv16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 %conv22) #18, !srcloc !367
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec = add nsw i32 %i.073, -1
  %cmp10.not = icmp eq i32 %i.073, 0
  br i1 %cmp10.not, label %for.body.for.body29_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.body29_crit_edge:                    ; preds = %for.body
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body.for.body29_crit_edge
  %i.175 = phi i32 [ %dec45, %for.body29.for.body29_crit_edge ], [ 19, %for.body.for.body29_crit_edge ]
  %retval1.074 = phi i32 [ %or40, %for.body29.for.body29_crit_edge ], [ 0, %for.body.for.body29_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 0) #18, !srcloc !367
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %shl33 = shl i32 %retval1.074, 1
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %14 = lshr i8 %13, 1
  %.lobit = and i8 %14, 1
  %15 = zext i8 %.lobit to i32
  %or40 = or i32 %shl33, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i72, i8 1) #18, !srcloc !367
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec45 = add nsw i32 %i.175, -1
  %cmp27 = icmp ugt i32 %i.175, 1
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.end46

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body29

for.end46:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  %and47 = and i32 %retval1.074, 65535
  br label %cleanup

cleanup:                                          ; preds = %for.end46, %cond.true, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %and47, %for.end46 ], [ %conv9, %cond.true ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %location, 18
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %value
  %or3 = or i32 %or2, 1342308352
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy_id)
  %cmp = icmp sgt i32 %phy_id, 31
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %location)
  %cmp6 = icmp eq i32 %location, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -64) #18, !srcloc !367
  %conv = trunc i32 %value to i16
  %add.ptr8 = getelementptr i8, ptr %1, i32 98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %2) #18, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #18, !srcloc !367
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %location)
  %cmp10 = icmp slt i32 %location, 8
  br i1 %cmp10, label %land.lhs.true, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %3 = lshr i32 140, %location
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not = icmp eq i32 %4, 0
  br i1 %tobool.not.not, label %if.then13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [8 x i8], ptr @mii_2_8139_map, i32 0, i32 %location
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %6 to i32
  %conv14 = trunc i32 %value to i16
  %add.ptr17 = getelementptr i8, ptr %1, i32 %conv12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv14) #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 %7) #18, !srcloc !377
  br label %cleanup

if.end19:                                         ; preds = %entry
  %add.ptr.i73 = getelementptr i8, ptr %1, i32 90
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end19
  %i.09.i = phi i32 [ 32, %if.end19 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 -124) #18, !srcloc !367
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 -123) #18, !srcloc !367
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec.i = add nsw i32 %i.09.i, -1
  %cmp.not.i = icmp eq i32 %i.09.i, 0
  br i1 %cmp.not.i, label %for.body.i.for.body_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.for.body_crit_edge:                    ; preds = %for.body.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.i.for.body_crit_edge
  %i.074 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %for.body.i.for.body_crit_edge ]
  %shl22 = shl nuw i32 1, %i.074
  %and = and i32 %shl22, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %conv24 = select i1 %tobool23.not, i8 -128, i8 -124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 %conv24) #18, !srcloc !367
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv29 = or i8 %conv24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 %conv29) #18, !srcloc !367
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dec = add nsw i32 %i.074, -1
  %cmp20.not = icmp eq i32 %i.074, 0
  br i1 %cmp20.not, label %for.body36.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body36.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 0) #18, !srcloc !367
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 1) #18, !srcloc !367
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 0) #18, !srcloc !367
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 1) #18, !srcloc !367
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  br label %cleanup

cleanup:                                          ; preds = %for.body36.preheader, %if.then13, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rtl8139_cleanup_dev(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.134, i32 noundef 723) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pci_dev = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %cmp4.not = icmp eq ptr %1, null
  br i1 %cmp4.not, label %do.end16, label %if.end.if.end19_crit_edge, !prof !364

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end19

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.134, i32 noundef 724) #21
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end.if.end19_crit_edge
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %tobool21.not = icmp eq ptr %5, null
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef nonnull %5) #18
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  tail call void @pci_release_regions(ptr noundef %3) #18
  tail call void @free_netdev(ptr noundef %dev) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @rtl8139_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %tx_bufs_dma = getelementptr i8, ptr %dev, i32 2692
  %call.i95 = tail call ptr @dma_alloc_attrs(ptr noundef %dev5, i32 noundef 7168, ptr noundef %tx_bufs_dma, i32 noundef 3264, i32 noundef 0) #18
  %tx_bufs = getelementptr i8, ptr %dev, i32 2688
  %8 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i95, ptr %tx_bufs, align 8
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2608
  %call.i96 = tail call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 34832, ptr noundef %rx_ring_dma, i32 noundef 3264, i32 noundef 0) #18
  %rx_ring = getelementptr i8, ptr %dev, i32 2548
  %11 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i96, ptr %rx_ring, align 4
  %12 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_bufs, align 8
  %cmp = icmp eq ptr %13, null
  %cmp12 = icmp eq ptr %call.i96, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then13, label %if.end31

if.then13:                                        ; preds = %if.end
  %call14 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #18
  %14 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_bufs, align 8
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.then13.if.end22_crit_edge, label %if.then17

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bufs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev19, i32 noundef 7168, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then13.if.end22_crit_edge
  %20 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ring, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 8
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev27, i32 noundef 34832, ptr noundef nonnull %21, i32 noundef %25, i32 noundef 0) #18
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %napi = getelementptr i8, ptr %dev, i32 2320
  tail call void @napi_enable(ptr noundef %napi) #18
  %force_media = getelementptr i8, ptr %dev, i32 2932
  %26 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %force_media, align 4
  %27 = shl i8 %bf.load, 1
  %bf.shl = and i8 %27, -128
  %bf.clear34 = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear34
  store i8 %bf.set, ptr %force_media, align 4
  %tx_flag = getelementptr i8, ptr %dev, i32 2612
  %28 = ptrtoint ptr %tx_flag to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 524288, ptr %tx_flag, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2552
  %29 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur_rx.i, align 8
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2616
  %30 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2620
  %31 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dirty_tx.i, align 4
  %32 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_bufs, align 8
  %arrayidx1.i = getelementptr i8, ptr %dev, i32 2672
  %34 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %arrayidx1.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %33, i32 1792
  %arrayidx1.1.i = getelementptr i8, ptr %dev, i32 2676
  %35 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.1.i, ptr %arrayidx1.1.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %33, i32 3584
  %arrayidx1.2.i = getelementptr i8, ptr %dev, i32 2680
  %36 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.2.i, ptr %arrayidx1.2.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %33, i32 5376
  %arrayidx1.3.i = getelementptr i8, ptr %dev, i32 2684
  %37 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.3.i, ptr %arrayidx1.3.i, align 4
  tail call fastcc void @rtl8139_hw_start(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2316
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end31.do.end55_crit_edge, label %do.body37

if.end31.do.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end55

do.body37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_open.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_open, %if.then42)) #18
          to label %do.end55 [label %if.then42], !srcloc !365

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %43, i32 0, i32 47, i32 1
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %45 to i64
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv45 = zext i8 %46 to i32
  %47 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load48 = load i8, ptr %force_media, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load48)
  %tobool51.not = icmp sgt i8 %bf.load48, -1
  %cond = select i1 %tobool51.not, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_open.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i64 noundef %conv, i32 noundef %5, i32 noundef %conv45, ptr noundef nonnull %cond) #18
  br label %do.end55

do.end55:                                         ; preds = %if.then42, %do.body37, %if.end31.do.end55_crit_edge
  %twistie.i = getelementptr i8, ptr %dev, i32 2700
  %48 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %twistie.i, align 4
  %chipset.i = getelementptr i8, ptr %dev, i32 2792
  %49 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chipset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i = icmp eq i32 %50, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %twistie.i, align 4
  br label %if.end3.i

if.else.i:                                        ; preds = %do.end55
  %drv_flags.i = getelementptr i8, ptr %dev, i32 2308
  %52 = ptrtoint ptr %drv_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %drv_flags.i, align 4
  %and.i = and i32 %53, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end3.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else.i.if.end3.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.else.i.if.end3.i_crit_edge, %if.then.i
  %have_thread.i = getelementptr i8, ptr %dev, i32 2703
  %54 = ptrtoint ptr %have_thread.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i = load i8, ptr %have_thread.i, align 1
  %bf.set.i = and i8 %bf.load.i, 123
  %bf.clear5.i = or i8 %bf.set.i, 4
  store i8 %bf.clear5.i, ptr %have_thread.i, align 1
  %thread.i = getelementptr i8, ptr %dev, i32 2816
  %55 = load i32, ptr @next_tick, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %thread.i, i32 noundef %55) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.else.i.cleanup_crit_edge, %if.then25, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %if.then25 ], [ -12, %if.end22.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %napi = getelementptr i8, ptr %dev, i32 2320
  tail call void @napi_disable(ptr noundef %napi) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body1

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body12

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_close.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_close, %if.then6)) #18
          to label %do.body12 [label %if.then6], !srcloc !365

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %1, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_close.__UNIQUE_ID_ddebug388, ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef %conv) #18
  br label %do.body12

do.body12:                                        ; preds = %if.then6, %do.body1, %entry.do.body12_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2704
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %add.ptr21 = getelementptr i8, ptr %1, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #18, !srcloc !367
  %add.ptr22 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 0) #18, !srcloc !377
  %add.ptr23 = getelementptr i8, ptr %1, i32 76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #18, !srcloc !369
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %10 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #18, !srcloc !379
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #18
  %pci_dev = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %call27 = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #18
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2616
  %16 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2620
  %17 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dirty_tx.i, align 4
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %rx_ring = getelementptr i8, ptr %dev, i32 2548
  %20 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ring, align 4
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2608
  %22 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev29, i32 noundef 34832, ptr noundef %21, i32 noundef %23, i32 noundef 0) #18
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %tx_bufs = getelementptr i8, ptr %dev, i32 2688
  %26 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_bufs, align 8
  %tx_bufs_dma = getelementptr i8, ptr %dev, i32 2692
  %28 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_bufs_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev31, i32 noundef 7168, ptr noundef %27, i32 noundef %29, i32 noundef 0) #18
  %30 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rx_ring, align 4
  %31 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tx_bufs, align 8
  %add.ptr34 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 -64) #18, !srcloc !367
  %chipset = getelementptr i8, ptr %dev, i32 2792
  %32 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chipset, align 8
  %34 = and i32 %33, 1073741823
  %35 = lshr i32 752, %34
  %36 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool37.not.not = icmp eq i32 %36, 0
  br i1 %tobool37.not.not, label %if.then38, label %do.body12.if.end40_crit_edge

do.body12.if.end40_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then38:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr39 = getelementptr i8, ptr %1, i32 91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 72) #18, !srcloc !367
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.body12.if.end40_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 2616
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 8
  %rem = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %3)
  %cmp = icmp ult i32 %3, 1792
  br i1 %cmp, label %if.then, label %if.else, !prof !380

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp4 = icmp ult i32 %3, 60
  br i1 %cmp4, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.rtl8139_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 60)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.rtl8139_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  tail call void @skb_copy_and_csum_dev(ptr noundef %skb, ptr noundef %10) #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  %lock = getelementptr i8, ptr %dev, i32 2704
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !381
  tail call void @arm_heavy_mb() #18
  %tx_flag = getelementptr i8, ptr %dev, i32 2612
  %11 = ptrtoint ptr %tx_flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_flag, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %3, i32 60)
  %or = or i32 %12, %13
  %mul = shl nuw nsw i32 %rem, 2
  %add = or i32 %mul, 16
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #18, !srcloc !379
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %16 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_tx, align 8
  %inc29 = add i32 %17, 1
  store i32 %inc29, ptr %cur_tx, align 8
  %sub = add i32 %17, -3
  %dirty_tx = getelementptr i8, ptr %dev, i32 2620
  %18 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %19)
  %cmp31 = icmp eq i32 %sub, %19
  br i1 %cmp31, label %if.then33, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2316
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %do.body39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_start_xmit.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_start_xmit, %if.then49)) #18
          to label %cleanup [label %if.then49], !srcloc !365

if.then49:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_start_xmit.__UNIQUE_ID_ddebug376, ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %3, i32 noundef %rem) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body39, %if.end34.cleanup_crit_edge, %if.else
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2704
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %add.ptr = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -64) #18, !srcloc !367
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %11) #18, !srcloc !379
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %add.ptr15 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr15, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %16) #18, !srcloc !379
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #18, !srcloc !367
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %mii = getelementptr i8, ptr %dev, i32 2916
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_fired = getelementptr i8, ptr %dev, i32 2703
  %0 = ptrtoint ptr %watchdog_fired to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %watchdog_fired, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %watchdog_fired, align 1
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %thread = getelementptr i8, ptr %dev, i32 2816
  tail call void @__init_work(ptr noundef %thread, i32 noundef 0) #18
  %2 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %thread, align 8
  %lockdep_map = getelementptr i8, ptr %dev, i32 2832
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.31, ptr noundef nonnull @rtl8139_tx_timeout.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry10 = getelementptr i8, ptr %dev, i32 2820
  %3 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2824
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2828
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rtl8139_thread, ptr %func, align 4
  %timer = getelementptr i8, ptr %dev, i32 2860
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.33, ptr noundef nonnull @rtl8139_tx_timeout.__key.98) #18
  %6 = load i32, ptr @next_tick, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %thread, i32 noundef %6) #18
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_get_stats64(ptr noundef %dev, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr i8, ptr %dev, i32 2704
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %6 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #18, !srcloc !379
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %stats11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats11) #18
  %rx_stats = getelementptr i8, ptr %dev, i32 2560
  %syncp = getelementptr i8, ptr %dev, i32 2576
  %bytes = getelementptr i8, ptr %dev, i32 2568
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %do.body12

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %if.end
  %call13 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp)
  %8 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_stats, align 8
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %stats, align 8
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bytes, align 8
  %13 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %rx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !382
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %15, %call13
  br i1 %cmp.i.i.i.i.not, label %do.body21.preheader, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body12

do.body21.preheader:                              ; preds = %do.body12
  %tx_stats = getelementptr i8, ptr %dev, i32 2624
  %syncp22 = getelementptr i8, ptr %dev, i32 2640
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %bytes27 = getelementptr i8, ptr %dev, i32 2632
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %do.body21

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body21.preheader
  %call23 = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp22)
  %16 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_stats, align 8
  %18 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %tx_packets, align 8
  %19 = ptrtoint ptr %bytes27 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bytes27, align 8
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %tx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !382
  %22 = ptrtoint ptr %syncp22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %syncp22, align 4
  %cmp.i.i.i.i52.not = icmp eq i32 %23, %call23
  br i1 %cmp.i.i.i.i52.not, label %do.end32, label %do.body21.do.body21_crit_edge

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body21

do.end32:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #18
  %call2 = tail call i32 @rtl8139_interrupt(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_set_features(ptr noundef %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %dev, i32 2704
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %rx_config = getelementptr i8, ptr %dev, i32 2796
  %4 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_config, align 4
  %and10 = and i64 %features, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  %and13 = and i32 %5, -63409
  %rx_mode.0 = select i1 %tobool11.not, i32 63360, i32 63408
  %or15 = or i32 %rx_mode.0, %and13
  %6 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or15, ptr %rx_config, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %7 = tail call i32 @llvm.bswap.i32(i32 %or15) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #18, !srcloc !379
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %dev_instance, i32 2704
  tail call void @_raw_spin_lock(ptr noundef %lock) #18
  %add.ptr = getelementptr i8, ptr %1, i32 62
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 49279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp5 = icmp eq i16 %2, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end14, !prof !383

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end14:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then24, label %if.end26, !prof !364

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr25 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 0) #18, !srcloc !377
  br label %out

if.end26:                                         ; preds = %if.end14
  %and28 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end41_crit_edge, label %if.then36, !prof !380

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr37 = getelementptr i8, ptr %1, i32 116
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37) #18, !srcloc !374
  %7 = shl i16 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %8 = and i16 %7, 2048
  %and40 = zext i16 %8 to i32
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end26.if.end41_crit_edge
  %link_changed.0 = phi i32 [ %and40, %if.then36 ], [ 0, %if.end26.if.end41_crit_edge ]
  %and43 = and i16 %3, -90
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and43)
  %tobool45.not = icmp eq i16 %and43, 0
  br i1 %tobool45.not, label %if.end41.if.end48_crit_edge, label %if.then46

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  %9 = tail call i16 @llvm.bswap.i16(i16 %and43) #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %9) #18, !srcloc !377
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end41.if.end48_crit_edge
  %and50 = and i32 %conv, 81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end60_crit_edge, label %if.then52

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then52:                                        ; preds = %if.end48
  %napi = getelementptr i8, ptr %dev_instance, i32 2320
  %call53 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call53, label %do.body, label %if.then52.if.end60_crit_edge

if.then52.if.end60_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

do.body:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr55 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 11968) #18, !srcloc !377
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %if.end60

if.end60:                                         ; preds = %do.body, %if.then52.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %and62 = and i32 %conv, 49186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end72_crit_edge, label %if.then70, !prof !380

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end72

if.then70:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @rtl8139_weird_interrupt(ptr noundef %dev_instance, ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef %conv, i32 noundef %link_changed.0)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end60.if.end72_crit_edge
  %and74 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.out_crit_edge, label %if.then76

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then76:                                        ; preds = %if.end72
  tail call fastcc void @rtl8139_tx_interrupt(ptr noundef %dev_instance, ptr noundef %add.ptr.i, ptr noundef %1)
  %and78 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then76.out_crit_edge, label %if.then80

if.then76.out_crit_edge:                          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then80:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 2048) #18, !srcloc !377
  br label %out

out:                                              ; preds = %if.then80, %if.then76.out_crit_edge, %if.end72.out_crit_edge, %if.then24, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_interrupt.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_interrupt, %if.then95)) #18
          to label %do.end103 [label %if.then95], !srcloc !365

if.then95:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv98 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_interrupt.__UNIQUE_ID_ddebug387, ptr noundef %dev_instance, ptr noundef nonnull @.str.75, i32 noundef %conv98) #18
  br label %do.end103

do.end103:                                        ; preds = %if.then95, %out
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_hw_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %chipset = getelementptr i8, ptr %dev, i32 2792
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 8
  %4 = and i32 %3, 1073741823
  %5 = lshr i32 752, %4
  %6 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.not = icmp eq i32 %6, 0
  br i1 %tobool.not.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %1, i32 91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 82) #18, !srcloc !367
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i126 = getelementptr i8, ptr %1, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i126, i8 16) #18, !srcloc !367
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.06.i = phi i32 [ 1000, %if.end ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !373
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i126) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2.i = icmp eq i8 %8, 0
  br i1 %cmp2.i, label %for.body.i.rtl8139_chip_reset.exit_crit_edge, label %if.end.i

for.body.i.rtl8139_chip_reset.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl8139_chip_reset.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #18
  %dec.i = add nsw i32 %i.06.i, -1
  %cmp.i = icmp ugt i32 %i.06.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rtl8139_chip_reset.exit_crit_edge

if.end.i.rtl8139_chip_reset.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl8139_chip_reset.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

rtl8139_chip_reset.exit:                          ; preds = %if.end.i.rtl8139_chip_reset.exit_crit_edge, %for.body.i.rtl8139_chip_reset.exit_crit_edge
  %add.ptr1 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 -64) #18, !srcloc !367
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr, align 64
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %14) #18, !srcloc !379
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %add.ptr13 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr13, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  %add.ptr14 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #18, !srcloc !379
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %cur_rx = getelementptr i8, ptr %dev, i32 2552
  %23 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cur_rx, align 8
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2608
  %24 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ring_dma, align 8
  %add.ptr20 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %26) #18, !srcloc !379
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i126, i8 12) #18, !srcloc !367
  %rx_config = getelementptr i8, ptr %dev, i32 2796
  %28 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 63370, ptr %rx_config, align 4
  %add.ptr27 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -1963524096) #18, !srcloc !379
  %add.ptr28 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -2147090429) #18, !srcloc !379
  %phys.i = getelementptr i8, ptr %dev, i32 2696
  %29 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.i127 = icmp sgt i8 %30, -1
  br i1 %cmp.i127, label %if.then.i, label %rtl8139_chip_reset.exit.rtl_check_media.exit_crit_edge

rtl8139_chip_reset.exit.rtl_check_media.exit_crit_edge: ; preds = %rtl8139_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl_check_media.exit

if.then.i:                                        ; preds = %rtl8139_chip_reset.exit
  call void @__sanitizer_cov_trace_pc() #20
  %mii.i = getelementptr i8, ptr %dev, i32 2916
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2316
  %31 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %32, 4
  %call2.i = tail call i32 @mii_check_media(ptr noundef %mii.i, i32 noundef %and.i, i32 noundef 1) #18
  br label %rtl_check_media.exit

rtl_check_media.exit:                             ; preds = %if.then.i, %rtl8139_chip_reset.exit.rtl_check_media.exit_crit_edge
  %33 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chipset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp = icmp ugt i32 %34, 3
  br i1 %cmp, label %if.then31, label %rtl_check_media.exit.do.body40_crit_edge

rtl_check_media.exit.do.body40_crit_edge:         ; preds = %rtl_check_media.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body40

if.then31:                                        ; preds = %rtl_check_media.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr32 = getelementptr i8, ptr %1, i32 89
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %36 = and i8 %35, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %36) #18, !srcloc !367
  br label %do.body40

do.body40:                                        ; preds = %if.then31, %rtl_check_media.exit.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_hw_start.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_hw_start, %if.then46)) #18
          to label %do.end51 [label %if.then46], !srcloc !365

if.then46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_hw_start.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.91) #18
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %do.body40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 0) #18, !srcloc !367
  %tx_bufs_dma = getelementptr i8, ptr %dev, i32 2692
  %tx_bufs = getelementptr i8, ptr %dev, i32 2688
  %37 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bufs_dma, align 4
  %arrayidx56 = getelementptr i8, ptr %dev, i32 2672
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx56, align 4
  %41 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_bufs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %42 to i32
  %sub.ptr.sub = add i32 %38, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %add.ptr58 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %43 = tail call i32 @llvm.bswap.i32(i32 %add) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %43) #18, !srcloc !379
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %45 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bufs_dma, align 4
  %arrayidx56.1 = getelementptr i8, ptr %dev, i32 2676
  %47 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx56.1, align 4
  %49 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_bufs, align 8
  %sub.ptr.lhs.cast.1 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.1 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.1 = add i32 %46, %sub.ptr.lhs.cast.1
  %add.1 = sub i32 %sub.ptr.sub.1, %sub.ptr.rhs.cast.1
  %add.ptr58.1 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %51 = tail call i32 @llvm.bswap.i32(i32 %add.1) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.1, i32 %51) #18, !srcloc !379
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.1) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %53 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_bufs_dma, align 4
  %arrayidx56.2 = getelementptr i8, ptr %dev, i32 2680
  %55 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx56.2, align 4
  %57 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_bufs, align 8
  %sub.ptr.lhs.cast.2 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.2 = ptrtoint ptr %58 to i32
  %sub.ptr.sub.2 = add i32 %54, %sub.ptr.lhs.cast.2
  %add.2 = sub i32 %sub.ptr.sub.2, %sub.ptr.rhs.cast.2
  %add.ptr58.2 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %59 = tail call i32 @llvm.bswap.i32(i32 %add.2) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.2, i32 %59) #18, !srcloc !379
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.2) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %61 = ptrtoint ptr %tx_bufs_dma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_bufs_dma, align 4
  %arrayidx56.3 = getelementptr i8, ptr %dev, i32 2684
  %63 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx56.3, align 4
  %65 = ptrtoint ptr %tx_bufs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_bufs, align 8
  %sub.ptr.lhs.cast.3 = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.3 = ptrtoint ptr %66 to i32
  %sub.ptr.sub.3 = add i32 %62, %sub.ptr.lhs.cast.3
  %add.3 = sub i32 %sub.ptr.sub.3, %sub.ptr.rhs.cast.3
  %add.ptr58.3 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.3) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.3, i32 %67) #18, !srcloc !379
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.3) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %add.ptr65 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #18, !srcloc !379
  %lock.i = getelementptr i8, ptr %dev, i32 2704
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  tail call fastcc void @__set_rx_mode(ptr noundef %dev) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #18
  %add.ptr66 = getelementptr i8, ptr %1, i32 92
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %70 = and i16 %69, 240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 %70) #18, !srcloc !377
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i126) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %72 = and i8 %71, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %72)
  %.not = icmp eq i8 %72, 12
  br i1 %.not, label %do.end51.if.end82_crit_edge, label %if.then80

do.end51.if.end82_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then80:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i126, i8 12) #18, !srcloc !367
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %do.end51.if.end82_crit_edge
  %add.ptr83 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr83, i16 32704) #18, !srcloc !377
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_weird_interrupt(ptr noundef %dev, ptr noundef readonly %tp, ptr noundef %ioaddr, i32 noundef %status, i32 noundef %link_changed) unnamed_addr #2 align 64 {
entry:
  %pci_cmd_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_weird_interrupt.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_weird_interrupt, %if.then)) #18
          to label %do.end4 [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_weird_interrupt.__UNIQUE_ID_ddebug386, ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %status) #18
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %do.end15, label %do.end4.if.end18_crit_edge, !prof !364

do.end4.if.end18_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

do.end15:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.76, i32 noundef 2096) #21
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end4.if.end18_crit_edge
  %cmp19.not = icmp eq ptr %tp, null
  br i1 %cmp19.not, label %do.end30, label %if.end18.if.end33_crit_edge, !prof !364

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.76, i32 noundef 2097) #21
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end18.if.end33_crit_edge
  %cmp34.not = icmp eq ptr %ioaddr, null
  br i1 %cmp34.not, label %do.end45, label %if.end33.if.end48_crit_edge, !prof !364

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.76, i32 noundef 2098) #21
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end33.if.end48_crit_edge
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 76
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %2 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #18, !srcloc !379
  %and = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_changed)
  %tobool52.not = icmp eq i32 %link_changed, 0
  %or.cond = or i1 %tobool51.not, %tobool52.not
  br i1 %or.cond, label %if.end48.if.end58_crit_edge, label %land.lhs.true53

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

land.lhs.true53:                                  ; preds = %if.end48
  %drv_flags = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 1
  %4 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_flags, align 4
  %and54 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true53.if.end58_crit_edge, label %if.then56

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then56:                                        ; preds = %land.lhs.true53
  %phys.i = getelementptr i8, ptr %dev, i32 2696
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp sgt i8 %7, -1
  br i1 %cmp.i, label %if.then.i, label %if.then56.rtl_check_media.exit_crit_edge

if.then56.rtl_check_media.exit_crit_edge:         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl_check_media.exit

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  %mii.i = getelementptr i8, ptr %dev, i32 2916
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2316
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %9, 4
  %call2.i = tail call i32 @mii_check_media(ptr noundef %mii.i, i32 noundef %and.i, i32 noundef 0) #18
  br label %rtl_check_media.exit

rtl_check_media.exit:                             ; preds = %if.then.i, %if.then56.rtl_check_media.exit_crit_edge
  %and57 = and i32 %status, -33
  br label %if.end58

if.end58:                                         ; preds = %rtl_check_media.exit, %land.lhs.true53.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %status.addr.0 = phi i32 [ %and57, %rtl_check_media.exit ], [ %status, %land.lhs.true53.if.end58_crit_edge ], [ %status, %if.end48.if.end58_crit_edge ]
  %and59 = and i32 %status.addr.0, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end63_crit_edge, label %if.then61

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %10 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge
  %and64 = and i32 %status.addr.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end69_crit_edge, label %if.then66

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %12 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_length_errors, align 8
  %inc68 = add i32 %13, 1
  store i32 %inc68, ptr %rx_length_errors, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63.if.end69_crit_edge
  %and70 = and i32 %status.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %14 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_fifo_errors, align 8
  %inc74 = add i32 %15, 1
  store i32 %inc74, ptr %rx_fifo_errors, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  %and76 = and i32 %status.addr.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %if.then78

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_cmd_status) #18
  %16 = ptrtoint ptr %pci_cmd_status to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %pci_cmd_status, align 2, !annotation !363
  %pci_dev = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 2
  %17 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev, align 8
  %call79 = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %pci_cmd_status) #18
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 8
  %21 = ptrtoint ptr %pci_cmd_status to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pci_cmd_status, align 2
  %call81 = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef 6, i16 noundef zeroext %22) #18
  %23 = ptrtoint ptr %pci_cmd_status to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pci_cmd_status, align 2
  %conv = zext i16 %24 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %conv) #21
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_cmd_status) #18
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end75.if.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_tx_interrupt(ptr noundef %dev, ptr noundef %tp, ptr noundef %ioaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %do.end, label %entry.if.end_crit_edge, !prof !364

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.84, i32 noundef 1768) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp3.not = icmp eq ptr %ioaddr, null
  br i1 %cmp3.not, label %do.end15, label %if.end.if.end18_crit_edge, !prof !364

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.84, i32 noundef 1769) #21
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end.if.end18_crit_edge
  %dirty_tx19 = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 12
  %0 = ptrtoint ptr %dirty_tx19 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dirty_tx19, align 4
  %cur_tx = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 11
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_tx, align 8
  %sub = sub i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20.not159 = icmp eq i32 %sub, 0
  br i1 %cmp20.not159, label %if.end18.while.end_crit_edge, label %while.body.lr.ph

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end18
  %msg_enable = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 3
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %add.ptr55 = getelementptr i8, ptr %ioaddr, i32 64
  %add.ptr56 = getelementptr i8, ptr %ioaddr, i32 62
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %tx_flag = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 10
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %tx_stats = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 13
  %syncp = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 13, i32 2
  %bytes = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 13, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 13, i32 2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dirty_tx.0161 = phi i32 [ %1, %while.body.lr.ph ], [ %inc95, %cleanup.while.body_crit_edge ]
  %tx_left.0160 = phi i32 [ %sub, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %rem = shl i32 %dirty_tx.0161, 2
  %mul = and i32 %rem, 12
  %add = or i32 %mul, 16
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %and = and i32 %5, 1073790976
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %while.body.while.end_crit_edge, label %if.end25

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end25:                                         ; preds = %while.body
  %and26 = and i32 %5, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %do.body29

do.body29:                                        ; preds = %if.end25
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and30 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.end49_crit_edge, label %do.body33

do.body29.do.end49_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end49

do.body33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_tx_interrupt.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_tx_interrupt, %if.then43)) #18
          to label %do.end49 [label %if.then43], !srcloc !365

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_tx_interrupt.__UNIQUE_ID_ddebug377, ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %5) #18
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body33, %do.body29.do.end49_crit_edge
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and50 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end49.if.end60_crit_edge, label %if.then52

do.end49.if.end60_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end60

if.then52:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_aborted_errors, align 8
  %inc54 = add i32 %11, 1
  store i32 %inc54, ptr %tx_aborted_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 16777216) #18, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 2048) #18, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !384
  tail call void @arm_heavy_mb() #18
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %do.end49.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool62.not = icmp sgt i32 %5, -1
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_carrier_errors, align 4
  %inc65 = add i32 %13, 1
  store i32 %inc65, ptr %tx_carrier_errors, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %and67 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.then69

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_window_errors, align 8
  %inc71 = add i32 %15, 1
  store i32 %inc71, ptr %tx_window_errors, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %and73 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else.if.end83_crit_edge, label %if.then75

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end83

if.then75:                                        ; preds = %if.else
  %16 = ptrtoint ptr %tx_flag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %17)
  %cmp76 = icmp ult i32 %17, 3145728
  br i1 %cmp76, label %if.then77, label %if.then75.if.end80_crit_edge

if.then75.if.end80_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #20
  %add79 = add nuw nsw i32 %17, 131072
  %18 = ptrtoint ptr %tx_flag to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add79, ptr %tx_flag, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then75.if.end80_crit_edge
  %19 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_fifo_errors, align 8
  %inc82 = add i32 %20, 1
  store i32 %inc82, ptr %tx_fifo_errors, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %if.else.if.end83_crit_edge
  %21 = lshr i32 %5, 24
  %and84 = and i32 %21, 15
  %22 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %collisions, align 4
  %add86 = add i32 %23, %and84
  store i32 %add86, ptr %collisions, align 4
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %24 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_stats, align 8
  %inc88 = add i64 %25, 1
  store i64 %inc88, ptr %tx_stats, align 8
  %and89 = and i32 %5, 2047
  %26 = zext i32 %and89 to i64
  %27 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bytes, align 8
  %add91 = add i64 %28, %26
  store i64 %add91, ptr %bytes, align 8
  %29 = tail call ptr @llvm.returnaddress(i32 0) #18
  %30 = ptrtoint ptr %29 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %30) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !385
  %31 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then69, %if.end66.cleanup_crit_edge
  %inc95 = add i32 %dirty_tx.0161, 1
  %dec = add i32 %tx_left.0160, -1
  %cmp20.not = icmp eq i32 %dec, 0
  br i1 %cmp20.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end18.while.end_crit_edge
  %dirty_tx.0.lcssa = phi i32 [ %1, %if.end18.while.end_crit_edge ], [ %dirty_tx.0161, %while.body.while.end_crit_edge ], [ %3, %cleanup.while.end_crit_edge ]
  %33 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_tx, align 8
  %sub98 = sub i32 %34, %dirty_tx.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub98)
  %cmp99 = icmp ugt i32 %sub98, 4
  br i1 %cmp99, label %if.then101, label %while.end.if.end104_crit_edge

while.end.if.end104_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

if.then101:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %dirty_tx.0.lcssa, i32 noundef %34) #21
  %add103 = add i32 %dirty_tx.0.lcssa, 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %while.end.if.end104_crit_edge
  %dirty_tx.3 = phi i32 [ %add103, %if.then101 ], [ %dirty_tx.0.lcssa, %while.end.if.end104_crit_edge ]
  %35 = ptrtoint ptr %dirty_tx19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dirty_tx19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %dirty_tx.3)
  %cmp106.not = icmp eq i32 %36, %dirty_tx.3
  br i1 %cmp106.not, label %if.end104.if.end113_crit_edge, label %if.then108

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end113

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %dirty_tx19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dirty_tx.3, ptr %dirty_tx19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !386
  tail call void @arm_heavy_mb() #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %39) #18
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end104.if.end113_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !387
  %5 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !388
  %14 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !389
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !390
  %33 = tail call i32 @llvm.read_register.i32(metadata !353) #18
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !380

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !391
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #18
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_copy_and_csum_dev(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_rx_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #18
  %2 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_rx_mode.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_rx_mode, %if.then)) #18
          to label %do.end8 [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !369
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__set_rx_mode.__UNIQUE_ID_ddebug389, ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %4, i32 noundef %6) #18
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %flags9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags9, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %do.end8.if.end68.sink.split_crit_edge

do.end8.if.end68.sink.split_crit_edge:            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68.sink.split

if.else:                                          ; preds = %do.end8
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %11 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp = icmp sle i32 %10, %11
  %and14 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.else19, label %if.else.if.end68.sink.split_crit_edge

if.else.if.end68.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68.sink.split

if.else19:                                        ; preds = %if.else
  %12 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mc_filter, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %2, align 4
  %14 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0135 = load ptr, ptr %mc, align 4
  %cmp28.not136 = icmp eq ptr %ha.0135, %mc
  br i1 %cmp28.not136, label %if.else19.if.end68_crit_edge, label %if.else19.cond.end_crit_edge

if.else19.cond.end_crit_edge:                     ; preds = %if.else19
  br label %cond.end

if.else19.if.end68_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else19.cond.end_crit_edge
  %ha.0137 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0135, %if.else19.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0137, i32 0, i32 2
  %call31 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #22
  %15 = and i32 %call31, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %17 to i32
  %shr55 = lshr i32 %conv2.i.i, 2
  %and56 = and i32 %shr55, 31
  %shl57 = shl nuw i32 1, %and56
  %18 = lshr i32 %conv2.i.i, 7
  %arrayidx59 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx59, align 4
  %or60 = or i32 %shl57, %20
  store i32 %or60, ptr %arrayidx59, align 4
  %21 = ptrtoint ptr %ha.0137 to i32
  call void @__asan_load4_noabort(i32 %21)
  %ha.0 = load ptr, ptr %ha.0137, align 4
  %cmp28.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp28.not, label %cond.end.if.end68_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.end.if.end68_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

if.end68.sink.split:                              ; preds = %if.else.if.end68.sink.split_crit_edge, %do.end8.if.end68.sink.split_crit_edge
  %rx_mode.1.ph = phi i32 [ 15, %do.end8.if.end68.sink.split_crit_edge ], [ 14, %if.else.if.end68.sink.split_crit_edge ]
  %22 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %mc_filter, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %2, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %cond.end.if.end68_crit_edge, %if.else19.if.end68_crit_edge
  %rx_mode.1 = phi i32 [ 10, %if.else19.if.end68_crit_edge ], [ %rx_mode.1.ph, %if.end68.sink.split ], [ 14, %cond.end.if.end68_crit_edge ]
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features, align 16
  %and69 = and i64 %25, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69)
  %tobool70.not = icmp eq i64 %and69, 0
  %or72 = or i32 %rx_mode.1, 48
  %spec.select = select i1 %tobool70.not, i32 %rx_mode.1, i32 %or72
  %or74 = or i32 %spec.select, 63360
  %rx_config = getelementptr i8, ptr %dev, i32 2796
  %26 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %or74)
  %cmp75.not = icmp eq i32 %27, %or74
  br i1 %cmp75.not, label %if.end68.do.body85_crit_edge, label %do.body77

if.end68.do.body85_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body85

do.body77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr78 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %28 = tail call i32 @llvm.bswap.i32(i32 %or74) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %28) #18, !srcloc !379
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %30 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or74, ptr %rx_config, align 4
  br label %do.body85

do.body85:                                        ; preds = %do.body77, %if.end68.do.body85_crit_edge
  %31 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mc_filter, align 4
  %add.ptr87 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %33) #18, !srcloc !379
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %add.ptr94 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %37) #18, !srcloc !379
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !392
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #18
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #18
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #18
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #18
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !393
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !364

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !394
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !395
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !396
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !397
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #18
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #18
  %pci_dev = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8139_get_regs_len(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @use_io, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %regs_len = getelementptr i8, ptr %dev, i32 2948
  %1 = ptrtoint ptr %regs_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regs_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_get_regs(ptr noundef %dev, ptr nocapture noundef %regs, ptr noundef %regbuf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @use_io, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void @mmiocpy(ptr noundef %regbuf, ptr noundef %3, i32 noundef %5) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8139_get_wol(ptr noundef %dev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %chipset = getelementptr i8, ptr %dev, i32 2792
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 8
  %4 = and i32 %3, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 89
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %add.ptr2 = getelementptr i8, ptr %1, i32 216
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 47, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %conv = zext i8 %5 to i32
  %and4 = lshr i32 %conv, 4
  %and4.lobit = and i32 %and4, 1
  %and9 = and i32 %conv, 32
  %8 = or i32 %and9, %and4.lobit
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wolopts, align 4
  %conv15 = zext i8 %6 to i32
  %and16 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then.if.end21_crit_edge, label %if.then18

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %or20 = or i32 %11, 2
  store i32 %or20, ptr %wolopts, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then.if.end21_crit_edge
  %and23 = and i32 %conv15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %if.then25

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  %or27 = or i32 %13, 4
  store i32 %or27, ptr %wolopts, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end21.if.end28_crit_edge
  %and30 = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end36_crit_edge, label %if.then32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %or34 = or i32 %15, 8
  store i32 %or34, ptr %wolopts, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge, %entry.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %chipset = getelementptr i8, ptr %dev, i32 2792
  %0 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chipset, align 8
  %2 = and i32 %1, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %neg = select i1 %tobool.not, i32 -1, i32 -48
  %and1 = and i32 %neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %add.ptr = getelementptr i8, ptr %6, i32 89
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %8 = and i8 %7, -49
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %11 = trunc i32 %10 to i8
  %12 = shl i8 %11, 4
  %13 = and i8 %12, 16
  %14 = and i8 %11, 32
  %15 = or i8 %14, %8
  %16 = or i8 %15, %13
  %add.ptr21 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 -64) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %16) #18, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #18, !srcloc !367
  %add.ptr24 = getelementptr i8, ptr %6, i32 216
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %18 = and i8 %17, -113
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 4
  %21 = trunc i32 %20 to i8
  %22 = shl i8 %21, 3
  %23 = and i8 %22, 16
  %24 = or i8 %23, %18
  %25 = and i8 %22, 32
  %26 = or i8 %24, %25
  %27 = and i8 %22, 64
  %28 = or i8 %26, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %28) #18, !srcloc !367
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8139_get_msglevel(ptr nocapture noundef readonly %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @rtl8139_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %datum) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %datum, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2916
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2916
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #18
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl8139_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @ethtool_stats_keys, i32 128)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtl8139_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xstats = getelementptr i8, ptr %dev, i32 2800
  %0 = ptrtoint ptr %xstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xstats, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %data, align 8
  %tx_buf_mapped = getelementptr i8, ptr %dev, i32 2804
  %3 = ptrtoint ptr %tx_buf_mapped to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_buf_mapped, align 4
  %conv2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv2, ptr %arrayidx3, align 8
  %tx_timeouts = getelementptr i8, ptr %dev, i32 2808
  %6 = ptrtoint ptr %tx_timeouts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_timeouts, align 8
  %conv5 = zext i32 %7 to i64
  %arrayidx6 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv5, ptr %arrayidx6, align 8
  %rx_lost_in_ring = getelementptr i8, ptr %dev, i32 2812
  %9 = ptrtoint ptr %rx_lost_in_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_lost_in_ring, align 4
  %conv8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv8, ptr %arrayidx9, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8139_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 4, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %mii = getelementptr i8, ptr %dev, i32 2916
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2704
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %mii = getelementptr i8, ptr %dev, i32 2916
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl8139_rx(ptr noundef %dev, ptr noundef %tp, i32 noundef %budget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 8
  %rx_ring1 = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 6
  %2 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring1, align 4
  %cur_rx2 = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %cur_rx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_rx2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx, %if.then)) #18
          to label %do.end16 [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv6 = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 58
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv8 = zext i16 %7 to i32
  %add.ptr9 = getelementptr i8, ptr %1, i32 56
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #18, !srcloc !374
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv11 = zext i16 %9 to i32
  %add.ptr12 = getelementptr i8, ptr %1, i32 55
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv14 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx.__UNIQUE_ID_ddebug381, ptr noundef %dev, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv11, i32 noundef %conv14) #18
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %and1.i.i385 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i385)
  %tobool.i386 = icmp ne i32 %and1.i.i385, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp387 = icmp sgt i32 %budget, 0
  %or.cond388 = and i1 %tobool.i386, %cmp387
  br i1 %or.cond388, label %land.rhs.lr.ph, label %do.end16.if.then215_crit_edge

do.end16.if.then215_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then215

land.rhs.lr.ph:                                   ; preds = %do.end16
  %add.ptr20 = getelementptr i8, ptr %1, i32 55
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %msg_enable = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 3
  %fifo_copy_timeout = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 30
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %napi = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 4
  %rx_stats = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 8
  %syncp = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 8, i32 2
  %bytes = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 8, i32 1
  %dep_map.i.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 8, i32 2, i32 0, i32 1
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %add.ptr200 = getelementptr i8, ptr %1, i32 56
  %dev.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %received.0391 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc193, %cleanup.land.rhs_crit_edge ]
  %cur_rx.0389 = phi i32 [ %5, %land.rhs.lr.ph ], [ %and197, %cleanup.land.rhs_crit_edge ]
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp23 = icmp eq i8 %14, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %rem = and i32 %cur_rx.0389, 32767
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %add.ptr25 = getelementptr i8, ptr %3, i32 %rem
  %15 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr25, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shr = lshr i32 %17, 16
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features, align 16
  %and26 = and i64 %19, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool27.not = icmp eq i64 %and26, 0
  %sub = add nsw i32 %shr, -4
  %pkt_size.0 = select i1 %tobool27.not, i32 %sub, i32 %shr, !prof !380
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and39 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %while.body.do.end60_crit_edge, label %do.body42

while.body.do.end60_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end60

do.body42:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx, %if.then54)) #18
          to label %do.end60 [label %if.then54], !srcloc !365

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx.__UNIQUE_ID_ddebug382, ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef %17, i32 noundef %shr, i32 noundef %cur_rx.0389) #18
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body42, %while.body.do.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65520, i32 %shr)
  %cmp61 = icmp eq i32 %shr, 65520
  br i1 %cmp61, label %if.then69, label %do.end60.no_early_rx_crit_edge, !prof !364

do.end60.no_early_rx_crit_edge:                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %no_early_rx

if.then69:                                        ; preds = %do.end60
  %22 = ptrtoint ptr %fifo_copy_timeout to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_copy_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool70.not = icmp eq i32 %23, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  br i1 %tobool70.not, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i32 %24, 2
  %25 = ptrtoint ptr %fifo_copy_timeout to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %fifo_copy_timeout, align 8
  br label %do.body100

if.else73:                                        ; preds = %if.then69
  %sub75 = sub i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub75)
  %cmp76 = icmp slt i32 %sub75, 0
  br i1 %cmp76, label %do.body80, label %if.else73.do.body100_crit_edge

if.else73.do.body100_crit_edge:                   ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body100

do.body80:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx, %no_early_rx.thread)) #18
          to label %no_early_rx [label %no_early_rx.thread], !srcloc !365

no_early_rx.thread:                               ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.102) #18
  %26 = ptrtoint ptr %fifo_copy_timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fifo_copy_timeout, align 8
  %and130407 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130407)
  %tobool131.not408 = icmp eq i32 %and130407, 0
  br label %if.then140

do.body100:                                       ; preds = %if.else73.do.body100_crit_edge, %if.then71
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and102 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.body100.while.end.thread_crit_edge, label %do.body105

do.body100.while.end.thread_crit_edge:            ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.thread

do.body105:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx, %if.then117)) #18
          to label %while.end.thread [label %if.then117], !srcloc !365

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx.__UNIQUE_ID_ddebug384, ptr noundef %dev, ptr noundef nonnull @.str.103) #18
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.then117, %do.body105, %do.body100.while.end.thread_crit_edge
  %xstats = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 26
  %29 = ptrtoint ptr %xstats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xstats, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %xstats, align 8
  br label %if.then215

no_early_rx:                                      ; preds = %do.body80, %do.end60.no_early_rx_crit_edge
  %rx_size.1 = phi i32 [ %shr, %do.end60.no_early_rx_crit_edge ], [ 0, %do.body80 ]
  %31 = ptrtoint ptr %fifo_copy_timeout to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fifo_copy_timeout, align 8
  %32 = add nsw i32 %rx_size.1, -1797
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1789, i32 %32)
  %33 = icmp ult i32 %32, -1789
  %and130 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  %or.cond335 = select i1 %33, i1 true, i1 %tobool131.not
  br i1 %or.cond335, label %no_early_rx.if.then140_crit_edge, label %no_early_rx.keep_pkt_crit_edge, !prof !399

no_early_rx.keep_pkt_crit_edge:                   ; preds = %no_early_rx
  call void @__sanitizer_cov_trace_pc() #20
  br label %keep_pkt

no_early_rx.if.then140_crit_edge:                 ; preds = %no_early_rx
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then140

if.then140:                                       ; preds = %no_early_rx.if.then140_crit_edge, %no_early_rx.thread
  %tobool131.not412 = phi i1 [ %tobool131.not408, %no_early_rx.thread ], [ %tobool131.not, %no_early_rx.if.then140_crit_edge ]
  %rx_size.1410 = phi i32 [ 0, %no_early_rx.thread ], [ %rx_size.1, %no_early_rx.if.then140_crit_edge ]
  %34 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %features, align 16
  %and142 = and i64 %35, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and142)
  %tobool143.not = icmp ne i64 %and142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1797, i32 %rx_size.1410)
  %cmp145 = icmp ult i32 %rx_size.1410, 1797
  %or.cond332 = select i1 %tobool143.not, i1 %cmp145, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rx_size.1410)
  %cmp148 = icmp ugt i32 %rx_size.1410, 7
  %or.cond333 = select i1 %or.cond332, i1 %cmp148, i1 false
  %or.cond334 = select i1 %or.cond333, i1 %tobool131.not412, i1 false
  br i1 %or.cond334, label %if.then153, label %if.then140.cleanup.thread_crit_edge

if.then140.cleanup.thread_crit_edge:              ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

if.then153:                                       ; preds = %if.then140
  %36 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_errors, align 8
  %inc154 = add i32 %37, 1
  store i32 %inc154, ptr %rx_errors, align 8
  %and155 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end160, label %if.then153.keep_pkt.sink.split_crit_edge

if.then153.keep_pkt.sink.split_crit_edge:         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #20
  br label %keep_pkt.sink.split

if.end160:                                        ; preds = %if.then153
  %and161 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.cleanup.thread_crit_edge, label %if.end160.keep_pkt.sink.split_crit_edge

if.end160.keep_pkt.sink.split_crit_edge:          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #20
  br label %keep_pkt.sink.split

if.end160.cleanup.thread_crit_edge:               ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end160.cleanup.thread_crit_edge, %if.then140.cleanup.thread_crit_edge
  tail call fastcc void @rtl8139_rx_err(i32 noundef %17, ptr noundef %dev, ptr noundef %tp, ptr noundef %1)
  br label %cleanup250

keep_pkt.sink.split:                              ; preds = %if.end160.keep_pkt.sink.split_crit_edge, %if.then153.keep_pkt.sink.split_crit_edge
  %rx_length_errors.sink434 = phi ptr [ %rx_crc_errors, %if.then153.keep_pkt.sink.split_crit_edge ], [ %rx_length_errors, %if.end160.keep_pkt.sink.split_crit_edge ]
  %38 = ptrtoint ptr %rx_length_errors.sink434 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_length_errors.sink434, align 8
  %inc165 = add i32 %39, 1
  store i32 %inc165, ptr %rx_length_errors.sink434, align 8
  br label %keep_pkt

keep_pkt:                                         ; preds = %keep_pkt.sink.split, %no_early_rx.keep_pkt_crit_edge
  %rx_size.1411 = phi i32 [ %rx_size.1, %no_early_rx.keep_pkt_crit_edge ], [ %rx_size.1410, %keep_pkt.sink.split ]
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %pkt_size.0, i32 noundef 2592) #18
  %tobool170.not = icmp eq ptr %call.i, null
  br i1 %tobool170.not, label %if.else189, label %if.then177, !prof !364

if.then177:                                       ; preds = %keep_pkt
  call void @__sanitizer_cov_trace_pc() #20
  %add178 = add nuw nsw i32 %rem, 4
  %arrayidx = getelementptr i8, ptr %3, i32 %add178
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = call ptr @memcpy(ptr %41, ptr %arrayidx, i32 %pkt_size.0)
  %call179 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %pkt_size.0) #18
  %call180 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #18
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %call180, ptr %protocol, align 8
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %44 = ptrtoint ptr %rx_stats to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rx_stats, align 8
  %inc182 = add i64 %45, 1
  store i64 %inc182, ptr %rx_stats, align 8
  %conv183 = zext i32 %pkt_size.0 to i64
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bytes, align 8
  %add185 = add i64 %47, %conv183
  store i64 %add185, ptr %bytes, align 8
  %48 = tail call ptr @llvm.returnaddress(i32 0) #18
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %49) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !385
  %50 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %call188 = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i) #18
  br label %if.end192

if.else189:                                       ; preds = %keep_pkt
  call void @__sanitizer_cov_trace_pc() #20
  %52 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_dropped, align 8
  %inc191 = add i32 %53, 1
  store i32 %inc191, ptr %rx_dropped, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then177
  %inc193 = add nuw nsw i32 %received.0391, 1
  %add194 = add i32 %cur_rx.0389, 7
  %add196 = add i32 %add194, %rx_size.1411
  %and197 = and i32 %add196, -4
  %54 = trunc i32 %and197 to i16
  %conv199 = add i16 %54, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv199) #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr200, i16 %55) #18, !srcloc !377
  %56 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tp, align 8
  %add.ptr.i = getelementptr i8, ptr %57, i32 62
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #18, !srcloc !374
  %59 = lshr i16 %58, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %60 = and i16 %59, 81
  %conv2.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.not.i = icmp eq i16 %60, 0
  br i1 %cmp.not.i, label %if.end192.cleanup_crit_edge, label %if.then.i, !prof !364

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i:                                        ; preds = %if.end192
  %and6.i = and i32 %conv2.i, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.do.body.i_crit_edge, label %if.then14.i, !prof !380

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.then14.i:                                      ; preds = %if.then.i
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 8
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 4
  %63 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and16.i = and i32 %conv2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.do.body.i_crit_edge, label %if.then18.i

if.then14.i.do.body.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.then18.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 8
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 14
  %67 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc21.i = add i32 %68, 1
  store i32 %inc21.i, ptr %rx_fifo_errors.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then18.i, %if.then14.i.do.body.i_crit_edge, %if.then.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 20736) #18, !srcloc !377
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.end192.cleanup_crit_edge
  %70 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc193, i32 %budget)
  %cmp = icmp slt i32 %inc193, %budget
  %or.cond = select i1 %tobool.i, i1 %cmp, i1 false
  br i1 %or.cond, label %cleanup.land.rhs_crit_edge, label %cleanup.do.body218_crit_edge

cleanup.do.body218_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body218

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.0391)
  %tobool204.not = icmp eq i32 %received.0391, 0
  br i1 %tobool204.not, label %while.end.if.then215_crit_edge, label %while.end.do.body218_crit_edge, !prof !364

while.end.do.body218_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body218

while.end.if.then215_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then215

if.then215:                                       ; preds = %while.end.if.then215_crit_edge, %while.end.thread, %do.end16.if.then215_crit_edge
  %cur_rx.0376 = phi i32 [ %cur_rx.0389, %while.end.thread ], [ %cur_rx.0389, %while.end.if.then215_crit_edge ], [ %5, %do.end16.if.then215_crit_edge ]
  %received.0370 = phi i32 [ %received.0391, %while.end.thread ], [ 0, %while.end.if.then215_crit_edge ], [ 0, %do.end16.if.then215_crit_edge ]
  tail call fastcc void @rtl8139_isr_ack(ptr noundef %tp)
  br label %do.body218

do.body218:                                       ; preds = %if.then215, %while.end.do.body218_crit_edge, %cleanup.do.body218_crit_edge
  %cur_rx.0375 = phi i32 [ %cur_rx.0376, %if.then215 ], [ %cur_rx.0389, %while.end.do.body218_crit_edge ], [ %and197, %cleanup.do.body218_crit_edge ]
  %received.0369 = phi i32 [ %received.0370, %if.then215 ], [ %received.0391, %while.end.do.body218_crit_edge ], [ %inc193, %cleanup.do.body218_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx, %if.then230)) #18
          to label %do.end244 [label %if.then230], !srcloc !365

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr231 = getelementptr i8, ptr %1, i32 58
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr231) #18, !srcloc !374
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv233 = zext i16 %73 to i32
  %add.ptr234 = getelementptr i8, ptr %1, i32 56
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr234) #18, !srcloc !374
  %75 = tail call i16 @llvm.bswap.i16(i16 %74) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv236 = zext i16 %75 to i32
  %add.ptr237 = getelementptr i8, ptr %1, i32 55
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr237) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv239 = zext i8 %76 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx.__UNIQUE_ID_ddebug385, ptr noundef %dev, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.99, i32 noundef %cur_rx.0375, i32 noundef %conv233, i32 noundef %conv236, i32 noundef %conv239) #18
  br label %do.end244

do.end244:                                        ; preds = %if.then230, %do.body218
  %77 = ptrtoint ptr %cur_rx2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cur_rx.0375, ptr %cur_rx2, align 8
  %fifo_copy_timeout246 = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 30
  %78 = ptrtoint ptr %fifo_copy_timeout246 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fifo_copy_timeout246, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool247.not = icmp eq i32 %79, 0
  %spec.select = select i1 %tobool247.not, i32 %received.0369, i32 %budget
  br label %cleanup250

cleanup250:                                       ; preds = %do.end244, %cleanup.thread
  %retval.0 = phi i32 [ %spec.select, %do.end244 ], [ -1, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_rx_err(i32 noundef %rx_status, ptr noundef %dev, ptr nocapture noundef %tp, ptr noundef %ioaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 3
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx_err, %if.then5)) #18
          to label %do.end8 [label %if.then5], !srcloc !365

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx_err.__UNIQUE_ID_ddebug378, ptr noundef %dev, ptr noundef nonnull @.str.106, i32 noundef %rx_status) #18
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %2 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and9 = and i32 %rx_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end8
  %and12 = and i32 %rx_status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end34_crit_edge, label %do.body16

if.then11.if.end34_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

do.body16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx_err, %if.then28)) #18
          to label %if.end34 [label %if.then28], !srcloc !365

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx_err.__UNIQUE_ID_ddebug379, ptr noundef %dev, ptr noundef nonnull @.str.107, i32 noundef %rx_status) #18
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body16, %if.then11.if.end34_crit_edge
  %and35 = and i32 %rx_status, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %4 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_frame_errors, align 4
  %inc39 = add i32 %5, 1
  store i32 %inc39, ptr %rx_frame_errors, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %rx_status, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %6 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_length_errors, align 8
  %inc45 = add i32 %7, 1
  store i32 %inc45, ptr %rx_length_errors, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  %and47 = and i32 %rx_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.do.body55_crit_edge, label %if.then49

if.end46.do.body55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body55

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %8 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_crc_errors, align 8
  %inc51 = add i32 %9, 1
  store i32 %inc51, ptr %rx_crc_errors, align 8
  br label %do.body55

if.else:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #20
  %rx_lost_in_ring = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 26, i32 3
  %10 = ptrtoint ptr %rx_lost_in_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_lost_in_ring, align 4
  %inc53 = add i32 %11, 1
  store i32 %inc53, ptr %rx_lost_in_ring, align 4
  br label %do.body55

do.body55:                                        ; preds = %if.else, %if.then49, %if.end46.do.body55_crit_edge
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 4) #18, !srcloc !367
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body55
  %tmp_work.0 = phi i32 [ 200, %do.body55 ], [ %dec, %while.body.while.cond_crit_edge ]
  %dec = add nsw i32 %tmp_work.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.then68, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #18
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %15 = and i8 %14, 8
  %tobool63.not = icmp eq i8 %15, 0
  br i1 %tobool63.not, label %while.body.while.cond70.preheader_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.body.while.cond70.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond70.preheader

if.then68:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108) #21
  br label %while.cond70.preheader

while.cond70.preheader:                           ; preds = %if.then68, %while.body.while.cond70.preheader_crit_edge
  br label %while.cond70

while.cond70:                                     ; preds = %do.body75.while.cond70_crit_edge, %while.cond70.preheader
  %tmp_work.1 = phi i32 [ %dec71, %do.body75.while.cond70_crit_edge ], [ 200, %while.cond70.preheader ]
  %dec71 = add nsw i32 %tmp_work.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec71)
  %cmp72.not = icmp eq i32 %dec71, 0
  br i1 %cmp72.not, label %if.then94, label %do.body75

do.body75:                                        ; preds = %while.cond70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 12) #18, !srcloc !367
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #18
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %19 = and i8 %18, 12
  %.not = icmp eq i8 %19, 12
  br i1 %.not, label %do.body75.do.body96_crit_edge, label %do.body75.while.cond70_crit_edge

do.body75.while.cond70_crit_edge:                 ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond70

do.body75.do.body96_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body96

if.then94:                                        ; preds = %while.cond70
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.109) #21
  br label %do.body96

do.body96:                                        ; preds = %if.then94, %do.body75.do.body96_crit_edge
  %add.ptr97 = getelementptr i8, ptr %ioaddr, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97, i8 -64) #18, !srcloc !367
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr97) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 12) #18, !srcloc !367
  %rx_config = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 25
  %21 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 63370, ptr %rx_config, align 4
  %add.ptr104 = getelementptr i8, ptr %ioaddr, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 -1963524096) #18, !srcloc !379
  %cur_rx = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 7
  %22 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cur_rx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_rx_err, %if.then118)) #18
          to label %do.end123 [label %if.then118], !srcloc !365

if.then118:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_rx_err.__UNIQUE_ID_ddebug380, ptr noundef %dev, ptr noundef nonnull @.str.91) #18
  br label %do.end123

do.end123:                                        ; preds = %if.then118, %do.body96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97, i8 0) #18, !srcloc !367
  %rx_ring_dma = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 9
  %23 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ring_dma, align 8
  %add.ptr126 = getelementptr i8, ptr %ioaddr, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %25) #18, !srcloc !379
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #18, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_isr_ack(ptr nocapture noundef readonly %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 62
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %4 = and i16 %3, 81
  %conv2 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %if.then, !prof !364

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then:                                          ; preds = %entry
  %and6 = and i32 %conv2, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then.do.body_crit_edge, label %if.then14, !prof !380

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then14:                                        ; preds = %if.then
  %dev = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 5
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and16 = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then14.do.body_crit_edge, label %if.then18

if.then14.do.body_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 14
  %11 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_fifo_errors, align 8
  %inc21 = add i32 %12, 1
  store i32 %inc21, ptr %rx_fifo_errors, align 8
  br label %do.body

do.body:                                          ; preds = %if.then18, %if.then14.do.body_crit_edge, %if.then.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 20736) #18, !srcloc !377
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  br label %if.end26

if.end26:                                         ; preds = %do.body, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_tx_timeout_task(ptr noundef %work) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -512
  %dev1 = getelementptr i8, ptr %work, i32 120
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %napi = getelementptr i8, ptr %work, i32 -496
  tail call void @napi_disable(ptr noundef %napi) #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  tail call void @synchronize_rcu() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_tx_timeout_task, %if.then)) #18
          to label %do.body20 [label %if.then], !srcloc !365

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr6 = getelementptr i8, ptr %3, i32 55
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv = zext i8 %6 to i32
  %add.ptr8 = getelementptr i8, ptr %3, i32 62
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #18, !srcloc !374
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv10 = zext i16 %8 to i32
  %add.ptr11 = getelementptr i8, ptr %3, i32 60
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #18, !srcloc !374
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv13 = zext i16 %10 to i32
  %add.ptr14 = getelementptr i8, ptr %3, i32 88
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv16 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug371, ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv13, i32 noundef %conv16) #18
  br label %do.body20

do.body20:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_tx_timeout_task, %if.then32)) #18
          to label %do.end37 [label %if.then32], !srcloc !365

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #20
  %cur_tx = getelementptr i8, ptr %work, i32 -200
  %12 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %work, i32 -196
  %14 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dirty_tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug372, ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef %13, i32 noundef %15) #18
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %do.body20
  %dirty_tx55 = getelementptr i8, ptr %work, i32 -196
  br label %do.body40

do.body40:                                        ; preds = %for.inc.do.body40_crit_edge, %do.end37
  %i.0113 = phi i32 [ 0, %do.end37 ], [ %inc, %for.inc.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_tx_timeout_task, %if.then52)) #18
          to label %for.inc [label %if.then52], !srcloc !365

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  %mul = shl i32 %i.0113, 2
  %add = add nuw nsw i32 %mul, 16
  %add.ptr53 = getelementptr i8, ptr %3, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #18, !srcloc !369
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %18 = ptrtoint ptr %dirty_tx55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_tx55, align 4
  %rem = and i32 %19, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0113, i32 %rem)
  %cmp56 = icmp eq i32 %i.0113, %rem
  %cond = select i1 %cmp56, ptr @.str.116, ptr @.str.117
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug373, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %i.0113, i32 noundef %17, ptr noundef nonnull %cond) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %do.body40
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body40_crit_edge

for.inc.do.body40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body40

for.end:                                          ; preds = %for.inc
  %tx_timeouts = getelementptr i8, ptr %work, i32 -8
  %20 = ptrtoint ptr %tx_timeouts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_timeouts, align 8
  %inc63 = add i32 %21, 1
  store i32 %inc63, ptr %tx_timeouts, align 8
  %add.ptr64 = getelementptr i8, ptr %3, i32 55
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool67.not = icmp eq i8 %23, 0
  br i1 %tobool67.not, label %for.end.if.end70_crit_edge, label %if.then68

for.end.if.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then68:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 8) #18, !srcloc !367
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %for.end.if.end70_crit_edge
  %rx_lock = getelementptr i8, ptr %work, i32 -68
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #18
  %add.ptr71 = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 0) #18, !srcloc !377
  %lock = getelementptr i8, ptr %work, i32 -112
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #18
  %cur_tx.i = getelementptr i8, ptr %work, i32 -200
  %24 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cur_tx.i, align 8
  %25 = ptrtoint ptr %dirty_tx55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dirty_tx55, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #18
  tail call void @napi_enable(ptr noundef %napi) #18
  tail call fastcc void @rtl8139_hw_start(ptr noundef %1)
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8139_thread_iter(ptr noundef %dev, ptr nocapture noundef %tp, ptr noundef %ioaddr) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %phys = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 17
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phys, align 8
  %conv = sext i8 %1 to i32
  %call = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv, i32 noundef 5)
  %force_media = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 28, i32 4
  %2 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %force_media, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp.not = icmp eq i32 %call, 65535
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then:                                          ; preds = %entry
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %and3 = and i32 %call, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 64
  %narrow = or i1 %tobool2.not, %cmp4
  %bf.lshr8 = lshr i8 %bf.load, 7
  %4 = zext i1 %narrow to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr8, i8 %4)
  %cmp10.not = icmp eq i8 %bf.lshr8, %4
  br i1 %cmp10.not, label %if.then.if.end29_crit_edge, label %if.then12

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then12:                                        ; preds = %if.then
  %bf.shl = select i1 %narrow, i8 -128, i8 0
  %bf.clear16 = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear16
  %5 = ptrtoint ptr %force_media to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %force_media, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  %cond = select i1 %narrow, ptr @.str.42, ptr @.str.43
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phys, align 8
  %conv27 = sext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.118, ptr noundef nonnull %cond, i32 noundef %conv27, i32 noundef %call) #21
  br label %if.end29

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.119) #21
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then18, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  store i32 6000, ptr @next_tick, align 4
  %8 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tp, align 8
  %twistie.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 18
  %10 = ptrtoint ptr %twistie.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %twistie.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %11, label %if.end29.rtl8139_tune_twister.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb9.i
    i8 3, label %sw.bb32.i
    i8 4, label %sw.bb58.i
    i8 5, label %sw.bb71.i
  ]

if.end29.rtl8139_tune_twister.exit_crit_edge:     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl8139_tune_twister.exit

sw.bb.i:                                          ; preds = %if.end29
  %add.ptr.i = getelementptr i8, ptr %9, i32 116
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %14 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18
  tail call void @arm_heavy_mb() #18
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16381) #18, !srcloc !377
  %15 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %twistie.i, align 4
  store i32 10, ptr @next_tick, align 4
  br label %rtl8139_tune_twister.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -16141) #18, !srcloc !377
  %add.ptr5.i = getelementptr i8, ptr %9, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 536870912) #18, !srcloc !379
  %add.ptr6.i = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 -2004616584) #18, !srcloc !379
  %add.ptr7.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 1138637003) #18, !srcloc !379
  %16 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %twistie.i, align 4
  br label %rtl8139_tune_twister.exit

sw.bb9.i:                                         ; preds = %if.end29
  %add.ptr10.i = getelementptr i8, ptr %9, i32 116
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #18, !srcloc !374
  %18 = shl i16 %17, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %19 = and i16 %18, -4096
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %19, label %if.else26.i [
    i16 28672, label %sw.bb9.i.if.end30.i_crit_edge
    i16 12288, label %if.then19.i
    i16 4096, label %if.then24.i
  ]

sw.bb9.i.if.end30.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then19.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then24.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.else26.i:                                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else26.i, %if.then24.i, %if.then19.i, %sw.bb9.i.if.end30.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.then19.i ], [ 0, %if.else26.i ], [ 1, %if.then24.i ], [ 3, %sw.bb9.i.if.end30.i_crit_edge ]
  %twist_row20.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 19
  %21 = ptrtoint ptr %twist_row20.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink.i, ptr %twist_row20.i, align 1
  %twist_col.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 20
  %22 = ptrtoint ptr %twist_col.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %twist_col.i, align 2
  %23 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %twistie.i, align 4
  store i32 10, ptr @next_tick, align 4
  br label %rtl8139_tune_twister.exit

sw.bb32.i:                                        ; preds = %if.end29
  %twist_col33.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 20
  %24 = ptrtoint ptr %twist_col33.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %twist_col33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp35.i = icmp eq i8 %25, 0
  br i1 %cmp35.i, label %if.then37.i, label %sw.bb32.i.if.end39.i_crit_edge

sw.bb32.i.if.end39.i_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end39.i

if.then37.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr38.i = getelementptr i8, ptr %9, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38.i, i16 0) #18, !srcloc !377
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %sw.bb32.i.if.end39.i_crit_edge
  %twist_row40.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 19
  %26 = ptrtoint ptr %twist_row40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %twist_row40.i, align 1
  %conv41.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %twist_col33.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %twist_col33.i, align 2
  %conv43.i = zext i8 %29 to i32
  %arrayidx44.i = getelementptr [4 x [4 x i32]], ptr @param, i32 0, i32 %conv41.i, i32 %conv43.i
  %30 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx44.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %32) #18, !srcloc !379
  store i32 10, ptr @next_tick, align 4
  %33 = ptrtoint ptr %twist_col33.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %twist_col33.i, align 2
  %inc.i = add i8 %34, 1
  store i8 %inc.i, ptr %twist_col33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc.i)
  %cmp48.i = icmp ugt i8 %inc.i, 3
  br i1 %cmp48.i, label %if.then50.i, label %if.end39.i.rtl8139_tune_twister.exit_crit_edge

if.end39.i.rtl8139_tune_twister.exit_crit_edge:   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rtl8139_tune_twister.exit

if.then50.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %twist_row40.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %twist_row40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp53.i = icmp eq i8 %36, 3
  %conv55.i = select i1 %cmp53.i, i8 4, i8 0
  %37 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv55.i, ptr %twistie.i, align 4
  br label %rtl8139_tune_twister.exit

sw.bb58.i:                                        ; preds = %if.end29
  %add.ptr59.i = getelementptr i8, ptr %9, i32 116
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr59.i) #18, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %39 = and i16 %38, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %39)
  %cmp63.i = icmp eq i16 %39, 112
  br i1 %cmp63.i, label %if.then65.i, label %if.else67.i

if.then65.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %twistie.i, align 4
  br label %rtl8139_tune_twister.exit

if.else67.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr68.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 64895227) #18, !srcloc !379
  %41 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %twistie.i, align 4
  store i32 10, ptr @next_tick, align 4
  br label %rtl8139_tune_twister.exit

sw.bb71.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr72.i = getelementptr i8, ptr %9, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 536870912) #18, !srcloc !379
  %add.ptr73.i = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 -2004616584) #18, !srcloc !379
  %add.ptr74.i = getelementptr i8, ptr %9, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 1138637003) #18, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 0) #18, !srcloc !379
  %twist_row76.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 19
  %42 = ptrtoint ptr %twist_row76.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %twist_row76.i, align 1
  %twist_col77.i = getelementptr inbounds %struct.rtl8139_private, ptr %tp, i32 0, i32 20
  %43 = ptrtoint ptr %twist_col77.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %twist_col77.i, align 2
  %44 = ptrtoint ptr %twistie.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %twistie.i, align 4
  store i32 10, ptr @next_tick, align 4
  br label %rtl8139_tune_twister.exit

rtl8139_tune_twister.exit:                        ; preds = %sw.bb71.i, %if.else67.i, %if.then65.i, %if.then50.i, %if.end39.i.rtl8139_tune_twister.exit_crit_edge, %if.end30.i, %if.else.i, %if.then.i, %if.end29.rtl8139_tune_twister.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_thread_iter, %if.then35)) #18
          to label %do.body42 [label %if.then35], !srcloc !365

if.then35:                                        ; preds = %rtl8139_tune_twister.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 104
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !374
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv37 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_thread_iter.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.121, i32 noundef %conv37) #18
  br label %do.body42

do.body42:                                        ; preds = %if.then35, %rtl8139_tune_twister.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_thread_iter, %if.then54)) #18
          to label %do.body67 [label %if.then54], !srcloc !365

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr55 = getelementptr i8, ptr %ioaddr, i32 60
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #18, !srcloc !374
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv57 = zext i16 %48 to i32
  %add.ptr58 = getelementptr i8, ptr %ioaddr, i32 62
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr58) #18, !srcloc !374
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  %conv60 = zext i16 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_thread_iter.__UNIQUE_ID_ddebug369, ptr noundef %dev, ptr noundef nonnull @.str.122, i32 noundef %conv57, i32 noundef %conv60) #18
  br label %do.body67

do.body67:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8139_thread_iter, %if.then79)) #18
          to label %do.end90 [label %if.then79], !srcloc !365

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr80 = getelementptr i8, ptr %ioaddr, i32 81
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr80) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv82 = zext i8 %51 to i32
  %add.ptr83 = getelementptr i8, ptr %ioaddr, i32 82
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #18, !srcloc !371
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  %conv85 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rtl8139_thread_iter.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %conv82, i32 noundef %conv85) #18
  br label %do.end90

do.end90:                                         ; preds = %if.then79, %do.body67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_device_detach(ptr noundef %1) #18
  %lock = getelementptr i8, ptr %1, i32 2704
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %add.ptr = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #18, !srcloc !377
  %add.ptr8 = getelementptr i8, ptr %3, i32 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 0) #18, !srcloc !367
  %add.ptr9 = getelementptr i8, ptr %3, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #18, !srcloc !369
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %8 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #18, !srcloc !379
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8139_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %cur_rx.i = getelementptr i8, ptr %1, i32 2552
  %4 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_rx.i, align 8
  %cur_tx.i = getelementptr i8, ptr %1, i32 2616
  %5 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cur_tx.i, align 8
  %dirty_tx.i = getelementptr i8, ptr %1, i32 2620
  %6 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dirty_tx.i, align 4
  %tx_bufs.i = getelementptr i8, ptr %1, i32 2688
  %7 = ptrtoint ptr %tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_bufs.i, align 8
  %arrayidx1.i = getelementptr i8, ptr %1, i32 2672
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx1.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %8, i32 1792
  %arrayidx1.1.i = getelementptr i8, ptr %1, i32 2676
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.1.i, ptr %arrayidx1.1.i, align 4
  %arrayidx.2.i = getelementptr i8, ptr %8, i32 3584
  %arrayidx1.2.i = getelementptr i8, ptr %1, i32 2680
  %11 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.2.i, ptr %arrayidx1.2.i, align 4
  %arrayidx.3.i = getelementptr i8, ptr %8, i32 5376
  %arrayidx1.3.i = getelementptr i8, ptr %1, i32 2684
  %12 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.3.i, ptr %arrayidx1.3.i, align 4
  tail call fastcc void @rtl8139_hw_start(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !205, !206, !207, !209, !210, !212, !214, !215, !216, !218, !219, !221, !222, !224, !226, !227, !229, !230, !231, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !252, !254, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !272, !274, !275, !277, !279, !281, !283, !285, !287, !289, !290, !291, !293, !294, !296, !297, !298, !299, !301, !303, !305, !306, !307, !309, !310, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351}
!llvm.named.register.sp = !{!353}
!llvm.module.flags = !{!354, !355, !356, !357, !358, !359, !360, !361}
!llvm.ident = !{!362}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 623, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 624, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 625, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version347, !8, !"__UNIQUE_ID_version347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 626, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_use_io, !14, !"__param_use_io", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 628, i32 1}
!15 = !{ptr @__UNIQUE_ID_use_iotype348, !14, !"__UNIQUE_ID_use_iotype348", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_use_io349, !17, !"__UNIQUE_ID_use_io349", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 629, i32 1}
!18 = !{ptr @__param_multicast_filter_limit, !19, !"__param_multicast_filter_limit", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 630, i32 1}
!20 = !{ptr @__UNIQUE_ID_multicast_filter_limittype350, !19, !"__UNIQUE_ID_multicast_filter_limittype350", i1 false, i1 false}
!21 = !{ptr @__param_media, !22, !"__param_media", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 631, i32 1}
!23 = !{ptr @__UNIQUE_ID_mediatype351, !22, !"__UNIQUE_ID_mediatype351", i1 false, i1 false}
!24 = !{ptr @__param_full_duplex, !25, !"__param_full_duplex", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 632, i32 1}
!26 = !{ptr @__UNIQUE_ID_full_duplextype352, !25, !"__UNIQUE_ID_full_duplextype352", i1 false, i1 false}
!27 = !{ptr @__param_debug, !28, !"__param_debug", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 633, i32 1}
!29 = !{ptr @__UNIQUE_ID_debugtype353, !28, !"__UNIQUE_ID_debugtype353", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_debug354, !31, !"__UNIQUE_ID_debug354", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 634, i32 1}
!32 = !{ptr @__UNIQUE_ID_multicast_filter_limit355, !33, !"__UNIQUE_ID_multicast_filter_limit355", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 635, i32 1}
!34 = !{ptr @__UNIQUE_ID_media356, !35, !"__UNIQUE_ID_media356", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 636, i32 1}
!36 = !{ptr @__UNIQUE_ID_full_duplex357, !37, !"__UNIQUE_ID_full_duplex357", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 637, i32 1}
!38 = !{ptr @__initcall__kmod_8139too__390_2677_rtl8139_init_module6, !39, !"__initcall__kmod_8139too__390_2677_rtl8139_init_module6", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2677, i32 1}
!40 = !{ptr @__exitcall_rtl8139_cleanup_module, !41, !"__exitcall_rtl8139_cleanup_module", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2678, i32 1}
!42 = !{ptr @__param_str_use_io, !14, !"__param_str_use_io", i1 false, i1 false}
!43 = !{ptr @use_io, !44, !"use_io", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 152, i32 13}
!45 = !{ptr @__param_str_multicast_filter_limit, !19, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!46 = !{ptr @multicast_filter_limit, !47, !"multicast_filter_limit", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 159, i32 12}
!48 = !{ptr @__param_str_media, !22, !"__param_str_media", i1 false, i1 false}
!49 = !{ptr @__param_arr_media, !22, !"__param_arr_media", i1 false, i1 false}
!50 = !{ptr @media, !51, !"media", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 147, i32 12}
!52 = !{ptr @__param_str_full_duplex, !25, !"__param_str_full_duplex", i1 false, i1 false}
!53 = !{ptr @__param_arr_full_duplex, !25, !"__param_arr_full_duplex", i1 false, i1 false}
!54 = !{ptr @full_duplex, !55, !"full_duplex", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 148, i32 12}
!56 = !{ptr @__param_str_debug, !28, !"__param_str_debug", i1 false, i1 false}
!57 = !{ptr @debug, !58, !"debug", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 162, i32 12}
!59 = !{ptr @rtl8139_pci_driver, !60, !"rtl8139_pci_driver", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2649, i32 26}
!61 = !{ptr @rtl8139_pci_tbl, !62, !"rtl8139_pci_tbl", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 241, i32 35}
!63 = !{ptr @rtl8139_init_one.board_idx, !64, !"board_idx", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 951, i32 13}
!65 = !{ptr @.str.3, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 953, i32 2}
!67 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.5, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rtl8139_init_one._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtl8139_init_one._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rtl8139_init_one._entry.7, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 954, i32 2}
!74 = !{ptr @rtl8139_init_one._entry_ptr.8, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.9, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rtl8139_init_one.printed_version, !77, !"printed_version", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 963, i32 14}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 965, i32 4}
!80 = !{ptr @rtl8139_init_one._entry.10, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rtl8139_init_one._entry_ptr.12, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 971, i32 3}
!84 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rtl8139_init_one._entry.13, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtl8139_init_one._entry_ptr.17, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 981, i32 3}
!90 = !{ptr @rtl8139_init_one._entry.18, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtl8139_init_one._entry_ptr.20, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rtl8139_init_one._entry.21, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 989, i32 2}
!94 = !{ptr @rtl8139_init_one._entry_ptr.22, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rtl8139_init_one._entry.24, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 994, i32 2}
!98 = !{ptr @rtl8139_init_one._entry_ptr.25, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rtl8139_init_one.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1029, i32 2}
!102 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rtl8139_init_one.__key.28, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1030, i32 2}
!105 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rtl8139_init_one.__key.30, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1031, i32 2}
!108 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rtl8139_init_one.__key.32, !107, !"__key", i1 false, i1 false}
!110 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1039, i32 2}
!113 = !{ptr @rtl8139_init_one.__UNIQUE_ID_ddebug364, !112, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!114 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1046, i32 19}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1050, i32 2}
!119 = !{ptr @rtl8139_init_one.__UNIQUE_ID_ddebug365, !118, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1064, i32 22}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1069, i32 21}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1088, i32 20}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1094, i32 20}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1096, i32 25}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1096, i32 34}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 769, i32 21}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 770, i32 21}
!136 = !{ptr @rtl8139_init_board.res, !137, !"res", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 768, i32 4}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 773, i32 2}
!140 = !{ptr @rtl8139_init_board._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtl8139_init_board._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @rtl8139_init_board.__key, !143, !"__key", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 797, i32 2}
!144 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rtl8139_init_board.__key.48, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 798, i32 2}
!147 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 806, i32 2}
!150 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug358, !149, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 809, i32 3}
!153 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rtl8139_init_board._entry.51, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @rtl8139_init_board._entry_ptr.54, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 815, i32 3}
!158 = !{ptr @rtl8139_init_board._entry.55, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rtl8139_init_board._entry_ptr.57, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 823, i32 3}
!162 = !{ptr @rtl8139_init_board._entry.58, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rtl8139_init_board._entry_ptr.60, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 839, i32 3}
!166 = !{ptr @rtl8139_init_board._entry.61, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rtl8139_init_board._entry_ptr.63, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 854, i32 2}
!170 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug359, !169, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 855, i32 2}
!173 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug360, !172, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 859, i32 2}
!176 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug361, !175, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!177 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 864, i32 3}
!180 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug362, !179, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!181 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 883, i32 3}
!184 = !{ptr @rtl8139_init_board.__UNIQUE_ID_ddebug363, !183, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!185 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @rtl8139_netdev_ops, !187, !"rtl8139_netdev_ops", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 927, i32 36}
!188 = !{ptr @.str.72, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1358, i32 2}
!190 = !{ptr @.str.73, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @rtl8139_open.__UNIQUE_ID_ddebug366, !189, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!192 = !{ptr @.str.74, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2212, i32 2}
!194 = !{ptr @.str.75, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @rtl8139_interrupt.__UNIQUE_ID_ddebug387, !193, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2094, i32 2}
!198 = !{ptr @.str.77, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @rtl8139_weird_interrupt.__UNIQUE_ID_ddebug386, !197, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!200 = !{ptr @rtl8139_weird_interrupt._entry, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2096, i32 2}
!202 = !{ptr @rtl8139_weird_interrupt._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @rtl8139_weird_interrupt._entry.78, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2097, i32 2}
!205 = !{ptr @rtl8139_weird_interrupt._entry_ptr.79, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @rtl8139_weird_interrupt._entry.81, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2098, i32 2}
!209 = !{ptr @rtl8139_weird_interrupt._entry_ptr.82, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2122, i32 19}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1768, i32 2}
!214 = !{ptr @rtl8139_tx_interrupt._entry, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @rtl8139_tx_interrupt._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @rtl8139_tx_interrupt._entry.85, !217, !"_entry", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1769, i32 2}
!218 = !{ptr @rtl8139_tx_interrupt._entry_ptr.86, !217, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1785, i32 4}
!221 = !{ptr @rtl8139_tx_interrupt.__UNIQUE_ID_ddebug377, !220, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!222 = !{ptr @.str.88, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1818, i32 19}
!224 = distinct !{null, !225, !"__already_done", i1 false, i1 false}
!225 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!226 = !{ptr @.str.89, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1421, i32 2}
!229 = !{ptr @.str.91, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @rtl8139_hw_start.__UNIQUE_ID_ddebug367, !228, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!231 = !{ptr @next_tick, !232, !"next_tick", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1463, i32 12}
!233 = !{ptr @.str.92, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2265, i32 2}
!235 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @rtl8139_close.__UNIQUE_ID_ddebug388, !234, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!237 = !{ptr @.str.94, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1755, i32 2}
!239 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @rtl8139_start_xmit.__UNIQUE_ID_ddebug376, !238, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!241 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2558, i32 2}
!243 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @__set_rx_mode.__UNIQUE_ID_ddebug389, !242, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!245 = !{ptr @rtl8139_tx_timeout.__key, !246, !"__key", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1710, i32 3}
!247 = !{ptr @rtl8139_tx_timeout.__key.98, !246, !"__key", i1 false, i1 false}
!248 = !{ptr @rtl8139_ethtool_ops, !249, !"rtl8139_ethtool_ops", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2484, i32 33}
!250 = !{ptr @ethtool_stats_keys, !251, !"ethtool_stats_keys", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 285, i32 3}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1956, i32 2}
!254 = !{ptr @.str.100, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @rtl8139_rx.__UNIQUE_ID_ddebug381, !253, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1977, i32 3}
!258 = !{ptr @rtl8139_rx.__UNIQUE_ID_ddebug382, !257, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!259 = !{ptr @.str.102, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1993, i32 5}
!261 = !{ptr @rtl8139_rx.__UNIQUE_ID_ddebug383, !260, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!262 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1997, i32 4}
!264 = !{ptr @rtl8139_rx.__UNIQUE_ID_ddebug384, !263, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!265 = !{ptr @.str.104, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2071, i32 2}
!267 = !{ptr @rtl8139_rx.__UNIQUE_ID_ddebug385, !266, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!268 = !{ptr @.str.105, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1842, i32 2}
!270 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug378, !269, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!272 = !{ptr @.str.107, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1847, i32 4}
!274 = !{ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug379, !273, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!275 = !{ptr @.str.108, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1880, i32 20}
!277 = !{ptr @.str.109, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1891, i32 20}
!279 = !{ptr @rtl8139_rx_err.__UNIQUE_ID_ddebug380, !280, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1902, i32 2}
!281 = !{ptr @.str.110, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 236, i32 4}
!283 = !{ptr @.str.111, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 237, i32 4}
!285 = !{ptr @board_info, !286, !"board_info", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 235, i32 3}
!287 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1668, i32 2}
!289 = !{ptr @.str.113, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug371, !288, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1672, i32 2}
!293 = !{ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug372, !292, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!294 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1675, i32 3}
!296 = !{ptr @rtl8139_tx_timeout_task.__UNIQUE_ID_ddebug373, !295, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!297 = !{ptr @.str.116, !295, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.117, !295, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.118, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1583, i32 22}
!301 = !{ptr @.str.119, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1587, i32 22}
!303 = !{ptr @.str.120, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1601, i32 2}
!305 = !{ptr @.str.121, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug368, !304, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!307 = !{ptr @.str.122, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1603, i32 2}
!309 = !{ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug369, !308, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!310 = !{ptr @.str.123, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1605, i32 2}
!312 = !{ptr @rtl8139_thread_iter.__UNIQUE_ID_ddebug370, !311, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!313 = !{ptr @param, !314, !"param", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1475, i32 28}
!315 = !{ptr @mii_2_8139_map, !316, !"mii_2_8139_map", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1207, i32 19}
!317 = !{ptr @.str.124, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 514, i32 4}
!319 = !{ptr @.str.125, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 519, i32 4}
!321 = !{ptr @.str.126, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 524, i32 4}
!323 = !{ptr @.str.127, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 529, i32 4}
!325 = !{ptr @.str.128, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 534, i32 4}
!327 = !{ptr @.str.129, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 539, i32 4}
!329 = !{ptr @.str.130, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 544, i32 4}
!331 = !{ptr @.str.131, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 549, i32 4}
!333 = !{ptr @.str.132, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 554, i32 4}
!335 = !{ptr @.str.133, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 560, i32 4}
!337 = !{ptr @rtl_chip_info, !338, !"rtl_chip_info", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 513, i32 3}
!339 = !{ptr @.str.134, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 723, i32 2}
!341 = !{ptr @__rtl8139_cleanup_dev._entry, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @__rtl8139_cleanup_dev._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @__rtl8139_cleanup_dev._entry.135, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 724, i32 2}
!345 = !{ptr @__rtl8139_cleanup_dev._entry_ptr.136, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.137, !344, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.138, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 1120, i32 2}
!349 = !{ptr @rtl8139_remove_one._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @rtl8139_remove_one._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @rtl8139_pm_ops, !352, !"rtl8139_pm_ops", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/realtek/8139too.c", i32 2647, i32 8}
!353 = !{!"sp"}
!354 = !{i32 1, !"wchar_size", i32 2}
!355 = !{i32 1, !"min_enum_size", i32 4}
!356 = !{i32 8, !"branch-target-enforcement", i32 0}
!357 = !{i32 8, !"sign-return-address", i32 0}
!358 = !{i32 8, !"sign-return-address-all", i32 0}
!359 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!360 = !{i32 7, !"uwtable", i32 1}
!361 = !{i32 7, !"frame-pointer", i32 2}
!362 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!363 = !{!"auto-init"}
!364 = !{!"branch_weights", i32 1, i32 2000}
!365 = !{i64 2149023884, i64 2149023889, i64 2149023902, i64 2149023946, i64 2149023980, i64 2149024001}
!366 = !{i64 2152591582}
!367 = !{i64 5050237}
!368 = !{i8 0, i8 2}
!369 = !{i64 5050852}
!370 = !{i64 2152591201}
!371 = !{i64 5050632}
!372 = !{i64 2152589977}
!373 = !{i64 2156669400}
!374 = !{i64 5050014}
!375 = !{i64 2152590589}
!376 = !{i64 2152592006}
!377 = !{i64 5049814}
!378 = !{i64 2152592556}
!379 = !{i64 5050434}
!380 = !{!"branch_weights", i32 2000, i32 1}
!381 = !{i64 2156757759}
!382 = !{i64 2150042333}
!383 = !{!"branch_weights", i32 4001, i32 4000000}
!384 = !{i64 2156769869}
!385 = !{i64 2150042983}
!386 = !{i64 2156770016}
!387 = !{i64 2149934665}
!388 = !{i64 2149939597}
!389 = !{i64 2149961309}
!390 = !{i64 2149966201}
!391 = !{i64 2150042658}
!392 = !{i64 814207, i64 814268}
!393 = !{i64 816939}
!394 = !{i64 817224}
!395 = !{i64 2154842373}
!396 = !{i64 2154842215}
!397 = !{i64 2154842543}
!398 = !{i64 2156782602}
!399 = !{!"branch_weights", i32 6003000, i32 -294967296}
