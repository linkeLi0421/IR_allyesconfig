; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/packetengines/yellowfin.c_pt.bc'
source_filename = "../drivers/net/ethernet/packetengines/yellowfin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_id_info = type { ptr, %struct.match_info, i32 }
%struct.match_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.yellowfin_private = type { ptr, ptr, [64 x ptr], [16 x ptr], i32, i32, ptr, i32, %struct.timer_list, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i16, [4 x i8], %struct.spinlock, ptr }
%struct.yellowfin_desc = type { i32, i32, i32, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.tx_status_words = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author341 = internal constant [50 x i8] c"yellowfin.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [77 x i8] c"yellowfin.description=Packet Engines Yellowfin G-NIC Gigabit Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [60 x i8] c"yellowfin.file=drivers/net/ethernet/packetengines/yellowfin\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [22 x i8] c"yellowfin.license=GPL\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [29 x i8] c"yellowfin.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype345 = internal constant [42 x i8] c"yellowfin.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_mtu = internal constant [14 x i8] c"yellowfin.mtu\00", align 1
@mtu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mtu = internal constant %struct.kernel_param { ptr @__param_str_mtu, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mtu } }, section "__param", align 4
@__UNIQUE_ID_mtutype346 = internal constant [27 x i8] c"yellowfin.parmtype=mtu:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"yellowfin.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype347 = internal constant [29 x i8] c"yellowfin.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [23 x i8] c"yellowfin.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype348 = internal constant [36 x i8] c"yellowfin.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [18 x i8] c"yellowfin.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype349 = internal constant [40 x i8] c"yellowfin.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [22 x i8] c"yellowfin.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype350 = internal constant [44 x i8] c"yellowfin.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__param_str_gx_fix = internal constant [17 x i8] c"yellowfin.gx_fix\00", align 1
@gx_fix = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_gx_fix = internal constant %struct.kernel_param { ptr @__param_str_gx_fix, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @gx_fix } }, section "__param", align 4
@__UNIQUE_ID_gx_fixtype351 = internal constant [30 x i8] c"yellowfin.parmtype=gx_fix:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work352 = internal constant [77 x i8] c"yellowfin.parm=max_interrupt_work:G-NIC maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_mtu353 = internal constant [42 x i8] c"yellowfin.parm=mtu:G-NIC MTU (all boards)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug354 = internal constant [45 x i8] c"yellowfin.parm=debug:G-NIC debug level (0-7)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak355 = internal constant [76 x i8] c"yellowfin.parm=rx_copybreak:G-NIC copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_options356 = internal constant [72 x i8] c"yellowfin.parm=options:G-NIC: Bits 0-3: media type, bit 17: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex357 = internal constant [60 x i8] c"yellowfin.parm=full_duplex:G-NIC full duplex setting(s) (1)\00", section ".modinfo", align 1
@__UNIQUE_ID_gx_fix358 = internal constant [75 x i8] c"yellowfin.parm=gx_fix:G-NIC: enable GX server chipset bug workaround (0-1)\00", section ".modinfo", align 1
@yellowfin_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @yellowfin_pci_tbl, ptr @yellowfin_init_one, ptr @yellowfin_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_yellowfin__359_1437_yellowfin_init6 = internal global ptr @yellowfin_init, section ".initcall6.init", align 4
@__exitcall_yellowfin_cleanup = internal global ptr @yellowfin_cleanup, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yellowfin\00", [22 x i8] zeroinitializer }, align 32
@yellowfin_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4096, i32 1794, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4096, i32 1793, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@yellowfin_init_one.find_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pci_id_tbl = internal constant { [3 x %struct.pci_id_info], [32 x i8] } { [3 x %struct.pci_id_info] [%struct.pci_id_info { ptr @.str.6, %struct.match_info { i32 117575680, i32 -1, i32 0, i32 0, i32 0, i32 0 }, i32 110 }, %struct.pci_id_info { ptr @.str.7, %struct.match_info { i32 117510144, i32 -1, i32 0, i32 0, i32 0, i32 0 }, i32 65 }, %struct.pci_id_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@yellowfin_init_one.printed_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@yellowfin_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yellowfin_init_one\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/packetengines/yellowfin.c\00", [49 x i8] zeroinitializer }, align 32
@yellowfin_init_one._entry_ptr = internal global ptr @yellowfin_init_one._entry, section ".printk_index", align 4
@version = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\016yellowfin.c:v1.05  1/09/2001  Written by Donald Becker <becker@scyld.com>\0A  (unofficial 2.4.x port, 2.1, Sep 11, 2006)\0A\00", [38 x i8] zeroinitializer }, align 32
@yellowfin_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @yellowfin_open, ptr @yellowfin_close, ptr @yellowfin_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yellowfin_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @yellowfin_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s type %8x at %p, %pM, IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"MII PHY found at address %d, status 0x%04x advertising %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Yellowfin G-NIC Gigabit Ethernet\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Symbios SYM83C885\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Done %s()\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.yellowfin_open = private unnamed_addr constant [15 x i8] c"yellowfin_open\00", align 1
@yellowfin_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&yp->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Yellowfin interrupt, status %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Too much work at interrupt, status=%#04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"exiting interrupt, status=%#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017 In yellowfin_rx(), entry %d status %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yellowfin_rx\00", [19 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry_ptr = internal global ptr @yellowfin_rx._entry, section ".printk_index", align 4
@yellowfin_rx._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017   #%d desc. %08x %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry_ptr.18 = internal global ptr @yellowfin_rx._entry.16, section ".printk_index", align 4
@yellowfin_rx._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017  %s() status was %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry_ptr.21 = internal global ptr @yellowfin_rx._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %04x, data_size %d!\0A\00", [49 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017  %s() Rx error was %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry_ptr.25 = internal global ptr @yellowfin_rx._entry.23, section ".printk_index", align 4
@yellowfin_rx._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017  %s() normal Rx pkt length %d of %d, bogus_cnt %d\0A\00", [42 x i8] zeroinitializer }, align 32
@yellowfin_rx._entry_ptr.28 = internal global ptr @yellowfin_rx._entry.26, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Something Wicked happened! %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Yellowfin timer tick, status %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"MII #%d status register is %04x, link partner capability %04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Shutting down ethercard, status was Tx %04x Rx %04x Int %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Queue pointers were Tx %d / %d,  Rx %d / %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Yellowfin transmit frame #%d queued in slot %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Yellowfin transmit timed out at %d/%d Tx status %04x, Rx status %04x, resetting...\0A\00", [44 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014yellowfin:   Rx ring %p: \00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"yellowfin_tx_timeout\00", [43 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr = internal global ptr @yellowfin_tx_timeout._entry, section ".printk_index", align 4
@yellowfin_tx_timeout._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %08x\00", [24 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr.42 = internal global ptr @yellowfin_tx_timeout._entry.40, section ".printk_index", align 4
@yellowfin_tx_timeout._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr.45 = internal global ptr @yellowfin_tx_timeout._entry.43, section ".printk_index", align 4
@yellowfin_tx_timeout._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014yellowfin:   Tx ring %p: \00", [36 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr.48 = internal global ptr @yellowfin_tx_timeout._entry.46, section ".printk_index", align 4
@yellowfin_tx_timeout._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c %04x /%08x\00", [18 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr.51 = internal global ptr @yellowfin_tx_timeout._entry.49, section ".printk_index", align 4
@yellowfin_tx_timeout._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@yellowfin_tx_timeout._entry_ptr.53 = internal global ptr @yellowfin_tx_timeout._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 64]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4]
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 37, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 38, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 35, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 54, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"gx_fix\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 65, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"yellowfin_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1413, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 61, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 62, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1414, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"yellowfin_pci_tbl\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 239, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"find_cnt\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 376, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"pci_id_tbl\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 231, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"printed_version\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 391, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 393, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 109, i32 19 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 432, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 358, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1348, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 489, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 501, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 232, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 234, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 638, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 638, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 642, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 914, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1029, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1036, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1052, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1054, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1079, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1088, i32 22 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1094, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1130, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 326, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1192, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 661, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 670, i32 35 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1209, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1213, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 889, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 692, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 700, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 702, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 703, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 704, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 706, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 709, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [50 x i8] c"../drivers/net/ethernet/packetengines/yellowfin.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 1344, i32 25 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_debug354, ptr @__UNIQUE_ID_debugtype347, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_full_duplex357, ptr @__UNIQUE_ID_full_duplextype350, ptr @__UNIQUE_ID_gx_fix358, ptr @__UNIQUE_ID_gx_fixtype351, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_max_interrupt_work352, ptr @__UNIQUE_ID_max_interrupt_worktype345, ptr @__UNIQUE_ID_mtu353, ptr @__UNIQUE_ID_mtutype346, ptr @__UNIQUE_ID_options356, ptr @__UNIQUE_ID_optionstype349, ptr @__UNIQUE_ID_rx_copybreak355, ptr @__UNIQUE_ID_rx_copybreaktype348, ptr @__exitcall_yellowfin_cleanup, ptr @__initcall__kmod_yellowfin__359_1437_yellowfin_init6, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_gx_fix, ptr @__param_max_interrupt_work, ptr @__param_mtu, ptr @__param_options, ptr @__param_rx_copybreak, ptr @yellowfin_cleanup, ptr @yellowfin_init_one._entry, ptr @yellowfin_init_one._entry_ptr, ptr @yellowfin_rx._entry, ptr @yellowfin_rx._entry.16, ptr @yellowfin_rx._entry.19, ptr @yellowfin_rx._entry.23, ptr @yellowfin_rx._entry.26, ptr @yellowfin_rx._entry_ptr, ptr @yellowfin_rx._entry_ptr.18, ptr @yellowfin_rx._entry_ptr.21, ptr @yellowfin_rx._entry_ptr.25, ptr @yellowfin_rx._entry_ptr.28, ptr @yellowfin_tx_timeout._entry, ptr @yellowfin_tx_timeout._entry.40, ptr @yellowfin_tx_timeout._entry.43, ptr @yellowfin_tx_timeout._entry.46, ptr @yellowfin_tx_timeout._entry.49, ptr @yellowfin_tx_timeout._entry.52, ptr @yellowfin_tx_timeout._entry_ptr, ptr @yellowfin_tx_timeout._entry_ptr.42, ptr @yellowfin_tx_timeout._entry_ptr.45, ptr @yellowfin_tx_timeout._entry_ptr.48, ptr @yellowfin_tx_timeout._entry_ptr.51, ptr @yellowfin_tx_timeout._entry_ptr.53, ptr @max_interrupt_work, ptr @mtu, ptr @debug, ptr @rx_copybreak, ptr @gx_fix, ptr @yellowfin_driver, ptr @options, ptr @full_duplex, ptr @.str, ptr @yellowfin_pci_tbl, ptr @yellowfin_init_one.find_cnt, ptr @pci_id_tbl, ptr @yellowfin_init_one.printed_version, ptr @.str.1, ptr @.str.2, ptr @version, ptr @yellowfin_init_one.__key, ptr @.str.3, ptr @netdev_ops, ptr @ethtool_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @yellowfin_open.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.54], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gx_fix to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_init_one.find_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_init_one.printed_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_rx._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_rx._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_rx._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_rx._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yellowfin_tx_timeout._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yellowfin_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @yellowfin_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @yellowfin_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ring_dma = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = load i32, ptr @yellowfin_init_one.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [8 x i32], ptr @options, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %arrayidx1 = getelementptr [3 x %struct.pci_id_info], ptr @pci_id_tbl, i32 0, i32 %1
  %drv_flags2 = getelementptr [3 x %struct.pci_id_info], ptr @pci_id_tbl, i32 0, i32 %1, i32 2
  %5 = ptrtoint ptr %drv_flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_flags2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #9
  %7 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ring_dma, align 4, !annotation !194
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %9 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %10 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %12 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %13 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %14 = load i32, ptr @yellowfin_init_one.printed_version, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @yellowfin_init_one.printed_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %do.end, label %cond.end.if.end4_crit_edge

cond.end.if.end4_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %cond.end.if.end4_crit_edge
  %call5 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @alloc_etherdev_mqs(i32 noundef 496, i32 noundef 1, i32 noundef 1) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev13, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.err_out_free_netdev_crit_edge

if.end12.err_out_free_netdev_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_free_netdev

if.end19:                                         ; preds = %if.end12
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call20 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 256) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.err_out_free_res_crit_edge, label %if.end23

if.end19.err_out_free_res_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_free_res

if.end23:                                         ; preds = %if.end19
  %irq24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %16 = ptrtoint ptr %irq24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq24, align 4
  %18 = and i32 %1, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %tobool25.not = icmp eq i32 %18, 2
  br i1 %tobool25.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call20, i32 210
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %addr, align 1
  %add.ptr28.1 = getelementptr i8, ptr %call20, i32 211
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.1) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %8, align 1
  %add.ptr28.2 = getelementptr i8, ptr %call20, i32 212
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.2) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %9, align 1
  %add.ptr28.3 = getelementptr i8, ptr %call20, i32 213
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.3) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %10, align 1
  %add.ptr28.4 = getelementptr i8, ptr %call20, i32 214
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.4) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %11, align 1
  %add.ptr28.5 = getelementptr i8, ptr %call20, i32 215
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.5) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %12, align 1
  br label %if.end43

if.else:                                          ; preds = %if.end23
  %add.ptr.i271 = getelementptr i8, ptr %call20, i32 242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i271, i8 6) #9, !srcloc !198
  %add.ptr2.i = getelementptr i8, ptr %call20, i32 241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 48) #9, !srcloc !198
  %add.ptr3.i = getelementptr i8, ptr %call20, i32 240
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.else
  %bogus_cnt.0.i = phi i32 [ 10000, %if.else ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp slt i8 %31, 0
  %dec.i = add nsw i32 %bogus_cnt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %read_eeprom.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

read_eeprom.exit:                                 ; preds = %while.cond.i
  %add.ptr7.i = getelementptr i8, ptr %call20, i32 243
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp33 = icmp eq i8 %32, -1
  %cond34 = select i1 %cmp33, i32 256, i32 0
  br label %for.body37

for.body37:                                       ; preds = %read_eeprom.exit283.for.body37_crit_edge, %read_eeprom.exit
  %i.1288 = phi i32 [ 0, %read_eeprom.exit ], [ %inc41, %read_eeprom.exit283.for.body37_crit_edge ]
  %add = add nuw nsw i32 %i.1288, %cond34
  %conv.i = trunc i32 %add to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i271, i8 %conv.i) #9, !srcloc !198
  %33 = lshr i32 %add, 8
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 7
  %conv1.i = or i8 %35, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 %conv1.i) #9, !srcloc !198
  br label %while.cond.i280

while.cond.i280:                                  ; preds = %while.cond.i280.while.cond.i280_crit_edge, %for.body37
  %bogus_cnt.0.i275 = phi i32 [ 10000, %for.body37 ], [ %dec.i277, %while.cond.i280.while.cond.i280_crit_edge ]
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i276 = icmp slt i8 %36, 0
  %dec.i277 = add nsw i32 %bogus_cnt.0.i275, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i277)
  %cmp.i278 = icmp ne i32 %dec.i277, 0
  %or.cond.i279 = select i1 %tobool.not.i276, i1 %cmp.i278, i1 false
  br i1 %or.cond.i279, label %while.cond.i280.while.cond.i280_crit_edge, label %read_eeprom.exit283

while.cond.i280.while.cond.i280_crit_edge:        ; preds = %while.cond.i280
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i280

read_eeprom.exit283:                              ; preds = %while.cond.i280
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i) #9, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  %arrayidx39 = getelementptr [6 x i8], ptr %addr, i32 0, i32 %i.1288
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx39, align 1
  %inc41 = add nuw nsw i32 %i.1288, 1
  %exitcond.not = icmp eq i32 %inc41, 6
  br i1 %exitcond.not, label %read_eeprom.exit283.if.end43_crit_edge, label %read_eeprom.exit283.for.body37_crit_edge

read_eeprom.exit283.for.body37_crit_edge:         ; preds = %read_eeprom.exit283
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

read_eeprom.exit283.if.end43_crit_edge:           ; preds = %read_eeprom.exit283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %read_eeprom.exit283.if.end43_crit_edge, %for.cond.preheader
  call void @dev_addr_mod(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %add.ptr44 = getelementptr i8, ptr %call20, i32 144
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 128) #9, !srcloc !200
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %lock = getelementptr i8, ptr %call9, i32 2752
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @yellowfin_init_one.__key, i16 noundef signext 3) #9
  %pci_dev = getelementptr i8, ptr %call9, i32 2704
  %40 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pdev, ptr %pci_dev, align 4
  %chip_id = getelementptr i8, ptr %call9, i32 2696
  %41 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %1, ptr %chip_id, align 4
  %drv_flags49 = getelementptr i8, ptr %call9, i32 2700
  %42 = ptrtoint ptr %drv_flags49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %6, ptr %drv_flags49, align 4
  %base = getelementptr i8, ptr %call9, i32 2796
  %43 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call20, ptr %base, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool52.not = icmp eq ptr %call.i, null
  br i1 %tobool52.not, label %if.end43.err_out_cleardev_crit_edge, label %if.end54

if.end43.err_out_cleardev_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_cleardev

if.end54:                                         ; preds = %if.end43
  %tx_ring = getelementptr i8, ptr %call9, i32 2308
  %44 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %tx_ring, align 4
  %45 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call9, i32 2636
  %47 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tx_ring_dma, align 4
  %call.i284 = call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 1024, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool57.not = icmp eq ptr %call.i284, null
  br i1 %tobool57.not, label %if.end54.err_out_unmap_tx_crit_edge, label %if.end59

if.end54.err_out_unmap_tx_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_unmap_tx

if.end59:                                         ; preds = %if.end54
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i284, ptr %add.ptr.i, align 4
  %49 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call9, i32 2632
  %51 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rx_ring_dma, align 4
  %call.i285 = call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 128, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool62.not = icmp eq ptr %call.i285, null
  br i1 %tobool62.not, label %if.end59.err_out_unmap_rx_crit_edge, label %if.end64

if.end59.err_out_unmap_rx_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_unmap_rx

if.end64:                                         ; preds = %if.end59
  %tx_status = getelementptr i8, ptr %call9, i32 2640
  %52 = ptrtoint ptr %tx_status to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i285, ptr %tx_status, align 4
  %53 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ring_dma, align 4
  %tx_status_dma = getelementptr i8, ptr %call9, i32 2644
  %55 = ptrtoint ptr %tx_status_dma to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tx_status_dma, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 4
  %56 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool65.not = icmp eq i32 %57, 0
  %spec.select = select i1 %tobool65.not, i32 %cond, i32 %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp69 = icmp sgt i32 %spec.select, 0
  br i1 %cmp69, label %if.then71, label %if.end64.if.end89_crit_edge

if.end64.if.end89_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then71:                                        ; preds = %if.end64
  %and72 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then71.if.end75_crit_edge, label %if.then74

if.then71.if.end75_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then74:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex = getelementptr i8, ptr %call9, i32 2736
  %58 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.then71.if.end75_crit_edge
  %default_port = getelementptr i8, ptr %call9, i32 2736
  %59 = trunc i32 %spec.select to i8
  %60 = and i8 %59, 15
  %61 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load77 = load i8, ptr %default_port, align 4
  %bf.clear78 = and i8 %bf.load77, -16
  %bf.set79 = or i8 %bf.clear78, %60
  store i8 %bf.set79, ptr %default_port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool83.not = icmp eq i8 %60, 0
  br i1 %tobool83.not, label %if.end75.if.end89_crit_edge, label %if.then84

if.end75.if.end89_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then84:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set87 = or i8 %bf.set79, 16
  %62 = ptrtoint ptr %default_port to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %bf.set87, ptr %default_port, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end75.if.end89_crit_edge, %if.end64.if.end89_crit_edge
  %63 = load i32, ptr @yellowfin_init_one.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp90 = icmp slt i32 %63, 8
  br i1 %cmp90, label %land.lhs.true, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end89
  %arrayidx92 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp93 = icmp sgt i32 %65, 0
  br i1 %cmp93, label %if.then95, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then95:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex96 = getelementptr i8, ptr %call9, i32 2736
  %66 = ptrtoint ptr %full_duplex96 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load97 = load i8, ptr %full_duplex96, align 4
  %bf.set99 = or i8 %bf.load97, 64
  store i8 %bf.set99, ptr %full_duplex96, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %land.lhs.true.if.end100_crit_edge, %if.end89.if.end100_crit_edge
  %full_duplex101 = getelementptr i8, ptr %call9, i32 2736
  %67 = ptrtoint ptr %full_duplex101 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load102 = load i8, ptr %full_duplex101, align 4
  %68 = and i8 %bf.load102, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool105.not = icmp eq i8 %68, 0
  br i1 %tobool105.not, label %if.end100.if.end110_crit_edge, label %if.then106

if.end100.if.end110_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then106:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set109 = or i8 %bf.load102, 32
  %69 = ptrtoint ptr %full_duplex101 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %bf.set109, ptr %full_duplex101, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end100.if.end110_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %70 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 44
  %71 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 115
  %72 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 200, ptr %watchdog_timeo, align 4
  %73 = load i32, ptr @mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool111.not = icmp eq i32 %73, 0
  br i1 %tobool111.not, label %if.end110.if.end113_crit_edge, label %if.then112

if.end110.if.end113_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %mtu = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 20
  %74 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %mtu, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end110.if.end113_crit_edge
  %call114 = call i32 @register_netdev(ptr noundef nonnull %call9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %err_out_unmap_status

if.end117:                                        ; preds = %if.end113
  %75 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx1, align 4
  %add.ptr119 = getelementptr i8, ptr %call20, i32 140
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #9, !srcloc !201
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 86
  %79 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call9, ptr noundef nonnull @.str.4, ptr noundef %76, i32 noundef %78, ptr noundef nonnull %call20, ptr noundef %80, i32 noundef %17) #12
  %81 = ptrtoint ptr %drv_flags49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %drv_flags49, align 4
  %and122 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end117.if.end149_crit_edge, label %for.cond125.preheader

if.end117.if.end149_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

for.cond125.preheader:                            ; preds = %if.end117
  %advertising = getelementptr i8, ptr %call9, i32 2744
  br label %for.body130

for.body130:                                      ; preds = %if.end145.for.body130_crit_edge, %for.cond125.preheader
  %phy_idx.0291 = phi i32 [ 0, %for.cond125.preheader ], [ %phy_idx.1, %if.end145.for.body130_crit_edge ]
  %phy.0289 = phi i32 [ 0, %for.cond125.preheader ], [ %inc147, %if.end145.for.body130_crit_edge ]
  %call131 = call fastcc i32 @mdio_read(ptr noundef nonnull %call20, i32 noundef %phy.0289, i32 noundef 1)
  %83 = zext i32 %call131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call131, label %if.then137 [
    i32 65535, label %for.body130.if.end145_crit_edge
    i32 0, label %for.body130.if.end145_crit_edge293
  ]

for.body130.if.end145_crit_edge293:               ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

for.body130.if.end145_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then137:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  %conv138 = trunc i32 %phy.0289 to i8
  %inc139 = add nsw i32 %phy_idx.0291, 1
  %arrayidx140 = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 22, i32 %phy_idx.0291
  %84 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv138, ptr %arrayidx140, align 1
  %call141 = call fastcc i32 @mdio_read(ptr noundef nonnull %call20, i32 noundef %phy.0289, i32 noundef 4)
  %conv142 = trunc i32 %call141 to i16
  %85 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv142, ptr %advertising, align 4
  %conv144 = and i32 %call141, 65535
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call9, ptr noundef nonnull @.str.5, i32 noundef %phy.0289, i32 noundef %call131, i32 noundef %conv144) #12
  br label %if.end145

if.end145:                                        ; preds = %if.then137, %for.body130.if.end145_crit_edge, %for.body130.if.end145_crit_edge293
  %phy_idx.1 = phi i32 [ %inc139, %if.then137 ], [ %phy_idx.0291, %for.body130.if.end145_crit_edge ], [ %phy_idx.0291, %for.body130.if.end145_crit_edge293 ]
  %inc147 = add nuw nsw i32 %phy.0289, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.0289)
  %cmp126 = icmp ult i32 %phy.0289, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp128 = icmp slt i32 %phy_idx.1, 4
  %or.cond = select i1 %cmp126, i1 %cmp128, i1 false
  br i1 %or.cond, label %if.end145.for.body130_crit_edge, label %for.end148

if.end145.for.body130_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body130

for.end148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  %mii_cnt = getelementptr i8, ptr %call9, i32 2740
  %86 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %phy_idx.1, ptr %mii_cnt, align 4
  br label %if.end149

if.end149:                                        ; preds = %for.end148, %if.end117.if.end149_crit_edge
  %87 = load i32, ptr @yellowfin_init_one.find_cnt, align 4
  %inc150 = add i32 %87, 1
  store i32 %inc150, ptr @yellowfin_init_one.find_cnt, align 4
  br label %cleanup

err_out_unmap_status:                             ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_status, align 4
  %90 = ptrtoint ptr %tx_status_dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_status_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 128, ptr noundef %89, i32 noundef %91, i32 noundef 0) #9
  br label %err_out_unmap_rx

err_out_unmap_rx:                                 ; preds = %err_out_unmap_status, %if.end59.err_out_unmap_rx_crit_edge
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  %94 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 1024, ptr noundef %93, i32 noundef %95, i32 noundef 0) #9
  br label %err_out_unmap_tx

err_out_unmap_tx:                                 ; preds = %err_out_unmap_rx, %if.end54.err_out_unmap_tx_crit_edge
  %96 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_ring, align 4
  %98 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 512, ptr noundef %97, i32 noundef %99, i32 noundef 0) #9
  br label %err_out_cleardev

err_out_cleardev:                                 ; preds = %err_out_unmap_tx, %if.end43.err_out_cleardev_crit_edge
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call20) #9
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_cleardev, %if.end19.err_out_free_res_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_free_res, %if.end12.err_out_free_netdev_crit_edge
  call void @free_netdev(ptr noundef nonnull %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_netdev, %if.end149, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_out_free_netdev ], [ 0, %if.end149 ], [ %call5, %if.end4.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yellowfin_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !203

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/packetengines/yellowfin.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1394, 0\0A.popsection", ""() #9, !srcloc !204
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %tx_status = getelementptr i8, ptr %1, i32 2640
  %2 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_status, align 4
  %tx_status_dma = getelementptr i8, ptr %1, i32 2644
  %4 = ptrtoint ptr %tx_status_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_status_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 128, ptr noundef %3, i32 noundef %5, i32 noundef 0) #9
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2632
  %8 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 1024, ptr noundef %7, i32 noundef %9, i32 noundef 0) #9
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 2636
  %12 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 512, ptr noundef %11, i32 noundef %13, i32 noundef 0) #9
  tail call void @unregister_netdev(ptr noundef nonnull %1) #9
  %base = getelementptr i8, ptr %1, i32 2796
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %15) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @free_netdev(ptr noundef nonnull %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdio_read(ptr noundef %ioaddr, i32 noundef %phy_id, i32 noundef %location) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 8
  %add = add i32 %shl, %location
  %conv = trunc i32 %add to i16
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !206
  %add.ptr1 = getelementptr i8, ptr %ioaddr, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 256) #9, !srcloc !206
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 174
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %2 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp5 = icmp eq i16 %2, 0
  %dec = add nsw i32 %i.014, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014)
  %cmp.not = icmp eq i32 %i.014, 0
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7 = getelementptr i8, ptr %ioaddr, i32 172
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #9, !srcloc !207
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv9 = zext i16 %4 to i32
  ret i32 %conv9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %base = getelementptr i8, ptr %dev, i32 2796
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #9, !srcloc !200
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @yellowfin_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_full.i = getelementptr i8, ptr %dev, i32 2736
  %6 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %tx_full.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %tx_full.i, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2724
  %7 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cur_tx.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2708
  %8 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cur_rx.i, align 4
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2728
  %9 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dirty_tx.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %11)
  %cmp.i = icmp ult i32 %11, 1501
  %add.i = add i32 %11, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 2716
  %12 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2632
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.0117.i = phi i32 [ 0, %if.end ], [ %add4.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buf_sz.i, align 4
  %or.i = or i32 %14, 540016640
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.i = getelementptr %struct.yellowfin_desc, ptr %17, i32 %i.0117.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_dma.i, align 4
  %add4.i = add nuw nsw i32 %i.0117.i, 1
  %rem.i = shl i32 %add4.i, 4
  %mul.i = and i32 %rem.i, 1008
  %add5.i = add i32 %20, %mul.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #9
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %branch_addr.i = getelementptr %struct.yellowfin_desc, ptr %23, i32 %i.0117.i, i32 2
  %24 = ptrtoint ptr %branch_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %branch_addr.i, align 4
  %exitcond.not.i = icmp eq i32 %add4.i, 64
  br i1 %exitcond.not.i, label %for.body.i.for.body10.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc21.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %i.1118.i = phi i32 [ %inc22.i, %for.inc21.i.for.body10.i_crit_edge ], [ 0, %for.body.i.for.body10.i_crit_edge ]
  %25 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_sz.i, align 4
  %add12.i = add i32 %26, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add12.i, i32 noundef 2592) #9
  %arrayidx14.i = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.1118.i
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %arrayidx14.i, align 4
  %cmp15.i = icmp eq ptr %call.i.i, null
  br i1 %cmp15.i, label %for.end23.i, label %if.end.i

if.end.i:                                         ; preds = %for.body10.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr.i112.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i113.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i112.i) #9
  br i1 %call.i113.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.for.inc21.i_crit_edge, label %if.then.i.i, !prof !209

land.rhs.i.i.for.inc21.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc21.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev16.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev16.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %39, %if.end.i.i.i ], [ %37, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %for.inc21.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev16.i, ptr noundef %add.ptr.i112.i, i32 noundef %35) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %add.ptr.i112.i to i32
  %sub.i.i = add i32 %41, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i114.i = getelementptr %struct.page, ptr %40, i32 %shr.i.i
  %and.i.i = and i32 %41, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev16.i, ptr noundef %add.ptr.i114.i, i32 noundef %and.i.i, i32 noundef %35, i32 noundef 2, i32 noundef 0) #9
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.for.inc21.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.for.inc21.i_crit_edge ]
  %42 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %addr.i = getelementptr %struct.yellowfin_desc, ptr %44, i32 %i.1118.i, i32 1
  %45 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %addr.i, align 4
  %inc22.i = add nuw nsw i32 %i.1118.i, 1
  %exitcond122.not.i = icmp eq i32 %inc22.i, 64
  br i1 %exitcond122.not.i, label %for.inc21.i.if.end34.i_crit_edge, label %for.inc21.i.for.body10.i_crit_edge

for.inc21.i.for.body10.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.inc21.i.if.end34.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.end23.i:                                      ; preds = %for.body10.i
  %46 = zext i32 %i.1118.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %i.1118.i, label %for.end23.i.for.body28.i_crit_edge [
    i32 64, label %for.end23.i.if.end34.i_crit_edge
    i32 0, label %for.end23.i.err_free_irq_crit_edge
  ]

for.end23.i.err_free_irq_crit_edge:               ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq

for.end23.i.if.end34.i_crit_edge:                 ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.end23.i.for.body28.i_crit_edge:               ; preds = %for.end23.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end23.i.for.body28.i_crit_edge
  %j.0120.i = phi i32 [ %inc32.i, %for.body28.i.for.body28.i_crit_edge ], [ 0, %for.end23.i.for.body28.i_crit_edge ]
  %arrayidx30.i = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 2, i32 %j.0120.i
  %47 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx30.i, align 4
  tail call void @consume_skb(ptr noundef %48) #9
  %inc32.i = add nuw nsw i32 %j.0120.i, 1
  %exitcond123.not.i = icmp eq i32 %inc32.i, %i.1118.i
  br i1 %exitcond123.not.i, label %for.body28.i.err_free_irq_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

for.body28.i.err_free_irq_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_irq

if.end34.i:                                       ; preds = %for.end23.i.if.end34.i_crit_edge, %for.inc21.i.if.end34.i_crit_edge
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx36.i = getelementptr %struct.yellowfin_desc, ptr %50, i32 63
  %51 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 112, ptr %arrayidx36.i, align 4
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 2712
  %52 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %dirty_rx.i, align 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2636
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %if.end34.i
  %i.2121.i = phi i32 [ 0, %if.end34.i ], [ %add45.i, %for.body41.i.for.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.2121.i
  %53 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx42.i, align 4
  %54 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx43.i = getelementptr %struct.yellowfin_desc, ptr %55, i32 %i.2121.i
  %56 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 112, ptr %arrayidx43.i, align 4
  %57 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_ring_dma.i, align 4
  %add45.i = add nuw nsw i32 %i.2121.i, 1
  %rem46.i = shl i32 %add45.i, 4
  %mul47.i = and i32 %rem46.i, 240
  %add48.i = add i32 %58, %mul47.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %add48.i) #9
  %60 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring.i, align 4
  %branch_addr51.i = getelementptr %struct.yellowfin_desc, ptr %61, i32 %i.2121.i, i32 2
  %62 = ptrtoint ptr %branch_addr51.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %branch_addr51.i, align 4
  %exitcond124.not.i = icmp eq i32 %add45.i, 16
  br i1 %exitcond124.not.i, label %if.end5, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.i

if.end5:                                          ; preds = %for.body41.i
  %63 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx56.i = getelementptr %struct.yellowfin_desc, ptr %64, i32 15
  %65 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3184, ptr %arrayidx56.i, align 4
  %tx_status.i = getelementptr i8, ptr %dev, i32 2640
  %66 = ptrtoint ptr %tx_status.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx_status.i, align 4
  %tx_tail_desc.i = getelementptr i8, ptr %dev, i32 2720
  %68 = ptrtoint ptr %tx_tail_desc.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %tx_tail_desc.i, align 4
  %69 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_ring_dma.i, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %71) #9, !srcloc !200
  %72 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_ring_dma.i, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %74) #9, !srcloc !200
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr9 = getelementptr i8, ptr %5, i32 210
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %78) #9, !srcloc !198
  %79 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %80, i32 1
  %81 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.1, align 1
  %add.ptr10.1 = getelementptr i8, ptr %5, i32 211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.1, i8 %82) #9, !srcloc !198
  %83 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.2, align 1
  %add.ptr10.2 = getelementptr i8, ptr %5, i32 212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.2, i8 %86) #9, !srcloc !198
  %87 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %88, i32 3
  %89 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.3, align 1
  %add.ptr10.3 = getelementptr i8, ptr %5, i32 213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.3, i8 %90) #9, !srcloc !198
  %91 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.4, align 1
  %add.ptr10.4 = getelementptr i8, ptr %5, i32 214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.4, i8 %94) #9, !srcloc !198
  %95 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %96, i32 5
  %97 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.5, align 1
  %add.ptr10.5 = getelementptr i8, ptr %5, i32 215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.5, i8 %98) #9, !srcloc !198
  %add.ptr11 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -2147450880) #9, !srcloc !200
  %add.ptr12 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -2147450880) #9, !srcloc !200
  %add.ptr13 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1073758208) #9, !srcloc !200
  %add.ptr14 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 1073758208) #9, !srcloc !200
  %add.ptr15 = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1073758208) #9, !srcloc !200
  %add.ptr16 = getelementptr i8, ptr %5, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 1073758208) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1661094400) #9, !srcloc !200
  %add.ptr18 = getelementptr i8, ptr %5, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 8192) #9, !srcloc !206
  %add.ptr19 = getelementptr i8, ptr %5, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -53248) #9, !srcloc !200
  %tx_threshold = getelementptr i8, ptr %dev, i32 2732
  %99 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 32, ptr %tx_threshold, align 4
  %add.ptr21 = getelementptr i8, ptr %5, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 536870912) #9, !srcloc !200
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %100 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp22 = icmp eq i8 %101, 0
  br i1 %cmp22, label %if.then24, label %if.end5.if.end27_crit_edge

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then24:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load = load i8, ptr %tx_full.i, align 4
  %bf.clear = and i8 %bf.load, 15
  %103 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %bf.clear, ptr %if_port, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end5.if.end27_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %104 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %105, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %drv_flags = getelementptr i8, ptr %dev, i32 2700
  %106 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %drv_flags, align 4
  %and = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load30 = load i8, ptr %tx_full.i, align 4
  %bf.set = or i8 %bf.load30, 64
  store i8 %bf.set, ptr %tx_full.i, align 4
  %add.ptr32 = getelementptr i8, ptr %5, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr32, i16 -12543) #9, !srcloc !206
  br label %if.end42

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr33 = getelementptr i8, ptr %5, i32 162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 6144) #9, !srcloc !206
  %add.ptr34 = getelementptr i8, ptr %5, i32 164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 6160) #9, !srcloc !206
  %109 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load36 = load i8, ptr %tx_full.i, align 4
  %110 = lshr i8 %bf.load36, 5
  %111 = and i8 %110, 2
  %112 = zext i8 %111 to i16
  %or = or i16 %112, 4124
  %add.ptr41 = getelementptr i8, ptr %5, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %113 = tail call i16 @llvm.bswap.i16(i16 %or) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %113) #9, !srcloc !206
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  tail call void @set_rx_mode(ptr noundef %dev)
  %add.ptr43 = getelementptr i8, ptr %5, i32 130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43, i16 -127) #9, !srcloc !206
  %add.ptr44 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44, i16 0) #9, !srcloc !206
  %add.ptr45 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 8388736) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 8388736) #9, !srcloc !200
  %114 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp47 = icmp sgt i32 %114, 2
  br i1 %cmp47, label %if.then49, label %if.end42.do.body_crit_edge

if.end42.do.body_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.yellowfin_open) #12
  br label %do.body

do.body:                                          ; preds = %if.then49, %if.end42.do.body_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 2648
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @yellowfin_timer, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @yellowfin_open.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %115, 300
  %expires = getelementptr i8, ptr %dev, i32 2656
  %116 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #9
  br label %cleanup

err_free_irq:                                     ; preds = %for.body28.i.err_free_irq_crit_edge, %for.end23.i.err_free_irq_crit_edge
  %call53 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -12, %err_free_irq ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2796
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !207
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv = zext i16 %6 to i32
  %add.ptr2 = getelementptr i8, ptr %1, i32 68
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #9, !srcloc !207
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv4 = zext i16 %8 to i32
  %add.ptr5 = getelementptr i8, ptr %1, i32 134
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #9, !srcloc !207
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv7 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv7) #12
  %cur_tx = getelementptr i8, ptr %dev, i32 2724
  %11 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2728
  %13 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2708
  %15 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 2712
  %17 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_rx, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr8 = getelementptr i8, ptr %1, i32 130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 0) #9, !srcloc !206
  %add.ptr9 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 128) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 128) #9, !srcloc !200
  %timer = getelementptr i8, ptr %dev, i32 2648
  %call11 = tail call i32 @del_timer(ptr noundef %timer) #9
  %pci_dev = getelementptr i8, ptr %dev, i32 2704
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %dev) #9
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end
  %i.066 = phi i32 [ 0, %if.end ], [ %inc, %if.end21.for.body_crit_edge ]
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.yellowfin_desc, ptr %24, i32 %i.066
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 112, ptr %arrayidx, align 4
  %26 = load ptr, ptr %add.ptr.i, align 4
  %addr = getelementptr %struct.yellowfin_desc, ptr %26, i32 %i.066, i32 1
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -805249094, ptr %addr, align 4
  %arrayidx17 = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.066
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx17, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %for.body.if.end21_crit_edge, label %if.then18

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %29) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.body.if.end21_crit_edge
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.body27.preheader, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body27.preheader:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx28 = getelementptr i8, ptr %dev, i32 2568
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx28, align 4
  tail call void @consume_skb(ptr noundef %32) #9
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx28, align 4
  %arrayidx28.1 = getelementptr i8, ptr %dev, i32 2572
  %34 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx28.1, align 4
  tail call void @consume_skb(ptr noundef %35) #9
  %36 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx28.1, align 4
  %arrayidx28.2 = getelementptr i8, ptr %dev, i32 2576
  %37 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx28.2, align 4
  tail call void @consume_skb(ptr noundef %38) #9
  %39 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx28.2, align 4
  %arrayidx28.3 = getelementptr i8, ptr %dev, i32 2580
  %40 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx28.3, align 4
  tail call void @consume_skb(ptr noundef %41) #9
  %42 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx28.3, align 4
  %arrayidx28.4 = getelementptr i8, ptr %dev, i32 2584
  %43 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx28.4, align 4
  tail call void @consume_skb(ptr noundef %44) #9
  %45 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx28.4, align 4
  %arrayidx28.5 = getelementptr i8, ptr %dev, i32 2588
  %46 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx28.5, align 4
  tail call void @consume_skb(ptr noundef %47) #9
  %48 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx28.5, align 4
  %arrayidx28.6 = getelementptr i8, ptr %dev, i32 2592
  %49 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx28.6, align 4
  tail call void @consume_skb(ptr noundef %50) #9
  %51 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx28.6, align 4
  %arrayidx28.7 = getelementptr i8, ptr %dev, i32 2596
  %52 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28.7, align 4
  tail call void @consume_skb(ptr noundef %53) #9
  %54 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %arrayidx28.7, align 4
  %arrayidx28.8 = getelementptr i8, ptr %dev, i32 2600
  %55 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx28.8, align 4
  tail call void @consume_skb(ptr noundef %56) #9
  %57 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx28.8, align 4
  %arrayidx28.9 = getelementptr i8, ptr %dev, i32 2604
  %58 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx28.9, align 4
  tail call void @consume_skb(ptr noundef %59) #9
  %60 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx28.9, align 4
  %arrayidx28.10 = getelementptr i8, ptr %dev, i32 2608
  %61 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx28.10, align 4
  tail call void @consume_skb(ptr noundef %62) #9
  %63 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx28.10, align 4
  %arrayidx28.11 = getelementptr i8, ptr %dev, i32 2612
  %64 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx28.11, align 4
  tail call void @consume_skb(ptr noundef %65) #9
  %66 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx28.11, align 4
  %arrayidx28.12 = getelementptr i8, ptr %dev, i32 2616
  %67 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx28.12, align 4
  tail call void @consume_skb(ptr noundef %68) #9
  %69 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx28.12, align 4
  %arrayidx28.13 = getelementptr i8, ptr %dev, i32 2620
  %70 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx28.13, align 4
  tail call void @consume_skb(ptr noundef %71) #9
  %72 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %arrayidx28.13, align 4
  %arrayidx28.14 = getelementptr i8, ptr %dev, i32 2624
  %73 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx28.14, align 4
  tail call void @consume_skb(ptr noundef %74) #9
  %75 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx28.14, align 4
  %arrayidx28.15 = getelementptr i8, ptr %dev, i32 2628
  %76 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx28.15, align 4
  tail call void @consume_skb(ptr noundef %77) #9
  %78 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %arrayidx28.15, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len2, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %cur_tx = getelementptr i8, ptr %dev, i32 2724
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %5, 15
  %6 = load i32, ptr @gx_fix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2, align 4
  %add = add i32 %11, %9
  %rem4 = and i32 %add, 31
  %12 = add nsw i32 %rem4, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24, i32 %12)
  %13 = icmp ult i32 %12, -24
  br i1 %13, label %if.then6, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.then
  %sub = add i32 %11, 33
  %add9 = sub i32 %sub, %rem4
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %11)
  %cmp.not.i = icmp ugt i32 %add9, %11
  br i1 %cmp.not.i, label %skb_padto.exit, label %if.then6.if.end14_crit_edge, !prof !203

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

skb_padto.exit:                                   ; preds = %if.then6
  %sub.i = sub i32 %add9, %11
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %skb_padto.exit.if.end14_crit_edge, label %cleanup

skb_padto.exit.if.end14_crit_edge:                ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

cleanup:                                          ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %16) #9
  br label %cleanup50

if.end14:                                         ; preds = %skb_padto.exit.if.end14_crit_edge, %if.then6.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %len.2 = phi i32 [ %1, %entry.if.end14_crit_edge ], [ %1, %if.then.if.end14_crit_edge ], [ %add9, %skb_padto.exit.if.end14_crit_edge ], [ %add9, %if.then6.if.end14_crit_edge ]
  %arrayidx16 = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %skb, ptr %arrayidx16, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2704
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data18, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end14
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !209

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev17) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev17, ptr noundef %21, i32 noundef %len.2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %21 to i32
  %sub.i91 = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i91, 12
  %add.ptr.i92 = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev17, ptr noundef %add.ptr.i92, i32 noundef %and.i, i32 noundef %len.2, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i93 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i93)
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %29 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ring, align 4
  %addr = getelementptr %struct.yellowfin_desc, ptr %30, i32 %rem, i32 1
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %addr, align 4
  %32 = load ptr, ptr %tx_ring, align 4
  %result_status = getelementptr %struct.yellowfin_desc, ptr %32, i32 %rem, i32 3
  %33 = ptrtoint ptr %result_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %result_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem)
  %cmp23 = icmp eq i32 %rem, 15
  %34 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring, align 4
  %add31 = add nuw nsw i32 %rem, 1
  %arrayidx32.sink.idx = select i1 %cmp23, i32 0, i32 %add31
  %arrayidx32.sink = getelementptr %struct.yellowfin_desc, ptr %35, i32 %arrayidx32.sink.idx
  %.sink = select i1 %cmp23, i32 269221888, i32 268697600
  %36 = ptrtoint ptr %arrayidx32.sink to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 112, ptr %arrayidx32.sink, align 4
  %or34 = or i32 %len.2, %.sink
  %37 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %38 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_ring, align 4
  %arrayidx36 = getelementptr %struct.yellowfin_desc, ptr %39, i32 %rem
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %arrayidx36, align 4
  %41 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_tx, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %cur_tx, align 4
  %base = getelementptr i8, ptr %dev, i32 2796
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1048592) #9, !srcloc !200
  %45 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2728
  %47 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty_tx, align 4
  %sub41 = sub i32 %46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub41)
  %cmp42 = icmp ult i32 %sub41, 12
  br i1 %cmp42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i95 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i95) #9
  br label %if.end45

if.else44:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_full = getelementptr i8, ptr %dev, i32 2736
  %51 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %tx_full, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %tx_full, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp46 = icmp sgt i32 %52, 4
  br i1 %cmp46, label %if.then47, label %if.end45.cleanup50_crit_edge

if.end45.cleanup50_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_tx, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %54, i32 noundef %rem) #12
  br label %cleanup50

cleanup50:                                        ; preds = %if.then47, %if.end45.cleanup50_crit_edge, %cleanup
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2796
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !207
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %and = and i16 %3, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %4 = tail call i16 @llvm.bswap.i16(i16 %and) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #9, !srcloc !206
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and4 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr5 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 3840) #9, !srcloc !206
  br label %if.end86

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %8)
  %cmp = icmp slt i32 %8, 65
  %and8 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %cmp, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr11 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 2816) #9, !srcloc !206
  br label %if.end86

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15 = icmp eq i32 %8, 0
  br i1 %cmp15, label %if.else82, label %if.then17

if.then17:                                        ; preds = %if.else12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #9
  %9 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %12 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %hash_table, align 8
  %13 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0121 = load ptr, ptr %mc, align 4
  %cmp23.not122 = icmp eq ptr %ha.0121, %mc
  br i1 %cmp23.not122, label %if.then17.for.cond72.preheader_crit_edge, label %for.body.lr.ph

if.then17.for.cond72.preheader_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond72.preheader

for.body.lr.ph:                                   ; preds = %if.then17
  %drv_flags = getelementptr i8, ptr %dev, i32 2700
  %14 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %drv_flags, align 4
  %and25 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br label %for.body

for.cond72.preheader:                             ; preds = %if.end.for.cond72.preheader_crit_edge, %if.then17.for.cond72.preheader_crit_edge
  %add.ptr77 = getelementptr i8, ptr %1, i32 216
  %16 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hash_table, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77, i16 %18) #9, !srcloc !206
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %9, align 2
  %add.ptr78.1 = getelementptr i8, ptr %1, i32 218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78.1, i16 %21) #9, !srcloc !206
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %10, align 4
  %add.ptr78.2 = getelementptr i8, ptr %1, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78.2, i16 %24) #9, !srcloc !206
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %11, align 2
  %add.ptr78.3 = getelementptr i8, ptr %1, i32 222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78.3, i16 %27) #9, !srcloc !206
  %add.ptr81 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 768) #9, !srcloc !206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #9
  br label %if.end86

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ha.0123 = phi ptr [ %ha.0121, %for.body.lr.ph ], [ %ha.0, %if.end.for.body_crit_edge ]
  br i1 %tobool26.not, label %for.body.if.end_crit_edge, label %if.then27

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0123, i32 0, i32 2
  %call29 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 3) #13
  %shr = lshr i32 %call29, 3
  %and30 = and i32 %shr, 63
  %shl = shl nuw i32 1, %and30
  %shr31 = lshr i32 %and30, 4
  %arrayidx = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr31
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 2
  %30 = trunc i32 %shl to i16
  %conv33 = or i16 %29, %30
  store i16 %conv33, ptr %arrayidx, align 2
  %call36 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 4) #13
  %shr37 = lshr i32 %call36, 3
  %and38 = and i32 %shr37, 63
  %shl39 = shl nuw i32 1, %and38
  %shr40 = lshr i32 %and38, 4
  %arrayidx41 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr40
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx41, align 2
  %33 = trunc i32 %shl39 to i16
  %conv44 = or i16 %32, %33
  store i16 %conv44, ptr %arrayidx41, align 2
  %call47 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 5) #13
  %shr48 = lshr i32 %call47, 3
  %and49 = and i32 %shr48, 63
  %shl50 = shl nuw i32 1, %and49
  %shr51 = lshr i32 %and49, 4
  %arrayidx52 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr51
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx52, align 2
  %36 = trunc i32 %shl50 to i16
  %conv55 = or i16 %35, %36
  store i16 %conv55, ptr %arrayidx52, align 2
  br label %if.end

if.end:                                           ; preds = %if.then27, %for.body.if.end_crit_edge
  %addr56 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0123, i32 0, i32 2
  %call58 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr56, i32 noundef 6) #13
  %shr59 = lshr i32 %call58, 3
  %and60 = and i32 %shr59, 63
  %shl61 = shl nuw i32 1, %and60
  %shr62 = lshr i32 %and60, 4
  %arrayidx63 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr62
  %37 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx63, align 2
  %39 = trunc i32 %shl61 to i16
  %conv66 = or i16 %38, %39
  store i16 %conv66, ptr %arrayidx63, align 2
  %40 = ptrtoint ptr %ha.0123 to i32
  call void @__asan_load4_noabort(i32 %40)
  %ha.0 = load ptr, ptr %ha.0123, align 4
  %cmp23.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp23.not, label %if.end.for.cond72.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.cond72.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond72.preheader

if.else82:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr83 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr83, i16 256) #9, !srcloc !206
  br label %if.end86

if.end86:                                         ; preds = %if.else82, %for.cond72.preheader, %if.then10, %if.then
  %41 = or i16 %3, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %42) #9, !srcloc !206
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr nocapture noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2796
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb3_crit_edge
    i32 35145, label %sw.bb11
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %phys = getelementptr i8, ptr %dev, i32 2746
  %3 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phys, align 2
  %5 = and i8 %4, 31
  %conv2 = zext i8 %5 to i16
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %ifr_ifru.i, align 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %7 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ifr_ifru.i, align 2
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg_num, align 2
  %11 = and i16 %10, 31
  %12 = shl i16 %8, 8
  %13 = and i16 %12, 7936
  %add.i78 = or i16 %13, %11
  %add.ptr.i68 = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %add.i78) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i68, i16 %14) #9, !srcloc !206
  %add.ptr1.i = getelementptr i8, ptr %1, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 256) #9, !srcloc !206
  %add.ptr3.i = getelementptr i8, ptr %1, i32 174
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb3
  %i.014.i = phi i32 [ 10000, %sw.bb3 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %16 = and i16 %15, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp5.i = icmp eq i16 %16, 0
  %dec.i = add nsw i32 %i.014.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i)
  %cmp.not.i = icmp eq i32 %i.014.i, 0
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %mdio_read.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mdio_read.exit:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr7.i = getelementptr i8, ptr %1, i32 172
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #9, !srcloc !207
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %19 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %val_out, align 2
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %20 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ifr_ifru.i, align 2
  %phys14 = getelementptr i8, ptr %dev, i32 2746
  %22 = ptrtoint ptr %phys14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phys14, align 2
  %24 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %24)
  %cmp = icmp eq i16 %21, %24
  br i1 %cmp, label %if.then, label %sw.bb11.if.end39_crit_edge

sw.bb11.if.end39_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then:                                          ; preds = %sw.bb11
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val_in, align 2
  %reg_num18 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %27 = ptrtoint ptr %reg_num18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg_num18, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %28, label %if.then.if.end39_crit_edge [
    i16 0, label %sw.bb20
    i16 4, label %sw.bb38
  ]

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

sw.bb20:                                          ; preds = %if.then
  %30 = and i16 %26, -28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not = icmp eq i16 %30, 0
  %medialock = getelementptr i8, ptr %dev, i32 2736
  %31 = ptrtoint ptr %medialock to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %medialock, align 4
  %bf.shl = select i1 %tobool.not, i8 16, i8 0
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %medialock, align 4
  br i1 %tobool.not, label %if.then27, label %sw.bb20.if.end39_crit_edge

sw.bb20.if.end39_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then27:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  %sh.diff = lshr i16 %26, 2
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl34 = and i8 %tr.sh.diff, 64
  %bf.clear35 = and i8 %bf.set, -65
  %bf.set36 = or i8 %bf.clear35, %bf.shl34
  %32 = ptrtoint ptr %medialock to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %bf.set36, ptr %medialock, align 4
  br label %if.end39

sw.bb38:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %advertising = getelementptr i8, ptr %dev, i32 2744
  %33 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %26, ptr %advertising, align 4
  br label %if.end39

if.end39:                                         ; preds = %sw.bb38, %if.then27, %sw.bb20.if.end39_crit_edge, %if.then.if.end39_crit_edge, %sw.bb11.if.end39_crit_edge
  %34 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ifr_ifru.i, align 2
  %reg_num43 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %36 = ptrtoint ptr %reg_num43 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %reg_num43, align 2
  %38 = and i16 %37, 31
  %val_in46 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %val_in46 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %val_in46, align 2
  %41 = shl i16 %35, 8
  %42 = and i16 %41, 7936
  %add.i7077 = or i16 %42, %38
  %add.ptr.i72 = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %43 = tail call i16 @llvm.bswap.i16(i16 %add.i7077) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72, i16 %43) #9, !srcloc !206
  %add.ptr2.i = getelementptr i8, ptr %1, i32 170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %44 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %44) #9, !srcloc !206
  %add.ptr4.i = getelementptr i8, ptr %1, i32 174
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %if.end39
  %i.011.i = phi i32 [ 10000, %if.end39 ], [ %dec.i73, %for.body.i76.for.body.i76_crit_edge ]
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %46 = and i16 %45, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp6.i = icmp eq i16 %46, 0
  %dec.i73 = add nsw i32 %i.011.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011.i)
  %cmp.not.i74 = icmp eq i32 %i.011.i, 0
  %or.cond.i75 = select i1 %cmp6.i, i1 true, i1 %cmp.not.i74
  br i1 %or.cond.i75, label %for.body.i76.cleanup_crit_edge, label %for.body.i76.for.body.i76_crit_edge

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i76

for.body.i76.cleanup_crit_edge:                   ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i76.cleanup_crit_edge, %mdio_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mdio_read.exit ], [ -95, %entry.cleanup_crit_edge ], [ 0, %for.body.i76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yellowfin_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2796
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %cur_tx = getelementptr i8, ptr %dev, i32 2724
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2728
  %4 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dirty_tx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !201
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  %add.ptr2 = getelementptr i8, ptr %1, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !201
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #12
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %12) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end7.do.end7_crit_edge, %if.then
  %i.073 = phi i32 [ 0, %if.then ], [ %inc, %do.end7.do.end7_crit_edge ]
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %result_status = getelementptr %struct.yellowfin_desc, ptr %14, i32 %i.073, i32 3
  %15 = ptrtoint ptr %result_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %result_status, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %16) #12
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.end13, label %do.end7.do.end7_crit_edge

do.end7.do.end7_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end13:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %17 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %18) #12
  %tx_status = getelementptr i8, ptr %dev, i32 2640
  %19 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_status, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ring, align 4
  %result_status31 = getelementptr %struct.yellowfin_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %result_status31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result_status31, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %26) #12
  %27 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_status, align 4
  %arrayidx28.1 = getelementptr %struct.tx_status_words, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx28.1, align 2
  %conv.1 = zext i16 %30 to i32
  %31 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_ring, align 4
  %result_status31.1 = getelementptr %struct.yellowfin_desc, ptr %32, i32 1, i32 3
  %33 = ptrtoint ptr %result_status31.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %result_status31.1, align 4
  %call32.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.1, i32 noundef %34) #12
  %35 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_status, align 4
  %arrayidx28.2 = getelementptr %struct.tx_status_words, ptr %36, i32 2
  %37 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx28.2, align 2
  %conv.2 = zext i16 %38 to i32
  %39 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_ring, align 4
  %result_status31.2 = getelementptr %struct.yellowfin_desc, ptr %40, i32 2, i32 3
  %41 = ptrtoint ptr %result_status31.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %result_status31.2, align 4
  %call32.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.2, i32 noundef %42) #12
  %43 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_status, align 4
  %arrayidx28.3 = getelementptr %struct.tx_status_words, ptr %44, i32 3
  %45 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx28.3, align 2
  %conv.3 = zext i16 %46 to i32
  %47 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring, align 4
  %result_status31.3 = getelementptr %struct.yellowfin_desc, ptr %48, i32 3, i32 3
  %49 = ptrtoint ptr %result_status31.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %result_status31.3, align 4
  %call32.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.3, i32 noundef %50) #12
  %51 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_status, align 4
  %arrayidx28.4 = getelementptr %struct.tx_status_words, ptr %52, i32 4
  %53 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx28.4, align 2
  %conv.4 = zext i16 %54 to i32
  %55 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_ring, align 4
  %result_status31.4 = getelementptr %struct.yellowfin_desc, ptr %56, i32 4, i32 3
  %57 = ptrtoint ptr %result_status31.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %result_status31.4, align 4
  %call32.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.4, i32 noundef %58) #12
  %59 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_status, align 4
  %arrayidx28.5 = getelementptr %struct.tx_status_words, ptr %60, i32 5
  %61 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx28.5, align 2
  %conv.5 = zext i16 %62 to i32
  %63 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_ring, align 4
  %result_status31.5 = getelementptr %struct.yellowfin_desc, ptr %64, i32 5, i32 3
  %65 = ptrtoint ptr %result_status31.5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %result_status31.5, align 4
  %call32.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.5, i32 noundef %66) #12
  %67 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_status, align 4
  %arrayidx28.6 = getelementptr %struct.tx_status_words, ptr %68, i32 6
  %69 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx28.6, align 2
  %conv.6 = zext i16 %70 to i32
  %71 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ring, align 4
  %result_status31.6 = getelementptr %struct.yellowfin_desc, ptr %72, i32 6, i32 3
  %73 = ptrtoint ptr %result_status31.6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %result_status31.6, align 4
  %call32.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.6, i32 noundef %74) #12
  %75 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_status, align 4
  %arrayidx28.7 = getelementptr %struct.tx_status_words, ptr %76, i32 7
  %77 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx28.7, align 2
  %conv.7 = zext i16 %78 to i32
  %79 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_ring, align 4
  %result_status31.7 = getelementptr %struct.yellowfin_desc, ptr %80, i32 7, i32 3
  %81 = ptrtoint ptr %result_status31.7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %result_status31.7, align 4
  %call32.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.7, i32 noundef %82) #12
  %83 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_status, align 4
  %arrayidx28.8 = getelementptr %struct.tx_status_words, ptr %84, i32 8
  %85 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx28.8, align 2
  %conv.8 = zext i16 %86 to i32
  %87 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tx_ring, align 4
  %result_status31.8 = getelementptr %struct.yellowfin_desc, ptr %88, i32 8, i32 3
  %89 = ptrtoint ptr %result_status31.8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %result_status31.8, align 4
  %call32.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.8, i32 noundef %90) #12
  %91 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_status, align 4
  %arrayidx28.9 = getelementptr %struct.tx_status_words, ptr %92, i32 9
  %93 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx28.9, align 2
  %conv.9 = zext i16 %94 to i32
  %95 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_ring, align 4
  %result_status31.9 = getelementptr %struct.yellowfin_desc, ptr %96, i32 9, i32 3
  %97 = ptrtoint ptr %result_status31.9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %result_status31.9, align 4
  %call32.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.9, i32 noundef %98) #12
  %99 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tx_status, align 4
  %arrayidx28.10 = getelementptr %struct.tx_status_words, ptr %100, i32 10
  %101 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx28.10, align 2
  %conv.10 = zext i16 %102 to i32
  %103 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_ring, align 4
  %result_status31.10 = getelementptr %struct.yellowfin_desc, ptr %104, i32 10, i32 3
  %105 = ptrtoint ptr %result_status31.10 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %result_status31.10, align 4
  %call32.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.10, i32 noundef %106) #12
  %107 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tx_status, align 4
  %arrayidx28.11 = getelementptr %struct.tx_status_words, ptr %108, i32 11
  %109 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx28.11, align 2
  %conv.11 = zext i16 %110 to i32
  %111 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_ring, align 4
  %result_status31.11 = getelementptr %struct.yellowfin_desc, ptr %112, i32 11, i32 3
  %113 = ptrtoint ptr %result_status31.11 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %result_status31.11, align 4
  %call32.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.11, i32 noundef %114) #12
  %115 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tx_status, align 4
  %arrayidx28.12 = getelementptr %struct.tx_status_words, ptr %116, i32 12
  %117 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx28.12, align 2
  %conv.12 = zext i16 %118 to i32
  %119 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_ring, align 4
  %result_status31.12 = getelementptr %struct.yellowfin_desc, ptr %120, i32 12, i32 3
  %121 = ptrtoint ptr %result_status31.12 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %result_status31.12, align 4
  %call32.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.12, i32 noundef %122) #12
  %123 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_status, align 4
  %arrayidx28.13 = getelementptr %struct.tx_status_words, ptr %124, i32 13
  %125 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx28.13, align 2
  %conv.13 = zext i16 %126 to i32
  %127 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_ring, align 4
  %result_status31.13 = getelementptr %struct.yellowfin_desc, ptr %128, i32 13, i32 3
  %129 = ptrtoint ptr %result_status31.13 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %result_status31.13, align 4
  %call32.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.13, i32 noundef %130) #12
  %131 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_status, align 4
  %arrayidx28.14 = getelementptr %struct.tx_status_words, ptr %132, i32 14
  %133 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx28.14, align 2
  %conv.14 = zext i16 %134 to i32
  %135 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_ring, align 4
  %result_status31.14 = getelementptr %struct.yellowfin_desc, ptr %136, i32 14, i32 3
  %137 = ptrtoint ptr %result_status31.14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %result_status31.14, align 4
  %call32.14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.14, i32 noundef %138) #12
  %139 = ptrtoint ptr %tx_status to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tx_status, align 4
  %arrayidx28.15 = getelementptr %struct.tx_status_words, ptr %140, i32 15
  %141 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx28.15, align 2
  %conv.15 = zext i16 %142 to i32
  %143 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_ring, align 4
  %result_status31.15 = getelementptr %struct.yellowfin_desc, ptr %144, i32 15, i32 3
  %145 = ptrtoint ptr %result_status31.15 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %result_status31.15, align 4
  %call32.15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv.15, i32 noundef %146) #12
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.end

if.end:                                           ; preds = %do.end13, %entry.if.end_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %147 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %if_port, align 2
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 1048592) #9, !srcloc !200
  %150 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cur_tx, align 4
  %152 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dirty_tx, align 4
  %sub = sub i32 %151, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %cmp45 = icmp ult i32 %sub, 12
  br i1 %cmp45, label %if.then47, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %154 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %155) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end.if.end48_crit_edge
  %_tx.i.i72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %156 = ptrtoint ptr %_tx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %_tx.i.i72, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %158 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %157, i32 0, i32 12
  %159 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %158)
  %cmp.not.i.i = icmp eq i32 %160, %158
  br i1 %cmp.not.i.i, label %if.end48.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end48.netif_trans_update.exit_crit_edge:       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile i32 %158, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end48.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %162 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tx_errors, align 4
  %inc49 = add i32 %163, 1
  store i32 %inc49, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yellowfin_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_interrupt_work, align 4
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %base = getelementptr i8, ptr %dev_instance, i32 2796
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %lock = getelementptr i8, ptr %dev_instance, i32 2752
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %add.ptr = getelementptr i8, ptr %2, i32 132
  %cur_rx.i = getelementptr i8, ptr %dev_instance, i32 2708
  %dirty_rx.i = getelementptr i8, ptr %dev_instance, i32 2712
  %pci_dev.i = getelementptr i8, ptr %dev_instance, i32 2704
  %rx_buf_sz.i = getelementptr i8, ptr %dev_instance, i32 2716
  %drv_flags.i = getelementptr i8, ptr %dev_instance, i32 2700
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %rx_length_errors77.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 6
  %chip_id.i = getelementptr i8, ptr %dev_instance, i32 2696
  %stats200.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 2
  %add.ptr10 = getelementptr i8, ptr %2, i32 64
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 2724
  %dirty_tx = getelementptr i8, ptr %dev_instance, i32 2728
  %tx_ring = getelementptr i8, ptr %dev_instance, i32 2308
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %tx_full = getelementptr i8, ptr %dev_instance, i32 2736
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end46.do.body_crit_edge, %entry
  %boguscnt.0 = phi i32 [ %0, %entry ], [ %dec, %if.end46.do.body_crit_edge ]
  %handled.0 = phi i32 [ 0, %entry ], [ 1, %if.end46.do.body_crit_edge ]
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !207
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp sgt i32 %5, 4
  %conv = zext i16 %4 to i32
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev_instance, ptr noundef nonnull @.str.11, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end6:                                          ; preds = %if.end
  %and = and i32 %conv, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_rx.i, align 4
  %rem.i = and i32 %7, 63
  %8 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty_rx.i, align 4
  %add.i = sub i32 64, %7
  %sub.i = add i32 %add.i, %9
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i = icmp sgt i32 %10, 4
  br i1 %cmp.i, label %do.end.i, label %if.then8.if.end.i_crit_edge

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %result_status.i = getelementptr %struct.yellowfin_desc, ptr %12, i32 %rem.i, i32 3
  %13 = ptrtoint ptr %result_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %result_status.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %rem.i, i32 noundef %14) #12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx9.i = getelementptr %struct.yellowfin_desc, ptr %16, i32 %rem.i
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i, align 4
  %addr.i = getelementptr %struct.yellowfin_desc, ptr %16, i32 %rem.i, i32 1
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i, align 4
  %result_status14.i = getelementptr %struct.yellowfin_desc, ptr %16, i32 %rem.i, i32 3
  %21 = ptrtoint ptr %result_status14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %result_status14.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %rem.i, i32 noundef %18, i32 noundef %20, i32 noundef %22) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then8.if.end.i_crit_edge
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %result_status19.i121 = getelementptr %struct.yellowfin_desc, ptr %24, i32 %rem.i, i32 3
  %25 = ptrtoint ptr %result_status19.i121 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %result_status19.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i122 = icmp eq i32 %26, 0
  br i1 %tobool.not.i122, label %if.end.i.for.cond.preheader.i_crit_edge, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  br label %if.end21.i

if.end.i.for.cond.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.end21.i:                                       ; preds = %cleanup211.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %result_status19.i126 = phi ptr [ %result_status19.i, %cleanup211.i.if.end21.i_crit_edge ], [ %result_status19.i121, %if.end.i.if.end21.i_crit_edge ]
  %27 = phi ptr [ %114, %cleanup211.i.if.end21.i_crit_edge ], [ %24, %if.end.i.if.end21.i_crit_edge ]
  %entry1.0.i124 = phi i32 [ %rem210.i, %cleanup211.i.if.end21.i_crit_edge ], [ %rem.i, %if.end.i.if.end21.i_crit_edge ]
  %boguscnt.0.i123 = phi i32 [ %dec.i, %cleanup211.i.if.end21.i_crit_edge ], [ %sub.i, %if.end.i.if.end21.i_crit_edge ]
  %arrayidx18.i125 = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 2, i32 %entry1.0.i124
  %28 = ptrtoint ptr %arrayidx18.i125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18.i125, align 4
  %arrayidx17.i = getelementptr %struct.yellowfin_desc, ptr %27, i32 %entry1.0.i124
  %30 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %addr23.i = getelementptr %struct.yellowfin_desc, ptr %27, i32 %entry1.0.i124, i32 1
  %32 = ptrtoint ptr %addr23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr23.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %35 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev22.i, i32 noundef %34, i32 noundef %36, i32 noundef 2) #9
  %37 = ptrtoint ptr %result_status19.i126 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result_status19.i126, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %shr.i = lshr i32 %39, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %sub27.i = sub i32 %44, %39
  %and.i = and i32 %sub27.i, 65535
  %sub28.i = add nsw i32 %and.i, -2
  %arrayidx29.i = getelementptr i8, ptr %41, i32 %sub28.i
  %45 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx29.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #9
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp31.i = icmp sgt i32 %48, 4
  br i1 %cmp31.i, label %do.end36.i, label %if.end21.i.if.end40.i_crit_edge

if.end21.i.if.end40.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

do.end36.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv38.i = sext i16 %47 to i32
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef %conv38.i) #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end36.i, %if.end21.i.if.end40.i_crit_edge
  %dec.i = add i32 %boguscnt.0.i123, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp41.i = icmp slt i32 %dec.i, 0
  br i1 %cmp41.i, label %if.end40.i.for.cond.preheader.i_crit_edge, label %if.end44.i

if.end40.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.end44.i:                                       ; preds = %if.end40.i
  %49 = and i32 %39, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool47.not.i = icmp eq i32 %49, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp49.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp49.not.i, label %if.then48.i.cleanup211.sink.split.i_crit_edge, label %if.then51.i

if.then48.i.cleanup211.sink.split.i_crit_edge:    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup211.sink.split.i

if.then51.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_instance, ptr noundef nonnull @.str.22, i32 noundef %shr.i, i32 noundef %and.i) #12
  br label %cleanup211.sink.split.i

if.else.i:                                        ; preds = %if.end44.i
  %50 = ptrtoint ptr %drv_flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %drv_flags.i, align 4
  %and54.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true105.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %conv56.i = sext i16 %47 to i32
  %and57.i = and i32 %conv56.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.if.else156.i_crit_edge, label %if.then59.i

land.lhs.true.i.if.else156.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else156.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp60.i = icmp sgt i32 %52, 3
  br i1 %cmp60.i, label %do.end65.i, label %if.then59.i.if.end69.i_crit_edge

if.then59.i.if.end69.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

do.end65.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, i32 noundef %conv56.i) #12
  br label %if.end69.i

if.end69.i:                                       ; preds = %do.end65.i, %if.then59.i.if.end69.i_crit_edge
  %53 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors.i, align 8
  %inc71.i = add i32 %54, 1
  store i32 %inc71.i, ptr %rx_errors.i, align 8
  %and73.i = and i32 %conv56.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end69.i.if.end79.i_crit_edge, label %if.then75.i

if.end69.i.if.end79.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %rx_length_errors77.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_length_errors77.i, align 8
  %inc78.i = add i32 %56, 1
  store i32 %inc78.i, ptr %rx_length_errors77.i, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then75.i, %if.end69.i.if.end79.i_crit_edge
  %and81.i = and i32 %conv56.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end79.i.if.end86.i_crit_edge, label %if.then83.i

if.end79.i.if.end86.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_frame_errors.i, align 4
  %inc85.i = add i32 %58, 1
  store i32 %inc85.i, ptr %rx_frame_errors.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end86.i_crit_edge
  %and88.i = and i32 %conv56.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end86.i.if.end93.i_crit_edge, label %if.then90.i

if.end86.i.if.end93.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93.i

if.then90.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_crc_errors.i, align 8
  %inc92.i = add i32 %60, 1
  store i32 %inc92.i, ptr %rx_crc_errors.i, align 8
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then90.i, %if.end86.i.if.end93.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp95.i = icmp slt i16 %47, 0
  br i1 %cmp95.i, label %if.end93.i.cleanup211.sink.split.i_crit_edge, label %if.end93.i.cleanup211.i_crit_edge

if.end93.i.cleanup211.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup211.i

if.end93.i.cleanup211.sink.split.i_crit_edge:     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup211.sink.split.i

land.lhs.true105.i:                               ; preds = %if.else.i
  %sub106.i = add nsw i32 %and.i, -1
  %arrayidx107.i = getelementptr i8, ptr %41, i32 %sub106.i
  %61 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx107.i, align 1
  %63 = and i8 %62, -123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool110.not.i = icmp eq i8 %63, 0
  %64 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx29.i, align 1
  br i1 %tobool110.not.i, label %lor.lhs.false.i, label %if.then116.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %65)
  %tobool115.not.i = icmp ult i8 %65, 64
  br i1 %tobool115.not.i, label %lor.lhs.false.i.if.else156.i_crit_edge, label %if.then116.thread.i

lor.lhs.false.i.if.else156.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else156.i

if.then116.thread.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_errors.i, align 8
  %inc12312.i = add i32 %67, 1
  store i32 %inc12312.i, ptr %rx_errors.i, align 8
  br label %if.then127.i

if.then116.i:                                     ; preds = %land.lhs.true105.i
  %68 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_errors.i, align 8
  %inc123.i = add i32 %69, 1
  store i32 %inc123.i, ptr %rx_errors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %65)
  %tobool126.not.i = icmp ult i8 %65, 64
  br i1 %tobool126.not.i, label %if.then116.i.if.end131.i_crit_edge, label %if.then116.i.if.then127.i_crit_edge

if.then116.i.if.then127.i_crit_edge:              ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then127.i

if.then116.i.if.end131.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i

if.then127.i:                                     ; preds = %if.then116.i.if.then127.i_crit_edge, %if.then116.thread.i
  %70 = ptrtoint ptr %rx_length_errors77.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_length_errors77.i, align 8
  %inc130.i = add i32 %71, 1
  store i32 %inc130.i, ptr %rx_length_errors77.i, align 8
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then127.i, %if.then116.i.if.end131.i_crit_edge
  %conv132.i = zext i8 %62 to i32
  %and133.i = and i32 %conv132.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %if.end131.i.if.end139.i_crit_edge, label %if.then135.i

if.end131.i.if.end139.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

if.then135.i:                                     ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_frame_errors.i, align 4
  %inc138.i = add i32 %73, 1
  store i32 %inc138.i, ptr %rx_frame_errors.i, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then135.i, %if.end131.i.if.end139.i_crit_edge
  %and141.i = and i32 %conv132.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %if.end139.i.if.end147.i_crit_edge, label %if.then143.i

if.end139.i.if.end147.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end147.i

if.then143.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_crc_errors.i, align 8
  %inc146.i = add i32 %75, 1
  store i32 %inc146.i, ptr %rx_crc_errors.i, align 8
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then143.i, %if.end139.i.if.end147.i_crit_edge
  %and149.i = and i32 %conv132.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.end147.i.cleanup211.i_crit_edge, label %if.end147.i.cleanup211.sink.split.i_crit_edge

if.end147.i.cleanup211.sink.split.i_crit_edge:    ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup211.sink.split.i

if.end147.i.cleanup211.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup211.i

if.else156.i:                                     ; preds = %lor.lhs.false.i.if.else156.i_crit_edge, %land.lhs.true.i.if.else156.i_crit_edge
  %76 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool157.not.i = icmp eq i32 %77, 0
  br i1 %tobool157.not.i, label %cond.false.i, label %if.else156.i.cond.end.i_crit_edge

if.else156.i.cond.end.i_crit_edge:                ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub158.i = add nsw i32 %and.i, -8
  %arrayidx159.i = getelementptr i8, ptr %41, i32 %sub158.i
  %78 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx159.i, align 1
  %conv160.i = zext i8 %79 to i32
  %add161.i = add nuw nsw i32 %conv160.i, 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.else156.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add161.i, %cond.false.i ], [ 7, %if.else156.i.cond.end.i_crit_edge ]
  %sub162.i = sub nsw i32 %and.i, %cond.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp163.i = icmp sgt i32 %80, 4
  br i1 %cmp163.i, label %do.end168.i, label %cond.end.i.if.end171.i_crit_edge

cond.end.i.if.end171.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end171.i

do.end168.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, i32 noundef %sub162.i, i32 noundef %and.i, i32 noundef %dec.i) #12
  br label %if.end171.i

if.end171.i:                                      ; preds = %do.end168.i, %cond.end.i.if.end171.i_crit_edge
  %81 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub162.i, i32 %81)
  %cmp172.i = icmp sgt i32 %sub162.i, %81
  br i1 %cmp172.i, label %if.then174.i, label %if.else184.i

if.then174.i:                                     ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #11
  %call175.i = tail call ptr @skb_put(ptr noundef %29, i32 noundef %sub162.i) #9
  %82 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci_dev.i, align 4
  %dev177.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 4
  %addr180.i = getelementptr %struct.yellowfin_desc, ptr %85, i32 %entry1.0.i124, i32 1
  %86 = ptrtoint ptr %addr180.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr180.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #9
  %89 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev177.i, i32 noundef %88, i32 noundef %90, i32 noundef 2, i32 noundef 0) #9
  %91 = ptrtoint ptr %arrayidx18.i125 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %arrayidx18.i125, align 4
  br label %cleanup.thread.i

if.else184.i:                                     ; preds = %if.end171.i
  %add185.i = add nsw i32 %sub162.i, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add185.i, i32 noundef 2592) #9
  %cmp187.i = icmp eq ptr %call.i.i, null
  br i1 %cmp187.i, label %if.else184.i.for.cond.preheader.i_crit_edge, label %if.end190.i

if.else184.i.for.cond.preheader.i_crit_edge:      ; preds = %if.else184.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.end190.i:                                      ; preds = %if.else184.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %92 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %93, i32 2
  store ptr %add.ptr.i2.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %94 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %95, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %96 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i, align 4
  %98 = call ptr @memcpy(ptr %add.ptr.i2.i, ptr %97, i32 %sub162.i)
  %call192.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub162.i) #9
  %99 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev.i, align 4
  %dev194.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %101 = ptrtoint ptr %addr23.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %addr23.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #9
  %104 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev194.i, i32 noundef %103, i32 noundef %105, i32 noundef 2) #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end190.i, %if.then174.i
  %skb.0.i = phi ptr [ %29, %if.then174.i ], [ %call.i.i, %if.end190.i ]
  %call198.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_instance) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %106 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %call198.i, ptr %protocol.i, align 8
  %call199.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #9
  %107 = ptrtoint ptr %stats200.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stats200.i, align 8
  %inc201.i = add i32 %108, 1
  store i32 %inc201.i, ptr %stats200.i, align 8
  br label %cleanup211.sink.split.i

cleanup211.sink.split.i:                          ; preds = %cleanup.thread.i, %if.end147.i.cleanup211.sink.split.i_crit_edge, %if.end93.i.cleanup211.sink.split.i_crit_edge, %if.then51.i, %if.then48.i.cleanup211.sink.split.i_crit_edge
  %rx_length_errors77.sink23.i = phi ptr [ %rx_bytes.i, %cleanup.thread.i ], [ %rx_length_errors77.i, %if.then51.i ], [ %rx_length_errors77.i, %if.then48.i.cleanup211.sink.split.i_crit_edge ], [ %rx_dropped.i, %if.end93.i.cleanup211.sink.split.i_crit_edge ], [ %rx_dropped.i, %if.end147.i.cleanup211.sink.split.i_crit_edge ]
  %.sink22.i = phi i32 [ %sub162.i, %cleanup.thread.i ], [ 1, %if.then51.i ], [ 1, %if.then48.i.cleanup211.sink.split.i_crit_edge ], [ 1, %if.end93.i.cleanup211.sink.split.i_crit_edge ], [ 1, %if.end147.i.cleanup211.sink.split.i_crit_edge ]
  %109 = ptrtoint ptr %rx_length_errors77.sink23.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_length_errors77.sink23.i, align 8
  %inc.i = add i32 %110, %.sink22.i
  store i32 %inc.i, ptr %rx_length_errors77.sink23.i, align 8
  br label %cleanup211.i

cleanup211.i:                                     ; preds = %cleanup211.sink.split.i, %if.end147.i.cleanup211.i_crit_edge, %if.end93.i.cleanup211.i_crit_edge
  %111 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cur_rx.i, align 4
  %inc209.i = add i32 %112, 1
  store i32 %inc209.i, ptr %cur_rx.i, align 4
  %rem210.i = and i32 %inc209.i, 63
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i, align 4
  %result_status19.i = getelementptr %struct.yellowfin_desc, ptr %114, i32 %rem210.i, i32 3
  %115 = ptrtoint ptr %result_status19.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %result_status19.i, align 4
  %tobool.not.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i, label %cleanup211.i.for.cond.preheader.i_crit_edge, label %cleanup211.i.if.end21.i_crit_edge

cleanup211.i.if.end21.i_crit_edge:                ; preds = %cleanup211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

cleanup211.i.for.cond.preheader.i_crit_edge:      ; preds = %cleanup211.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %cleanup211.i.for.cond.preheader.i_crit_edge, %if.else184.i.for.cond.preheader.i_crit_edge, %if.end40.i.for.cond.preheader.i_crit_edge, %if.end.i.for.cond.preheader.i_crit_edge
  %117 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cur_rx.i, align 4
  %119 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dirty_rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp223.not18.i = icmp eq i32 %118, %120
  br i1 %cmp223.not18.i, label %for.cond.preheader.i.yellowfin_rx.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.yellowfin_rx.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yellowfin_rx.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %121 = phi i32 [ %inc276.i, %for.inc.i.for.body.i_crit_edge ], [ %120, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rem226.i = and i32 %121, 63
  %arrayidx228.i = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 2, i32 %rem226.i
  %122 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx228.i, align 4
  %cmp229.i = icmp eq ptr %123, null
  br i1 %cmp229.i, label %if.then231.i, label %for.body.i.if.end253.i_crit_edge

for.body.i.if.end253.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end253.i

if.then231.i:                                     ; preds = %for.body.i
  %124 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_buf_sz.i, align 4
  %add234.i = add i32 %125, 2
  %call.i4.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add234.i, i32 noundef 2592) #9
  %cmp236.i = icmp eq ptr %call.i4.i, null
  br i1 %cmp236.i, label %if.then231.i.yellowfin_rx.exit_crit_edge, label %if.end239.i

if.then231.i.yellowfin_rx.exit_crit_edge:         ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yellowfin_rx.exit

if.end239.i:                                      ; preds = %if.then231.i
  %126 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i4.i, ptr %arrayidx228.i, align 4
  %data.i5.i = getelementptr inbounds %struct.sk_buff, ptr %call.i4.i, i32 0, i32 19
  %127 = ptrtoint ptr %data.i5.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %128, i32 2
  store ptr %add.ptr.i6.i, ptr %data.i5.i, align 4
  %tail.i7.i = getelementptr inbounds %struct.sk_buff, ptr %call.i4.i, i32 0, i32 16
  %129 = ptrtoint ptr %tail.i7.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tail.i7.i, align 8
  %add.ptr1.i8.i = getelementptr i8, ptr %130, i32 2
  store ptr %add.ptr1.i8.i, ptr %tail.i7.i, align 8
  %131 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pci_dev.i, align 4
  %dev243.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %133 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i9.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i6.i) #9
  br i1 %call.i9.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end239.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup250.thread.i_crit_edge, label %if.then.i.i, !prof !209

land.rhs.i.i.cleanup250.thread.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup250.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev243.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44, i32 3
  %135 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %136, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %dev243.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev243.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %138, %if.end.i.i.i ], [ %136, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %cleanup250.thread.i

if.end39.i.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev243.i, ptr noundef %add.ptr.i6.i, i32 noundef %134) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %139 = load ptr, ptr @mem_map, align 4
  %140 = ptrtoint ptr %add.ptr.i6.i to i32
  %sub.i.i = add i32 %140, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i10.i = getelementptr %struct.page, ptr %139, i32 %shr.i.i
  %and.i.i = and i32 %140, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev243.i, ptr noundef %add.ptr.i10.i, i32 noundef %and.i.i, i32 noundef %134, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup250.thread.i

cleanup250.thread.i:                              ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.cleanup250.thread.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.cleanup250.thread.i_crit_edge ]
  %141 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  %142 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %add.ptr.i, align 4
  %addr249.i = getelementptr %struct.yellowfin_desc, ptr %143, i32 %rem226.i, i32 1
  %144 = ptrtoint ptr %addr249.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %141, ptr %addr249.i, align 4
  br label %if.end253.i

if.end253.i:                                      ; preds = %cleanup250.thread.i, %for.body.i.if.end253.i_crit_edge
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx255.i = getelementptr %struct.yellowfin_desc, ptr %146, i32 %rem226.i
  %147 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 112, ptr %arrayidx255.i, align 4
  %148 = load ptr, ptr %add.ptr.i, align 4
  %result_status259.i = getelementptr %struct.yellowfin_desc, ptr %148, i32 %rem226.i, i32 3
  %149 = ptrtoint ptr %result_status259.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %result_status259.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem226.i)
  %cmp260.not.i = icmp eq i32 %rem226.i, 0
  %150 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_buf_sz.i, align 4
  br i1 %cmp260.not.i, label %if.else268.i, label %if.then262.i

if.then262.i:                                     ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %151, 540016640
  %152 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 4
  %sub265.i = add nsw i32 %rem226.i, -1
  %arrayidx266.i = getelementptr %struct.yellowfin_desc, ptr %154, i32 %sub265.i
  %155 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %arrayidx266.i, align 4
  br label %for.inc.i

if.else268.i:                                     ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #11
  %or270.i = or i32 %151, 540803072
  %156 = tail call i32 @llvm.bswap.i32(i32 %or270.i) #9
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx272.i = getelementptr %struct.yellowfin_desc, ptr %158, i32 63
  %159 = ptrtoint ptr %arrayidx272.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %156, ptr %arrayidx272.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else268.i, %if.then262.i
  %160 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dirty_rx.i, align 4
  %inc276.i = add i32 %161, 1
  store i32 %inc276.i, ptr %dirty_rx.i, align 4
  %162 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_rx.i, align 4
  %cmp223.not.i = icmp eq i32 %163, %inc276.i
  br i1 %cmp223.not.i, label %for.inc.i.yellowfin_rx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.yellowfin_rx.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %yellowfin_rx.exit

yellowfin_rx.exit:                                ; preds = %for.inc.i.yellowfin_rx.exit_crit_edge, %if.then231.i.yellowfin_rx.exit_crit_edge, %for.cond.preheader.i.yellowfin_rx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1048592) #9, !srcloc !200
  br label %if.end11

if.end11:                                         ; preds = %yellowfin_rx.exit, %if.end6.if.end11_crit_edge
  %164 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cur_tx, align 4
  %166 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp12.not127 = icmp eq i32 %165, %167
  br i1 %cmp12.not127, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %168 = phi i32 [ %inc30, %for.inc.for.body_crit_edge ], [ %167, %if.end11.for.body_crit_edge ]
  %rem = and i32 %168, 15
  %169 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tx_ring, align 4
  %result_status = getelementptr %struct.yellowfin_desc, ptr %170, i32 %rem, i32 3
  %171 = ptrtoint ptr %result_status to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %result_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp16 = icmp eq i32 %172, 0
  br i1 %cmp16, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %arrayidx20 = getelementptr %struct.yellowfin_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %173 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx20, align 4
  %175 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %176, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 6
  %177 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len, align 4
  %179 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %180, %178
  store i32 %add, ptr %tx_bytes, align 4
  %181 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pci_dev.i, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  %addr = getelementptr %struct.yellowfin_desc, ptr %170, i32 %rem, i32 1
  %183 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %addr, align 4
  %185 = tail call i32 @llvm.bswap.i32(i32 %184)
  %186 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev22, i32 noundef %185, i32 noundef %187, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_irq(ptr noundef %174, i32 noundef 0) #9
  %188 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %arrayidx20, align 4
  %189 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dirty_tx, align 4
  %inc30 = add i32 %190, 1
  store i32 %inc30, ptr %dirty_tx, align 4
  %191 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cur_tx, align 4
  %cmp12.not = icmp eq i32 %192, %inc30
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %193 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load = load i8, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %for.end.if.end40_crit_edge, label %land.lhs.true

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %for.end
  %194 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cur_tx, align 4
  %196 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dirty_tx, align 4
  %sub34 = sub i32 %195, %197
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub34)
  %cmp35 = icmp ult i32 %sub34, 8
  br i1 %cmp35, label %if.then37, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear = and i8 %bf.load, 127
  %198 = ptrtoint ptr %tx_full to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %bf.clear, ptr %tx_full, align 4
  %199 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %200) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %and42 = and i32 %conv, 750
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end46_crit_edge, label %if.then44

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.end40
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_instance, ptr noundef nonnull @.str.31, i32 noundef %conv) #12
  %and.i106 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %if.then44.if.end.i109_crit_edge, label %if.then.i

if.then44.if.end.i109_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_errors.i, align 4
  %inc.i108 = add i32 %202, 1
  store i32 %inc.i108, ptr %tx_errors.i, align 4
  br label %if.end.i109

if.end.i109:                                      ; preds = %if.then.i, %if.then44.if.end.i109_crit_edge
  %and1.i = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i109.if.end46_crit_edge, label %if.then3.i

if.end.i109.if.end46_crit_edge:                   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then3.i:                                       ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rx_errors.i, align 8
  %inc5.i = add i32 %204, 1
  store i32 %inc5.i, ptr %rx_errors.i, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then3.i, %if.end.i109.if.end46_crit_edge, %if.end40.if.end46_crit_edge
  %dec = add i32 %boguscnt.0, -1
  %cmp47 = icmp slt i32 %dec, 0
  br i1 %cmp47, label %if.then49, label %if.end46.do.body_crit_edge

if.end46.do.body_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev_instance, ptr noundef nonnull @.str.12, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then49, %if.end.do.end_crit_edge
  %handled.1.ph = phi i32 [ 1, %if.then49 ], [ %handled.0, %if.end.do.end_crit_edge ]
  %205 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %205)
  %cmp55 = icmp sgt i32 %205, 3
  br i1 %cmp55, label %if.then57, label %do.end.if.end61_crit_edge

do.end.if.end61_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then57:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr58 = getelementptr i8, ptr %2, i32 134
  %206 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr58) #9, !srcloc !207
  %207 = tail call i16 @llvm.bswap.i16(i16 %206) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv60 = zext i16 %207 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev_instance, ptr noundef nonnull @.str.13, i32 noundef %conv60) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %do.end.if.end61_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.ph)
  %tobool63.not = icmp ne i32 %handled.1.ph, 0
  %cond = zext i1 %tobool63.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yellowfin_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %t, i32 56
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr i8, ptr %t, i32 148
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp sgt i32 %6, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1 = getelementptr i8, ptr %5, i32 134
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #9, !srcloc !207
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mii_cnt = getelementptr i8, ptr %t, i32 92
  %9 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end33_crit_edge, label %if.then3

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then3:                                         ; preds = %if.end
  %phys = getelementptr i8, ptr %t, i32 98
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phys, align 2
  %conv4 = zext i8 %12 to i16
  %shl.i = shl nuw i16 %conv4, 8
  %add.i = or i16 %shl.i, 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %add.i) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %13) #9, !srcloc !206
  %add.ptr1.i = getelementptr i8, ptr %5, i32 166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 256) #9, !srcloc !206
  %add.ptr3.i = getelementptr i8, ptr %5, i32 174
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then3
  %i.014.i = phi i32 [ 10000, %if.then3 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %15 = and i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp5.i = icmp eq i16 %15, 0
  %dec.i = add nsw i32 %i.014.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i)
  %cmp.not.i = icmp eq i32 %i.014.i, 0
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %mdio_read.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mdio_read.exit:                                   ; preds = %for.body.i
  %add.ptr7.i = getelementptr i8, ptr %5, i32 172
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phys, align 2
  %conv8 = zext i8 %18 to i16
  %shl.i52 = shl nuw i16 %conv8, 8
  %add.i53 = or i16 %shl.i52, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %19 = tail call i16 @llvm.bswap.i16(i16 %add.i53) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #9, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 256) #9, !srcloc !206
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63.for.body.i63_crit_edge, %mdio_read.exit
  %i.014.i58 = phi i32 [ 10000, %mdio_read.exit ], [ %dec.i60, %for.body.i63.for.body.i63_crit_edge ]
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #9, !srcloc !207
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %21 = and i16 %20, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp5.i59 = icmp eq i16 %21, 0
  %dec.i60 = add nsw i32 %i.014.i58, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i58)
  %cmp.not.i61 = icmp eq i32 %i.014.i58, 0
  %or.cond.i62 = select i1 %cmp5.i59, i1 true, i1 %cmp.not.i61
  br i1 %or.cond.i62, label %mdio_read.exit66, label %for.body.i63.for.body.i63_crit_edge

for.body.i63.for.body.i63_crit_edge:              ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i63

mdio_read.exit66:                                 ; preds = %for.body.i63
  %22 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %conv9.i = zext i16 %22 to i32
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #9, !srcloc !207
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %advertising = getelementptr i8, ptr %t, i32 96
  %25 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %advertising, align 4
  %and67 = and i16 %26, %24
  %and = zext i16 %and67 to i32
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp11 = icmp sgt i32 %27, 1
  br i1 %cmp11, label %if.then13, label %mdio_read.exit66.if.end17_crit_edge

mdio_read.exit66.if.end17_crit_edge:              ; preds = %mdio_read.exit66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %mdio_read.exit66
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i65 = zext i16 %24 to i32
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phys, align 2
  %conv16 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.8, ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %conv16, i32 noundef %conv9.i, i32 noundef %conv9.i65) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %mdio_read.exit66.if.end17_crit_edge
  %duplex_lock = getelementptr i8, ptr %t, i32 88
  %30 = ptrtoint ptr %duplex_lock to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %duplex_lock, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %and.i.i = and i32 %and, 256
  %31 = or i32 %and.i.i, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %if.else.i.i, label %if.end17.mii_duplex.exit_crit_edge

if.end17.mii_duplex.exit_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %mii_duplex.exit

if.else.i.i:                                      ; preds = %if.end17
  %33 = and i32 %and, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %if.else8.i.i, label %if.else.i.i.mii_duplex.exit_crit_edge

if.else.i.i.mii_duplex.exit_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mii_duplex.exit

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i.i = lshr i32 %and, 6
  %and9.i.lobit.i = and i32 %and9.i.i, 1
  br label %mii_duplex.exit

mii_duplex.exit:                                  ; preds = %if.else8.i.i, %if.else.i.i.mii_duplex.exit_crit_edge, %if.end17.mii_duplex.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end17.mii_duplex.exit_crit_edge ], [ 0, %if.else.i.i.mii_duplex.exit_crit_edge ], [ %and9.i.lobit.i, %if.else8.i.i ]
  %35 = trunc i32 %retval.0.i to i8
  %bf.value = shl nuw nsw i8 %35, 6
  %bf.clear20 = and i8 %bf.load, -65
  %bf.set = or i8 %bf.value, %bf.clear20
  %36 = ptrtoint ptr %duplex_lock to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set, ptr %duplex_lock, align 4
  %call18.tr = trunc i32 %retval.0.i to i16
  %37 = shl nuw nsw i16 %call18.tr, 1
  %conv27 = or i16 %37, 4124
  %add.ptr28 = getelementptr i8, ptr %5, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv27) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 %38) #9, !srcloc !206
  %and29 = and i32 %conv9.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %. = select i1 %tobool30.not, i32 300, i32 6000
  br label %if.end33

if.end33:                                         ; preds = %mii_duplex.exit, %if.end.if.end33_crit_edge
  %next_tick.1 = phi i32 [ %., %mii_duplex.exit ], [ 6000, %if.end.if.end33_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %39, %next_tick.1
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %40 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yellowfin_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.54, i32 noundef 32) #9
  %pci_dev = getelementptr i8, ptr %dev, i32 2704
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #9
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 113, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 114, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 115, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_max_interrupt_work, !8, !"__param_max_interrupt_work", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 117, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_interrupt_worktype345, !8, !"__UNIQUE_ID_max_interrupt_worktype345", i1 false, i1 false}
!10 = !{ptr @__param_mtu, !11, !"__param_mtu", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 118, i32 1}
!12 = !{ptr @__UNIQUE_ID_mtutype346, !11, !"__UNIQUE_ID_mtutype346", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 119, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype347, !14, !"__UNIQUE_ID_debugtype347", i1 false, i1 false}
!16 = !{ptr @__param_rx_copybreak, !17, !"__param_rx_copybreak", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 120, i32 1}
!18 = !{ptr @__UNIQUE_ID_rx_copybreaktype348, !17, !"__UNIQUE_ID_rx_copybreaktype348", i1 false, i1 false}
!19 = !{ptr @__param_options, !20, !"__param_options", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 121, i32 1}
!21 = !{ptr @__UNIQUE_ID_optionstype349, !20, !"__UNIQUE_ID_optionstype349", i1 false, i1 false}
!22 = !{ptr @__param_full_duplex, !23, !"__param_full_duplex", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 122, i32 1}
!24 = !{ptr @__UNIQUE_ID_full_duplextype350, !23, !"__UNIQUE_ID_full_duplextype350", i1 false, i1 false}
!25 = !{ptr @__param_gx_fix, !26, !"__param_gx_fix", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 123, i32 1}
!27 = !{ptr @__UNIQUE_ID_gx_fixtype351, !26, !"__UNIQUE_ID_gx_fixtype351", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_max_interrupt_work352, !29, !"__UNIQUE_ID_max_interrupt_work352", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 124, i32 1}
!30 = !{ptr @__UNIQUE_ID_mtu353, !31, !"__UNIQUE_ID_mtu353", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 125, i32 1}
!32 = !{ptr @__UNIQUE_ID_debug354, !33, !"__UNIQUE_ID_debug354", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 126, i32 1}
!34 = !{ptr @__UNIQUE_ID_rx_copybreak355, !35, !"__UNIQUE_ID_rx_copybreak355", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 127, i32 1}
!36 = !{ptr @__UNIQUE_ID_options356, !37, !"__UNIQUE_ID_options356", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 128, i32 1}
!38 = !{ptr @__UNIQUE_ID_full_duplex357, !39, !"__UNIQUE_ID_full_duplex357", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 129, i32 1}
!40 = !{ptr @__UNIQUE_ID_gx_fix358, !41, !"__UNIQUE_ID_gx_fix358", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 130, i32 1}
!42 = !{ptr @__initcall__kmod_yellowfin__359_1437_yellowfin_init6, !43, !"__initcall__kmod_yellowfin__359_1437_yellowfin_init6", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1437, i32 1}
!44 = !{ptr @__exitcall_yellowfin_cleanup, !45, !"__exitcall_yellowfin_cleanup", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1438, i32 1}
!46 = !{ptr @mtu, !47, !"mtu", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 38, i32 12}
!48 = !{ptr @rx_copybreak, !49, !"rx_copybreak", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 54, i32 12}
!50 = !{ptr @gx_fix, !51, !"gx_fix", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 65, i32 12}
!52 = !{ptr @__param_str_max_interrupt_work, !8, !"__param_str_max_interrupt_work", i1 false, i1 false}
!53 = !{ptr @max_interrupt_work, !54, !"max_interrupt_work", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 37, i32 12}
!55 = !{ptr @__param_str_mtu, !11, !"__param_str_mtu", i1 false, i1 false}
!56 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!57 = !{ptr @debug, !58, !"debug", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 35, i32 12}
!59 = !{ptr @__param_str_rx_copybreak, !17, !"__param_str_rx_copybreak", i1 false, i1 false}
!60 = !{ptr @__param_str_options, !20, !"__param_str_options", i1 false, i1 false}
!61 = !{ptr @__param_arr_options, !20, !"__param_arr_options", i1 false, i1 false}
!62 = !{ptr @options, !63, !"options", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 61, i32 12}
!64 = !{ptr @__param_str_full_duplex, !23, !"__param_str_full_duplex", i1 false, i1 false}
!65 = !{ptr @__param_arr_full_duplex, !23, !"__param_arr_full_duplex", i1 false, i1 false}
!66 = !{ptr @full_duplex, !67, !"full_duplex", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 62, i32 12}
!68 = !{ptr @__param_str_gx_fix, !26, !"__param_str_gx_fix", i1 false, i1 false}
!69 = !{ptr @.str, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1414, i32 11}
!71 = !{ptr @yellowfin_driver, !72, !"yellowfin_driver", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1413, i32 26}
!73 = !{ptr @yellowfin_pci_tbl, !74, !"yellowfin_pci_tbl", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 239, i32 35}
!75 = !{ptr @yellowfin_init_one.find_cnt, !76, !"find_cnt", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 376, i32 13}
!77 = !{ptr @yellowfin_init_one.printed_version, !78, !"printed_version", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 391, i32 13}
!79 = !{ptr @.str.1, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 393, i32 3}
!81 = !{ptr @.str.2, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @yellowfin_init_one._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @yellowfin_init_one._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @yellowfin_init_one.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 432, i32 2}
!86 = !{ptr @.str.3, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 489, i32 19}
!89 = !{ptr @.str.5, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 501, i32 22}
!91 = !{ptr @.str.6, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 232, i32 3}
!93 = !{ptr @.str.7, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 234, i32 3}
!95 = !{ptr @pci_id_tbl, !96, !"pci_id_tbl", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 231, i32 33}
!97 = !{ptr @version, !98, !"version", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 109, i32 19}
!99 = !{ptr @netdev_ops, !100, !"netdev_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 358, i32 36}
!101 = !{ptr @.str.8, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 638, i32 17}
!103 = !{ptr @.str.9, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 638, i32 34}
!105 = !{ptr @__func__.yellowfin_open, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 638, i32 49}
!107 = !{ptr @yellowfin_open.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 642, i32 2}
!109 = !{ptr @.str.10, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.11, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 914, i32 35}
!112 = !{ptr @.str.12, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1029, i32 21}
!114 = !{ptr @.str.13, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1036, i32 34}
!116 = !{ptr @.str.14, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1052, i32 3}
!118 = !{ptr @.str.15, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @yellowfin_rx._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @yellowfin_rx._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.17, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1054, i32 3}
!123 = !{ptr @yellowfin_rx._entry.16, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @yellowfin_rx._entry_ptr.18, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.20, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1079, i32 4}
!127 = !{ptr @yellowfin_rx._entry.19, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @yellowfin_rx._entry_ptr.21, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.22, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1088, i32 22}
!131 = !{ptr @.str.24, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1094, i32 5}
!133 = !{ptr @yellowfin_rx._entry.23, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @yellowfin_rx._entry_ptr.25, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.27, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1130, i32 5}
!137 = !{ptr @yellowfin_rx._entry.26, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @yellowfin_rx._entry_ptr.28, !136, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!141 = !{ptr @.str.29, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.30, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.31, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1192, i32 18}
!145 = !{ptr @.str.32, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 661, i32 34}
!147 = !{ptr @.str.33, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 670, i32 35}
!149 = !{ptr @.str.34, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1209, i32 34}
!151 = !{ptr @.str.35, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1213, i32 34}
!153 = !{ptr @.str.36, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 889, i32 34}
!155 = !{ptr @.str.37, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 692, i32 19}
!157 = !{ptr @.str.38, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 700, i32 3}
!159 = !{ptr @.str.39, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @yellowfin_tx_timeout._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @yellowfin_tx_timeout._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.41, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 702, i32 4}
!164 = !{ptr @yellowfin_tx_timeout._entry.40, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @yellowfin_tx_timeout._entry_ptr.42, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.44, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 703, i32 3}
!168 = !{ptr @yellowfin_tx_timeout._entry.43, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @yellowfin_tx_timeout._entry_ptr.45, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 704, i32 3}
!172 = !{ptr @yellowfin_tx_timeout._entry.46, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @yellowfin_tx_timeout._entry_ptr.48, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.50, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 706, i32 4}
!176 = !{ptr @yellowfin_tx_timeout._entry.49, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @yellowfin_tx_timeout._entry_ptr.51, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @yellowfin_tx_timeout._entry.52, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 709, i32 3}
!180 = !{ptr @yellowfin_tx_timeout._entry_ptr.53, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @ethtool_ops, !182, !"ethtool_ops", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1348, i32 33}
!183 = !{ptr @.str.54, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/packetengines/yellowfin.c", i32 1344, i32 25}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{!"auto-init"}
!195 = !{i64 4679607}
!196 = !{i64 2152218952}
!197 = !{i64 2152220557}
!198 = !{i64 4679212}
!199 = !{i64 2152221531}
!200 = !{i64 4679409}
!201 = !{i64 4679827}
!202 = !{i64 2152220176}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{i64 2156600606, i64 2156601118, i64 2156600643, i64 2156600699, i64 2156600733, i64 2156600757, i64 2156600798, i64 2156600819, i64 2156600847, i64 2156600881}
!205 = !{i64 2152220981}
!206 = !{i64 4678789}
!207 = !{i64 4678989}
!208 = !{i64 2152219564}
!209 = !{!"branch_weights", i32 2000, i32 1}
