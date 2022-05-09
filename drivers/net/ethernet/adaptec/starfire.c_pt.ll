; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/adaptec/starfire.c_pt.bc'
source_filename = "../drivers/net/ethernet/adaptec/starfire.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.full_rx_done_desc = type { i32, i16, i16, i16, i16, i32 }
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
%struct.netdev_private = type { ptr, ptr, i32, i32, [256 x %struct.rx_ring_info], [32 x %struct.tx_ring_info], ptr, i32, i32, ptr, i32, i32, %struct.napi_struct, ptr, ptr, [128 x i32], ptr, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.mii_if_info, i32, [2 x i8], ptr }
%struct.rx_ring_info = type { ptr, i32 }
%struct.tx_ring_info = type { ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.starfire_rx_desc = type { i32 }
%struct.tx_done_desc = type { i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.firmware = type { i32, ptr, ptr }
%struct.starfire_tx_desc_1 = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author343 = internal constant [49 x i8] c"starfire.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [54 x i8] c"starfire.description=Adaptec Starfire Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [52 x i8] c"starfire.file=drivers/net/ethernet/adaptec/starfire\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [21 x i8] c"starfire.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [42 x i8] c"starfire.firmware=adaptec/starfire_rx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [42 x i8] c"starfire.firmware=adaptec/starfire_tx.bin\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [28 x i8] c"starfire.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype349 = internal constant [41 x i8] c"starfire.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_mtu = internal constant [13 x i8] c"starfire.mtu\00", align 1
@mtu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mtu = internal constant %struct.kernel_param { ptr @__param_str_mtu, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mtu } }, section "__param", align 4
@__UNIQUE_ID_mtutype350 = internal constant [26 x i8] c"starfire.parmtype=mtu:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"starfire.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype351 = internal constant [28 x i8] c"starfire.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [22 x i8] c"starfire.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype352 = internal constant [35 x i8] c"starfire.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_intr_latency = internal constant [22 x i8] c"starfire.intr_latency\00", align 1
@intr_latency = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_intr_latency = internal constant %struct.kernel_param { ptr @__param_str_intr_latency, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @intr_latency } }, section "__param", align 4
@__UNIQUE_ID_intr_latencytype353 = internal constant [35 x i8] c"starfire.parmtype=intr_latency:int\00", section ".modinfo", align 1
@__param_str_small_frames = internal constant [22 x i8] c"starfire.small_frames\00", align 1
@small_frames = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_small_frames = internal constant %struct.kernel_param { ptr @__param_str_small_frames, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @small_frames } }, section "__param", align 4
@__UNIQUE_ID_small_framestype354 = internal constant [35 x i8] c"starfire.parmtype=small_frames:int\00", section ".modinfo", align 1
@__param_str_enable_hw_cksum = internal constant [25 x i8] c"starfire.enable_hw_cksum\00", align 1
@enable_hw_cksum = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_enable_hw_cksum = internal constant %struct.kernel_param { ptr @__param_str_enable_hw_cksum, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @enable_hw_cksum } }, section "__param", align 4
@__UNIQUE_ID_enable_hw_cksumtype355 = internal constant [38 x i8] c"starfire.parmtype=enable_hw_cksum:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work356 = internal constant [70 x i8] c"starfire.parm=max_interrupt_work:Maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_mtu357 = internal constant [35 x i8] c"starfire.parm=mtu:MTU (all boards)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug358 = internal constant [38 x i8] c"starfire.parm=debug:Debug level (0-6)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak359 = internal constant [69 x i8] c"starfire.parm=rx_copybreak:Copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_intr_latency360 = internal constant [70 x i8] c"starfire.parm=intr_latency:Maximum interrupt latency, in microseconds\00", section ".modinfo", align 1
@__UNIQUE_ID_small_frames361 = internal constant [107 x i8] c"starfire.parm=small_frames:Maximum size of receive frames that bypass interrupt latency (0,64,128,256,512)\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_hw_cksum362 = internal constant [74 x i8] c"starfire.parm=enable_hw_cksum:Enable/disable hardware cksum support (0/1)\00", section ".modinfo", align 1
@starfire_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @starfire_pci_tbl, ptr @starfire_init_one, ptr @starfire_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @starfire_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_starfire__364_2073_starfire_init6 = internal global ptr @starfire_init, section ".initcall6.init", align 4
@__exitcall_starfire_cleanup = internal global ptr @starfire_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"starfire\00", [23 x i8] zeroinitializer }, align 32
@starfire_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 36868, i32 26901, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@starfire_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @starfire_suspend, ptr @starfire_resume, ptr @starfire_suspend, ptr @starfire_resume, ptr @starfire_suspend, ptr @starfire_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@starfire_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no PCI MEM resources, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"starfire_init_one\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/adaptec/starfire.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr = internal global ptr @starfire_init_one._entry, section ".printk_index", align 4
@starfire_init_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 669, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot reserve PCI resources, aborting\0A\00", [56 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.8 = internal global ptr @starfire_init_one._entry.6, section ".printk_index", align 4
@starfire_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 676, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot remap %#x @ %#lx, aborting\0A\00", [61 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.11 = internal global ptr @starfire_init_one._entry.9, section ".printk_index", align 4
@starfire_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%2.2x%s\00", [24 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.14 = internal global ptr @starfire_init_one._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@starfire_init_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: chipset reset never completed!\0A\00", [60 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.19 = internal global ptr @starfire_init_one._entry.17, section ".printk_index", align 4
@starfire_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@starfire_init_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Adjusting small_frames down to 512\0A\00", [60 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.23 = internal global ptr @starfire_init_one._entry.21, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr @netdev_vlan_rx_add_vid, ptr @netdev_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @get_msglevel, ptr @set_msglevel, ptr @nway_reset, ptr @get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @check_if_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@starfire_init_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s at %p, %pM, IRQ %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.26 = internal global ptr @starfire_init_one._entry.24, section ".printk_index", align 4
@starfire_init_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: PHY#%d reset never completed!\0A\00", [61 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.29 = internal global ptr @starfire_init_one._entry.27, section ".printk_index", align 4
@starfire_init_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: MII PHY found at address %d, status %#4.4x advertising %#4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.32 = internal global ptr @starfire_init_one._entry.30, section ".printk_index", align 4
@starfire_init_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: scatter-gather and hardware TCP cksumming %s.\0A\00", [43 x i8] zeroinitializer }, align 32
@starfire_init_one._entry_ptr.35 = internal global ptr @starfire_init_one._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Adaptec Starfire 6915\00", [42 x i8] zeroinitializer }, align 32
@netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: netdev_open() irq %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_open\00", [20 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr = internal global ptr @netdev_open._entry, section ".printk_index", align 4
@netdev_open._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Filling in the station address.\0A\00", [57 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.43 = internal global ptr @netdev_open._entry.41, section ".printk_index", align 4
@netdev_open._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Setting the Rx and Tx modes.\0A\00", [60 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.46 = internal global ptr @netdev_open._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adaptec/starfire_rx.bin\00", [40 x i8] zeroinitializer }, align 32
@netdev_open._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.3, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013starfire: Failed to load firmware \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.50 = internal global ptr @netdev_open._entry.48, section ".printk_index", align 4
@netdev_open._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.3, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013starfire: bogus length %zu in \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.53 = internal global ptr @netdev_open._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adaptec/starfire_tx.bin\00", [40 x i8] zeroinitializer }, align 32
@netdev_open._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.3, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.56 = internal global ptr @netdev_open._entry.55, section ".printk_index", align 4
@netdev_open._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.40, ptr @.str.3, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.58 = internal global ptr @netdev_open._entry.57, section ".printk_index", align 4
@netdev_open._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.3, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Done netdev_open().\0A\00", [37 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.61 = internal global ptr @netdev_open._entry.59, section ".printk_index", align 4
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Interrupt status %#8.8x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@intr_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: interrupt while in poll!\0A\00", [32 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.66 = internal global ptr @intr_handler._entry.64, section ".printk_index", align 4
@intr_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.3, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Tx Consumer index is %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.69 = internal global ptr @intr_handler._entry.67, section ".printk_index", align 4
@intr_handler._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Tx completion #%d entry %d is %#8.8x.\0A\00", [51 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.72 = internal global ptr @intr_handler._entry.70, section ".printk_index", align 4
@intr_handler._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.3, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: Too much work at interrupt, status=%#8.8x.\0A\00", [46 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.75 = internal global ptr @intr_handler._entry.73, section ".printk_index", align 4
@intr_handler._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.63, ptr @.str.3, i32 1419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: exiting interrupt, status=%#8.8x.\0A\00", [55 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.78 = internal global ptr @intr_handler._entry.76, section ".printk_index", align 4
@netdev_media_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Link is up, running at %sMbit %s-duplex\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netdev_media_change\00", [44 x i8] zeroinitializer }, align 32
@netdev_media_change._entry_ptr = internal global ptr @netdev_media_change._entry, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@netdev_media_change._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.3, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: Link is down\0A\00", [44 x i8] zeroinitializer }, align 32
@netdev_media_change._entry_ptr.87 = internal global ptr @netdev_media_change._entry.85, section ".printk_index", align 4
@netdev_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s: PCI bus congestion, increasing Tx FIFO threshold to %d bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_error\00", [19 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr = internal global ptr @netdev_error._entry, section ".printk_index", align 4
@netdev_error._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: PCI Tx underflow -- adapter is probably malfunctioning\0A\00", [34 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.92 = internal global ptr @netdev_error._entry.90, section ".printk_index", align 4
@netdev_error._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.3, i32 1714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Something Wicked happened! %#8.8x.\0A\00", [54 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.95 = internal global ptr @netdev_error._entry.93, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@check_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: MII reset failed!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_duplex\00", [19 x i8] zeroinitializer }, align 32
@check_duplex._entry_ptr = internal global ptr @check_duplex._entry, section ".printk_index", align 4
@check_duplex._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Link forced to %sMbit %s-duplex\0A\00", [57 x i8] zeroinitializer }, align 32
@check_duplex._entry_ptr.102 = internal global ptr @check_duplex._entry.100, section ".printk_index", align 4
@netdev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.3, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Shutting down ethercard, Intr status %#8.8x.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_close\00", [19 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr = internal global ptr @netdev_close._entry, section ".printk_index", align 4
@netdev_close._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.3, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: Queue pointers were Tx %d / %d, Rx %d / %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.107 = internal global ptr @netdev_close._entry.105, section ".printk_index", align 4
@netdev_close._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.3, i32 1952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017  Tx ring at %#llx:\0A\00", [41 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.110 = internal global ptr @netdev_close._entry.108, section ".printk_index", align 4
@netdev_close._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.104, ptr @.str.3, i32 1957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017 #%d desc. %#8.8x %#llx -> %#8.8x.\0A\00", [58 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.113 = internal global ptr @netdev_close._entry.111, section ".printk_index", align 4
@netdev_close._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.104, ptr @.str.3, i32 1959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017  Rx ring at %#llx -> %p:\0A\00", [35 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.116 = internal global ptr @netdev_close._entry.114, section ".printk_index", align 4
@netdev_close._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.104, ptr @.str.3, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017 #%d desc. %#llx -> %#8.8x\0A\00", [34 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.119 = internal global ptr @netdev_close._entry.117, section ".printk_index", align 4
@start_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Tx #%d/#%d slot %d status %#8.8x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_tx\00", [23 x i8] zeroinitializer }, align 32
@start_tx._entry_ptr = internal global ptr @start_tx._entry, section ".printk_index", align 4
@tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: Transmit timed out, status %#8.8x, resetting...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr = internal global ptr @tx_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netdev_vlan_rx_add_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Adding vlanid %d to vlan filter\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netdev_vlan_rx_add_vid\00", [41 x i8] zeroinitializer }, align 32
@netdev_vlan_rx_add_vid._entry_ptr = internal global ptr @netdev_vlan_rx_add_vid._entry, section ".printk_index", align 4
@netdev_vlan_rx_kill_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: removing vlanid %d from vlan filter\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netdev_vlan_rx_kill_vid\00", [40 x i8] zeroinitializer }, align 32
@netdev_vlan_rx_kill_vid._entry_ptr = internal global ptr @netdev_vlan_rx_kill_vid._entry, section ".printk_index", align 4
@netdev_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017  exiting netdev_poll(): %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_poll\00", [20 x i8] zeroinitializer }, align 32
@netdev_poll._entry_ptr = internal global ptr @netdev_poll._entry, section ".printk_index", align 4
@__netdev_rx._entry = internal constant %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 1442, ptr null, ptr null }, align 1
@.str.130 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017  netdev_rx() status of %d was %#8.8x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__netdev_rx\00", [20 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr = internal global ptr @__netdev_rx._entry, section ".printk_index", align 4
@__netdev_rx._entry.132 = internal constant %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1446, ptr null, ptr null }, align 1
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017  netdev_rx() Rx error was %#8.8x.\0A\00", [58 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.134 = internal global ptr @__netdev_rx._entry.132, section ".printk_index", align 4
@__netdev_rx._entry.135 = internal constant %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.3, i32 1463, ptr null, ptr null }, align 1
@.str.136 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017  netdev_rx() normal Rx pkt length %d, quota %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.137 = internal global ptr @__netdev_rx._entry.135, section ".printk_index", align 4
@__netdev_rx._entry.138 = internal constant %struct.pi_entry { ptr @.str.139, ptr @.str.131, ptr @.str.3, i32 1491, ptr null, ptr null }, align 1
@.str.139 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017  Rx data %pM %pM %2.2x%2.2x.\0A\00", [63 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.140 = internal global ptr @__netdev_rx._entry.138, section ".printk_index", align 4
@__netdev_rx._entry.141 = internal constant %struct.pi_entry { ptr @.str.142, ptr @.str.131, ptr @.str.3, i32 1498, ptr null, ptr null }, align 1
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017  netdev_rx() status2 of %d was %#4.4x.\0A\00", [53 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.143 = internal global ptr @__netdev_rx._entry.141, section ".printk_index", align 4
@__netdev_rx._entry.144 = internal constant %struct.pi_entry { ptr @.str.145, ptr @.str.131, ptr @.str.3, i32 1516, ptr null, ptr null }, align 1
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: checksum_hw, status2 = %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.146 = internal global ptr @__netdev_rx._entry.144, section ".printk_index", align 4
@__netdev_rx._entry.147 = internal constant %struct.pi_entry { ptr @.str.148, ptr @.str.131, ptr @.str.3, i32 1524, ptr null, ptr null }, align 1
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017  netdev_rx() vlanid = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.149 = internal global ptr @__netdev_rx._entry.147, section ".printk_index", align 4
@__netdev_rx._entry.150 = internal constant %struct.pi_entry { ptr @.str.151, ptr @.str.131, ptr @.str.3, i32 1548, ptr null, ptr null }, align 1
@.str.151 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017  exiting netdev_rx(): %d, status of %d was %#8.8x.\0A\00", [41 x i8] zeroinitializer }, align 32
@__netdev_rx._entry_ptr.152 = internal global ptr @__netdev_rx._entry.150, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [130 x i64] [i64 128, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 2684354560]
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 79, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 80, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 78, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 105, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"intr_latency\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 75, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"small_frames\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 76, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"enable_hw_cksum\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 85, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"starfire_driver\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 2045, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 2046, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"starfire_pci_tbl\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 280, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"starfire_pm_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 2043, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 656, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 669, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 675, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 706, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 725, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 732, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 766, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 621, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1895, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 783, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 798, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 805, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 819, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 291, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 881, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 949, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 983, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1006, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1008, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1013, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1018, i32 36 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1020, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1025, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1048, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1315, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1337, i32 6 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1351, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1356, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1410, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1418, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1662, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1686, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1699, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1702, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1713, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.429, i32 326, i32 6 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1074, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1088, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1936, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1938, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1951, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1954, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1958, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1962, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1246, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1103, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 596, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 611, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1576, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1442, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1446, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1463, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1489, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1498, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1516, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1523, i32 5 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.555 = private constant [43 x i8] c"../drivers/net/ethernet/adaptec/starfire.c\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.555, i32 1547, i32 3 }
@llvm.compiler.used = appending global [222 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_debug358, ptr @__UNIQUE_ID_debugtype351, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_enable_hw_cksum362, ptr @__UNIQUE_ID_enable_hw_cksumtype355, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_intr_latency360, ptr @__UNIQUE_ID_intr_latencytype353, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_max_interrupt_work356, ptr @__UNIQUE_ID_max_interrupt_worktype349, ptr @__UNIQUE_ID_mtu357, ptr @__UNIQUE_ID_mtutype350, ptr @__UNIQUE_ID_rx_copybreak359, ptr @__UNIQUE_ID_rx_copybreaktype352, ptr @__UNIQUE_ID_small_frames361, ptr @__UNIQUE_ID_small_framestype354, ptr @__exitcall_starfire_cleanup, ptr @__initcall__kmod_starfire__364_2073_starfire_init6, ptr @__netdev_rx._entry, ptr @__netdev_rx._entry.132, ptr @__netdev_rx._entry.135, ptr @__netdev_rx._entry.138, ptr @__netdev_rx._entry.141, ptr @__netdev_rx._entry.144, ptr @__netdev_rx._entry.147, ptr @__netdev_rx._entry.150, ptr @__netdev_rx._entry_ptr, ptr @__netdev_rx._entry_ptr.134, ptr @__netdev_rx._entry_ptr.137, ptr @__netdev_rx._entry_ptr.140, ptr @__netdev_rx._entry_ptr.143, ptr @__netdev_rx._entry_ptr.146, ptr @__netdev_rx._entry_ptr.149, ptr @__netdev_rx._entry_ptr.152, ptr @__param_debug, ptr @__param_enable_hw_cksum, ptr @__param_intr_latency, ptr @__param_max_interrupt_work, ptr @__param_mtu, ptr @__param_rx_copybreak, ptr @__param_small_frames, ptr @check_duplex._entry, ptr @check_duplex._entry.100, ptr @check_duplex._entry_ptr, ptr @check_duplex._entry_ptr.102, ptr @intr_handler._entry, ptr @intr_handler._entry.64, ptr @intr_handler._entry.67, ptr @intr_handler._entry.70, ptr @intr_handler._entry.73, ptr @intr_handler._entry.76, ptr @intr_handler._entry_ptr, ptr @intr_handler._entry_ptr.66, ptr @intr_handler._entry_ptr.69, ptr @intr_handler._entry_ptr.72, ptr @intr_handler._entry_ptr.75, ptr @intr_handler._entry_ptr.78, ptr @netdev_close._entry, ptr @netdev_close._entry.105, ptr @netdev_close._entry.108, ptr @netdev_close._entry.111, ptr @netdev_close._entry.114, ptr @netdev_close._entry.117, ptr @netdev_close._entry_ptr, ptr @netdev_close._entry_ptr.107, ptr @netdev_close._entry_ptr.110, ptr @netdev_close._entry_ptr.113, ptr @netdev_close._entry_ptr.116, ptr @netdev_close._entry_ptr.119, ptr @netdev_error._entry, ptr @netdev_error._entry.90, ptr @netdev_error._entry.93, ptr @netdev_error._entry_ptr, ptr @netdev_error._entry_ptr.92, ptr @netdev_error._entry_ptr.95, ptr @netdev_media_change._entry, ptr @netdev_media_change._entry.85, ptr @netdev_media_change._entry_ptr, ptr @netdev_media_change._entry_ptr.87, ptr @netdev_open._entry, ptr @netdev_open._entry.41, ptr @netdev_open._entry.44, ptr @netdev_open._entry.48, ptr @netdev_open._entry.51, ptr @netdev_open._entry.55, ptr @netdev_open._entry.57, ptr @netdev_open._entry.59, ptr @netdev_open._entry_ptr, ptr @netdev_open._entry_ptr.43, ptr @netdev_open._entry_ptr.46, ptr @netdev_open._entry_ptr.50, ptr @netdev_open._entry_ptr.53, ptr @netdev_open._entry_ptr.56, ptr @netdev_open._entry_ptr.58, ptr @netdev_open._entry_ptr.61, ptr @netdev_poll._entry, ptr @netdev_poll._entry_ptr, ptr @netdev_vlan_rx_add_vid._entry, ptr @netdev_vlan_rx_add_vid._entry_ptr, ptr @netdev_vlan_rx_kill_vid._entry, ptr @netdev_vlan_rx_kill_vid._entry_ptr, ptr @starfire_cleanup, ptr @starfire_init_one._entry, ptr @starfire_init_one._entry.12, ptr @starfire_init_one._entry.17, ptr @starfire_init_one._entry.21, ptr @starfire_init_one._entry.24, ptr @starfire_init_one._entry.27, ptr @starfire_init_one._entry.30, ptr @starfire_init_one._entry.33, ptr @starfire_init_one._entry.6, ptr @starfire_init_one._entry.9, ptr @starfire_init_one._entry_ptr, ptr @starfire_init_one._entry_ptr.11, ptr @starfire_init_one._entry_ptr.14, ptr @starfire_init_one._entry_ptr.19, ptr @starfire_init_one._entry_ptr.23, ptr @starfire_init_one._entry_ptr.26, ptr @starfire_init_one._entry_ptr.29, ptr @starfire_init_one._entry_ptr.32, ptr @starfire_init_one._entry_ptr.35, ptr @starfire_init_one._entry_ptr.8, ptr @start_tx._entry, ptr @start_tx._entry_ptr, ptr @tx_timeout._entry, ptr @tx_timeout._entry_ptr, ptr @max_interrupt_work, ptr @mtu, ptr @debug, ptr @rx_copybreak, ptr @intr_latency, ptr @small_frames, ptr @enable_hw_cksum, ptr @starfire_driver, ptr @.str, ptr @starfire_pci_tbl, ptr @starfire_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @starfire_init_one.__key, ptr @.str.20, ptr @.str.22, ptr @netdev_ops, ptr @ethtool_ops, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @small_frames to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_hw_cksum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @starfire_init_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_media_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_media_change._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_duplex._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_vlan_rx_add_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_vlan_rx_kill_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @starfire_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @starfire_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @starfire_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @starfire_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfire_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %sub = sub i32 1, %7
  %add = add i32 %sub, %9
  %cond = select i1 %cmp, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %lor.lhs.false.do.end_crit_edge, label %if.end15

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %call16 = tail call ptr @alloc_etherdev_mqs(i32 noundef 3360, i32 noundef 1, i32 noundef 1) #12
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %parent = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %irq22 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %13 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq22, align 4
  %call23 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  br label %err_out_free_netdev

if.end29:                                         ; preds = %if.end19
  %call30 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %cond) #12
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %cond, i32 noundef %7) #15
  br label %err_out_free_res

if.end36:                                         ; preds = %if.end29
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call37 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #12
  %15 = load i32, ptr @enable_hw_cksum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool38.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %features = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 23
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features, align 16
  %or = or i64 %17, 3
  store i64 %or, ptr %features, align 16
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %features41 = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 23
  %18 = ptrtoint ptr %features41 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features41, align 16
  %or42 = or i64 %19, 768
  store i64 %or42, ptr %features41, align 16
  %add.ptr44 = getelementptr i8, ptr %call30, i32 331796
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %addr, align 1
  %add.ptr45.1 = getelementptr i8, ptr %call30, i32 331795
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45.1) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %0, align 1
  %add.ptr45.2 = getelementptr i8, ptr %call30, i32 331794
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45.2) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %1, align 1
  %add.ptr45.3 = getelementptr i8, ptr %call30, i32 331793
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45.3) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %2, align 1
  %add.ptr45.4 = getelementptr i8, ptr %call30, i32 331792
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45.4) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %3, align 1
  %add.ptr45.5 = getelementptr i8, ptr %call30, i32 331791
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45.5) #12, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call16, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp49 = icmp sgt i32 %32, 4
  br i1 %cmp49, label %for.cond51.preheader, label %if.end40.do.body73_crit_edge

if.end40.do.body73_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

for.cond51.preheader:                             ; preds = %if.end40
  %add.ptr60 = getelementptr i8, ptr %call30, i32 331776
  br label %do.end56

do.end56:                                         ; preds = %do.end56.do.end56_crit_edge, %for.cond51.preheader
  %i.1389 = phi i32 [ 0, %for.cond51.preheader ], [ %inc70, %do.end56.do.end56_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 %i.1389
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr61) #12, !srcloc !329
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !331
  %conv = zext i8 %33 to i32
  %34 = and i32 %i.1389, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %34)
  %cmp65.not = icmp eq i32 %34, 15
  %cond67 = select i1 %cmp65.not, ptr @.str.16, ptr @.str.15
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv, ptr noundef nonnull %cond67) #15
  %inc70 = add nuw nsw i32 %i.1389, 1
  %exitcond.not = icmp eq i32 %inc70, 32
  br i1 %exitcond.not, label %do.end56.do.body73_crit_edge, label %do.end56.do.end56_crit_edge

do.end56.do.end56_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end56.do.body73_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

do.body73:                                        ; preds = %do.end56.do.body73_crit_edge, %if.end40.do.body73_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !332
  call void @arm_heavy_mb() #12
  %add.ptr76 = getelementptr i8, ptr %call30, i32 348160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 8388608) #12, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !334
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 0) #12, !srcloc !333
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !335
  call void @arm_heavy_mb() #12
  %add.ptr84 = getelementptr i8, ptr %call30, i32 327744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 16777216) #12, !srcloc !333
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body73
  %boguscnt.0 = phi i32 [ 1000, %do.body73 ], [ %dec, %while.body.while.cond_crit_edge ]
  %dec = add nsw i32 %boguscnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp85.not = icmp eq i32 %dec, 0
  br i1 %cmp85.not, label %do.end103, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 2147480) #12
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #12, !srcloc !336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !337
  %38 = and i32 %37, 16777216
  %cmp94 = icmp eq i32 %38, 0
  br i1 %cmp94, label %while.body.if.end107_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.body.if.end107_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

do.end103:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %call16) #15
  br label %if.end107

if.end107:                                        ; preds = %do.end103, %while.body.if.end107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #12
  %dev109 = getelementptr i8, ptr %call16, i32 5000
  %40 = ptrtoint ptr %dev109 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call16, ptr %dev109, align 8
  %base110 = getelementptr i8, ptr %call16, i32 5656
  %41 = ptrtoint ptr %base110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call30, ptr %base110, align 8
  %lock = getelementptr i8, ptr %call16, i32 5532
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @starfire_init_one.__key, i16 noundef signext 3) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call16, ptr %driver_data.i.i, align 4
  %pci_dev = getelementptr i8, ptr %call16, i32 5004
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pdev, ptr %pci_dev, align 4
  %mii_if = getelementptr i8, ptr %call16, i32 5616
  %dev115 = getelementptr i8, ptr %call16, i32 5636
  %44 = ptrtoint ptr %dev115 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call16, ptr %dev115, align 4
  %mdio_read = getelementptr i8, ptr %call16, i32 5640
  %45 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call16, i32 5644
  %46 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call16, i32 5624
  %47 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call16, i32 5628
  %48 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 31, ptr %reg_num_mask, align 4
  %speed100 = getelementptr i8, ptr %call16, i32 5600
  %49 = ptrtoint ptr %speed100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %speed100, align 8
  %50 = load i32, ptr @intr_latency, align 4
  %mul = mul i32 %50, 10
  %div = sdiv i32 %mul, 1024
  %and122 = and i32 %div, 31
  %or124 = or i32 %and122, 2144
  %intr_timer_ctrl = getelementptr i8, ptr %call16, i32 5608
  %51 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or124, ptr %intr_timer_ctrl, align 8
  %52 = load i32, ptr @small_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp125 = icmp sgt i32 %52, 0
  br i1 %cmp125, label %if.then127, label %if.end107.if.end149_crit_edge

if.end107.if.end149_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127:                                       ; preds = %if.end107
  %or129 = or i32 %and122, 2400
  %53 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or129, ptr %intr_timer_ctrl, align 8
  %54 = load i32, ptr @small_frames, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %sw.caserange [
    i32 1, label %if.then127.if.end149_crit_edge
    i32 2, label %if.then127.if.end149_crit_edge418
    i32 3, label %if.then127.if.end149_crit_edge419
    i32 4, label %if.then127.if.end149_crit_edge420
    i32 5, label %if.then127.if.end149_crit_edge421
    i32 6, label %if.then127.if.end149_crit_edge422
    i32 7, label %if.then127.if.end149_crit_edge423
    i32 8, label %if.then127.if.end149_crit_edge424
    i32 9, label %if.then127.if.end149_crit_edge425
    i32 10, label %if.then127.if.end149_crit_edge426
    i32 11, label %if.then127.if.end149_crit_edge427
    i32 12, label %if.then127.if.end149_crit_edge428
    i32 13, label %if.then127.if.end149_crit_edge429
    i32 14, label %if.then127.if.end149_crit_edge430
    i32 15, label %if.then127.if.end149_crit_edge431
    i32 16, label %if.then127.if.end149_crit_edge432
    i32 17, label %if.then127.if.end149_crit_edge433
    i32 18, label %if.then127.if.end149_crit_edge434
    i32 19, label %if.then127.if.end149_crit_edge435
    i32 20, label %if.then127.if.end149_crit_edge436
    i32 21, label %if.then127.if.end149_crit_edge437
    i32 22, label %if.then127.if.end149_crit_edge438
    i32 23, label %if.then127.if.end149_crit_edge439
    i32 24, label %if.then127.if.end149_crit_edge440
    i32 25, label %if.then127.if.end149_crit_edge441
    i32 26, label %if.then127.if.end149_crit_edge442
    i32 27, label %if.then127.if.end149_crit_edge443
    i32 28, label %if.then127.if.end149_crit_edge444
    i32 29, label %if.then127.if.end149_crit_edge445
    i32 30, label %if.then127.if.end149_crit_edge446
    i32 31, label %if.then127.if.end149_crit_edge447
    i32 32, label %if.then127.if.end149_crit_edge448
    i32 33, label %if.then127.if.end149_crit_edge449
    i32 34, label %if.then127.if.end149_crit_edge450
    i32 35, label %if.then127.if.end149_crit_edge451
    i32 36, label %if.then127.if.end149_crit_edge452
    i32 37, label %if.then127.if.end149_crit_edge453
    i32 38, label %if.then127.if.end149_crit_edge454
    i32 39, label %if.then127.if.end149_crit_edge455
    i32 40, label %if.then127.if.end149_crit_edge456
    i32 41, label %if.then127.if.end149_crit_edge457
    i32 42, label %if.then127.if.end149_crit_edge458
    i32 43, label %if.then127.if.end149_crit_edge459
    i32 44, label %if.then127.if.end149_crit_edge460
    i32 45, label %if.then127.if.end149_crit_edge461
    i32 46, label %if.then127.if.end149_crit_edge462
    i32 47, label %if.then127.if.end149_crit_edge463
    i32 48, label %if.then127.if.end149_crit_edge464
    i32 49, label %if.then127.if.end149_crit_edge465
    i32 50, label %if.then127.if.end149_crit_edge466
    i32 51, label %if.then127.if.end149_crit_edge467
    i32 52, label %if.then127.if.end149_crit_edge468
    i32 53, label %if.then127.if.end149_crit_edge469
    i32 54, label %if.then127.if.end149_crit_edge470
    i32 55, label %if.then127.if.end149_crit_edge471
    i32 56, label %if.then127.if.end149_crit_edge472
    i32 57, label %if.then127.if.end149_crit_edge473
    i32 58, label %if.then127.if.end149_crit_edge474
    i32 59, label %if.then127.if.end149_crit_edge475
    i32 60, label %if.then127.if.end149_crit_edge476
    i32 61, label %if.then127.if.end149_crit_edge477
    i32 62, label %if.then127.if.end149_crit_edge478
    i32 63, label %if.then127.if.end149_crit_edge479
    i32 64, label %if.then127.if.end149_crit_edge480
    i32 65, label %if.then127.sw.bb132_crit_edge
    i32 66, label %if.then127.sw.bb132_crit_edge481
    i32 67, label %if.then127.sw.bb132_crit_edge482
    i32 68, label %if.then127.sw.bb132_crit_edge483
    i32 69, label %if.then127.sw.bb132_crit_edge484
    i32 70, label %if.then127.sw.bb132_crit_edge485
    i32 71, label %if.then127.sw.bb132_crit_edge486
    i32 72, label %if.then127.sw.bb132_crit_edge487
    i32 73, label %if.then127.sw.bb132_crit_edge488
    i32 74, label %if.then127.sw.bb132_crit_edge489
    i32 75, label %if.then127.sw.bb132_crit_edge490
    i32 76, label %if.then127.sw.bb132_crit_edge491
    i32 77, label %if.then127.sw.bb132_crit_edge492
    i32 78, label %if.then127.sw.bb132_crit_edge493
    i32 79, label %if.then127.sw.bb132_crit_edge494
    i32 80, label %if.then127.sw.bb132_crit_edge495
    i32 81, label %if.then127.sw.bb132_crit_edge496
    i32 82, label %if.then127.sw.bb132_crit_edge497
    i32 83, label %if.then127.sw.bb132_crit_edge498
    i32 84, label %if.then127.sw.bb132_crit_edge499
    i32 85, label %if.then127.sw.bb132_crit_edge500
    i32 86, label %if.then127.sw.bb132_crit_edge501
    i32 87, label %if.then127.sw.bb132_crit_edge502
    i32 88, label %if.then127.sw.bb132_crit_edge503
    i32 89, label %if.then127.sw.bb132_crit_edge504
    i32 90, label %if.then127.sw.bb132_crit_edge505
    i32 91, label %if.then127.sw.bb132_crit_edge506
    i32 92, label %if.then127.sw.bb132_crit_edge507
    i32 93, label %if.then127.sw.bb132_crit_edge508
    i32 94, label %if.then127.sw.bb132_crit_edge509
    i32 95, label %if.then127.sw.bb132_crit_edge510
    i32 96, label %if.then127.sw.bb132_crit_edge511
    i32 97, label %if.then127.sw.bb132_crit_edge512
    i32 98, label %if.then127.sw.bb132_crit_edge513
    i32 99, label %if.then127.sw.bb132_crit_edge514
    i32 100, label %if.then127.sw.bb132_crit_edge515
    i32 101, label %if.then127.sw.bb132_crit_edge516
    i32 102, label %if.then127.sw.bb132_crit_edge517
    i32 103, label %if.then127.sw.bb132_crit_edge518
    i32 104, label %if.then127.sw.bb132_crit_edge519
    i32 105, label %if.then127.sw.bb132_crit_edge520
    i32 106, label %if.then127.sw.bb132_crit_edge521
    i32 107, label %if.then127.sw.bb132_crit_edge522
    i32 108, label %if.then127.sw.bb132_crit_edge523
    i32 109, label %if.then127.sw.bb132_crit_edge524
    i32 110, label %if.then127.sw.bb132_crit_edge525
    i32 111, label %if.then127.sw.bb132_crit_edge526
    i32 112, label %if.then127.sw.bb132_crit_edge527
    i32 113, label %if.then127.sw.bb132_crit_edge528
    i32 114, label %if.then127.sw.bb132_crit_edge529
    i32 115, label %if.then127.sw.bb132_crit_edge530
    i32 116, label %if.then127.sw.bb132_crit_edge531
    i32 117, label %if.then127.sw.bb132_crit_edge532
    i32 118, label %if.then127.sw.bb132_crit_edge533
    i32 119, label %if.then127.sw.bb132_crit_edge534
    i32 120, label %if.then127.sw.bb132_crit_edge535
    i32 121, label %if.then127.sw.bb132_crit_edge536
    i32 122, label %if.then127.sw.bb132_crit_edge537
    i32 123, label %if.then127.sw.bb132_crit_edge538
    i32 124, label %if.then127.sw.bb132_crit_edge539
    i32 125, label %if.then127.sw.bb132_crit_edge540
    i32 126, label %if.then127.sw.bb132_crit_edge541
    i32 127, label %if.then127.sw.bb132_crit_edge542
    i32 128, label %if.then127.sw.bb132_crit_edge543
  ]

if.then127.sw.bb132_crit_edge543:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge542:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge541:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge540:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge539:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge538:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge537:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge536:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge535:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge534:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge533:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge532:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge531:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge530:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge529:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge528:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge527:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge526:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge525:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge524:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge523:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge522:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge521:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge520:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge519:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge518:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge517:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge516:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge515:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge514:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge513:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge512:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge511:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge510:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge509:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge508:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge507:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge506:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge505:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge504:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge503:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge502:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge501:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge500:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge499:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge498:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge497:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge496:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge495:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge494:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge493:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge492:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge491:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge490:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge489:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge488:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge487:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge486:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge485:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge484:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge483:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge482:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge481:                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.sw.bb132_crit_edge:                    ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb132

if.then127.if.end149_crit_edge480:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge479:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge478:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge477:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge476:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge475:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge474:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge473:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge472:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge471:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge470:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge469:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge468:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge467:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge466:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge465:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge464:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge463:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge462:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge461:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge460:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge459:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge458:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge457:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge456:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge455:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge454:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge453:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge452:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge451:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge450:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge449:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge448:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge447:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge446:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge445:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge444:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge443:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge442:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge441:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge440:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge439:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge438:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge437:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge436:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge435:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge434:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge433:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge432:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge431:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge430:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge429:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge428:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge427:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge426:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge425:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge424:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge423:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge422:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge421:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge420:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge419:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge418:                ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then127.if.end149_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

sw.bb132:                                         ; preds = %if.then127.sw.bb132_crit_edge, %if.then127.sw.bb132_crit_edge481, %if.then127.sw.bb132_crit_edge482, %if.then127.sw.bb132_crit_edge483, %if.then127.sw.bb132_crit_edge484, %if.then127.sw.bb132_crit_edge485, %if.then127.sw.bb132_crit_edge486, %if.then127.sw.bb132_crit_edge487, %if.then127.sw.bb132_crit_edge488, %if.then127.sw.bb132_crit_edge489, %if.then127.sw.bb132_crit_edge490, %if.then127.sw.bb132_crit_edge491, %if.then127.sw.bb132_crit_edge492, %if.then127.sw.bb132_crit_edge493, %if.then127.sw.bb132_crit_edge494, %if.then127.sw.bb132_crit_edge495, %if.then127.sw.bb132_crit_edge496, %if.then127.sw.bb132_crit_edge497, %if.then127.sw.bb132_crit_edge498, %if.then127.sw.bb132_crit_edge499, %if.then127.sw.bb132_crit_edge500, %if.then127.sw.bb132_crit_edge501, %if.then127.sw.bb132_crit_edge502, %if.then127.sw.bb132_crit_edge503, %if.then127.sw.bb132_crit_edge504, %if.then127.sw.bb132_crit_edge505, %if.then127.sw.bb132_crit_edge506, %if.then127.sw.bb132_crit_edge507, %if.then127.sw.bb132_crit_edge508, %if.then127.sw.bb132_crit_edge509, %if.then127.sw.bb132_crit_edge510, %if.then127.sw.bb132_crit_edge511, %if.then127.sw.bb132_crit_edge512, %if.then127.sw.bb132_crit_edge513, %if.then127.sw.bb132_crit_edge514, %if.then127.sw.bb132_crit_edge515, %if.then127.sw.bb132_crit_edge516, %if.then127.sw.bb132_crit_edge517, %if.then127.sw.bb132_crit_edge518, %if.then127.sw.bb132_crit_edge519, %if.then127.sw.bb132_crit_edge520, %if.then127.sw.bb132_crit_edge521, %if.then127.sw.bb132_crit_edge522, %if.then127.sw.bb132_crit_edge523, %if.then127.sw.bb132_crit_edge524, %if.then127.sw.bb132_crit_edge525, %if.then127.sw.bb132_crit_edge526, %if.then127.sw.bb132_crit_edge527, %if.then127.sw.bb132_crit_edge528, %if.then127.sw.bb132_crit_edge529, %if.then127.sw.bb132_crit_edge530, %if.then127.sw.bb132_crit_edge531, %if.then127.sw.bb132_crit_edge532, %if.then127.sw.bb132_crit_edge533, %if.then127.sw.bb132_crit_edge534, %if.then127.sw.bb132_crit_edge535, %if.then127.sw.bb132_crit_edge536, %if.then127.sw.bb132_crit_edge537, %if.then127.sw.bb132_crit_edge538, %if.then127.sw.bb132_crit_edge539, %if.then127.sw.bb132_crit_edge540, %if.then127.sw.bb132_crit_edge541, %if.then127.sw.bb132_crit_edge542, %if.then127.sw.bb132_crit_edge543
  %or134 = or i32 %and122, 2912
  %56 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or134, ptr %intr_timer_ctrl, align 8
  br label %if.end149

sw.bb135:                                         ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #14
  %or137 = or i32 %and122, 3424
  %57 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or137, ptr %intr_timer_ctrl, align 8
  br label %if.end149

sw.caserange:                                     ; preds = %if.then127
  %58 = add i32 %54, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %58)
  %inbounds = icmp ult i32 %58, 128
  br i1 %inbounds, label %sw.bb135, label %sw.default

sw.default:                                       ; preds = %sw.caserange
  %or139 = or i32 %and122, 3936
  %59 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or139, ptr %intr_timer_ctrl, align 8
  %60 = load i32, ptr @small_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %60)
  %cmp140 = icmp sgt i32 %60, 512
  br i1 %cmp140, label %do.end145, label %sw.default.if.end149_crit_edge

sw.default.if.end149_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

do.end145:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %if.end149

if.end149:                                        ; preds = %do.end145, %sw.default.if.end149_crit_edge, %sw.bb135, %sw.bb132, %if.then127.if.end149_crit_edge, %if.then127.if.end149_crit_edge418, %if.then127.if.end149_crit_edge419, %if.then127.if.end149_crit_edge420, %if.then127.if.end149_crit_edge421, %if.then127.if.end149_crit_edge422, %if.then127.if.end149_crit_edge423, %if.then127.if.end149_crit_edge424, %if.then127.if.end149_crit_edge425, %if.then127.if.end149_crit_edge426, %if.then127.if.end149_crit_edge427, %if.then127.if.end149_crit_edge428, %if.then127.if.end149_crit_edge429, %if.then127.if.end149_crit_edge430, %if.then127.if.end149_crit_edge431, %if.then127.if.end149_crit_edge432, %if.then127.if.end149_crit_edge433, %if.then127.if.end149_crit_edge434, %if.then127.if.end149_crit_edge435, %if.then127.if.end149_crit_edge436, %if.then127.if.end149_crit_edge437, %if.then127.if.end149_crit_edge438, %if.then127.if.end149_crit_edge439, %if.then127.if.end149_crit_edge440, %if.then127.if.end149_crit_edge441, %if.then127.if.end149_crit_edge442, %if.then127.if.end149_crit_edge443, %if.then127.if.end149_crit_edge444, %if.then127.if.end149_crit_edge445, %if.then127.if.end149_crit_edge446, %if.then127.if.end149_crit_edge447, %if.then127.if.end149_crit_edge448, %if.then127.if.end149_crit_edge449, %if.then127.if.end149_crit_edge450, %if.then127.if.end149_crit_edge451, %if.then127.if.end149_crit_edge452, %if.then127.if.end149_crit_edge453, %if.then127.if.end149_crit_edge454, %if.then127.if.end149_crit_edge455, %if.then127.if.end149_crit_edge456, %if.then127.if.end149_crit_edge457, %if.then127.if.end149_crit_edge458, %if.then127.if.end149_crit_edge459, %if.then127.if.end149_crit_edge460, %if.then127.if.end149_crit_edge461, %if.then127.if.end149_crit_edge462, %if.then127.if.end149_crit_edge463, %if.then127.if.end149_crit_edge464, %if.then127.if.end149_crit_edge465, %if.then127.if.end149_crit_edge466, %if.then127.if.end149_crit_edge467, %if.then127.if.end149_crit_edge468, %if.then127.if.end149_crit_edge469, %if.then127.if.end149_crit_edge470, %if.then127.if.end149_crit_edge471, %if.then127.if.end149_crit_edge472, %if.then127.if.end149_crit_edge473, %if.then127.if.end149_crit_edge474, %if.then127.if.end149_crit_edge475, %if.then127.if.end149_crit_edge476, %if.then127.if.end149_crit_edge477, %if.then127.if.end149_crit_edge478, %if.then127.if.end149_crit_edge479, %if.then127.if.end149_crit_edge480, %if.end107.if.end149_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 16
  %61 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 115
  %62 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 200, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 44
  %63 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call16, i32 4776
  %64 = load i32, ptr @max_interrupt_work, align 4
  call void @netif_napi_add(ptr noundef %call16, ptr noundef %napi, ptr noundef nonnull @netdev_poll, i32 noundef %64) #12
  %65 = load i32, ptr @mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool150.not = icmp eq i32 %65, 0
  br i1 %tobool150.not, label %if.end149.if.end152_crit_edge, label %if.then151

if.end149.if.end152_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 20
  %66 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %mtu, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end149.if.end152_crit_edge
  %call153 = call i32 @register_netdev(ptr noundef %call16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %do.end159, label %err_out_cleardev

do.end159:                                        ; preds = %if.end152
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 86
  %67 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr, align 64
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %call16, ptr noundef nonnull @.str.38, ptr noundef nonnull %call30, ptr noundef %68, i32 noundef %14) #15
  br label %for.body174

for.body174:                                      ; preds = %for.inc217.for.body174_crit_edge, %do.end159
  %phy.0390 = phi i32 [ 0, %do.end159 ], [ %inc218, %for.inc217.for.body174_crit_edge ]
  %69 = ptrtoint ptr %base110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base110, align 8
  %add.ptr.i352 = getelementptr i8, ptr %70, i32 335872
  %shl.i = shl i32 %phy.0390, 7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i352, i32 %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 8388608) #12, !srcloc !333
  call void @msleep(i32 noundef 100) #12
  br label %while.cond175

while.cond175:                                    ; preds = %mdio_read.exit.while.cond175_crit_edge, %for.body174
  %boguscnt.1 = phi i32 [ 1000, %for.body174 ], [ %dec176, %mdio_read.exit.while.cond175_crit_edge ]
  %dec176 = add nsw i32 %boguscnt.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec176)
  %cmp177.not = icmp eq i32 %dec176, 0
  br i1 %cmp177.not, label %while.cond175.do.end192_crit_edge, label %while.body179

while.cond175.do.end192_crit_edge:                ; preds = %while.cond175
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192

while.body179:                                    ; preds = %while.cond175
  %71 = ptrtoint ptr %base110 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base110, align 8
  %add.ptr.i354 = getelementptr i8, ptr %72, i32 335872
  %add.ptr1.i356 = getelementptr i8, ptr %add.ptr.i354, i32 %shl.i
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %while.body179
  %boguscnt.0.i = phi i32 [ 1000, %while.body179 ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i356) #12, !srcloc !336
  %74 = call i32 @llvm.bswap.i32(i32 %73) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i = and i32 %74, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, -2147483648
  br i1 %cmp.not.i, label %do.body.i.mdio_read.exit_crit_edge, label %land.rhs.i

do.body.i.mdio_read.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %boguscnt.0.i, -1
  %cmp6.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp6.not.i, label %land.rhs.i.mdio_read.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.mdio_read.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %land.rhs.i.mdio_read.exit_crit_edge, %do.body.i.mdio_read.exit_crit_edge
  %boguscnt.1.i = phi i32 [ 0, %land.rhs.i.mdio_read.exit_crit_edge ], [ %boguscnt.0.i, %do.body.i.mdio_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i)
  %cmp7.i = icmp eq i32 %boguscnt.1.i, 0
  %and8.i = and i32 %74, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i)
  %cmp9.i = icmp eq i32 %and8.i, 65535
  %75 = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  %.op = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.op)
  %cmp182382 = icmp eq i32 %.op, 0
  %cmp182 = select i1 %75, i1 true, i1 %cmp182382
  br i1 %cmp182, label %while.end186, label %mdio_read.exit.while.cond175_crit_edge

mdio_read.exit.while.cond175_crit_edge:           ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond175

while.end186:                                     ; preds = %mdio_read.exit
  br i1 %cmp177.not, label %while.end186.do.end192_crit_edge, label %if.end197

while.end186.do.end192_crit_edge:                 ; preds = %while.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192

do.end192:                                        ; preds = %while.end186.do.end192_crit_edge, %while.cond175.do.end192_crit_edge
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call16, i32 noundef %phy.0390) #15
  br label %for.inc217

if.end197:                                        ; preds = %while.end186
  %76 = ptrtoint ptr %base110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base110, align 8
  %add.ptr1.i360 = getelementptr i8, ptr %77, i32 335876
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i360, i32 %shl.i
  br label %do.body.i364

do.body.i364:                                     ; preds = %land.rhs.i367.do.body.i364_crit_edge, %if.end197
  %boguscnt.0.i361 = phi i32 [ 1000, %if.end197 ], [ %dec.i365, %land.rhs.i367.do.body.i364_crit_edge ]
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12, !srcloc !336
  %79 = call i32 @llvm.bswap.i32(i32 %78) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i362 = and i32 %79, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i362)
  %cmp.not.i363 = icmp eq i32 %and.i362, -2147483648
  br i1 %cmp.not.i363, label %mdio_read.exit373, label %land.rhs.i367

land.rhs.i367:                                    ; preds = %do.body.i364
  %dec.i365 = add nsw i32 %boguscnt.0.i361, -1
  %cmp6.not.i366 = icmp eq i32 %dec.i365, 0
  br i1 %cmp6.not.i366, label %land.rhs.i367.for.inc217_crit_edge, label %land.rhs.i367.do.body.i364_crit_edge

land.rhs.i367.do.body.i364_crit_edge:             ; preds = %land.rhs.i367
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i364

land.rhs.i367.for.inc217_crit_edge:               ; preds = %land.rhs.i367
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc217

mdio_read.exit373:                                ; preds = %do.body.i364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.0.i361)
  %cmp7.i369 = icmp eq i32 %boguscnt.0.i361, 0
  %and8.i370 = and i32 %79, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i370)
  %cmp9.i371 = icmp eq i32 %and8.i370, 65535
  %80 = select i1 %cmp7.i369, i1 true, i1 %cmp9.i371
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i370)
  %cmp199.not381 = icmp eq i32 %and8.i370, 0
  %cmp199.not = select i1 %80, i1 true, i1 %cmp199.not381
  br i1 %cmp199.not, label %mdio_read.exit373.for.inc217_crit_edge, label %if.then223

mdio_read.exit373.for.inc217_crit_edge:           ; preds = %mdio_read.exit373
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc217

for.inc217:                                       ; preds = %mdio_read.exit373.for.inc217_crit_edge, %land.rhs.i367.for.inc217_crit_edge, %do.end192
  %inc218 = add nuw nsw i32 %phy.0390, 1
  %exitcond397.not = icmp eq i32 %inc218, 32
  br i1 %exitcond397.not, label %if.else, label %for.inc217.for.body174_crit_edge

for.inc217.for.body174_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body174

if.then223:                                       ; preds = %mdio_read.exit373
  call void @__sanitizer_cov_trace_pc() #14
  %conv202 = trunc i32 %phy.0390 to i8
  %phys = getelementptr i8, ptr %call16, i32 5652
  %81 = ptrtoint ptr %phys to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv202, ptr %phys, align 1
  %call205 = call i32 @mdio_read(ptr noundef %call16, i32 noundef %phy.0390, i32 noundef 4)
  %advertising = getelementptr i8, ptr %call16, i32 5620
  %82 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call205, ptr %advertising, align 4
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call16, i32 noundef %phy.0390, i32 noundef %and8.i370, i32 noundef %call205) #15
  %phy_cnt = getelementptr i8, ptr %call16, i32 5648
  %83 = ptrtoint ptr %phy_cnt to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %phy_cnt, align 8
  %84 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %phys, align 4
  %conv226 = zext i8 %85 to i32
  %86 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv226, ptr %mii_if, align 8
  br label %do.end233

if.else:                                          ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  %87 = call ptr @memset(ptr %mii_if, i32 0, i32 36)
  br label %do.end233

do.end233:                                        ; preds = %if.else, %if.then223
  %88 = load i32, ptr @enable_hw_cksum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool237.not = icmp eq i32 %88, 0
  %cond238 = select i1 %tobool237.not, ptr @.str.37, ptr @.str.36
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %call16, ptr noundef nonnull %cond238) #15
  br label %cleanup

err_out_cleardev:                                 ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  call void @iounmap(ptr noundef nonnull %call30) #12
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_cleardev, %do.end35
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_free_res, %do.end28
  call void @free_netdev(ptr noundef %call16) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_netdev, %do.end233, %if.end15.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %err_out_free_netdev ], [ 0, %do.end233 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @starfire_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !340

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/adaptec/starfire.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2024, 0\0A.popsection", ""() #12, !srcloc !341
  unreachable

do.end10:                                         ; preds = %entry
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  %queue_mem = getelementptr i8, ptr %1, i32 5520
  %2 = ptrtoint ptr %queue_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_mem, align 8
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.end10.if.end15_crit_edge, label %if.then12

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %queue_mem_size = getelementptr i8, ptr %1, i32 5528
  %4 = ptrtoint ptr %queue_mem_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_mem_size, align 8
  %queue_mem_dma = getelementptr i8, ptr %1, i32 5524
  %6 = ptrtoint ptr %queue_mem_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_mem_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef %5, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.end10.if.end15_crit_edge
  %call16 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  %base = getelementptr i8, ptr %1, i32 5656
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  tail call void @iounmap(ptr noundef %9) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 335872
  %shl = shl i32 %phy_id, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %shl2 = shl i32 %location, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %shl2
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %boguscnt.0 = phi i32 [ 1000, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and)
  %cmp.not = icmp eq i32 %and, -2147483648
  br i1 %cmp.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %boguscnt.0, -1
  %cmp6.not = icmp eq i32 %dec, 0
  br i1 %cmp6.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %boguscnt.1 = phi i32 [ 0, %land.rhs.do.end_crit_edge ], [ %boguscnt.0, %do.body.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1)
  %cmp7 = icmp eq i32 %boguscnt.1, 0
  %and8 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 65535
  %4 = select i1 %cmp7, i1 true, i1 %cmp9
  %retval.0 = select i1 %4, i32 0, i32 %and8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 335872
  %shl = shl i32 %phy_id, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %shl2 = shl i32 %location, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !333
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 224
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %base = getelementptr i8, ptr %napi, i32 880
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %3, i32 327808
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %rx_done_q.i = getelementptr i8, ptr %1, i32 4752
  %rx_done.i = getelementptr i8, ptr %1, i32 4760
  %pci_dev.i = getelementptr i8, ptr %1, i32 5004
  %rx_buf_sz.i = getelementptr i8, ptr %1, i32 5596
  %rx_compressed.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 21
  %stats151.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %cur_rx.i = getelementptr i8, ptr %1, i32 5576
  %base.i = getelementptr i8, ptr %1, i32 5656
  %dirty_rx.i.i = getelementptr i8, ptr %1, i32 5580
  %add.ptr4 = getelementptr i8, ptr %3, i32 327812
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %quota.0 = phi i32 [ %budget, %entry ], [ %quota.5, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !342
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1073938688) #12, !srcloc !333
  %4 = ptrtoint ptr %rx_done_q.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_done_q.i, align 8
  %6 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_done.i, align 8
  %arrayidx272.i = getelementptr %struct.full_rx_done_desc, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx272.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not273.i = icmp eq i32 %9, 0
  br i1 %cmp.not273.i, label %do.body.while.end.i_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.while.end.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %quota.1 = phi i32 [ %quota.3, %cleanup.i.while.body.i_crit_edge ], [ %quota.0, %do.body.while.body.i_crit_edge ]
  %11 = phi i32 [ %99, %cleanup.i.while.body.i_crit_edge ], [ %10, %do.body.while.body.i_crit_edge ]
  %arrayidx274.i = phi ptr [ %arrayidx.i, %cleanup.i.while.body.i_crit_edge ], [ %arrayidx272.i, %do.body.while.body.i_crit_edge ]
  %12 = phi i32 [ %rem.i, %cleanup.i.while.body.i_crit_edge ], [ %7, %do.body.while.body.i_crit_edge ]
  %13 = phi ptr [ %96, %cleanup.i.while.body.i_crit_edge ], [ %5, %do.body.while.body.i_crit_edge ]
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp5.i = icmp sgt i32 %14, 4
  br i1 %cmp5.i, label %do.end.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %12, i32 noundef %11) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  %and.i = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp9.i = icmp sgt i32 %15, 2
  br i1 %cmp9.i, label %do.end13.i, label %if.then8.i.if.end16.i_crit_edge

if.then8.i.if.end16.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

do.end13.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %11) #15
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end13.i, %if.then8.i.if.end16.i_crit_edge
  %16 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and17.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.cleanup.i_crit_edge, label %if.end16.i.cleanup.sink.split.i_crit_edge

if.end16.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end16.i.cleanup.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %quota.1)
  %cmp24.i = icmp slt i32 %quota.1, 1
  br i1 %cmp24.i, label %if.end23.i.out.i_crit_edge, label %if.end26.i

if.end23.i.out.i_crit_edge:                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end26.i:                                       ; preds = %if.end23.i
  %dec.i = add nsw i32 %quota.1, -1
  %shr.i = lshr i32 %11, 16
  %and27.i = and i32 %shr.i, 2047
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp28.i = icmp sgt i32 %18, 4
  %conv35.i = and i32 %11, 65535
  br i1 %cmp28.i, label %do.end33.i, label %if.end26.i.if.end37.i_crit_edge

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %conv35.i, i32 noundef %dec.i) #15
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end33.i, %if.end26.i.if.end37.i_crit_edge
  %19 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv35.i, i32 %19)
  %cmp39.i = icmp slt i32 %conv35.i, %19
  br i1 %cmp39.i, label %land.lhs.true.i, label %if.end37.i.if.else.i_crit_edge

if.end37.i.if.else.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  %add.i = add nuw nsw i32 %conv35.i, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i, i32 noundef 2592) #12
  %cmp43.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp43.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then45.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i260.i = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr.i260.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %24 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev.i, align 4
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %arrayidx47.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %and27.i
  %mapping.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %and27.i, i32 1
  %26 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mapping.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev46.i, i32 noundef %27, i32 noundef %conv35.i, i32 noundef 2) #12
  %28 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %34 = call ptr @memcpy(ptr %33, ptr %31, i32 %conv35.i)
  %35 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev.i, align 4
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mapping.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev54.i, i32 noundef %38, i32 noundef %conv35.i, i32 noundef 2) #12
  %call60.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv35.i) #12
  br label %if.end77.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end37.i.if.else.i_crit_edge
  %39 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev.i, align 4
  %dev62.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %arrayidx64.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %and27.i
  %mapping65.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %and27.i, i32 1
  %41 = ptrtoint ptr %mapping65.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapping65.i, align 4
  %43 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev62.i, i32 noundef %42, i32 noundef %44, i32 noundef 2, i32 noundef 0) #12
  %45 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx64.i, align 8
  %call70.i = tail call ptr @skb_put(ptr noundef %46, i32 noundef %conv35.i) #12
  %47 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx64.i, align 8
  %48 = ptrtoint ptr %mapping65.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %mapping65.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else.i, %if.then45.i
  %skb.0.i = phi ptr [ %call.i.i, %if.then45.i ], [ %46, %if.else.i ]
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp78.i = icmp sgt i32 %49, 5
  br i1 %cmp78.i, label %do.end83.i, label %if.end77.i.if.end94.i_crit_edge

if.end77.i.if.end94.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

do.end83.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  %data85.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %50 = ptrtoint ptr %data85.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data85.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 6
  %arrayidx88.i = getelementptr i8, ptr %51, i32 12
  %52 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %53 to i32
  %arrayidx91.i = getelementptr i8, ptr %51, i32 13
  %54 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = zext i8 %55 to i32
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %51, ptr noundef %add.ptr.i, i32 noundef %conv89.i, i32 noundef %conv92.i) #15
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end83.i, %if.end77.i.if.end94.i_crit_edge
  %call95.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %1) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %56 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %call95.i, ptr %protocol.i, align 8
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp96.i = icmp sgt i32 %57, 4
  br i1 %cmp96.i, label %do.end101.i, label %if.end94.i.if.end106.i_crit_edge

if.end94.i.if.end106.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106.i

do.end101.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_done.i, align 8
  %status2.i = getelementptr %struct.full_rx_done_desc, ptr %13, i32 %12, i32 2
  %60 = ptrtoint ptr %status2.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %status2.i, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #12
  %conv104.i = zext i16 %62 to i32
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %59, i32 noundef %conv104.i) #15
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.end101.i, %if.end94.i.if.end106.i_crit_edge
  %status2107.i = getelementptr %struct.full_rx_done_desc, ptr %13, i32 %12, i32 2
  %63 = ptrtoint ptr %status2107.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %status2107.i, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #12
  %conv108.i = zext i16 %65 to i32
  %and109.i = and i32 %conv108.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.else114.i, label %if.then111.i

if.then111.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %66 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %67 = ptrtoint ptr %rx_compressed.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_compressed.i, align 4
  %inc113.i = add i32 %68, 1
  store i32 %inc113.i, ptr %rx_compressed.i, align 4
  br label %if.end133.i

if.else114.i:                                     ; preds = %if.end106.i
  %and117.i = and i32 %conv108.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.else114.i.if.end133.i_crit_edge, label %if.then119.i

if.else114.i.if.end133.i_crit_edge:               ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133.i

if.then119.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #14
  %ip_summed120.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %69 = ptrtoint ptr %ip_summed120.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load121.i = load i16, ptr %ip_summed120.i, align 8
  %bf.clear122.i = and i16 %bf.load121.i, -1537
  %bf.set123.i = or i16 %bf.clear122.i, 1024
  store i16 %bf.set123.i, ptr %ip_summed120.i, align 8
  %csum.i = getelementptr %struct.full_rx_done_desc, ptr %13, i32 %12, i32 4
  %70 = ptrtoint ptr %csum.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %csum.i, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #12
  %conv124.i = zext i16 %72 to i32
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 5
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv124.i, ptr %73, align 8
  %75 = ptrtoint ptr %status2107.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %status2107.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #12
  %conv130.i = zext i16 %77 to i32
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %1, i32 noundef %conv130.i) #15
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then119.i, %if.else114.i.if.end133.i_crit_edge, %if.then111.i
  %78 = ptrtoint ptr %status2107.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %status2107.i, align 2
  %80 = and i16 %79, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool137.not.i = icmp eq i16 %80, 0
  br i1 %tobool137.not.i, label %if.end133.i.if.end149.i_crit_edge, label %if.then138.i

if.end133.i.if.end149.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149.i

if.then138.i:                                     ; preds = %if.end133.i
  %vlanid.i = getelementptr %struct.full_rx_done_desc, ptr %13, i32 %12, i32 3
  %81 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vlanid.i, align 4
  %83 = tail call i16 @llvm.bswap.i16(i16 %82) #12
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp139.i = icmp sgt i32 %84, 4
  br i1 %cmp139.i, label %do.end144.i, label %if.then138.i.if.end148.i_crit_edge

if.then138.i.if.end148.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.i

do.end144.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv146.i = zext i16 %83 to i32
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv146.i) #15
  br label %if.end148.i

if.end148.i:                                      ; preds = %do.end144.i, %if.then138.i.if.end148.i_crit_edge
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 9
  %85 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 10
  %86 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %83, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 3
  %87 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end148.i, %if.end133.i.if.end149.i_crit_edge
  %call150.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end149.i, %if.end16.i.cleanup.sink.split.i_crit_edge
  %quota.2 = phi i32 [ %quota.1, %if.end16.i.cleanup.sink.split.i_crit_edge ], [ %dec.i, %if.end149.i ]
  %stats151.sink288.i = phi ptr [ %rx_fifo_errors.i, %if.end16.i.cleanup.sink.split.i_crit_edge ], [ %stats151.i, %if.end149.i ]
  %88 = ptrtoint ptr %stats151.sink288.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %stats151.sink288.i, align 8
  %inc152.i = add i32 %89, 1
  store i32 %inc152.i, ptr %stats151.sink288.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.end16.i.cleanup.i_crit_edge
  %quota.3 = phi i32 [ %quota.1, %if.end16.i.cleanup.i_crit_edge ], [ %quota.2, %cleanup.sink.split.i ]
  %90 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cur_rx.i, align 8
  %inc153.i = add i32 %91, 1
  store i32 %inc153.i, ptr %cur_rx.i, align 8
  %92 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx274.i, align 4
  %93 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_done.i, align 8
  %add156.i = add i32 %94, 1
  %rem.i = and i32 %add156.i, 1023
  store i32 %rem.i, ptr %rx_done.i, align 8
  %95 = ptrtoint ptr %rx_done_q.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_done_q.i, align 8
  %arrayidx.i = getelementptr %struct.full_rx_done_desc, ptr %96, i32 %rem.i
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #12
  %cmp.not.i = icmp eq i32 %98, 0
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %do.body.while.end.i_crit_edge
  %quota.4 = phi i32 [ %quota.0, %do.body.while.end.i_crit_edge ], [ %quota.3, %cleanup.i.while.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %10, %do.body.while.end.i_crit_edge ], [ %99, %cleanup.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota.4)
  %cmp161.i = icmp eq i32 %quota.4, 0
  br i1 %cmp161.i, label %while.end.i.out.i_crit_edge, label %do.body165.i

while.end.i.out.i_crit_edge:                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body165.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !343
  tail call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_done.i, align 8
  %conv169.i = trunc i32 %101 to i16
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv169.i) #12
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 8
  %add.ptr170.i = getelementptr i8, ptr %104, i32 327876
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr170.i, i16 %102) #12, !srcloc !344
  br label %out.i

out.i:                                            ; preds = %do.body165.i, %while.end.i.out.i_crit_edge, %if.end23.i.out.i_crit_edge
  %quota.5 = phi i32 [ 0, %while.end.i.out.i_crit_edge ], [ %quota.4, %do.body165.i ], [ %quota.1, %if.end23.i.out.i_crit_edge ]
  %105 = phi i32 [ %.lcssa.i, %while.end.i.out.i_crit_edge ], [ %.lcssa.i, %do.body165.i ], [ %11, %if.end23.i.out.i_crit_edge ]
  %tobool.not = phi i1 [ false, %while.end.i.out.i_crit_edge ], [ true, %do.body165.i ], [ false, %if.end23.i.out.i_crit_edge ]
  %retcode.2.i = phi i32 [ 1, %while.end.i.out.i_crit_edge ], [ 0, %do.body165.i ], [ 1, %if.end23.i.out.i_crit_edge ]
  %106 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cur_rx.i, align 8
  %108 = ptrtoint ptr %dirty_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dirty_rx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp.not84.i.i = icmp eq i32 %107, %109
  br i1 %cmp.not84.i.i, label %out.i.refill_rx_ring.exit.i_crit_edge, label %out.i.for.body.i.i_crit_edge

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

out.i.refill_rx_ring.exit.i_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refill_rx_ring.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %110 = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %109, %out.i.for.body.i.i_crit_edge ]
  %rem.i.i = and i32 %110, 255
  %arrayidx.i.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %rem.i.i
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i, align 8
  %cmp4.i.i = icmp eq ptr %112, null
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.if.end31.i.i_crit_edge

for.body.i.i.if.end31.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %113 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %114, i32 noundef 2592) #12
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i.i.i, ptr %arrayidx.i.i, align 8
  %cmp9.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp9.i.i, label %if.then.i.i.do.body.i.i_crit_edge, label %if.end.i.i

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %116 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_dev.i, align 4
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %data.i262.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %118 = ptrtoint ptr %data.i262.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i262.i, align 4
  %120 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i73.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %119) #12
  br i1 %call.i73.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !345

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev11.i.i) #12
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44, i32 3
  %122 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev11.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %125, %if.end.i.i.i.i ], [ %123, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev11.i.i, ptr noundef %119, i32 noundef %121) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %126 = load ptr, ptr @mem_map, align 4
  %127 = ptrtoint ptr %119 to i32
  %sub.i.i.i = add i32 %127, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i74.i.i = getelementptr %struct.page, ptr %126, i32 %shr.i.i.i
  %and.i.i.i = and i32 %127, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev11.i.i, ptr noundef %add.ptr.i74.i.i, i32 noundef %and.i.i.i, i32 noundef %121, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %mapping.i.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %rem.i.i, i32 1
  %128 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %retval.0.i.i.i, ptr %mapping.i.i, align 4
  %129 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci_dev.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev17.i.i, i32 noundef %retval.0.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then22.i.i, label %if.end26.i.i

if.then22.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #12
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %arrayidx.i.i, align 8
  br label %do.body.i.i

if.end26.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mapping.i.i, align 4
  %or.i.i = or i32 %133, 1
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %135 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i.i, align 8
  %arrayidx30.i.i = getelementptr %struct.starfire_rx_desc, ptr %136, i32 %rem.i.i
  %137 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %134, ptr %arrayidx30.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.end26.i.i, %for.body.i.i.if.end31.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %rem.i.i)
  %cmp32.i.i = icmp eq i32 %rem.i.i, 255
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.end31.i.i.for.inc.i.i_crit_edge

if.end31.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then33.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr.i.i, align 8
  %arrayidx35.i.i = getelementptr %struct.starfire_rx_desc, ptr %139, i32 255
  %140 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx35.i.i, align 4
  %or37.i.i = or i32 %141, 33554432
  store i32 %or37.i.i, ptr %arrayidx35.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then33.i.i, %if.end31.i.i.for.inc.i.i_crit_edge
  %142 = ptrtoint ptr %dirty_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dirty_rx.i.i, align 4
  %inc.i.i = add i32 %143, 1
  store i32 %inc.i.i, ptr %dirty_rx.i.i, align 4
  %144 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cur_rx.i, align 8
  %cmp.not.i.i = icmp eq i32 %145, %inc.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.then22.i.i, %if.then.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !346
  tail call void @arm_heavy_mb() #12
  %conv.i.i = trunc i32 %rem.i.i to i16
  %146 = shl nuw i16 %conv.i.i, 8
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 8
  %add.ptr.i263.i = getelementptr i8, ptr %148, i32 327912
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i263.i, i16 %146) #12, !srcloc !344
  br label %refill_rx_ring.exit.i

refill_rx_ring.exit.i:                            ; preds = %do.body.i.i, %out.i.refill_rx_ring.exit.i_crit_edge
  %149 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %149)
  %cmp171.i = icmp sgt i32 %149, 5
  br i1 %cmp171.i, label %do.end176.i, label %refill_rx_ring.exit.i.__netdev_rx.exit_crit_edge

refill_rx_ring.exit.i.__netdev_rx.exit_crit_edge: ; preds = %refill_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__netdev_rx.exit

do.end176.i:                                      ; preds = %refill_rx_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_done.i, align 8
  %call179.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %retcode.2.i, i32 noundef %151, i32 noundef %105) #15
  br label %__netdev_rx.exit

__netdev_rx.exit:                                 ; preds = %do.end176.i, %refill_rx_ring.exit.i.__netdev_rx.exit_crit_edge
  br i1 %tobool.not, label %if.end, label %__netdev_rx.exit.out_crit_edge

__netdev_rx.exit.out_crit_edge:                   ; preds = %__netdev_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %__netdev_rx.exit
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !347
  %153 = and i32 %152, 1073938688
  %tobool9.not = icmp eq i32 %153, 0
  br i1 %tobool9.not, label %do.end10, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #12
  %add.ptr14 = getelementptr i8, ptr %3, i32 327816
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !348
  %155 = or i32 %154, 1073938688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !349
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %155) #12, !srcloc !333
  br label %out

out:                                              ; preds = %do.end10, %__netdev_rx.exit.out_crit_edge
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %156)
  %cmp = icmp sgt i32 %156, 5
  %sub = sub i32 %budget, %quota.5
  br i1 %cmp, label %do.end25, label %out.if.end28_crit_edge

out.if.end28_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end25:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %sub) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %out.if.end28_crit_edge
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  %fw_rx = alloca ptr, align 4
  %fw_tx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_rx) #12
  %0 = ptrtoint ptr %fw_rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_rx, align 4, !annotation !350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_tx) #12
  %1 = ptrtoint ptr %fw_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_tx, align 4, !annotation !350
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 5656
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 5004
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !351
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %3, i32 327792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !352
  tail call void @arm_heavy_mb() #12
  %add.ptr7 = getelementptr i8, ptr %3, i32 327744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #12, !srcloc !333
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end11, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %dev, i32 noundef %7) #15
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %do.body.if.end15_crit_edge
  %queue_mem = getelementptr i8, ptr %dev, i32 5520
  %9 = ptrtoint ptr %queue_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_mem, align 8
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end44_crit_edge

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then17:                                        ; preds = %if.end15
  %queue_mem_size = getelementptr i8, ptr %dev, i32 5528
  %11 = ptrtoint ptr %queue_mem_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 21760, ptr %queue_mem_size, align 8
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %queue_mem_dma = getelementptr i8, ptr %dev, i32 5524
  %call.i457 = tail call ptr @dma_alloc_attrs(ptr noundef %dev21, i32 noundef 21760, ptr noundef %queue_mem_dma, i32 noundef 2592, i32 noundef 0) #12
  %14 = ptrtoint ptr %queue_mem to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i457, ptr %queue_mem, align 8
  %cmp26 = icmp eq ptr %call.i457, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #12
  br label %cleanup

if.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %tx_done_q = getelementptr i8, ptr %dev, i32 4764
  %15 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i457, ptr %tx_done_q, align 4
  %16 = ptrtoint ptr %queue_mem_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %queue_mem_dma, align 4
  %tx_done_q_dma = getelementptr i8, ptr %dev, i32 4768
  %18 = ptrtoint ptr %tx_done_q_dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_done_q_dma, align 8
  %add.ptr33 = getelementptr i8, ptr %call.i457, i32 4096
  %rx_done_q = getelementptr i8, ptr %dev, i32 4752
  %19 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr33, ptr %rx_done_q, align 8
  %add35 = add i32 %17, 4096
  %rx_done_q_dma = getelementptr i8, ptr %dev, i32 4756
  %20 = ptrtoint ptr %rx_done_q_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add35, ptr %rx_done_q_dma, align 4
  %add.ptr37 = getelementptr i8, ptr %call.i457, i32 20480
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr37, ptr %tx_ring, align 4
  %add39 = add i32 %17, 20480
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2316
  %22 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add39, ptr %tx_ring_dma, align 4
  %add.ptr41 = getelementptr i8, ptr %call.i457, i32 20736
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr41, ptr %add.ptr.i, align 8
  %add43 = add i32 %17, 20736
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2312
  %24 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add43, ptr %rx_ring_dma, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end29, %if.end15.if.end44_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  %cur_rx.i = getelementptr i8, ptr %dev, i32 5576
  %tx_done.i = getelementptr i8, ptr %dev, i32 4772
  %25 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_done.i, align 4
  %rx_done.i = getelementptr i8, ptr %dev, i32 4760
  %26 = ptrtoint ptr %rx_done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_done.i, align 8
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 5580
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %27 = call ptr @memset(ptr %cur_rx.i, i32 0, i32 20)
  %28 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %29)
  %cmp.i = icmp ult i32 %29, 1501
  %add.i = add i32 %29, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 5596
  %30 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end44
  %i.0127.i = phi i32 [ 0, %if.end44 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %32, i32 noundef 2592) #12
  %arrayidx.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0127.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %arrayidx.i, align 8
  %cmp6.i = icmp eq ptr %call.i.i, null
  br i1 %cmp6.i, label %for.body.i.do.body.i_crit_edge, label %if.end.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.end.i:                                         ; preds = %for.body.i
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i120.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #12
  br i1 %call.i120.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !345

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev7.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %40 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev7.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %43, %if.end.i.i.i ], [ %41, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev7.i, ptr noundef %37, i32 noundef %39) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %37 to i32
  %sub.i.i = add i32 %45, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i121.i = getelementptr %struct.page, ptr %44, i32 %shr.i.i
  %and.i.i = and i32 %45, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev7.i, ptr noundef %add.ptr.i121.i, i32 noundef %and.i.i, i32 noundef %39, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %mapping.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.0127.i, i32 1
  %46 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i.i, ptr %mapping.i, align 4
  %47 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev, align 4
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev13.i, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then18.i, label %for.inc.i

if.then18.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #12
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx.i, align 8
  br label %do.body.i

for.inc.i:                                        ; preds = %dma_map_single_attrs.exit.i
  %50 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mapping.i, align 4
  %or.i = or i32 %51, 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx26.i = getelementptr %struct.starfire_rx_desc, ptr %54, i32 %i.0127.i
  %55 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %arrayidx26.i, align 4
  %inc.i = add nuw nsw i32 %i.0127.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.then18.i, %for.body.i.do.body.i_crit_edge
  %i.0126.i = phi i32 [ %i.0127.i, %if.then18.i ], [ %i.0127.i, %for.body.i.do.body.i_crit_edge ], [ 256, %for.inc.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !353
  tail call void @arm_heavy_mb() #12
  %56 = trunc i32 %i.0126.i to i16
  %conv.i = add i16 %56, -1
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 8
  %add.ptr.i458 = getelementptr i8, ptr %59, i32 327912
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i458, i16 %57) #12, !srcloc !344
  %sub27.i = add nsw i32 %i.0126.i, -256
  %60 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub27.i, ptr %dirty_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0126.i)
  %cmp30128.i = icmp ult i32 %i.0126.i, 256
  br i1 %cmp30128.i, label %do.body.i.for.body32.i_crit_edge, label %do.body.i.for.end44.i_crit_edge

do.body.i.for.end44.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44.i

do.body.i.for.body32.i_crit_edge:                 ; preds = %do.body.i
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %do.body.i.for.body32.i_crit_edge
  %i.1129.i = phi i32 [ %inc43.i, %for.body32.i.for.body32.i_crit_edge ], [ %i.0126.i, %do.body.i.for.body32.i_crit_edge ]
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx34.i = getelementptr %struct.starfire_rx_desc, ptr %62, i32 %i.1129.i
  %63 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx34.i, align 4
  %arrayidx37.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.1129.i
  %64 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx37.i, align 8
  %mapping41.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.1129.i, i32 1
  %65 = ptrtoint ptr %mapping41.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %mapping41.i, align 4
  %inc43.i = add nuw nsw i32 %i.1129.i, 1
  %exitcond135.not.i = icmp eq i32 %inc43.i, 256
  br i1 %exitcond135.not.i, label %for.body32.i.for.end44.i_crit_edge, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body32.i

for.body32.i.for.end44.i_crit_edge:               ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end44.i

for.end44.i:                                      ; preds = %for.body32.i.for.end44.i_crit_edge, %do.body.i.for.end44.i_crit_edge
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx46.i = getelementptr %struct.starfire_rx_desc, ptr %67, i32 255
  %68 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx46.i, align 4
  %or48.i = or i32 %69, 33554432
  store i32 %or48.i, ptr %arrayidx46.i, align 4
  %rx_done_q.i = getelementptr i8, ptr %dev, i32 4752
  %tx_done_q.i = getelementptr i8, ptr %dev, i32 4764
  br label %for.body52.i

for.body52.i:                                     ; preds = %for.body52.i.for.body52.i_crit_edge, %for.end44.i
  %i.2130.i = phi i32 [ 0, %for.end44.i ], [ %inc57.i, %for.body52.i.for.body52.i_crit_edge ]
  %70 = ptrtoint ptr %rx_done_q.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_done_q.i, align 8
  %arrayidx53.i = getelementptr %struct.full_rx_done_desc, ptr %71, i32 %i.2130.i
  %72 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx53.i, align 4
  %73 = ptrtoint ptr %tx_done_q.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_done_q.i, align 4
  %arrayidx54.i = getelementptr %struct.tx_done_desc, ptr %74, i32 %i.2130.i
  %75 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx54.i, align 4
  %inc57.i = add nuw nsw i32 %i.2130.i, 1
  %exitcond136.not.i = icmp eq i32 %inc57.i, 1024
  br i1 %exitcond136.not.i, label %init_ring.exit, label %for.body52.i.for.body52.i_crit_edge

for.body52.i.for.body52.i_crit_edge:              ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body52.i

init_ring.exit:                                   ; preds = %for.body52.i
  %uglygep.i = getelementptr i8, ptr %dev, i32 4368
  %76 = call ptr @memset(ptr %uglygep.i, i32 0, i32 384)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !354
  tail call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_buf_sz.i, align 4
  %shl = shl i32 %78, 16
  %or49 = or i32 %shl, 40960
  %79 = tail call i32 @llvm.bswap.i32(i32 %or49)
  %add.ptr54 = getelementptr i8, ptr %3, i32 327892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %79) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !355
  tail call void @arm_heavy_mb() #12
  %add.ptr58 = getelementptr i8, ptr %3, i32 327888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 67502080) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @arm_heavy_mb() #12
  %add.ptr62 = getelementptr i8, ptr %3, i32 327824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 17039362) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !357
  tail call void @arm_heavy_mb() #12
  %add.ptr68 = getelementptr i8, ptr %3, i32 327900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !358
  tail call void @arm_heavy_mb() #12
  %add.ptr75 = getelementptr i8, ptr %3, i32 327836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !359
  tail call void @arm_heavy_mb() #12
  %add.ptr82 = getelementptr i8, ptr %3, i32 327860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !360
  tail call void @arm_heavy_mb() #12
  %rx_ring_dma86 = getelementptr i8, ptr %dev, i32 2312
  %80 = ptrtoint ptr %rx_ring_dma86 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_ring_dma86, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %add.ptr87 = getelementptr i8, ptr %3, i32 327904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %82) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !361
  tail call void @arm_heavy_mb() #12
  %tx_ring_dma91 = getelementptr i8, ptr %dev, i32 2316
  %83 = ptrtoint ptr %tx_ring_dma91 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_ring_dma91, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %add.ptr92 = getelementptr i8, ptr %3, i32 327832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %85) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !362
  tail call void @arm_heavy_mb() #12
  %tx_done_q_dma96 = getelementptr i8, ptr %dev, i32 4768
  %86 = ptrtoint ptr %tx_done_q_dma96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_done_q_dma96, align 8
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %add.ptr97 = getelementptr i8, ptr %3, i32 327864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %88) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !363
  tail call void @arm_heavy_mb() #12
  %rx_done_q_dma101 = getelementptr i8, ptr %dev, i32 4756
  %89 = ptrtoint ptr %rx_done_q_dma101 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_done_q_dma101, align 4
  %or102 = or i32 %90, 48
  %91 = tail call i32 @llvm.bswap.i32(i32 %or102)
  %add.ptr104 = getelementptr i8, ptr %3, i32 327868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %91) #12, !srcloc !333
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp105 = icmp sgt i32 %92, 1
  br i1 %cmp105, label %do.end109, label %init_ring.exit.if.end114_crit_edge

init_ring.exit.if.end114_crit_edge:               ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

do.end109:                                        ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %dev) #15
  br label %if.end114

if.end114:                                        ; preds = %do.end109, %init_ring.exit.if.end114_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr120 = getelementptr i8, ptr %3, i32 327973
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_addr, align 64
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 %96) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %97 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %98, i32 1
  %99 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.1, align 1
  %add.ptr121.1 = getelementptr i8, ptr %3, i32 327972
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.1, i8 %100) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %102, i32 2
  %103 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.2, align 1
  %add.ptr121.2 = getelementptr i8, ptr %3, i32 327971
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.2, i8 %104) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %105 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %106, i32 3
  %107 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.3, align 1
  %add.ptr121.3 = getelementptr i8, ptr %3, i32 327970
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.3, i8 %108) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %110, i32 4
  %111 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.4, align 1
  %add.ptr121.4 = getelementptr i8, ptr %3, i32 327969
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.4, i8 %112) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !364
  tail call void @arm_heavy_mb() #12
  %113 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %114, i32 5
  %115 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.5, align 1
  %add.ptr121.5 = getelementptr i8, ptr %3, i32 327968
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr121.5, i8 %116) #12, !srcloc !365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !366
  tail call void @arm_heavy_mb() #12
  %add.ptr125 = getelementptr i8, ptr %3, i32 352256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr125, i16 0) #12, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !367
  tail call void @arm_heavy_mb() #12
  %add.ptr130 = getelementptr i8, ptr %3, i32 352260
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr130, i16 0) #12, !srcloc !344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !368
  tail call void @arm_heavy_mb() #12
  %add.ptr135 = getelementptr i8, ptr %3, i32 352264
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr135, i16 0) #12, !srcloc !344
  br label %for.body138

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %if.end114
  %i.1472 = phi i32 [ 1, %if.end114 ], [ %inc158, %for.body138.for.body138_crit_edge ]
  %117 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr, align 64
  %mul = shl i32 %i.1472, 4
  %add.ptr141 = getelementptr i8, ptr %add.ptr125, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !369
  tail call void @arm_heavy_mb() #12
  %arrayidx145 = getelementptr i16, ptr %118, i32 2
  %119 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx145, align 2
  %121 = tail call i16 @llvm.bswap.i16(i16 %120)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr141, i16 %121) #12, !srcloc !344
  %add.ptr146 = getelementptr i8, ptr %add.ptr141, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !370
  tail call void @arm_heavy_mb() #12
  %arrayidx150 = getelementptr i16, ptr %118, i32 1
  %122 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx150, align 2
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr146, i16 %124) #12, !srcloc !344
  %add.ptr151 = getelementptr i8, ptr %add.ptr146, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  tail call void @arm_heavy_mb() #12
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %118, align 2
  %127 = tail call i16 @llvm.bswap.i16(i16 %126)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr151, i16 %127) #12, !srcloc !344
  %inc158 = add nuw nsw i32 %i.1472, 1
  %exitcond.not = icmp eq i32 %inc158, 16
  br i1 %exitcond.not, label %for.end159, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body138

for.end159:                                       ; preds = %for.body138
  %tx_mode = getelementptr i8, ptr %dev, i32 5604
  %128 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 3076, ptr %tx_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !372
  tail call void @arm_heavy_mb() #12
  %129 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_mode, align 4
  %or164 = or i32 %130, 32768
  %131 = tail call i32 @llvm.bswap.i32(i32 %or164)
  %add.ptr165 = getelementptr i8, ptr %3, i32 348160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %131) #12, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !373
  tail call void @arm_heavy_mb() #12
  %133 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_mode, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %135) #12, !srcloc !333
  %tx_threshold = getelementptr i8, ptr %dev, i32 5612
  %136 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %tx_threshold, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !374
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %tx_threshold, align 4
  %conv = zext i8 %138 to i32
  %139 = shl nuw i32 %conv, 24
  %add.ptr175 = getelementptr i8, ptr %3, i32 327856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %139) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !375
  tail call void @arm_heavy_mb() #12
  %intr_timer_ctrl = getelementptr i8, ptr %dev, i32 5608
  %140 = ptrtoint ptr %intr_timer_ctrl to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %intr_timer_ctrl, align 8
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %add.ptr179 = getelementptr i8, ptr %3, i32 327796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %142) #12, !srcloc !333
  %napi = getelementptr i8, ptr %dev, i32 4776
  tail call void @napi_enable(ptr noundef %napi) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %143 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %144, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp180 = icmp sgt i32 %145, 1
  br i1 %cmp180, label %do.end185, label %for.end159.if.end190_crit_edge

for.end159.if.end190_crit_edge:                   ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

do.end185:                                        ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #14
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %dev) #15
  br label %if.end190

if.end190:                                        ; preds = %do.end185, %for.end159.if.end190_crit_edge
  tail call void @set_rx_mode(ptr noundef %dev)
  %phys = getelementptr i8, ptr %dev, i32 5652
  %146 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %phys, align 4
  %conv192 = zext i8 %147 to i32
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 8
  %add.ptr.i460 = getelementptr i8, ptr %149, i32 335872
  %shl.i = shl nuw nsw i32 %conv192, 7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i460, i32 %shl.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 16
  br label %do.body.i461

do.body.i461:                                     ; preds = %land.rhs.i.do.body.i461_crit_edge, %if.end190
  %boguscnt.0.i = phi i32 [ 1000, %if.end190 ], [ %dec.i, %land.rhs.i.do.body.i461_crit_edge ]
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12, !srcloc !336
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i = and i32 %151, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, -2147483648
  br i1 %cmp.not.i, label %do.body.i461.mdio_read.exit_crit_edge, label %land.rhs.i

do.body.i461.mdio_read.exit_crit_edge:            ; preds = %do.body.i461
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

land.rhs.i:                                       ; preds = %do.body.i461
  %dec.i = add nsw i32 %boguscnt.0.i, -1
  %cmp6.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp6.not.i, label %land.rhs.i.mdio_read.exit_crit_edge, label %land.rhs.i.do.body.i461_crit_edge

land.rhs.i.do.body.i461_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i461

land.rhs.i.mdio_read.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %land.rhs.i.mdio_read.exit_crit_edge, %do.body.i461.mdio_read.exit_crit_edge
  %boguscnt.1.i = phi i32 [ 0, %land.rhs.i.mdio_read.exit_crit_edge ], [ %boguscnt.0.i, %do.body.i461.mdio_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i)
  %cmp7.i = icmp eq i32 %boguscnt.1.i, 0
  %and8.i = and i32 %151, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i)
  %cmp9.i = icmp eq i32 %and8.i, 65535
  %152 = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  %retval.0.i = select i1 %152, i32 0, i32 %and8.i
  %advertising = getelementptr i8, ptr %dev, i32 5620
  %153 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %retval.0.i, ptr %advertising, align 4
  tail call fastcc void @check_duplex(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !376
  tail call void @arm_heavy_mb() #12
  %add.ptr197 = getelementptr i8, ptr %3, i32 327820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 16711695) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !377
  tail call void @arm_heavy_mb() #12
  %add.ptr201 = getelementptr i8, ptr %3, i32 327816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 -266139144) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !378
  tail call void @arm_heavy_mb() #12
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !379
  %155 = or i32 %154, 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %155) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !380
  tail call void @arm_heavy_mb() #12
  %add.ptr214 = getelementptr i8, ptr %3, i32 348260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 8454144) #12, !srcloc !333
  %156 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pci_dev, align 4
  %dev216 = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %call217 = call i32 @request_firmware(ptr noundef nonnull %fw_rx, ptr noundef nonnull @.str.47, ptr noundef %dev216) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool218.not = icmp eq i32 %call217, 0
  br i1 %tobool218.not, label %if.end225, label %out_init.thread

out_init.thread:                                  ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #15
  br label %if.then316

if.end225:                                        ; preds = %mdio_read.exit
  %158 = ptrtoint ptr %fw_rx to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fw_rx, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 4
  %rem = and i32 %161, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool226.not = icmp eq i32 %rem, 0
  br i1 %tobool226.not, label %if.end234, label %do.end230

do.end230:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %161, ptr noundef nonnull @.str.47) #15
  br label %out_init.thread465

if.end234:                                        ; preds = %if.end225
  %162 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pci_dev, align 4
  %dev236 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  %call237 = call i32 @request_firmware(ptr noundef nonnull %fw_tx, ptr noundef nonnull @.str.54, ptr noundef %dev236) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end245, label %do.end242

do.end242:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #14
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.54) #15
  br label %out_init.thread465

if.end245:                                        ; preds = %if.end234
  %164 = ptrtoint ptr %fw_tx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %fw_tx, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  %rem247 = and i32 %167, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem247)
  %tobool248.not = icmp eq i32 %rem247, 0
  br i1 %tobool248.not, label %if.end256, label %do.end252

do.end252:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %167, ptr noundef nonnull @.str.54) #15
  br label %out_init

if.end256:                                        ; preds = %if.end245
  %168 = ptrtoint ptr %fw_rx to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fw_rx, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %data, align 4
  %data258 = getelementptr inbounds %struct.firmware, ptr %165, i32 0, i32 1
  %172 = ptrtoint ptr %data258 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data258, align 4
  %174 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %169, align 4
  %div262456 = lshr i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp264473.not = icmp ult i32 %175, 4
  br i1 %cmp264473.not, label %if.end256.for.cond278.preheader_crit_edge, label %do.body267.lr.ph

if.end256.for.cond278.preheader_crit_edge:        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond278.preheader

do.body267.lr.ph:                                 ; preds = %if.end256
  %div455 = lshr i32 %175, 2
  %add.ptr272 = getelementptr i8, ptr %3, i32 368640
  br label %do.body267

for.cond278.preheader:                            ; preds = %do.body267.for.cond278.preheader_crit_edge, %if.end256.for.cond278.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %167)
  %cmp279475.not = icmp ult i32 %167, 4
  br i1 %cmp279475.not, label %for.cond278.preheader.for.end292_crit_edge, label %do.body282.lr.ph

for.cond278.preheader.for.end292_crit_edge:       ; preds = %for.cond278.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end292

do.body282.lr.ph:                                 ; preds = %for.cond278.preheader
  %add.ptr287 = getelementptr i8, ptr %3, i32 360448
  %umax481 = call i32 @llvm.umax.i32(i32 %div262456, i32 1)
  br label %do.body282

do.body267:                                       ; preds = %do.body267.do.body267_crit_edge, %do.body267.lr.ph
  %i.2474 = phi i32 [ 0, %do.body267.lr.ph ], [ %inc276, %do.body267.do.body267_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !381
  call void @arm_heavy_mb() #12
  %arrayidx270 = getelementptr i32, ptr %171, i32 %i.2474
  %176 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx270, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177)
  %mul273 = shl i32 %i.2474, 2
  %add.ptr274 = getelementptr i8, ptr %add.ptr272, i32 %mul273
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 %178) #12, !srcloc !333
  %inc276 = add nuw nsw i32 %i.2474, 1
  %exitcond480.not = icmp eq i32 %inc276, %div455
  br i1 %exitcond480.not, label %do.body267.for.cond278.preheader_crit_edge, label %do.body267.do.body267_crit_edge

do.body267.do.body267_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body267

do.body267.for.cond278.preheader_crit_edge:       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond278.preheader

do.body282:                                       ; preds = %do.body282.do.body282_crit_edge, %do.body282.lr.ph
  %i.3476 = phi i32 [ 0, %do.body282.lr.ph ], [ %inc291, %do.body282.do.body282_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  call void @arm_heavy_mb() #12
  %arrayidx285 = getelementptr i32, ptr %173, i32 %i.3476
  %179 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx285, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180)
  %mul288 = shl i32 %i.3476, 2
  %add.ptr289 = getelementptr i8, ptr %add.ptr287, i32 %mul288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 %181) #12, !srcloc !333
  %inc291 = add nuw nsw i32 %i.3476, 1
  %exitcond482.not = icmp eq i32 %inc291, %umax481
  br i1 %exitcond482.not, label %do.body282.for.end292_crit_edge, label %do.body282.do.body282_crit_edge

do.body282.do.body282_crit_edge:                  ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body282

do.body282.for.end292_crit_edge:                  ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end292

for.end292:                                       ; preds = %do.body282.for.end292_crit_edge, %for.cond278.preheader.for.end292_crit_edge
  %182 = load i32, ptr @enable_hw_cksum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool293.not = icmp eq i32 %182, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  call void @arm_heavy_mb() #12
  br i1 %tobool293.not, label %do.body299, label %do.body295

do.body295:                                       ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1056964608) #12, !srcloc !333
  br label %if.end303

do.body299:                                       ; preds = %for.end292
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #12, !srcloc !333
  br label %if.end303

if.end303:                                        ; preds = %do.body299, %do.body295
  %183 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %183)
  %cmp304 = icmp sgt i32 %183, 1
  br i1 %cmp304, label %do.end309, label %if.end303.out_init_crit_edge

if.end303.out_init_crit_edge:                     ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_init

do.end309:                                        ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #14
  %call313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev) #15
  br label %out_init

out_init.thread465:                               ; preds = %do.end242, %do.end230
  %retval2.1.ph = phi i32 [ %call237, %do.end242 ], [ -22, %do.end230 ]
  %184 = ptrtoint ptr %fw_rx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fw_rx, align 4
  call void @release_firmware(ptr noundef %185) #12
  br label %if.then316

out_init:                                         ; preds = %do.end309, %if.end303.out_init_crit_edge, %do.end252
  %retval2.0 = phi i32 [ -22, %do.end252 ], [ 0, %do.end309 ], [ 0, %if.end303.out_init_crit_edge ]
  %186 = ptrtoint ptr %fw_tx to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %fw_tx, align 4
  call void @release_firmware(ptr noundef %187) #12
  %188 = ptrtoint ptr %fw_rx to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %fw_rx, align 4
  call void @release_firmware(ptr noundef %189) #12
  br i1 %tobool248.not, label %out_init.cleanup_crit_edge, label %out_init.if.then316_crit_edge

out_init.if.then316_crit_edge:                    ; preds = %out_init
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then316

out_init.cleanup_crit_edge:                       ; preds = %out_init
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then316:                                       ; preds = %out_init.if.then316_crit_edge, %out_init.thread465, %out_init.thread
  %retval2.2464 = phi i32 [ %call217, %out_init.thread ], [ %retval2.0, %out_init.if.then316_crit_edge ], [ %retval2.1.ph, %out_init.thread465 ]
  %call317 = call i32 @netdev_close(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then316, %out_init.cleanup_crit_edge, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then27 ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval2.2464, %if.then316 ], [ 0, %out_init.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_tx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_rx) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %napi = getelementptr i8, ptr %dev, i32 4776
  tail call void @napi_disable(ptr noundef %napi) #12
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 327812
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !336
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !383
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %dev, i32 noundef %6) #15
  %cur_tx = getelementptr i8, ptr %dev, i32 5584
  %7 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 5588
  %9 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dirty_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 5576
  %11 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_rx, align 8
  %dirty_rx = getelementptr i8, ptr %dev, i32 5580
  %13 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_rx, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %dev, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #15
  br label %do.body12

do.body12:                                        ; preds = %do.end, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  tail call void @arm_heavy_mb() #12
  %add.ptr15 = getelementptr i8, ptr %1, i32 327816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #12, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  tail call void @arm_heavy_mb() #12
  %add.ptr19 = getelementptr i8, ptr %1, i32 327792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #12, !srcloc !333
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp26 = icmp sgt i32 %16, 5
  br i1 %cmp26, label %do.end30, label %do.body12.if.end71_crit_edge

do.body12.if.end71_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end30:                                         ; preds = %do.body12
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_ring_dma, align 4
  %conv = zext i32 %18 to i64
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i64 noundef %conv) #15
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %tx_done_q = getelementptr i8, ptr %dev, i32 4764
  %19 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ring, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %addr = getelementptr %struct.starfire_tx_desc_1, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %conv41 = zext i32 %26 to i64
  %27 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_done_q, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 0, i32 noundef %23, i64 noundef %conv41, i32 noundef %31) #15
  %32 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_ring, align 4
  %arrayidx.1 = getelementptr %struct.starfire_tx_desc_1, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %addr.1 = getelementptr %struct.starfire_tx_desc_1, ptr %33, i32 1, i32 1
  %37 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr.1, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %conv41.1 = zext i32 %39 to i64
  %40 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.1 = getelementptr %struct.tx_done_desc, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42.1, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %call44.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 1, i32 noundef %36, i64 noundef %conv41.1, i32 noundef %44) #15
  %45 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring, align 4
  %arrayidx.2 = getelementptr %struct.starfire_tx_desc_1, ptr %46, i32 2
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.2, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %addr.2 = getelementptr %struct.starfire_tx_desc_1, ptr %46, i32 2, i32 1
  %50 = ptrtoint ptr %addr.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.2, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %conv41.2 = zext i32 %52 to i64
  %53 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.2 = getelementptr %struct.tx_done_desc, ptr %54, i32 2
  %55 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx42.2, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %call44.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 2, i32 noundef %49, i64 noundef %conv41.2, i32 noundef %57) #15
  %58 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_ring, align 4
  %arrayidx.3 = getelementptr %struct.starfire_tx_desc_1, ptr %59, i32 3
  %60 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.3, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %addr.3 = getelementptr %struct.starfire_tx_desc_1, ptr %59, i32 3, i32 1
  %63 = ptrtoint ptr %addr.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr.3, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %conv41.3 = zext i32 %65 to i64
  %66 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.3 = getelementptr %struct.tx_done_desc, ptr %67, i32 3
  %68 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx42.3, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %call44.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 3, i32 noundef %62, i64 noundef %conv41.3, i32 noundef %70) #15
  %71 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ring, align 4
  %arrayidx.4 = getelementptr %struct.starfire_tx_desc_1, ptr %72, i32 4
  %73 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.4, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %addr.4 = getelementptr %struct.starfire_tx_desc_1, ptr %72, i32 4, i32 1
  %76 = ptrtoint ptr %addr.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr.4, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %conv41.4 = zext i32 %78 to i64
  %79 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.4 = getelementptr %struct.tx_done_desc, ptr %80, i32 4
  %81 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx42.4, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %call44.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 4, i32 noundef %75, i64 noundef %conv41.4, i32 noundef %83) #15
  %84 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_ring, align 4
  %arrayidx.5 = getelementptr %struct.starfire_tx_desc_1, ptr %85, i32 5
  %86 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.5, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %addr.5 = getelementptr %struct.starfire_tx_desc_1, ptr %85, i32 5, i32 1
  %89 = ptrtoint ptr %addr.5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr.5, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %conv41.5 = zext i32 %91 to i64
  %92 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.5 = getelementptr %struct.tx_done_desc, ptr %93, i32 5
  %94 = ptrtoint ptr %arrayidx42.5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx42.5, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %call44.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 5, i32 noundef %88, i64 noundef %conv41.5, i32 noundef %96) #15
  %97 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tx_ring, align 4
  %arrayidx.6 = getelementptr %struct.starfire_tx_desc_1, ptr %98, i32 6
  %99 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.6, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %addr.6 = getelementptr %struct.starfire_tx_desc_1, ptr %98, i32 6, i32 1
  %102 = ptrtoint ptr %addr.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.6, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %conv41.6 = zext i32 %104 to i64
  %105 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.6 = getelementptr %struct.tx_done_desc, ptr %106, i32 6
  %107 = ptrtoint ptr %arrayidx42.6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx42.6, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %call44.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 6, i32 noundef %101, i64 noundef %conv41.6, i32 noundef %109) #15
  %110 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_ring, align 4
  %arrayidx.7 = getelementptr %struct.starfire_tx_desc_1, ptr %111, i32 7
  %112 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.7, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %addr.7 = getelementptr %struct.starfire_tx_desc_1, ptr %111, i32 7, i32 1
  %115 = ptrtoint ptr %addr.7 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %addr.7, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  %conv41.7 = zext i32 %117 to i64
  %118 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_done_q, align 4
  %arrayidx42.7 = getelementptr %struct.tx_done_desc, ptr %119, i32 7
  %120 = ptrtoint ptr %arrayidx42.7 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx42.7, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %call44.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef 7, i32 noundef %114, i64 noundef %conv41.7, i32 noundef %122) #15
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2312
  %123 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_ring_dma, align 8
  %conv49 = zext i32 %124 to i64
  %rx_done_q = getelementptr i8, ptr %dev, i32 4752
  %125 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_done_q, align 8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i64 noundef %conv49, ptr noundef %126) #15
  %127 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_done_q, align 8
  %tobool.not = icmp eq ptr %128, null
  br i1 %tobool.not, label %do.end30.if.end71_crit_edge, label %do.end59.preheader

do.end30.if.end71_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end59.preheader:                               ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  %conv62 = zext i32 %133 to i64
  %134 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_done_q, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 0, i64 noundef %conv62, i32 noundef %138) #15
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.1 = getelementptr %struct.starfire_rx_desc, ptr %140, i32 1
  %141 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx61.1, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %conv62.1 = zext i32 %143 to i64
  %144 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.1 = getelementptr %struct.full_rx_done_desc, ptr %145, i32 1
  %146 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx64.1, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %call66.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 1, i64 noundef %conv62.1, i32 noundef %148) #15
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.2 = getelementptr %struct.starfire_rx_desc, ptr %150, i32 2
  %151 = ptrtoint ptr %arrayidx61.2 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx61.2, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %conv62.2 = zext i32 %153 to i64
  %154 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.2 = getelementptr %struct.full_rx_done_desc, ptr %155, i32 2
  %156 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx64.2, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %call66.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 2, i64 noundef %conv62.2, i32 noundef %158) #15
  %159 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.3 = getelementptr %struct.starfire_rx_desc, ptr %160, i32 3
  %161 = ptrtoint ptr %arrayidx61.3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx61.3, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %conv62.3 = zext i32 %163 to i64
  %164 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.3 = getelementptr %struct.full_rx_done_desc, ptr %165, i32 3
  %166 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx64.3, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %call66.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 3, i64 noundef %conv62.3, i32 noundef %168) #15
  %169 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.4 = getelementptr %struct.starfire_rx_desc, ptr %170, i32 4
  %171 = ptrtoint ptr %arrayidx61.4 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx61.4, align 4
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  %conv62.4 = zext i32 %173 to i64
  %174 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.4 = getelementptr %struct.full_rx_done_desc, ptr %175, i32 4
  %176 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx64.4, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %call66.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 4, i64 noundef %conv62.4, i32 noundef %178) #15
  %179 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.5 = getelementptr %struct.starfire_rx_desc, ptr %180, i32 5
  %181 = ptrtoint ptr %arrayidx61.5 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx61.5, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  %conv62.5 = zext i32 %183 to i64
  %184 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.5 = getelementptr %struct.full_rx_done_desc, ptr %185, i32 5
  %186 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx64.5, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187)
  %call66.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 5, i64 noundef %conv62.5, i32 noundef %188) #15
  %189 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.6 = getelementptr %struct.starfire_rx_desc, ptr %190, i32 6
  %191 = ptrtoint ptr %arrayidx61.6 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx61.6, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  %conv62.6 = zext i32 %193 to i64
  %194 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.6 = getelementptr %struct.full_rx_done_desc, ptr %195, i32 6
  %196 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx64.6, align 4
  %198 = tail call i32 @llvm.bswap.i32(i32 %197)
  %call66.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 6, i64 noundef %conv62.6, i32 noundef %198) #15
  %199 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx61.7 = getelementptr %struct.starfire_rx_desc, ptr %200, i32 7
  %201 = ptrtoint ptr %arrayidx61.7 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx61.7, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  %conv62.7 = zext i32 %203 to i64
  %204 = ptrtoint ptr %rx_done_q to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rx_done_q, align 8
  %arrayidx64.7 = getelementptr %struct.full_rx_done_desc, ptr %205, i32 7
  %206 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx64.7, align 4
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  %call66.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef 7, i64 noundef %conv62.7, i32 noundef %208) #15
  br label %if.end71

if.end71:                                         ; preds = %do.end59.preheader, %do.end30.if.end71_crit_edge, %do.body12.if.end71_crit_edge
  %pci_dev = getelementptr i8, ptr %dev, i32 5004
  %209 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 46
  %211 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %irq, align 4
  %call72 = tail call ptr @free_irq(i32 noundef %212, ptr noundef %dev) #12
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 5596
  br label %for.body76

for.body76:                                       ; preds = %if.end91.for.body76_crit_edge, %if.end71
  %i.2193 = phi i32 [ 0, %if.end71 ], [ %inc99, %if.end91.for.body76_crit_edge ]
  %213 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx78 = getelementptr %struct.starfire_rx_desc, ptr %214, i32 %i.2193
  %215 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -805249094, ptr %arrayidx78, align 4
  %arrayidx80 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.2193
  %216 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx80, align 8
  %cmp81.not = icmp eq ptr %217, null
  br i1 %cmp81.not, label %for.body76.if.end91_crit_edge, label %if.then83

for.body76.if.end91_crit_edge:                    ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then83:                                        ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #14
  %218 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pci_dev, align 4
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  %mapping = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.2193, i32 1
  %220 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %mapping, align 4
  %222 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev85, i32 noundef %221, i32 noundef %223, i32 noundef 2, i32 noundef 0) #12
  %224 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx80, align 8
  tail call void @consume_skb(ptr noundef %225) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %for.body76.if.end91_crit_edge
  %226 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %arrayidx80, align 8
  %mapping97 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.2193, i32 1
  %227 = ptrtoint ptr %mapping97 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %mapping97, align 4
  %inc99 = add nuw nsw i32 %i.2193, 1
  %exitcond.not = icmp eq i32 %inc99, 256
  br i1 %exitcond.not, label %if.end91.for.body104_crit_edge, label %if.end91.for.body76_crit_edge

if.end91.for.body76_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body76

if.end91.for.body104_crit_edge:                   ; preds = %if.end91
  br label %for.body104

for.body104:                                      ; preds = %cleanup.for.body104_crit_edge, %if.end91.for.body104_crit_edge
  %i.3195 = phi i32 [ %inc125, %cleanup.for.body104_crit_edge ], [ 0, %if.end91.for.body104_crit_edge ]
  %arrayidx106 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.3195
  %228 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx106, align 4
  %cmp108 = icmp eq ptr %229, null
  br i1 %cmp108, label %for.body104.cleanup_crit_edge, label %if.end111

for.body104.cleanup_crit_edge:                    ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end111:                                        ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pci_dev, align 4
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %231, i32 0, i32 44
  %mapping116 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.3195, i32 1
  %232 = ptrtoint ptr %mapping116 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %mapping116, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %229, i32 0, i32 6
  %234 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %229, i32 0, i32 7
  %236 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %235, %237
  tail call void @dma_unmap_page_attrs(ptr noundef %dev113, i32 noundef %233, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #12
  %238 = ptrtoint ptr %mapping116 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %mapping116, align 4
  tail call void @consume_skb(ptr noundef nonnull %229) #12
  %239 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %arrayidx106, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %for.body104.cleanup_crit_edge
  %inc125 = add nuw nsw i32 %i.3195, 1
  %exitcond197.not = icmp eq i32 %inc125, 32
  br i1 %exitcond197.not, label %for.end126, label %cleanup.for.body104_crit_edge

cleanup.for.body104_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body104

for.end126:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 5584
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 5588
  %2 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_tx, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %7 to i32
  %add = shl nuw nsw i32 %conv, 1
  %mul = add i32 %1, 2
  %sub = sub i32 %mul, %3
  %add3 = add i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add3)
  %cmp = icmp ugt i32 %add3, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup188

if.end:                                           ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %10 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %ip_summed, align 8
  %11 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %11)
  %cmp6 = icmp eq i16 %11, 1536
  br i1 %cmp6, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then8:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add9 = add i32 %13, 3
  %and = and i32 %add9, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %13)
  %cmp.not.i = icmp ugt i32 %and, %13
  br i1 %cmp.not.i, label %skb_padto.exit, label %if.then8.if.end13_crit_edge, !prof !340

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

skb_padto.exit:                                   ; preds = %if.then8
  %sub.i = sub i32 %and, %13
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end13_crit_edge, label %skb_padto.exit.cleanup188_crit_edge

skb_padto.exit.cleanup188_crit_edge:              ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup188

skb_padto.exit.if.end13_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %skb_padto.exit.if.end13_crit_edge, %if.then8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %14 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_tx, align 8
  %rem = and i32 %15, 31
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %pci_dev69 = getelementptr i8, ptr %dev, i32 5004
  %reap_tx = getelementptr i8, ptr %dev, i32 5592
  %tx_compressed = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 22
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13
  %18 = phi ptr [ %17, %if.end13 ], [ %93, %for.inc.for.body_crit_edge ]
  %i.0340 = phi i32 [ 0, %if.end13 ], [ %inc131, %for.inc.for.body_crit_edge ]
  %entry1.0338 = phi i32 [ %rem, %if.end13 ], [ %entry1.1, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0340)
  %cmp22 = icmp eq i32 %i.0340, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.0338
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %nr_frags27 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nr_frags27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr_frags27, align 2
  %conv28 = zext i8 %23 to i32
  %sub30 = sub nsw i32 31, %conv28
  call void @__sanitizer_cov_trace_cmp4(i32 %entry1.0338, i32 %sub30)
  %cmp31.not = icmp ult i32 %entry1.0338, %sub30
  %spec.select = select i1 %cmp31.not, i32 -1325400064, i32 -1258291200
  %not.cmp31.not = xor i1 %cmp31.not, true
  %24 = ptrtoint ptr %reap_tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reap_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool36.not = icmp eq i32 %25, 0
  br i1 %tobool36.not, label %if.then24.if.end40_crit_edge, label %if.then37

if.then24.if.end40_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %or38 = or i32 %spec.select, 134217728
  %26 = ptrtoint ptr %reap_tx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reap_tx, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then24.if.end40_crit_edge
  %status.1 = phi i32 [ %or38, %if.then37 ], [ %spec.select, %if.then24.if.end40_crit_edge ]
  %27 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load42 = load i16, ptr %ip_summed, align 8
  %28 = and i16 %bf.load42, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %28)
  %cmp47 = icmp eq i16 %28, 1536
  br i1 %cmp47, label %if.then49, label %if.end40.if.end51_crit_edge

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %or50 = or i32 %status.1, 33554432
  %29 = ptrtoint ptr %tx_compressed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_compressed, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_compressed, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end40.if.end51_crit_edge
  %status.2 = phi i32 [ %or50, %if.then49 ], [ %status.1, %if.end40.if.end51_crit_edge ]
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %sub.i292 = sub i32 %32, %34
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %nr_frags54 = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nr_frags54 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_frags54, align 2
  %conv55 = zext i8 %38 to i32
  %add56 = shl nuw nsw i32 %conv55, 16
  %shl = add nuw nsw i32 %add56, 65536
  %or57 = or i32 %sub.i292, %status.2
  %or58 = or i32 %or57, %shl
  %39 = ptrtoint ptr %pci_dev69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev69, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %42) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end51
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end77_crit_edge, label %if.then.i, !prof !345

land.rhs.i.if.end77_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev59) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44, i32 3
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev59, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %if.end77

if.end39.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev59, ptr noundef %42, i32 noundef %sub.i292) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %42 to i32
  %sub.i297 = add i32 %48, 1073741824
  %shr.i = lshr i32 %sub.i297, 12
  %add.ptr.i298 = getelementptr %struct.page, ptr %47, i32 %shr.i
  %and.i = and i32 %48, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev59, ptr noundef %add.ptr.i298, i32 noundef %and.i, i32 noundef %sub.i292, i32 noundef 1, i32 noundef 0) #12
  br label %if.end77

if.else:                                          ; preds = %for.body
  %sub65 = add nsw i32 %i.0340, -1
  %arrayidx66 = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %sub65
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %sub65, i32 1
  %49 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bv_len.i, align 4
  %or68 = or i32 %50, -1342177280
  %51 = ptrtoint ptr %pci_dev69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev69, align 4
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx66, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %54) #12
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %18, i32 0, i32 12, i32 %sub65, i32 2
  %55 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %call1.i, i32 %56
  %57 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len.i, align 4
  %call.i303 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i301) #12
  br i1 %call.i303, label %land.rhs.i305, label %if.end39.i318

land.rhs.i305:                                    ; preds = %if.else
  %.b1.i304 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i304, label %land.rhs.i305.if.end77_crit_edge, label %if.then.i309, !prof !345

land.rhs.i305.if.end77_crit_edge:                 ; preds = %land.rhs.i305
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then.i309:                                     ; preds = %land.rhs.i305
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i306 = tail call ptr @dev_driver_string(ptr noundef %dev70) #12
  %init_name.i.i307 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44, i32 3
  %59 = ptrtoint ptr %init_name.i.i307 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i307, align 8
  %tobool.not.i.i308 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i308, label %if.end.i.i310, label %if.then.i309.dev_name.exit.i312_crit_edge

if.then.i309.dev_name.exit.i312_crit_edge:        ; preds = %if.then.i309
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i312

if.end.i.i310:                                    ; preds = %if.then.i309
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev70, align 4
  br label %dev_name.exit.i312

dev_name.exit.i312:                               ; preds = %if.end.i.i310, %if.then.i309.dev_name.exit.i312_crit_edge
  %retval.0.i.i311 = phi ptr [ %62, %if.end.i.i310 ], [ %60, %if.then.i309.dev_name.exit.i312_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.97, ptr noundef %call16.i306, ptr noundef %retval.0.i.i311) #12
  br label %if.end77

if.end39.i318:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev70, ptr noundef %add.ptr.i301, i32 noundef %58) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %add.ptr.i301 to i32
  %sub.i313 = add i32 %64, 1073741824
  %shr.i314 = lshr i32 %sub.i313, 12
  %add.ptr.i315 = getelementptr %struct.page, ptr %63, i32 %shr.i314
  %and.i316 = and i32 %64, 4095
  %call41.i317 = tail call i32 @dma_map_page_attrs(ptr noundef %dev70, ptr noundef %add.ptr.i315, i32 noundef %and.i316, i32 noundef %58, i32 noundef 1, i32 noundef 0) #12
  br label %if.end77

if.end77:                                         ; preds = %if.end39.i318, %dev_name.exit.i312, %land.rhs.i305.if.end77_crit_edge, %if.end39.i, %dev_name.exit.i, %land.rhs.i.if.end77_crit_edge
  %retval.0.i319.sink = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.if.end77_crit_edge ], [ %call41.i317, %if.end39.i318 ], [ -1, %dev_name.exit.i312 ], [ -1, %land.rhs.i305.if.end77_crit_edge ]
  %status.3 = phi i32 [ %or58, %if.end39.i ], [ %or58, %dev_name.exit.i ], [ %or58, %land.rhs.i.if.end77_crit_edge ], [ %or68, %if.end39.i318 ], [ %or68, %dev_name.exit.i312 ], [ %or68, %land.rhs.i305.if.end77_crit_edge ]
  %wrap_ring.1.shrunk = phi i1 [ %not.cmp31.not, %if.end39.i ], [ %not.cmp31.not, %dev_name.exit.i ], [ %not.cmp31.not, %land.rhs.i.if.end77_crit_edge ], [ false, %if.end39.i318 ], [ false, %dev_name.exit.i312 ], [ false, %land.rhs.i305.if.end77_crit_edge ]
  %mapping76 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.0338, i32 1
  %65 = ptrtoint ptr %mapping76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i319.sink, ptr %mapping76, align 4
  %66 = ptrtoint ptr %pci_dev69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci_dev69, align 4
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev79, i32 noundef %retval.0.i319.sink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i319.sink)
  %cmp.i.not = icmp eq i32 %retval.0.i319.sink, -1
  br i1 %cmp.i.not, label %err_out, label %if.end88

if.end88:                                         ; preds = %if.end77
  %mapping82 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.0338, i32 1
  %68 = ptrtoint ptr %mapping82 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mapping82, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ring, align 4
  %addr = getelementptr %struct.starfire_tx_desc_1, ptr %72, i32 %entry1.0338, i32 1
  %73 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %addr, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %status.3)
  %75 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_ring, align 4
  %arrayidx94 = getelementptr %struct.starfire_tx_desc_1, ptr %76, i32 %entry1.0338
  %77 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %arrayidx94, align 4
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp96 = icmp sgt i32 %78, 3
  br i1 %cmp96, label %do.end, label %if.end88.if.end102_crit_edge

if.end88.if.end102_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

do.end:                                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cur_tx, align 8
  %81 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dirty_tx, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %dev, i32 noundef %80, i32 noundef %82, i32 noundef %entry1.0338, i32 noundef %status.3) #15
  br label %if.end102

if.end102:                                        ; preds = %do.end, %if.end88.if.end102_crit_edge
  br i1 %wrap_ring.1.shrunk, label %if.then104, label %if.else113

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %sub105 = sub i32 32, %entry1.0338
  %used_slots = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.0338, i32 2
  %83 = ptrtoint ptr %used_slots to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub105, ptr %used_slots, align 4
  %84 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_tx, align 8
  %add112 = add i32 %85, %sub105
  store i32 %add112, ptr %cur_tx, align 8
  br label %if.end123

if.else113:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %used_slots116 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.0338, i32 2
  %86 = ptrtoint ptr %used_slots116 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %used_slots116, align 4
  %87 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cur_tx, align 8
  %add121 = add i32 %88, 1
  store i32 %add121, ptr %cur_tx, align 8
  %inc122 = add i32 %entry1.0338, 1
  br label %if.end123

if.end123:                                        ; preds = %if.else113, %if.then104
  %entry1.1 = phi i32 [ 0, %if.then104 ], [ %inc122, %if.else113 ]
  %89 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cur_tx, align 8
  %rem125 = and i32 %90, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem125)
  %cmp126 = icmp eq i32 %rem125, 0
  br i1 %cmp126, label %if.then128, label %if.end123.for.inc_crit_edge

if.end123.for.inc_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %reap_tx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %reap_tx, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then128, %if.end123.for.inc_crit_edge
  %inc131 = add nuw nsw i32 %i.0340, 1
  %92 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i, align 4
  %nr_frags17 = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %nr_frags17 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nr_frags17, align 2
  %conv18 = zext i8 %95 to i32
  %cmp20.not.not = icmp ult i32 %i.0340, %conv18
  br i1 %cmp20.not.not, label %for.inc.for.body_crit_edge, label %do.body132

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body132:                                       ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  tail call void @arm_heavy_mb() #12
  %96 = tail call i32 @llvm.bswap.i32(i32 %entry1.1)
  %base = getelementptr i8, ptr %dev, i32 5656
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %98, i32 327840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %96) #12, !srcloc !333
  %99 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_tx, align 8
  %101 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dirty_tx, align 4
  %sub141 = add i32 %100, -29
  %103 = sub i32 %sub141, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %103)
  %cmp143 = icmp ult i32 %103, -33
  br i1 %cmp143, label %if.then145, label %do.body132.cleanup188_crit_edge

do.body132.cleanup188_crit_edge:                  ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup188

if.then145:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i321 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %104 = ptrtoint ptr %_tx.i.i321 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %_tx.i.i321, align 128
  %state.i.i322 = getelementptr inbounds %struct.netdev_queue, ptr %105, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i322) #12
  br label %cleanup188

err_out:                                          ; preds = %if.end77
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %106 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_dropped, align 4
  %inc87 = add i32 %107, 1
  store i32 %inc87, ptr %tx_dropped, align 4
  %arrayidx149 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem
  %108 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %arrayidx149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0340)
  %cmp151.not = icmp eq i32 %i.0340, 0
  br i1 %cmp151.not, label %err_out.if.end186_crit_edge, label %if.then153

err_out.if.end186_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then153:                                       ; preds = %err_out
  %109 = ptrtoint ptr %pci_dev69 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pci_dev69, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %mapping158 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem, i32 1
  %111 = ptrtoint ptr %mapping158 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mapping158, align 4
  %113 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i, align 4
  %115 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_len.i, align 8
  %sub.i325 = sub i32 %114, %116
  tail call void @dma_unmap_page_attrs(ptr noundef %dev155, i32 noundef %112, i32 noundef %sub.i325, i32 noundef 1, i32 noundef 0) #12
  %117 = ptrtoint ptr %mapping158 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %mapping158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0340)
  %cmp169341.not = icmp eq i32 %i.0340, 1
  br i1 %cmp169341.not, label %if.then153.if.end186_crit_edge, label %for.body171.preheader

if.then153.if.end186_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

for.body171.preheader:                            ; preds = %if.then153
  %used_slots165 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem, i32 2
  %118 = ptrtoint ptr %used_slots165 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %used_slots165, align 4
  %add166 = add i32 %119, %15
  %rem167 = and i32 %add166, 31
  br label %for.body171

for.body171:                                      ; preds = %for.body171.for.body171_crit_edge, %for.body171.preheader
  %j.0343 = phi i32 [ %inc184, %for.body171.for.body171_crit_edge ], [ 1, %for.body171.preheader ]
  %entry1.3342 = phi i32 [ %inc182, %for.body171.for.body171_crit_edge ], [ %rem167, %for.body171.preheader ]
  %120 = ptrtoint ptr %pci_dev69 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_dev69, align 4
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %mapping176 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.3342, i32 1
  %122 = ptrtoint ptr %mapping176 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mapping176, align 4
  %124 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %end.i, align 4
  %sub179 = add nsw i32 %j.0343, -1
  %bv_len.i327 = getelementptr %struct.skb_shared_info, ptr %125, i32 0, i32 12, i32 %sub179, i32 1
  %126 = ptrtoint ptr %bv_len.i327 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bv_len.i327, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev173, i32 noundef %123, i32 noundef %127, i32 noundef 1, i32 noundef 0) #12
  %inc182 = add nuw nsw i32 %entry1.3342, 1
  %inc184 = add nuw nsw i32 %j.0343, 1
  %exitcond.not = icmp eq i32 %inc184, %i.0340
  br i1 %exitcond.not, label %for.body171.if.end186_crit_edge, label %for.body171.for.body171_crit_edge

for.body171.for.body171_crit_edge:                ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body171

for.body171.if.end186_crit_edge:                  ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.end186:                                        ; preds = %for.body171.if.end186_crit_edge, %if.then153.if.end186_crit_edge, %err_out.if.end186_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  %128 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %15, ptr %cur_tx, align 8
  br label %cleanup188

cleanup188:                                       ; preds = %if.end186, %if.then145, %do.body132.cleanup188_crit_edge, %skb_padto.exit.cleanup188_crit_edge, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.end186 ], [ 0, %skb_padto.exit.cleanup188_crit_edge ], [ 0, %if.then145 ], [ 0, %do.body132.cleanup188_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  %mc_filter = alloca [32 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %active_vlans.i = getelementptr i8, ptr %dev, i32 5008
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #12
  %conv235.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %conv235.i)
  %cmp36.i = icmp ugt i32 %conv235.i, 4095
  br i1 %cmp36.i, label %entry.set_vlan_mode.exit_crit_edge, label %do.body.preheader.i

entry.set_vlan_mode.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_vlan_mode.exit

do.body.preheader.i:                              ; preds = %entry
  %add.ptr1.i = getelementptr i8, ptr %1, i32 352520
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %conv240.i = phi i32 [ %conv2.i, %do.body.i.do.body.i_crit_edge ], [ %conv235.i, %do.body.preheader.i ]
  %vlan_count.039.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %filter_addr.038.i = phi ptr [ %add.ptr6.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr1.i, %do.body.preheader.i ]
  %vid.0.in37.i = phi i32 [ %call10.i, %do.body.i.do.body.i_crit_edge ], [ %call.i, %do.body.preheader.i ]
  %vid.0.i = trunc i32 %vid.0.in37.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  tail call void @arm_heavy_mb() #12
  %2 = tail call i16 @llvm.bswap.i16(i16 %vid.0.i) #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %filter_addr.038.i, i16 %2) #12, !srcloc !344
  %add.ptr6.i = getelementptr i8, ptr %filter_addr.038.i, i32 16
  %inc.i = add nuw nsw i32 %vlan_count.039.i, 1
  %add.i = add nuw nsw i32 %conv240.i, 1
  %call10.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #12
  %conv2.i = and i32 %call10.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %conv2.i)
  %cmp.i = icmp ugt i32 %conv2.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %cmp4.i = icmp eq i32 %inc.i, 32
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %for.end.loopexit.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.end.loopexit.i:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.sel.i = select i1 %cmp4.i, i32 640, i32 512
  br label %set_vlan_mode.exit

set_vlan_mode.exit:                               ; preds = %for.end.loopexit.i, %entry.set_vlan_mode.exit_crit_edge
  %cmp4.lcssa.i = phi i32 [ 512, %entry.set_vlan_mode.exit_crit_edge ], [ %phi.sel.i, %for.end.loopexit.i ]
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %set_vlan_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or2 = or i32 %cmp4.lcssa.i, 57345
  br label %do.body126

if.else:                                          ; preds = %set_vlan_mode.exit
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %6)
  %cmp = icmp slt i32 %6, 513
  %and4 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or7 = or i32 %cmp4.lcssa.i, 57414
  br label %do.body126

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp11 = icmp slt i32 %6, 15
  br i1 %cmp11, label %if.then12, label %if.else55

if.then12:                                        ; preds = %if.else8
  %add.ptr13 = getelementptr i8, ptr %1, i32 352288
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0193 = load ptr, ptr %mc, align 4
  %cmp19.not194 = icmp eq ptr %ha.0193, %mc
  br i1 %cmp19.not194, label %if.then12.for.end_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then12.for.body_crit_edge
  %ha.0196 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0193, %if.then12.for.body_crit_edge ]
  %filter_addr.0195 = phi ptr [ %add.ptr30, %for.body.for.body_crit_edge ], [ %add.ptr13, %if.then12.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0196, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !390
  tail call void @arm_heavy_mb() #12
  %arrayidx = getelementptr %struct.netdev_hw_addr, ptr %ha.0196, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %filter_addr.0195, i16 %10) #12, !srcloc !344
  %add.ptr20 = getelementptr i8, ptr %filter_addr.0195, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  tail call void @arm_heavy_mb() #12
  %arrayidx24 = getelementptr %struct.netdev_hw_addr, ptr %ha.0196, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx24, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %13) #12, !srcloc !344
  %add.ptr25 = getelementptr i8, ptr %filter_addr.0195, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %16) #12, !srcloc !344
  %add.ptr30 = getelementptr i8, ptr %filter_addr.0195, i32 16
  %17 = ptrtoint ptr %ha.0196 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0 = load ptr, ptr %ha.0196, align 4
  %cmp19.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp19.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then12.for.end_crit_edge
  %filter_addr.0.lcssa = phi ptr [ %add.ptr13, %if.then12.for.end_crit_edge ], [ %add.ptr30, %for.body.for.end_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 8
  %add = add i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp38197 = icmp slt i32 %add, 16
  br i1 %cmp38197, label %do.body39.lr.ph, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body39.lr.ph:                                  ; preds = %for.end
  %arrayidx47 = getelementptr i16, ptr %19, i32 1
  %arrayidx52 = getelementptr i16, ptr %19, i32 2
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body39.lr.ph
  %i.0199 = phi i32 [ %add, %do.body39.lr.ph ], [ %inc, %do.body39.do.body39_crit_edge ]
  %filter_addr.1198 = phi ptr [ %filter_addr.0.lcssa, %do.body39.lr.ph ], [ %add.ptr53, %do.body39.do.body39_crit_edge ]
  %inc = add i32 %i.0199, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !393
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %19, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %filter_addr.1198, i16 %24) #12, !srcloc !344
  %add.ptr43 = getelementptr i8, ptr %filter_addr.1198, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx47, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43, i16 %27) #12, !srcloc !344
  %add.ptr48 = getelementptr i8, ptr %filter_addr.1198, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx52, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr48, i16 %30) #12, !srcloc !344
  %add.ptr53 = getelementptr i8, ptr %filter_addr.1198, i32 16
  %exitcond201.not = icmp eq i32 %inc, 16
  br i1 %exitcond201.not, label %do.body39.while.end_crit_edge, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

do.body39.while.end_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.body39.while.end_crit_edge, %for.end.while.end_crit_edge
  %or54 = or i32 %cmp4.lcssa.i, 57412
  br label %do.body126

if.else55:                                        ; preds = %if.else8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mc_filter) #12
  %31 = call ptr @memset(ptr %mc_filter, i32 0, i32 64)
  %32 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.1186 = load ptr, ptr %mc, align 4
  %cmp69.not187 = icmp eq ptr %ha.1186, %mc
  br i1 %cmp69.not187, label %if.else55.for.end86_crit_edge, label %if.else55.for.body71_crit_edge

if.else55.for.body71_crit_edge:                   ; preds = %if.else55
  br label %for.body71

if.else55.for.end86_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %if.else55.for.body71_crit_edge
  %ha.1188 = phi ptr [ %ha.1, %for.body71.for.body71_crit_edge ], [ %ha.1186, %if.else55.for.body71_crit_edge ]
  %addr72 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1188, i32 0, i32 2
  %call74 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr72, i32 noundef 6) #16
  %shr = lshr i32 %call74, 23
  %33 = lshr i32 %call74, 27
  %and76 = and i32 %33, 30
  %arrayidx77 = getelementptr [32 x i16], ptr %mc_filter, i32 0, i32 %and76
  %and78 = and i32 %shr, 31
  %shl = shl nuw i32 1, %and78
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %35 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx77, align 4
  %or79 = or i32 %34, %36
  store i32 %or79, ptr %arrayidx77, align 4
  %37 = ptrtoint ptr %ha.1188 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ha.1 = load ptr, ptr %ha.1188, align 4
  %cmp69.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp69.not, label %for.body71.for.end86_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.body71.for.end86_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

for.end86:                                        ; preds = %for.body71.for.end86_crit_edge, %if.else55.for.end86_crit_edge
  %add.ptr88 = getelementptr i8, ptr %1, i32 352288
  %dev_addr89 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr89, align 64
  %arrayidx101 = getelementptr i16, ptr %39, i32 1
  %arrayidx106 = getelementptr i16, ptr %39, i32 2
  br label %do.body93

do.body93:                                        ; preds = %do.body93.do.body93_crit_edge, %for.end86
  %i.1190 = phi i32 [ 2, %for.end86 ], [ %inc109, %do.body93.do.body93_crit_edge ]
  %filter_addr56.0189 = phi ptr [ %add.ptr88, %for.end86 ], [ %add.ptr107, %do.body93.do.body93_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %filter_addr56.0189, i16 %42) #12, !srcloc !344
  %add.ptr97 = getelementptr i8, ptr %filter_addr56.0189, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  tail call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx101, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr97, i16 %45) #12, !srcloc !344
  %add.ptr102 = getelementptr i8, ptr %filter_addr56.0189, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx106, align 2
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102, i16 %48) #12, !srcloc !344
  %add.ptr107 = getelementptr i8, ptr %filter_addr56.0189, i32 16
  %inc109 = add nuw nsw i32 %i.1190, 1
  %exitcond.not = icmp eq i32 %inc109, 16
  br i1 %exitcond.not, label %for.end110, label %do.body93.do.body93_crit_edge

do.body93.do.body93_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

for.end110:                                       ; preds = %do.body93
  %add.ptr111 = getelementptr i8, ptr %1, i32 352512
  br label %do.body115

do.body115:                                       ; preds = %do.body115.do.body115_crit_edge, %for.end110
  %i.2192 = phi i32 [ 0, %for.end110 ], [ %inc121, %do.body115.do.body115_crit_edge ]
  %filter_addr56.1191 = phi ptr [ %add.ptr111, %for.end110 ], [ %add.ptr120, %do.body115.do.body115_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %arrayidx118 = getelementptr [32 x i16], ptr %mc_filter, i32 0, i32 %i.2192
  %49 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx118, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %filter_addr56.1191, i16 %51) #12, !srcloc !344
  %add.ptr120 = getelementptr i8, ptr %filter_addr56.1191, i32 16
  %inc121 = add nuw nsw i32 %i.2192, 1
  %exitcond200.not = icmp eq i32 %inc121, 32
  br i1 %exitcond200.not, label %for.end122, label %do.body115.do.body115_crit_edge

do.body115.do.body115_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

for.end122:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %or123 = or i32 %cmp4.lcssa.i, 57460
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mc_filter) #12
  br label %do.body126

do.body126:                                       ; preds = %for.end122, %while.end, %if.then6, %if.then
  %rx_mode.0 = phi i32 [ %or2, %if.then ], [ %or7, %if.then6 ], [ %or54, %while.end ], [ %or123, %for.end122 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %rx_mode.0)
  %add.ptr129 = getelementptr i8, ptr %1, i32 327924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %52) #12, !srcloc !333
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 5532
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii_if = getelementptr i8, ptr %dev, i32 5616
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 35145, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35145
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ifr_ifru.i, align 2
  %phys = getelementptr i8, ptr %dev, i32 5652
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phys, align 4
  %6 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %6)
  %cmp6 = icmp eq i16 %3, %6
  br i1 %cmp6, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @check_duplex(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.then8 ], [ %call3, %land.lhs.true.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 327812
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %dev, i32 noundef %3) #15
  %4 = load i32, ptr @debug, align 4
  store i32 2, ptr @debug, align 4
  %call5 = tail call i32 @netdev_close(ptr noundef %dev)
  %call6 = tail call i32 @netdev_open(ptr noundef %dev)
  store i32 %4, ptr @debug, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 12
  %8 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %7, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tx_errors, align 4
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 356368
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !336
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx_bytes, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 356420
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #12, !srcloc !336
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %7 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_bytes, align 8
  %add.ptr12 = getelementptr i8, ptr %1, i32 356352
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #12, !srcloc !336
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_packets, align 4
  %add.ptr19 = getelementptr i8, ptr %1, i32 356388
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !336
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  %add.ptr25 = getelementptr i8, ptr %1, i32 356392
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !336
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  %add = add i32 %14, %12
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %15 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %tx_aborted_errors, align 8
  %add.ptr32 = getelementptr i8, ptr %1, i32 356376
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #12, !srcloc !336
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %18 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_window_errors, align 8
  %add.ptr39 = getelementptr i8, ptr %1, i32 356356
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #12, !srcloc !336
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  %add.ptr45 = getelementptr i8, ptr %1, i32 356360
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #12, !srcloc !336
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  %add49 = add i32 %22, %20
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %23 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add49, ptr %collisions, align 4
  %add.ptr53 = getelementptr i8, ptr %1, i32 327920
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53) #12, !srcloc !410
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  %conv = zext i16 %25 to i32
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %26 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped, align 8
  %add58 = add i32 %27, %conv
  store i32 %add58, ptr %rx_dropped, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53, i16 0) #12, !srcloc !344
  %add.ptr62 = getelementptr i8, ptr %1, i32 356412
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #12, !srcloc !336
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %30 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rx_crc_errors, align 8
  %add.ptr69 = getelementptr i8, ptr %1, i32 356416
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #12, !srcloc !336
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %33 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rx_frame_errors, align 4
  %add.ptr76 = getelementptr i8, ptr %1, i32 356440
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #12, !srcloc !336
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %36 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %rx_length_errors, align 8
  %add.ptr83 = getelementptr i8, ptr %1, i32 356476
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #12, !srcloc !336
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %39 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rx_missed_errors, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 5532
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  %conv = zext i16 %vid to i32
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %dev, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %active_vlans = getelementptr i8, ptr %dev, i32 5008
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #12
  tail call void @set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 5532
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  %conv = zext i16 %vid to i32
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %dev, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %active_vlans = getelementptr i8, ptr %dev, i32 5008
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #12
  tail call void @set_rx_mode(ptr noundef %dev)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %base = getelementptr i8, ptr %dev_instance, i32 5656
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = load i32, ptr @max_interrupt_work, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 327808
  %napi = getelementptr i8, ptr %dev_instance, i32 4776
  %add.ptr35 = getelementptr i8, ptr %1, i32 327816
  %add.ptr59 = getelementptr i8, ptr %1, i32 327844
  %tx_done_q = getelementptr i8, ptr %dev_instance, i32 4764
  %tx_done = getelementptr i8, ptr %dev_instance, i32 4772
  %dirty_tx = getelementptr i8, ptr %dev_instance, i32 5588
  %pci_dev = getelementptr i8, ptr %dev_instance, i32 5004
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %add.ptr153 = getelementptr i8, ptr %1, i32 327878
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 5584
  %phys.i = getelementptr i8, ptr %dev_instance, i32 5652
  %speed100.i = getelementptr i8, ptr %dev_instance, i32 5600
  %full_duplex.i = getelementptr i8, ptr %dev_instance, i32 5632
  %tx_mode.i = getelementptr i8, ptr %dev_instance, i32 5604
  %intr_timer_ctrl.i = getelementptr i8, ptr %dev_instance, i32 5608
  %tx_threshold.i = getelementptr i8, ptr %dev_instance, i32 5612
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 14
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end174.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ 1, %if.end174.do.body_crit_edge ]
  %boguscnt.0 = phi i32 [ %2, %entry ], [ %dec, %if.end174.do.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !336
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp sgt i32 %5, 4
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %dev_instance, i32 noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %3, label %if.end9 [
    i32 0, label %if.end.do.end191_crit_edge
    i32 -1, label %if.end.do.end191_crit_edge351
  ]

if.end.do.end191_crit_edge351:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end191

if.end.do.end191_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end191

if.end9:                                          ; preds = %if.end
  %and = and i32 %4, 66368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end56_crit_edge, label %if.then10

if.end9.if.end56_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then10:                                        ; preds = %if.end9
  %call11 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call11, label %if.then14, label %if.else, !prof !345

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi) #12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  %8 = and i32 %7, -1073938689
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %8) #12, !srcloc !333
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  br label %if.end56

if.else:                                          ; preds = %if.then10
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #12, !srcloc !336
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  %and39 = and i32 %11, 66368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end56_crit_edge, label %do.end44

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

do.end44:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %dev_instance) #15
  %and49 = and i32 %11, -66369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and49)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %12) #12, !srcloc !333
  br label %if.end56

if.end56:                                         ; preds = %do.end44, %if.else.if.end56_crit_edge, %if.then14, %if.end9.if.end56_crit_edge
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp63 = icmp sgt i32 %14, 3
  br i1 %cmp63, label %do.end67, label %if.end56.if.end72_crit_edge

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

do.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %dev_instance, i32 noundef %15) #15
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %if.end56.if.end72_crit_edge
  %16 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_done_q, align 4
  %18 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_done, align 4
  %arrayidx319 = getelementptr %struct.tx_done_desc, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx319, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp73.not320 = icmp eq i32 %21, 0
  br i1 %cmp73.not320, label %if.end72.do.body147_crit_edge, label %while.body.preheader

if.end72.do.body147_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body147

while.body.preheader:                             ; preds = %if.end72
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %while.body

while.body:                                       ; preds = %if.end138.while.body_crit_edge, %while.body.preheader
  %23 = phi i32 [ %76, %if.end138.while.body_crit_edge ], [ %22, %while.body.preheader ]
  %24 = phi i32 [ %rem145, %if.end138.while.body_crit_edge ], [ %19, %while.body.preheader ]
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp74 = icmp sgt i32 %25, 3
  br i1 %cmp74, label %do.end78, label %while.body.if.end84_crit_edge

while.body.if.end84_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end78:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dirty_tx, align 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %dev_instance, i32 noundef %27, i32 noundef %24, i32 noundef %23) #15
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %while.body.if.end84_crit_edge
  %and85 = and i32 %23, -536870912
  %28 = zext i32 %and85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %and85, label %if.end84.if.end138_crit_edge [
    i32 -1610612736, label %if.then87
    i32 -2147483648, label %if.then91
  ]

if.end84.if.end138_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end138

if.then91:                                        ; preds = %if.end84
  %31 = lshr i32 %23, 3
  %conv = and i32 %31, 4095
  %arrayidx94 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %conv
  %32 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx94, align 4
  store ptr null, ptr %arrayidx94, align 4
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %mapping = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %conv, i32 1
  %36 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mapping, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %39, %41
  tail call void @dma_unmap_page_attrs(ptr noundef %dev100, i32 noundef %37, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #12
  %42 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mapping, align 4
  %used_slots = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %conv, i32 2
  %43 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used_slots, align 4
  %45 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty_tx, align 4
  %add = add i32 %46, %44
  store i32 %add, ptr %dirty_tx, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %nr_frags314 = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags314 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags314, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp122316.not = icmp eq i8 %50, 0
  br i1 %cmp122316.not, label %if.then91.for.end_crit_edge, label %for.body.preheader

if.then91.for.end_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.then91
  %51 = ptrtoint ptr %used_slots to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used_slots, align 4
  %add118 = add i32 %52, %31
  %53 = and i32 %add118, 31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %53, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %54 = phi ptr [ %48, %for.body.preheader ], [ %64, %for.body.for.body_crit_edge ]
  %i.0318 = phi i32 [ 0, %for.body.preheader ], [ %inc136, %for.body.for.body_crit_edge ]
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %mapping129 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %indvars.iv, i32 1
  %57 = ptrtoint ptr %mapping129 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mapping129, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %54, i32 0, i32 12, i32 %i.0318, i32 1
  %59 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev125, i32 noundef %58, i32 noundef %60, i32 noundef 1, i32 noundef 0) #12
  %61 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dirty_tx, align 4
  %inc134 = add i32 %62, 1
  store i32 %inc134, ptr %dirty_tx, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc136 = add nuw nsw i32 %i.0318, 1
  %63 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nr_frags, align 2
  %conv121 = zext i8 %66 to i32
  %cmp122 = icmp ult i32 %inc136, %conv121
  br i1 %cmp122, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then91.for.end_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef %33, i32 noundef 0) #12
  br label %if.end138

if.end138:                                        ; preds = %for.end, %if.then87, %if.end84.if.end138_crit_edge
  %67 = ptrtoint ptr %tx_done_q to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_done_q, align 4
  %69 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_done, align 4
  %arrayidx141 = getelementptr %struct.tx_done_desc, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx141, align 4
  %72 = load i32, ptr %tx_done, align 4
  %add144 = add i32 %72, 1
  %rem145 = and i32 %add144, 1023
  store i32 %rem145, ptr %tx_done, align 4
  %73 = load ptr, ptr %tx_done_q, align 4
  %arrayidx = getelementptr %struct.tx_done_desc, ptr %73, i32 %rem145
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %cmp73.not = icmp eq i32 %75, 0
  br i1 %cmp73.not, label %if.end138.do.body147_crit_edge, label %if.end138.while.body_crit_edge

if.end138.while.body_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end138.do.body147_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body147

do.body147:                                       ; preds = %if.end138.do.body147_crit_edge, %if.end72.do.body147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !424
  tail call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %tx_done to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_done, align 4
  %conv151 = trunc i32 %78 to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv151)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr153, i16 %79) #12, !srcloc !344
  %80 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.body147.if.end161_crit_edge, label %land.lhs.true

do.body147.if.end161_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

land.lhs.true:                                    ; preds = %do.body147
  %84 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_tx, align 8
  %86 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dirty_tx, align 4
  %sub = add i32 %85, 4
  %add157 = sub i32 %sub, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add157)
  %cmp158 = icmp ult i32 %add157, 32
  br i1 %cmp158, label %if.then160, label %land.lhs.true.if.end161_crit_edge

land.lhs.true.if.end161_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161

if.then160:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %81) #12
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %land.lhs.true.if.end161_crit_edge, %do.body147.if.end161_crit_edge
  %and162 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.if.end166_crit_edge, label %if.then164

if.end161.if.end166_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  %call165 = tail call ptr @get_stats(ptr noundef %dev_instance)
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end161.if.end166_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %4)
  %tobool168.not = icmp ult i32 %4, 268435456
  br i1 %tobool168.not, label %if.end166.if.end170_crit_edge, label %if.then169

if.end166.if.end170_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then169:                                       ; preds = %if.end166
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 8
  %90 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %phys.i, align 4
  %conv.i = zext i8 %91 to i32
  %add.ptr.i215.i = getelementptr i8, ptr %89, i32 335872
  %shl.i.i = shl nuw nsw i32 %conv.i, 7
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i215.i, i32 %shl.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then169
  %boguscnt.0.i.i = phi i32 [ 1000, %if.then169 ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %93 = and i32 %92, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %93)
  %cmp.not.i.i = icmp eq i32 %93, 128
  %dec.i.i = add nsw i32 %boguscnt.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp6.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond306.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp6.not.i.i
  br i1 %or.cond306.i, label %mdio_read.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

mdio_read.exit.i:                                 ; preds = %do.body.i.i
  %94 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %phys.i, align 4
  %conv4.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 8
  %shl.i218.i = shl nuw nsw i32 %conv4.i, 7
  %add.ptr1.i219.i = getelementptr i8, ptr %97, i32 335876
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr1.i219.i, i32 %shl.i218.i
  br label %do.body.i223.i

do.body.i223.i:                                   ; preds = %do.body.i223.i.do.body.i223.i_crit_edge, %mdio_read.exit.i
  %boguscnt.0.i220.i = phi i32 [ 1000, %mdio_read.exit.i ], [ %dec.i224.i, %do.body.i223.i.do.body.i223.i_crit_edge ]
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #12, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %99 = and i32 %98, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %99)
  %cmp.not.i222.i = icmp eq i32 %99, 128
  %dec.i224.i = add nsw i32 %boguscnt.0.i220.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i224.i)
  %cmp6.not.i225.i = icmp eq i32 %dec.i224.i, 0
  %or.cond307.i = select i1 %cmp.not.i222.i, i1 true, i1 %cmp6.not.i225.i
  br i1 %or.cond307.i, label %mdio_read.exit232.i, label %do.body.i223.i.do.body.i223.i_crit_edge

do.body.i223.i.do.body.i223.i_crit_edge:          ; preds = %do.body.i223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i223.i

mdio_read.exit232.i:                              ; preds = %do.body.i223.i
  %100 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %phys.i, align 4
  %conv8.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 8
  %add.ptr.i234.i = getelementptr i8, ptr %103, i32 335872
  %shl.i235.i = shl nuw nsw i32 %conv8.i, 7
  %add.ptr1.i236.i = getelementptr i8, ptr %add.ptr.i234.i, i32 %shl.i235.i
  br label %do.body.i240.i

do.body.i240.i:                                   ; preds = %land.rhs.i243.i.do.body.i240.i_crit_edge, %mdio_read.exit232.i
  %boguscnt.0.i237.i = phi i32 [ 1000, %mdio_read.exit232.i ], [ %dec.i241.i, %land.rhs.i243.i.do.body.i240.i_crit_edge ]
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i236.i) #12, !srcloc !336
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i238.i = and i32 %105, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i238.i)
  %cmp.not.i239.i = icmp eq i32 %and.i238.i, -2147483648
  br i1 %cmp.not.i239.i, label %do.body.i240.i.mdio_read.exit249.i_crit_edge, label %land.rhs.i243.i

do.body.i240.i.mdio_read.exit249.i_crit_edge:     ; preds = %do.body.i240.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit249.i

land.rhs.i243.i:                                  ; preds = %do.body.i240.i
  %dec.i241.i = add nsw i32 %boguscnt.0.i237.i, -1
  %cmp6.not.i242.i = icmp eq i32 %dec.i241.i, 0
  br i1 %cmp6.not.i242.i, label %land.rhs.i243.i.mdio_read.exit249.i_crit_edge, label %land.rhs.i243.i.do.body.i240.i_crit_edge

land.rhs.i243.i.do.body.i240.i_crit_edge:         ; preds = %land.rhs.i243.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i240.i

land.rhs.i243.i.mdio_read.exit249.i_crit_edge:    ; preds = %land.rhs.i243.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit249.i

mdio_read.exit249.i:                              ; preds = %land.rhs.i243.i.mdio_read.exit249.i_crit_edge, %do.body.i240.i.mdio_read.exit249.i_crit_edge
  %boguscnt.1.i244.i = phi i32 [ 0, %land.rhs.i243.i.mdio_read.exit249.i_crit_edge ], [ %boguscnt.0.i237.i, %do.body.i240.i.mdio_read.exit249.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i244.i)
  %cmp7.i245.i = icmp eq i32 %boguscnt.1.i244.i, 0
  %and8.i246.i = and i32 %105, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i246.i)
  %cmp9.i247.i = icmp eq i32 %and8.i246.i, 65535
  %106 = select i1 %cmp7.i245.i, i1 true, i1 %cmp9.i247.i
  %retval.0.i248.i = select i1 %106, i32 0, i32 %and8.i246.i
  %107 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %phys.i, align 4
  %conv13.i = zext i8 %108 to i32
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 8
  %shl.i252.i = shl nuw nsw i32 %conv13.i, 7
  %add.ptr1.i253.i = getelementptr i8, ptr %110, i32 335876
  %add.ptr3.i254.i = getelementptr i8, ptr %add.ptr1.i253.i, i32 %shl.i252.i
  br label %do.body.i258.i

do.body.i258.i:                                   ; preds = %land.rhs.i261.i.do.body.i258.i_crit_edge, %mdio_read.exit249.i
  %boguscnt.0.i255.i = phi i32 [ 1000, %mdio_read.exit249.i ], [ %dec.i259.i, %land.rhs.i261.i.do.body.i258.i_crit_edge ]
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i254.i) #12, !srcloc !336
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i256.i = and i32 %112, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i256.i)
  %cmp.not.i257.i = icmp eq i32 %and.i256.i, -2147483648
  br i1 %cmp.not.i257.i, label %do.body.i258.i.mdio_read.exit267.i_crit_edge, label %land.rhs.i261.i

do.body.i258.i.mdio_read.exit267.i_crit_edge:     ; preds = %do.body.i258.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit267.i

land.rhs.i261.i:                                  ; preds = %do.body.i258.i
  %dec.i259.i = add nsw i32 %boguscnt.0.i255.i, -1
  %cmp6.not.i260.i = icmp eq i32 %dec.i259.i, 0
  br i1 %cmp6.not.i260.i, label %land.rhs.i261.i.mdio_read.exit267.i_crit_edge, label %land.rhs.i261.i.do.body.i258.i_crit_edge

land.rhs.i261.i.do.body.i258.i_crit_edge:         ; preds = %land.rhs.i261.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i258.i

land.rhs.i261.i.mdio_read.exit267.i_crit_edge:    ; preds = %land.rhs.i261.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit267.i

mdio_read.exit267.i:                              ; preds = %land.rhs.i261.i.mdio_read.exit267.i_crit_edge, %do.body.i258.i.mdio_read.exit267.i_crit_edge
  %boguscnt.1.i262.i = phi i32 [ 0, %land.rhs.i261.i.mdio_read.exit267.i_crit_edge ], [ %boguscnt.0.i255.i, %do.body.i258.i.mdio_read.exit267.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i262.i)
  %cmp7.i263.i = icmp eq i32 %boguscnt.1.i262.i, 0
  %and8.i264.i = and i32 %112, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i264.i)
  %cmp9.i265.i = icmp eq i32 %and8.i264.i, 65535
  %113 = select i1 %cmp7.i263.i, i1 true, i1 %cmp9.i265.i
  %.op.i = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.op.i)
  %tobool.not304.i = icmp eq i32 %.op.i, 0
  %tobool.not.i = select i1 %113, i1 true, i1 %tobool.not304.i
  br i1 %tobool.not.i, label %if.else150.i, label %if.then.i

if.then.i:                                        ; preds = %mdio_read.exit267.i
  %and18.i = and i32 %retval.0.i248.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else76.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then.i
  %114 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %phys.i, align 4
  %conv23.i = zext i8 %115 to i32
  %116 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base, align 8
  %shl.i270.i = shl nuw nsw i32 %conv23.i, 7
  %add.ptr1.i271.i = getelementptr i8, ptr %117, i32 335888
  %add.ptr3.i272.i = getelementptr i8, ptr %add.ptr1.i271.i, i32 %shl.i270.i
  br label %do.body.i276.i

do.body.i276.i:                                   ; preds = %land.rhs.i279.i.do.body.i276.i_crit_edge, %if.then20.i
  %boguscnt.0.i273.i = phi i32 [ 1000, %if.then20.i ], [ %dec.i277.i, %land.rhs.i279.i.do.body.i276.i_crit_edge ]
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i272.i) #12, !srcloc !336
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i274.i = and i32 %119, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i274.i)
  %cmp.not.i275.i = icmp eq i32 %and.i274.i, -2147483648
  br i1 %cmp.not.i275.i, label %do.body.i276.i.mdio_read.exit285.i_crit_edge, label %land.rhs.i279.i

do.body.i276.i.mdio_read.exit285.i_crit_edge:     ; preds = %do.body.i276.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit285.i

land.rhs.i279.i:                                  ; preds = %do.body.i276.i
  %dec.i277.i = add nsw i32 %boguscnt.0.i273.i, -1
  %cmp6.not.i278.i = icmp eq i32 %dec.i277.i, 0
  br i1 %cmp6.not.i278.i, label %land.rhs.i279.i.mdio_read.exit285.i_crit_edge, label %land.rhs.i279.i.do.body.i276.i_crit_edge

land.rhs.i279.i.do.body.i276.i_crit_edge:         ; preds = %land.rhs.i279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i276.i

land.rhs.i279.i.mdio_read.exit285.i_crit_edge:    ; preds = %land.rhs.i279.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit285.i

mdio_read.exit285.i:                              ; preds = %land.rhs.i279.i.mdio_read.exit285.i_crit_edge, %do.body.i276.i.mdio_read.exit285.i_crit_edge
  %boguscnt.1.i280.i = phi i32 [ 0, %land.rhs.i279.i.mdio_read.exit285.i_crit_edge ], [ %boguscnt.0.i273.i, %do.body.i276.i.mdio_read.exit285.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i280.i)
  %cmp7.i281.i = icmp eq i32 %boguscnt.1.i280.i, 0
  %and8.i282.i = and i32 %119, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i282.i)
  %cmp9.i283.i = icmp eq i32 %and8.i282.i, 65535
  %120 = select i1 %cmp7.i281.i, i1 true, i1 %cmp9.i283.i
  %retval.0.i284.i = select i1 %120, i32 0, i32 %and8.i282.i
  %121 = ptrtoint ptr %phys.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %phys.i, align 4
  %conv28.i = zext i8 %122 to i32
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 8
  %shl.i288.i = shl nuw nsw i32 %conv28.i, 7
  %add.ptr1.i289.i = getelementptr i8, ptr %124, i32 335892
  %add.ptr3.i290.i = getelementptr i8, ptr %add.ptr1.i289.i, i32 %shl.i288.i
  br label %do.body.i294.i

do.body.i294.i:                                   ; preds = %land.rhs.i297.i.do.body.i294.i_crit_edge, %mdio_read.exit285.i
  %boguscnt.0.i291.i = phi i32 [ 1000, %mdio_read.exit285.i ], [ %dec.i295.i, %land.rhs.i297.i.do.body.i294.i_crit_edge ]
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i290.i) #12, !srcloc !336
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i292.i = and i32 %126, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i292.i)
  %cmp.not.i293.i = icmp eq i32 %and.i292.i, -2147483648
  br i1 %cmp.not.i293.i, label %do.body.i294.i.mdio_read.exit303.i_crit_edge, label %land.rhs.i297.i

do.body.i294.i.mdio_read.exit303.i_crit_edge:     ; preds = %do.body.i294.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit303.i

land.rhs.i297.i:                                  ; preds = %do.body.i294.i
  %dec.i295.i = add nsw i32 %boguscnt.0.i291.i, -1
  %cmp6.not.i296.i = icmp eq i32 %dec.i295.i, 0
  br i1 %cmp6.not.i296.i, label %land.rhs.i297.i.mdio_read.exit303.i_crit_edge, label %land.rhs.i297.i.do.body.i294.i_crit_edge

land.rhs.i297.i.do.body.i294.i_crit_edge:         ; preds = %land.rhs.i297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i294.i

land.rhs.i297.i.mdio_read.exit303.i_crit_edge:    ; preds = %land.rhs.i297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit303.i

mdio_read.exit303.i:                              ; preds = %land.rhs.i297.i.mdio_read.exit303.i_crit_edge, %do.body.i294.i.mdio_read.exit303.i_crit_edge
  %boguscnt.1.i298.i = phi i32 [ 0, %land.rhs.i297.i.mdio_read.exit303.i_crit_edge ], [ %boguscnt.0.i291.i, %do.body.i294.i.mdio_read.exit303.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i298.i)
  %cmp7.i299.i = icmp eq i32 %boguscnt.1.i298.i, 0
  %and8.i300.i = and i32 %126, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i300.i)
  %cmp9.i301.i = icmp eq i32 %and8.i300.i, 65535
  %127 = select i1 %cmp7.i299.i, i1 true, i1 %cmp9.i301.i
  %retval.0.i302.i = select i1 %127, i32 0, i32 %and8.i300.i
  %and32.i = and i32 %retval.0.i284.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %and35.i = and i32 %retval.0.i302.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %or.cond.i = select i1 %tobool33.not.i, i1 true, i1 %tobool36.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %mdio_read.exit303.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %speed100.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %speed100.i, align 8
  %129 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load.i = load i8, ptr %full_duplex.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  br label %if.end101.i

if.else.i:                                        ; preds = %mdio_read.exit303.i
  %and39.i = and i32 %retval.0.i284.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %and43.i = and i32 %retval.0.i302.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %or.cond212.i = select i1 %tobool40.not.i, i1 true, i1 %tobool44.not.i
  br i1 %or.cond212.i, label %if.else52.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %speed100.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %speed100.i, align 8
  %131 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load49.i = load i8, ptr %full_duplex.i, align 8
  %bf.clear50.i = and i8 %bf.load49.i, 127
  br label %if.end101.i

if.else52.i:                                      ; preds = %if.else.i
  %and54.i = and i32 %retval.0.i284.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %and58.i = and i32 %retval.0.i302.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %or.cond213.i = select i1 %tobool55.not.i, i1 true, i1 %tobool59.not.i
  %132 = ptrtoint ptr %speed100.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %speed100.i, align 8
  %133 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load71.i = load i8, ptr %full_duplex.i, align 8
  br i1 %or.cond213.i, label %if.else67.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set66.i = or i8 %bf.load71.i, -128
  br label %if.end101.i

if.else67.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear72.i = and i8 %bf.load71.i, 127
  br label %if.end101.i

if.else76.i:                                      ; preds = %if.then.i
  %and78.i = lshr i32 %retval.0.i248.i, 13
  %and78.lobit.i = and i32 %and78.i, 1
  %134 = ptrtoint ptr %speed100.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and78.lobit.i, ptr %speed100.i, align 8
  %and86.i = and i32 %retval.0.i248.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  %135 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load97.i = load i8, ptr %full_duplex.i, align 8
  br i1 %tobool87.not.i, label %if.else94.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set93.i = or i8 %bf.load97.i, -128
  br label %if.end101.i

if.else94.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear98.i = and i8 %bf.load97.i, 127
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else94.i, %if.then88.i, %if.else67.i, %if.then60.i, %if.then45.i, %if.then37.i
  %bf.clear98.i.sink = phi i8 [ %bf.clear98.i, %if.else94.i ], [ %bf.set93.i, %if.then88.i ], [ %bf.clear72.i, %if.else67.i ], [ %bf.set66.i, %if.then60.i ], [ %bf.clear50.i, %if.then45.i ], [ %bf.set.i, %if.then37.i ]
  %136 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %bf.clear98.i.sink, ptr %full_duplex.i, align 8
  tail call void @netif_carrier_on(ptr noundef %dev_instance) #12
  %137 = ptrtoint ptr %speed100.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %speed100.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool103.not.i = icmp eq i32 %138, 0
  %cond.i = select i1 %tobool103.not.i, ptr @.str.82, ptr @.str.81
  %139 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load106.i = load i8, ptr %full_duplex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load106.i)
  %tobool107.not.i = icmp sgt i8 %bf.load106.i, -1
  %cond108.i = select i1 %tobool107.not.i, ptr @.str.84, ptr @.str.83
  %call109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %dev_instance, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond108.i) #15
  %140 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_mode.i, align 4
  %and110.i = and i32 %141, -3
  %142 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load113.i = load i8, ptr %full_duplex.i, align 8
  %143 = lshr i8 %bf.load113.i, 6
  %144 = and i8 %143, 2
  %145 = zext i8 %144 to i32
  %spec.select.i = or i32 %and110.i, %145
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %spec.select.i)
  %cmp.not.i = icmp eq i32 %141, %spec.select.i
  br i1 %cmp.not.i, label %if.end101.i.if.end133.i_crit_edge, label %if.then121.i

if.end101.i.if.end133.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133.i

if.then121.i:                                     ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %spec.select.i, ptr %tx_mode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !425
  tail call void @arm_heavy_mb() #12
  %147 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tx_mode.i, align 4
  %or127.i = or i32 %148, 32768
  %149 = tail call i32 @llvm.bswap.i32(i32 %or127.i) #12
  %add.ptr.i293 = getelementptr i8, ptr %89, i32 348160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %149) #12, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  tail call void @arm_heavy_mb() #12
  %151 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_mode.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %153) #12, !srcloc !333
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then121.i, %if.end101.i.if.end133.i_crit_edge
  %154 = ptrtoint ptr %intr_timer_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %intr_timer_ctrl.i, align 8
  %and134.i = and i32 %155, -2049
  %156 = ptrtoint ptr %speed100.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %speed100.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool136.not.i = icmp eq i32 %157, 0
  %masksel.i = select i1 %tobool136.not.i, i32 0, i32 2048
  %spec.select214.i = or i32 %masksel.i, %and134.i
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %spec.select214.i)
  %cmp141.not.i = icmp eq i32 %155, %spec.select214.i
  br i1 %cmp141.not.i, label %if.end133.i.if.end170_crit_edge, label %if.then143.i

if.end133.i.if.end170_crit_edge:                  ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then143.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %intr_timer_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %spec.select214.i, ptr %intr_timer_ctrl.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  %159 = tail call i32 @llvm.bswap.i32(i32 %spec.select214.i) #12
  %add.ptr148.i = getelementptr i8, ptr %89, i32 327796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148.i, i32 %159) #12, !srcloc !333
  br label %if.end170

if.else150.i:                                     ; preds = %mdio_read.exit267.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %dev_instance) #12
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %dev_instance) #15
  br label %if.end170

if.end170:                                        ; preds = %if.else150.i, %if.then143.i, %if.end133.i.if.end170_crit_edge, %if.end166.if.end170_crit_edge
  %and171 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end170.if.end174_crit_edge, label %if.then173

if.end170.if.end174_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.then173:                                       ; preds = %if.end170
  %and.i = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i294 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i294, label %if.then173.if.end18.i_crit_edge, label %if.then.i295

if.then173.if.end18.i_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i295:                                     ; preds = %if.then173
  %160 = ptrtoint ptr %tx_threshold.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %tx_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %161)
  %cmp.i = icmp ult i8 %161, 97
  br i1 %cmp.i, label %do.body.i, label %do.end13.i

do.body.i:                                        ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !428
  tail call void @arm_heavy_mb() #12
  %162 = ptrtoint ptr %tx_threshold.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %tx_threshold.i, align 4
  %inc.i = add i8 %163, 1
  store i8 %inc.i, ptr %tx_threshold.i, align 4
  %conv4.i296 = zext i8 %inc.i to i32
  %164 = shl nuw i32 %conv4.i296, 24
  %165 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base, align 8
  %add.ptr.i298 = getelementptr i8, ptr %166, i32 327856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298, i32 %164) #12, !srcloc !333
  %167 = ptrtoint ptr %tx_threshold.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %tx_threshold.i, align 4
  %conv9.i = zext i8 %168 to i32
  %mul.i = shl nuw nsw i32 %conv9.i, 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %dev_instance, i32 noundef %mul.i) #15
  br label %if.end18.i

do.end13.i:                                       ; preds = %if.then.i295
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %dev_instance) #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end13.i, %do.body.i, %if.then173.if.end18.i_crit_edge
  %and19.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then21.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc22.i = add i32 %170, 1
  store i32 %inc22.i, ptr %rx_fifo_errors.i, align 8
  %171 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_errors.i, align 8
  %inc24.i = add i32 %172, 1
  store i32 %inc24.i, ptr %rx_errors.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end25.i_crit_edge
  %and26.i = and i32 %4, 524320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end33.i_crit_edge, label %if.then28.i

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc30.i = add i32 %174, 1
  store i32 %inc30.i, ptr %tx_fifo_errors.i, align 8
  %175 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_errors.i, align 4
  %inc32.i = add i32 %176, 1
  store i32 %inc32.i, ptr %tx_errors.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end33.i_crit_edge
  %and34.i = and i32 %4, 100335710
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end174_crit_edge, label %land.lhs.true.i

if.end33.i.if.end174_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

land.lhs.true.i:                                  ; preds = %if.end33.i
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool36.not.i299 = icmp eq i32 %177, 0
  br i1 %tobool36.not.i299, label %land.lhs.true.i.if.end174_crit_edge, label %do.end40.i

land.lhs.true.i.if.end174_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

do.end40.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %dev_instance, i32 noundef %4) #15
  br label %if.end174

if.end174:                                        ; preds = %do.end40.i, %land.lhs.true.i.if.end174_crit_edge, %if.end33.i.if.end174_crit_edge, %if.end170.if.end174_crit_edge
  %dec = add i32 %boguscnt.0, -1
  %cmp175 = icmp slt i32 %dec, 0
  br i1 %cmp175, label %if.then177, label %if.end174.do.body_crit_edge

if.end174.do.body_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then177:                                       ; preds = %if.end174
  %178 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %178)
  %cmp178 = icmp sgt i32 %178, 1
  br i1 %cmp178, label %do.end183, label %if.then177.if.end208_crit_edge

if.then177.if.end208_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

do.end183:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %dev_instance, i32 noundef %4) #15
  br label %do.end191

do.end191:                                        ; preds = %do.end183, %if.end.do.end191_crit_edge, %if.end.do.end191_crit_edge351
  %handled.1.ph.ph = phi i32 [ 1, %do.end183 ], [ %handled.0, %if.end.do.end191_crit_edge ], [ %handled.0, %if.end.do.end191_crit_edge351 ]
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %cmp192 = icmp sgt i32 %.pr, 4
  br i1 %cmp192, label %do.end197, label %do.end191.if.end208_crit_edge

do.end191.if.end208_crit_edge:                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

do.end197:                                        ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr203 = getelementptr i8, ptr %1, i32 327812
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr203) #12, !srcloc !336
  %180 = tail call i32 @llvm.bswap.i32(i32 %179)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !429
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %dev_instance, i32 noundef %180) #15
  br label %if.end208

if.end208:                                        ; preds = %do.end197, %do.end191.if.end208_crit_edge, %if.then177.if.end208_crit_edge
  %handled.1.ph307 = phi i32 [ %handled.1.ph.ph, %do.end197 ], [ %handled.1.ph.ph, %do.end191.if.end208_crit_edge ], [ 1, %if.then177.if.end208_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.ph307)
  %tobool209.not = icmp ne i32 %handled.1.ph307, 0
  %cond = zext i1 %tobool209.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_duplex(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phys = getelementptr i8, ptr %dev, i32 5652
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phys, align 4
  %conv = zext i8 %1 to i32
  %advertising = getelementptr i8, ptr %dev, i32 5620
  %2 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %advertising, align 4
  %base.i = getelementptr i8, ptr %dev, i32 5656
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i85 = getelementptr i8, ptr %5, i32 335872
  %shl.i = shl nuw nsw i32 %conv, 7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i85, i32 %shl.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #12, !srcloc !333
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phys, align 4
  %conv3 = zext i8 %8 to i32
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr.i87 = getelementptr i8, ptr %10, i32 335872
  %shl.i88 = shl nuw nsw i32 %conv3, 7
  %add.ptr1.i89 = getelementptr i8, ptr %add.ptr.i87, i32 %shl.i88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i89, i32 8388608) #12, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 107374000) #12
  br label %while.cond

while.cond:                                       ; preds = %mdio_read.exit.while.cond_crit_edge, %entry
  %silly_count.0 = phi i32 [ 1000, %entry ], [ %dec, %mdio_read.exit.while.cond_crit_edge ]
  %dec = add nsw i32 %silly_count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %phys, align 4
  %conv6 = zext i8 %13 to i32
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %15, i32 335872
  %shl.i92 = shl nuw nsw i32 %conv6, 7
  %add.ptr1.i93 = getelementptr i8, ptr %add.ptr.i91, i32 %shl.i92
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %land.rhs
  %boguscnt.0.i = phi i32 [ 1000, %land.rhs ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i93) #12, !srcloc !336
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i = and i32 %17, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, -2147483648
  br i1 %cmp.not.i, label %do.body.i.mdio_read.exit_crit_edge, label %land.rhs.i

do.body.i.mdio_read.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %boguscnt.0.i, -1
  %cmp6.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp6.not.i, label %land.rhs.i.mdio_read.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

land.rhs.i.mdio_read.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %land.rhs.i.mdio_read.exit_crit_edge, %do.body.i.mdio_read.exit_crit_edge
  %boguscnt.1.i = phi i32 [ 0, %land.rhs.i.mdio_read.exit_crit_edge ], [ %boguscnt.0.i, %do.body.i.mdio_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i)
  %cmp7.i = icmp eq i32 %boguscnt.1.i, 0
  %and8.i = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i)
  %cmp9.i = icmp eq i32 %and8.i, 65535
  %18 = select i1 %cmp7.i, i1 true, i1 %cmp9.i
  %.op = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.op)
  %tobool8.not115 = icmp eq i32 %.op, 0
  %tobool8.not = select i1 %18, i1 true, i1 %tobool8.not115
  br i1 %tobool8.not, label %if.end, label %mdio_read.exit.while.cond_crit_edge

mdio_read.exit.while.cond_crit_edge:              ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

do.end.critedge:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %dev) #15
  br label %cleanup

if.end:                                           ; preds = %mdio_read.exit
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phys, align 4
  %conv13 = zext i8 %20 to i32
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %add.ptr.i95 = getelementptr i8, ptr %22, i32 335872
  %shl.i96 = shl nuw nsw i32 %conv13, 7
  %add.ptr1.i97 = getelementptr i8, ptr %add.ptr.i95, i32 %shl.i96
  br label %do.body.i101

do.body.i101:                                     ; preds = %land.rhs.i104.do.body.i101_crit_edge, %if.end
  %boguscnt.0.i98 = phi i32 [ 1000, %if.end ], [ %dec.i102, %land.rhs.i104.do.body.i101_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i97) #12, !srcloc !336
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !339
  %and.i99 = and i32 %24, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and.i99)
  %cmp.not.i100 = icmp eq i32 %and.i99, -2147483648
  br i1 %cmp.not.i100, label %do.body.i101.mdio_read.exit110_crit_edge, label %land.rhs.i104

do.body.i101.mdio_read.exit110_crit_edge:         ; preds = %do.body.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit110

land.rhs.i104:                                    ; preds = %do.body.i101
  %dec.i102 = add nsw i32 %boguscnt.0.i98, -1
  %cmp6.not.i103 = icmp eq i32 %dec.i102, 0
  br i1 %cmp6.not.i103, label %land.rhs.i104.mdio_read.exit110_crit_edge, label %land.rhs.i104.do.body.i101_crit_edge

land.rhs.i104.do.body.i101_crit_edge:             ; preds = %land.rhs.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i101

land.rhs.i104.mdio_read.exit110_crit_edge:        ; preds = %land.rhs.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdio_read.exit110

mdio_read.exit110:                                ; preds = %land.rhs.i104.mdio_read.exit110_crit_edge, %do.body.i101.mdio_read.exit110_crit_edge
  %boguscnt.1.i105 = phi i32 [ 0, %land.rhs.i104.mdio_read.exit110_crit_edge ], [ %boguscnt.0.i98, %do.body.i101.mdio_read.exit110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boguscnt.1.i105)
  %cmp7.i106 = icmp eq i32 %boguscnt.1.i105, 0
  %and8.i107 = and i32 %24, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and8.i107)
  %cmp9.i108 = icmp eq i32 %and8.i107, 65535
  %25 = select i1 %cmp7.i106, i1 true, i1 %cmp9.i108
  %force_media = getelementptr i8, ptr %dev, i32 5632
  %26 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %force_media, align 8
  %27 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool17.not = icmp eq i8 %27, 0
  %28 = trunc i32 %24 to i16
  %29 = select i1 %25, i16 0, i16 %28
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %mdio_read.exit110
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = or i16 %29, 4608
  br label %if.end56

if.else:                                          ; preds = %mdio_read.exit110
  call void @__sanitizer_cov_trace_pc() #14
  %conv23 = and i16 %29, -4609
  %speed100 = getelementptr i8, ptr %dev, i32 5600
  %30 = ptrtoint ptr %speed100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not = icmp eq i32 %31, 0
  %32 = or i16 %conv23, 8192
  %spec.select = select i1 %tobool24.not, i16 %conv23, i16 %32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool34.not = icmp sgt i8 %bf.load, -1
  %33 = or i16 %spec.select, 256
  %reg0.1 = select i1 %tobool34.not, i16 %spec.select, i16 %33
  %cond = select i1 %tobool24.not, ptr @.str.82, ptr @.str.81
  %cond54 = select i1 %tobool34.not, ptr @.str.84, ptr @.str.83
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %dev, ptr noundef nonnull %cond, ptr noundef nonnull %cond54) #15
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then18
  %reg0.2 = phi i16 [ %reg0.1, %if.else ], [ %conv20, %if.then18 ]
  %34 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %phys, align 4
  %conv59 = zext i8 %35 to i32
  %conv60 = zext i16 %reg0.2 to i32
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %37, i32 335872
  %shl.i113 = shl nuw nsw i32 %conv59, 7
  %add.ptr1.i114 = getelementptr i8, ptr %add.ptr.i112, i32 %shl.i113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !338
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv60) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i114, i32 %38) #12, !srcloc !333
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %pci_dev = getelementptr i8, ptr %dev, i32 5004
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
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef readnone %dev, i32 noundef %val) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %val, ptr @debug, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 5616
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 5616
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #12
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_if_running(ptr noundef %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %. = select i1 %tobool.i.not, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 5532
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii_if = getelementptr i8, ptr %dev, i32 5616
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 5532
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii_if = getelementptr i8, ptr %dev, i32 5616
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call fastcc void @check_duplex(ptr noundef %dev)
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfire_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
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
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_device_detach(ptr noundef %1) #12
  %call2 = tail call i32 @netdev_close(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @starfire_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
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
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @netdev_open(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !157, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 166, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 167, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 168, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware347, !8, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 169, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware348, !10, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 170, i32 1}
!11 = !{ptr @__param_max_interrupt_work, !12, !"__param_max_interrupt_work", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 172, i32 1}
!13 = !{ptr @__UNIQUE_ID_max_interrupt_worktype349, !12, !"__UNIQUE_ID_max_interrupt_worktype349", i1 false, i1 false}
!14 = !{ptr @__param_mtu, !15, !"__param_mtu", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 173, i32 1}
!16 = !{ptr @__UNIQUE_ID_mtutype350, !15, !"__UNIQUE_ID_mtutype350", i1 false, i1 false}
!17 = !{ptr @__param_debug, !18, !"__param_debug", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 174, i32 1}
!19 = !{ptr @__UNIQUE_ID_debugtype351, !18, !"__UNIQUE_ID_debugtype351", i1 false, i1 false}
!20 = !{ptr @__param_rx_copybreak, !21, !"__param_rx_copybreak", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 175, i32 1}
!22 = !{ptr @__UNIQUE_ID_rx_copybreaktype352, !21, !"__UNIQUE_ID_rx_copybreaktype352", i1 false, i1 false}
!23 = !{ptr @__param_intr_latency, !24, !"__param_intr_latency", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 176, i32 1}
!25 = !{ptr @__UNIQUE_ID_intr_latencytype353, !24, !"__UNIQUE_ID_intr_latencytype353", i1 false, i1 false}
!26 = !{ptr @__param_small_frames, !27, !"__param_small_frames", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 177, i32 1}
!28 = !{ptr @__UNIQUE_ID_small_framestype354, !27, !"__UNIQUE_ID_small_framestype354", i1 false, i1 false}
!29 = !{ptr @__param_enable_hw_cksum, !30, !"__param_enable_hw_cksum", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 178, i32 1}
!31 = !{ptr @__UNIQUE_ID_enable_hw_cksumtype355, !30, !"__UNIQUE_ID_enable_hw_cksumtype355", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_max_interrupt_work356, !33, !"__UNIQUE_ID_max_interrupt_work356", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 179, i32 1}
!34 = !{ptr @__UNIQUE_ID_mtu357, !35, !"__UNIQUE_ID_mtu357", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 180, i32 1}
!36 = !{ptr @__UNIQUE_ID_debug358, !37, !"__UNIQUE_ID_debug358", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 181, i32 1}
!38 = !{ptr @__UNIQUE_ID_rx_copybreak359, !39, !"__UNIQUE_ID_rx_copybreak359", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 182, i32 1}
!40 = !{ptr @__UNIQUE_ID_intr_latency360, !41, !"__UNIQUE_ID_intr_latency360", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 183, i32 1}
!42 = !{ptr @__UNIQUE_ID_small_frames361, !43, !"__UNIQUE_ID_small_frames361", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 184, i32 1}
!44 = !{ptr @__UNIQUE_ID_enable_hw_cksum362, !45, !"__UNIQUE_ID_enable_hw_cksum362", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 185, i32 1}
!46 = !{ptr @__initcall__kmod_starfire__364_2073_starfire_init6, !47, !"__initcall__kmod_starfire__364_2073_starfire_init6", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 2073, i32 1}
!48 = !{ptr @__exitcall_starfire_cleanup, !49, !"__exitcall_starfire_cleanup", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 2074, i32 1}
!50 = !{ptr @intr_latency, !51, !"intr_latency", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 75, i32 12}
!52 = !{ptr @small_frames, !53, !"small_frames", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 76, i32 12}
!54 = !{ptr @mtu, !55, !"mtu", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 80, i32 12}
!56 = !{ptr @rx_copybreak, !57, !"rx_copybreak", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 105, i32 12}
!58 = !{ptr @__param_str_max_interrupt_work, !12, !"__param_str_max_interrupt_work", i1 false, i1 false}
!59 = !{ptr @max_interrupt_work, !60, !"max_interrupt_work", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 79, i32 12}
!61 = !{ptr @__param_str_mtu, !15, !"__param_str_mtu", i1 false, i1 false}
!62 = !{ptr @__param_str_debug, !18, !"__param_str_debug", i1 false, i1 false}
!63 = !{ptr @debug, !64, !"debug", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 78, i32 12}
!65 = !{ptr @__param_str_rx_copybreak, !21, !"__param_str_rx_copybreak", i1 false, i1 false}
!66 = !{ptr @__param_str_intr_latency, !24, !"__param_str_intr_latency", i1 false, i1 false}
!67 = !{ptr @__param_str_small_frames, !27, !"__param_str_small_frames", i1 false, i1 false}
!68 = !{ptr @__param_str_enable_hw_cksum, !30, !"__param_str_enable_hw_cksum", i1 false, i1 false}
!69 = !{ptr @enable_hw_cksum, !70, !"enable_hw_cksum", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 85, i32 12}
!71 = !{ptr @.str, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 2046, i32 11}
!73 = !{ptr @starfire_driver, !74, !"starfire_driver", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 2045, i32 26}
!75 = !{ptr @starfire_pci_tbl, !76, !"starfire_pci_tbl", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 280, i32 35}
!77 = !{ptr @.str.1, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 656, i32 3}
!79 = !{ptr @.str.2, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.3, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.4, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.5, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @starfire_init_one._entry, !78, !"_entry", i1 false, i1 false}
!84 = !{ptr @starfire_init_one._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.7, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 669, i32 3}
!87 = !{ptr @starfire_init_one._entry.6, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @starfire_init_one._entry_ptr.8, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.10, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 675, i32 3}
!91 = !{ptr @starfire_init_one._entry.9, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @starfire_init_one._entry_ptr.11, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.13, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 706, i32 4}
!95 = !{ptr @starfire_init_one._entry.12, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @starfire_init_one._entry_ptr.14, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.15, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.18, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 725, i32 3}
!101 = !{ptr @starfire_init_one._entry.17, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @starfire_init_one._entry_ptr.19, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @starfire_init_one.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 732, i32 2}
!105 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.22, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 766, i32 5}
!108 = !{ptr @starfire_init_one._entry.21, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @starfire_init_one._entry_ptr.23, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.25, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 783, i32 2}
!112 = !{ptr @starfire_init_one._entry.24, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @starfire_init_one._entry_ptr.26, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 798, i32 5}
!116 = !{ptr @starfire_init_one._entry.27, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @starfire_init_one._entry_ptr.29, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 805, i32 5}
!120 = !{ptr @starfire_init_one._entry.30, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @starfire_init_one._entry_ptr.32, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 819, i32 2}
!124 = !{ptr @starfire_init_one._entry.33, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @starfire_init_one._entry_ptr.35, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 291, i32 4}
!130 = distinct !{null, !131, !"netdrv_tbl", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 290, i32 3}
!132 = !{ptr @netdev_ops, !133, !"netdev_ops", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 621, i32 36}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 881, i32 3}
!136 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @netdev_open._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @netdev_open._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 949, i32 3}
!141 = !{ptr @netdev_open._entry.41, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @netdev_open._entry_ptr.43, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 983, i32 3}
!145 = !{ptr @netdev_open._entry.44, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @netdev_open._entry_ptr.46, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1006, i32 36}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1008, i32 3}
!151 = !{ptr @netdev_open._entry.48, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @netdev_open._entry_ptr.50, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1013, i32 3}
!155 = !{ptr @netdev_open._entry.51, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @netdev_open._entry_ptr.53, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1018, i32 36}
!159 = !{ptr @netdev_open._entry.55, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1020, i32 3}
!161 = !{ptr @netdev_open._entry_ptr.56, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @netdev_open._entry.57, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1025, i32 3}
!164 = !{ptr @netdev_open._entry_ptr.58, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.60, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1048, i32 3}
!167 = !{ptr @netdev_open._entry.59, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @netdev_open._entry_ptr.61, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1315, i32 4}
!171 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @intr_handler._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @intr_handler._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1337, i32 6}
!176 = !{ptr @intr_handler._entry.64, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @intr_handler._entry_ptr.66, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1351, i32 4}
!180 = !{ptr @intr_handler._entry.67, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @intr_handler._entry_ptr.69, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1356, i32 5}
!184 = !{ptr @intr_handler._entry.70, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @intr_handler._entry_ptr.72, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1410, i32 5}
!188 = !{ptr @intr_handler._entry.73, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @intr_handler._entry_ptr.75, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1418, i32 3}
!192 = !{ptr @intr_handler._entry.76, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @intr_handler._entry_ptr.78, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1662, i32 3}
!196 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @netdev_media_change._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @netdev_media_change._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.82, !195, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1686, i32 3}
!205 = !{ptr @netdev_media_change._entry.85, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @netdev_media_change._entry_ptr.87, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1699, i32 4}
!209 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @netdev_error._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @netdev_error._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1702, i32 4}
!214 = !{ptr @netdev_error._entry.90, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @netdev_error._entry_ptr.92, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1713, i32 3}
!218 = !{ptr @netdev_error._entry.93, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @netdev_error._entry_ptr.95, !217, !"_entry_ptr", i1 false, i1 false}
!220 = distinct !{null, !221, !"__already_done", i1 false, i1 false}
!221 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!222 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1074, i32 3}
!226 = !{ptr @.str.99, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @check_duplex._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @check_duplex._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1088, i32 3}
!231 = !{ptr @check_duplex._entry.100, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @check_duplex._entry_ptr.102, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1936, i32 3}
!235 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @netdev_close._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @netdev_close._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1938, i32 3}
!240 = !{ptr @netdev_close._entry.105, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @netdev_close._entry_ptr.107, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1951, i32 3}
!244 = !{ptr @netdev_close._entry.108, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @netdev_close._entry_ptr.110, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1954, i32 4}
!248 = !{ptr @netdev_close._entry.111, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @netdev_close._entry_ptr.113, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1958, i32 3}
!252 = !{ptr @netdev_close._entry.114, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @netdev_close._entry_ptr.116, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1962, i32 5}
!256 = !{ptr @netdev_close._entry.117, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @netdev_close._entry_ptr.119, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.120, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1246, i32 4}
!260 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @start_tx._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @start_tx._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.122, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1103, i32 2}
!265 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @tx_timeout._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @tx_timeout._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.124, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 596, i32 3}
!270 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @netdev_vlan_rx_add_vid._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @netdev_vlan_rx_add_vid._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 611, i32 3}
!275 = !{ptr @.str.127, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @netdev_vlan_rx_kill_vid._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @netdev_vlan_rx_kill_vid._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @ethtool_ops, !279, !"ethtool_ops", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1895, i32 33}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1576, i32 3}
!282 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @netdev_poll._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @netdev_poll._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1442, i32 4}
!287 = !{ptr @.str.131, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @__netdev_rx._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @__netdev_rx._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1446, i32 5}
!292 = !{ptr @__netdev_rx._entry.132, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @__netdev_rx._entry_ptr.134, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.136, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1463, i32 4}
!296 = !{ptr @__netdev_rx._entry.135, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @__netdev_rx._entry_ptr.137, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.139, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1489, i32 4}
!300 = !{ptr @__netdev_rx._entry.138, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @__netdev_rx._entry_ptr.140, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.142, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1498, i32 4}
!304 = !{ptr @__netdev_rx._entry.141, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @__netdev_rx._entry_ptr.143, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1516, i32 4}
!308 = !{ptr @__netdev_rx._entry.144, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @__netdev_rx._entry_ptr.146, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.148, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1523, i32 5}
!312 = !{ptr @__netdev_rx._entry.147, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @__netdev_rx._entry_ptr.149, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 1547, i32 3}
!316 = !{ptr @__netdev_rx._entry.150, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @__netdev_rx._entry_ptr.152, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @starfire_pm_ops, !319, !"starfire_pm_ops", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/adaptec/starfire.c", i32 2043, i32 8}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{i64 4259282}
!330 = !{i64 2156670448}
!331 = !{i64 2156672084}
!332 = !{i64 2156672303}
!333 = !{i64 4259084}
!334 = !{i64 2156673263}
!335 = !{i64 2156673645}
!336 = !{i64 4259502}
!337 = !{i64 2156674867}
!338 = !{i64 2156689766}
!339 = !{i64 2156689558}
!340 = !{!"branch_weights", i32 1, i32 2000}
!341 = !{i64 2156811235, i64 2156811740, i64 2156811272, i64 2156811328, i64 2156811362, i64 2156811386, i64 2156811427, i64 2156811448, i64 2156811476, i64 2156811510}
!342 = !{i64 2156762276}
!343 = !{i64 2156758965}
!344 = !{i64 4258464}
!345 = !{!"branch_weights", i32 2000, i32 1}
!346 = !{i64 2156766165}
!347 = !{i64 2156763009}
!348 = !{i64 2156763503}
!349 = !{i64 2156763727}
!350 = !{!"auto-init"}
!351 = !{i64 2156690161}
!352 = !{i64 2156690548}
!353 = !{i64 2156727946}
!354 = !{i64 2156692880}
!355 = !{i64 2156693970}
!356 = !{i64 2156694973}
!357 = !{i64 2156695865}
!358 = !{i64 2156696375}
!359 = !{i64 2156696888}
!360 = !{i64 2156697384}
!361 = !{i64 2156697825}
!362 = !{i64 2156698273}
!363 = !{i64 2156698798}
!364 = !{i64 2156700938}
!365 = !{i64 4258887}
!366 = !{i64 2156701236}
!367 = !{i64 2156701635}
!368 = !{i64 2156702038}
!369 = !{i64 2156702512}
!370 = !{i64 2156703078}
!371 = !{i64 2156703644}
!372 = !{i64 2156704151}
!373 = !{i64 2156705167}
!374 = !{i64 2156705594}
!375 = !{i64 2156706046}
!376 = !{i64 2156708004}
!377 = !{i64 2156708559}
!378 = !{i64 2156710164}
!379 = !{i64 2156711126}
!380 = !{i64 2156711362}
!381 = !{i64 2156718205}
!382 = !{i64 2156718737}
!383 = !{i64 2156800104}
!384 = !{i64 2156802035}
!385 = !{i64 2156802417}
!386 = !{i64 2156803067}
!387 = !{i64 2156731078}
!388 = !{i64 2156731334}
!389 = !{i64 2156784165}
!390 = !{i64 2156788586}
!391 = !{i64 2156789156}
!392 = !{i64 2156789726}
!393 = !{i64 2156790364}
!394 = !{i64 2156790934}
!395 = !{i64 2156791504}
!396 = !{i64 2156795665}
!397 = !{i64 2156796235}
!398 = !{i64 2156796805}
!399 = !{i64 2156797296}
!400 = !{i64 2156797714}
!401 = !{i64 2156727367}
!402 = !{i64 2156777436}
!403 = !{i64 2156777918}
!404 = !{i64 2156778400}
!405 = !{i64 2156778882}
!406 = !{i64 2156779364}
!407 = !{i64 2156779846}
!408 = !{i64 2156780328}
!409 = !{i64 2156780810}
!410 = !{i64 4258664}
!411 = !{i64 2156781308}
!412 = !{i64 2156781523}
!413 = !{i64 2156782177}
!414 = !{i64 2156782659}
!415 = !{i64 2156783141}
!416 = !{i64 2156783623}
!417 = !{i64 2156732506}
!418 = !{i64 2156734564}
!419 = !{i64 2156734783}
!420 = !{i64 2156735463}
!421 = !{i64 2156735957}
!422 = !{i64 2156737657}
!423 = !{i64 2156738349}
!424 = !{i64 2156742353}
!425 = !{i64 2156768434}
!426 = !{i64 2156769450}
!427 = !{i64 2156769882}
!428 = !{i64 2156771758}
!429 = !{i64 2156746369}
