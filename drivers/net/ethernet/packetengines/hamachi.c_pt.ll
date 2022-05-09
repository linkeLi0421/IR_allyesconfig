; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/packetengines/hamachi.c_pt.bc'
source_filename = "../drivers/net/ethernet/packetengines/hamachi.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chip_info = type { i16, i16, i16, i16, ptr, ptr, i32 }
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
%struct.hamachi_private = type { ptr, ptr, [512 x ptr], [64 x ptr], i32, i32, %struct.timer_list, %struct.spinlock, i32, i32, i32, i32, i32, i32, i8, i32, %struct.mii_if_info, [4 x i8], i32, i32, i32, ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.hamachi_desc = type { i32, i32 }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author341 = internal constant [126 x i8] c"hamachi.author=Donald Becker <becker@scyld.com>, Eric Kasten <kasten@nscl.msu.edu>, Keith Underwood <keithu@parl.clemson.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [77 x i8] c"hamachi.description=Packet Engines 'Hamachi' GNIC-II Gigabit Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [56 x i8] c"hamachi.file=drivers/net/ethernet/packetengines/hamachi\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [20 x i8] c"hamachi.license=GPL\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [27 x i8] c"hamachi.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype345 = internal constant [40 x i8] c"hamachi.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_mtu = internal constant [12 x i8] c"hamachi.mtu\00", align 1
@mtu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mtu = internal constant %struct.kernel_param { ptr @__param_str_mtu, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mtu } }, section "__param", align 4
@__UNIQUE_ID_mtutype346 = internal constant [25 x i8] c"hamachi.parmtype=mtu:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"hamachi.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype347 = internal constant [27 x i8] c"hamachi.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_min_rx_pkt = internal constant [19 x i8] c"hamachi.min_rx_pkt\00", align 1
@min_rx_pkt = internal global { i32, [28 x i8] } { i32 24, [28 x i8] zeroinitializer }, align 32
@__param_min_rx_pkt = internal constant %struct.kernel_param { ptr @__param_str_min_rx_pkt, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @min_rx_pkt } }, section "__param", align 4
@__UNIQUE_ID_min_rx_pkttype348 = internal constant [32 x i8] c"hamachi.parmtype=min_rx_pkt:int\00", section ".modinfo", align 1
@__param_str_max_rx_gap = internal constant [19 x i8] c"hamachi.max_rx_gap\00", align 1
@max_rx_gap = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_max_rx_gap = internal constant %struct.kernel_param { ptr @__param_str_max_rx_gap, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_rx_gap } }, section "__param", align 4
@__UNIQUE_ID_max_rx_gaptype349 = internal constant [32 x i8] c"hamachi.parmtype=max_rx_gap:int\00", section ".modinfo", align 1
@__param_str_max_rx_latency = internal constant [23 x i8] c"hamachi.max_rx_latency\00", align 1
@max_rx_latency = internal global { i32, [28 x i8] } { i32 17, [28 x i8] zeroinitializer }, align 32
@__param_max_rx_latency = internal constant %struct.kernel_param { ptr @__param_str_max_rx_latency, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_rx_latency } }, section "__param", align 4
@__UNIQUE_ID_max_rx_latencytype350 = internal constant [36 x i8] c"hamachi.parmtype=max_rx_latency:int\00", section ".modinfo", align 1
@__param_str_min_tx_pkt = internal constant [19 x i8] c"hamachi.min_tx_pkt\00", align 1
@min_tx_pkt = internal global { i32, [28 x i8] } { i32 48, [28 x i8] zeroinitializer }, align 32
@__param_min_tx_pkt = internal constant %struct.kernel_param { ptr @__param_str_min_tx_pkt, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @min_tx_pkt } }, section "__param", align 4
@__UNIQUE_ID_min_tx_pkttype351 = internal constant [32 x i8] c"hamachi.parmtype=min_tx_pkt:int\00", section ".modinfo", align 1
@__param_str_max_tx_gap = internal constant [19 x i8] c"hamachi.max_tx_gap\00", align 1
@max_tx_gap = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_tx_gap = internal constant %struct.kernel_param { ptr @__param_str_max_tx_gap, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_tx_gap } }, section "__param", align 4
@__UNIQUE_ID_max_tx_gaptype352 = internal constant [32 x i8] c"hamachi.parmtype=max_tx_gap:int\00", section ".modinfo", align 1
@__param_str_max_tx_latency = internal constant [23 x i8] c"hamachi.max_tx_latency\00", align 1
@max_tx_latency = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_tx_latency = internal constant %struct.kernel_param { ptr @__param_str_max_tx_latency, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_tx_latency } }, section "__param", align 4
@__UNIQUE_ID_max_tx_latencytype353 = internal constant [36 x i8] c"hamachi.parmtype=max_tx_latency:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"hamachi.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype354 = internal constant [34 x i8] c"hamachi.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_rx_params = internal constant [18 x i8] c"hamachi.rx_params\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_rx_params = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @rx_params }, align 4
@__param_rx_params = internal constant %struct.kernel_param { ptr @__param_str_rx_params, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_rx_params } }, section "__param", align 4
@__UNIQUE_ID_rx_paramstype355 = internal constant [40 x i8] c"hamachi.parmtype=rx_params:array of int\00", section ".modinfo", align 1
@__param_str_tx_params = internal constant [18 x i8] c"hamachi.tx_params\00", align 1
@__param_arr_tx_params = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @tx_params }, align 4
@__param_tx_params = internal constant %struct.kernel_param { ptr @__param_str_tx_params, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_tx_params } }, section "__param", align 4
@__UNIQUE_ID_tx_paramstype356 = internal constant [40 x i8] c"hamachi.parmtype=tx_params:array of int\00", section ".modinfo", align 1
@__param_str_options = internal constant [16 x i8] c"hamachi.options\00", align 1
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype357 = internal constant [38 x i8] c"hamachi.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [20 x i8] c"hamachi.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype358 = internal constant [42 x i8] c"hamachi.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__param_str_force32 = internal constant [16 x i8] c"hamachi.force32\00", align 1
@force32 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force32 = internal constant %struct.kernel_param { ptr @__param_str_force32, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @force32 } }, section "__param", align 4
@__UNIQUE_ID_force32type359 = internal constant [29 x i8] c"hamachi.parmtype=force32:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work360 = internal constant [77 x i8] c"hamachi.parm=max_interrupt_work:GNIC-II maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_mtu361 = internal constant [42 x i8] c"hamachi.parm=mtu:GNIC-II MTU (all boards)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug362 = internal constant [45 x i8] c"hamachi.parm=debug:GNIC-II debug level (0-7)\00", section ".modinfo", align 1
@__UNIQUE_ID_min_rx_pkt363 = internal constant [80 x i8] c"hamachi.parm=min_rx_pkt:GNIC-II minimum Rx packets processed between interrupts\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rx_gap364 = internal constant [87 x i8] c"hamachi.parm=max_rx_gap:GNIC-II maximum Rx inter-packet gap in 8.192 microsecond units\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rx_latency365 = internal constant [90 x i8] c"hamachi.parm=max_rx_latency:GNIC-II time between Rx interrupts in 8.192 microsecond units\00", section ".modinfo", align 1
@__UNIQUE_ID_min_tx_pkt366 = internal constant [80 x i8] c"hamachi.parm=min_tx_pkt:GNIC-II minimum Tx packets processed between interrupts\00", section ".modinfo", align 1
@__UNIQUE_ID_max_tx_gap367 = internal constant [87 x i8] c"hamachi.parm=max_tx_gap:GNIC-II maximum Tx inter-packet gap in 8.192 microsecond units\00", section ".modinfo", align 1
@__UNIQUE_ID_max_tx_latency368 = internal constant [90 x i8] c"hamachi.parm=max_tx_latency:GNIC-II time between Tx interrupts in 8.192 microsecond units\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak369 = internal constant [76 x i8] c"hamachi.parm=rx_copybreak:GNIC-II copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_params370 = internal constant [68 x i8] c"hamachi.parm=rx_params:GNIC-II min_rx_pkt+max_rx_gap+max_rx_latency\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_params371 = internal constant [68 x i8] c"hamachi.parm=tx_params:GNIC-II min_tx_pkt+max_tx_gap+max_tx_latency\00", section ".modinfo", align 1
@__UNIQUE_ID_options372 = internal constant [111 x i8] c"hamachi.parm=options:GNIC-II Bits 0-3: media type, bits 4-6: as force32, bit 7: half duplex, bit 9 full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex373 = internal constant [60 x i8] c"hamachi.parm=full_duplex:GNIC-II full duplex setting(s) (1)\00", section ".modinfo", align 1
@__UNIQUE_ID_force32374 = internal constant [103 x i8] c"hamachi.parm=force32:GNIC-II: Bit 0: 32 bit PCI, bit 1: disable parity, bit 2: 64 bit PCI (all boards)\00", section ".modinfo", align 1
@hamachi_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @hamachi_pci_tbl, ptr @hamachi_init_one, ptr @hamachi_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hamachi__375_1966_hamachi_init6 = internal global ptr @hamachi_init, section ".initcall6.init", align 4
@__exitcall_hamachi_exit = internal global ptr @hamachi_exit, section ".exitcall.exit", align 4
@rx_params = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@tx_params = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@options = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hamachi\00", [24 x i8] zeroinitializer }, align 32
@hamachi_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4888, i32 2321, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hamachi_init_one.card_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hamachi_init_one.printed_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hamachi_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hamachi_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/packetengines/hamachi.c\00", [51 x i8] zeroinitializer }, align 32
@hamachi_init_one._entry_ptr = internal global ptr @hamachi_init_one._entry, section ".printk_index", align 4
@version = internal constant { [187 x i8], [37 x i8] } { [187 x i8] c"\016hamachi.c:v2.1 Sept 11, 2006  Written by Donald Becker\0A   Some modifications by Eric kasten <kasten@nscl.msu.edu>\0A   Further modifications by Keith Underwood <keithu@parl.clemson.edu>\0A\00", [37 x i8] zeroinitializer }, align 32
@hamachi_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hmp->lock\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hamachi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @hamachi_open, ptr @hamachi_close, ptr @hamachi_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @hamachi_ioctl, ptr null, ptr null, ptr @hamachi_siocdevprivate, ptr null, ptr null, ptr null, ptr @hamachi_tx_timeout, ptr null, ptr null, ptr null, ptr @hamachi_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@chip_tbl = internal constant { [2 x %struct.chip_info], [56 x i8] } { [2 x %struct.chip_info] [%struct.chip_info { i16 4888, i16 2321, i16 -1, i16 0, ptr @.str.101, ptr @hamachi_timer, i32 0 }, %struct.chip_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @hamachi_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hamachi_nway_reset, ptr @hamachi_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @check_if_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hamachi_get_link_ksettings, ptr @hamachi_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ethtool_ops_no_mii = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @hamachi_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @check_if_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@hamachi_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: %s type %x at %p, %pM, IRQ %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@hamachi_init_one._entry_ptr.6 = internal global ptr @hamachi_init_one._entry.4, section ".printk_index", align 4
@hamachi_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s:  %d-bit %d Mhz PCI bus (%d), Virtual Jumpers %2.2x, LPA %4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@hamachi_init_one._entry_ptr.9 = internal global ptr @hamachi_init_one._entry.7, section ".printk_index", align 4
@hamachi_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: MII PHY found at address %d, status 0x%4.4x advertising %4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@hamachi_init_one._entry_ptr.12 = internal global ptr @hamachi_init_one._entry.10, section ".printk_index", align 4
@read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"   EEPROM status is %2.2x after %d ticks.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_eeprom\00", [20 x i8] zeroinitializer }, align 32
@read_eeprom._entry_ptr = internal global ptr @read_eeprom._entry, section ".printk_index", align 4
@hamachi_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s:  Unsupported external memory config!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hamachi_open\00", [19 x i8] zeroinitializer }, align 32
@hamachi_open._entry_ptr = internal global ptr @hamachi_open._entry, section ".printk_index", align 4
@hamachi_open._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"max_tx_latency: %d, max_tx_gap: %d, min_tx_pkt: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hamachi_open._entry_ptr.19 = internal global ptr @hamachi_open._entry.17, section ".printk_index", align 4
@hamachi_open._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"max_rx_latency: %d, max_rx_gap: %d, min_rx_pkt: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@hamachi_open._entry_ptr.22 = internal global ptr @hamachi_open._entry.20, section ".printk_index", align 4
@hamachi_open._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rx_int_var: %x, tx_int_var: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@hamachi_open._entry_ptr.25 = internal global ptr @hamachi_open._entry.23, section ".printk_index", align 4
@hamachi_open._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Done hamachi_open(), status: Rx %x Tx %x.\0A\00", [47 x i8] zeroinitializer }, align 32
@hamachi_open._entry_ptr.28 = internal global ptr @hamachi_open._entry.26, section ".printk_index", align 4
@hamachi_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&hmp->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hamachi_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Hamachi interrupt, status %4.4x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hamachi_interrupt\00", [46 x i8] zeroinitializer }, align 32
@hamachi_interrupt._entry_ptr = internal global ptr @hamachi_interrupt._entry, section ".printk_index", align 4
@hamachi_interrupt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Too much work at interrupt, status=0x%4.4x.\0A\00", [45 x i8] zeroinitializer }, align 32
@hamachi_interrupt._entry_ptr.34 = internal global ptr @hamachi_interrupt._entry.32, section ".printk_index", align 4
@hamachi_interrupt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: exiting interrupt, status=%#4.4x.\0A\00", [55 x i8] zeroinitializer }, align 32
@hamachi_interrupt._entry_ptr.37 = internal global ptr @hamachi_interrupt._entry.35, section ".printk_index", align 4
@hamachi_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017 In hamachi_rx(), entry %d status %4.4x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hamachi_rx\00", [21 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr = internal global ptr @hamachi_rx._entry, section ".printk_index", align 4
@hamachi_rx._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017  hamachi_rx() status was %8.8x.\0A\00", [60 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.42 = internal global ptr @hamachi_rx._entry.40, section ".printk_index", align 4
@hamachi_rx._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014%s: Oversized Ethernet frame spanned multiple buffers, entry %#x length %d status %4.4x!\0A\00", [36 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.45 = internal global ptr @hamachi_rx._entry.43, section ".printk_index", align 4
@hamachi_rx._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Oversized Ethernet frame %p vs %p.\0A\00", [54 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.48 = internal global ptr @hamachi_rx._entry.46, section ".printk_index", align 4
@hamachi_rx._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014%s: Oversized Ethernet frame -- next status %x/%x last status %x.\0A\00", [59 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.51 = internal global ptr @hamachi_rx._entry.49, section ".printk_index", align 4
@hamachi_rx._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017  hamachi_rx() Rx error was %8.8x.\0A\00", [58 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.54 = internal global ptr @hamachi_rx._entry.52, section ".printk_index", align 4
@hamachi_rx._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.2, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: rx_copybreak non-zero not good with RX_CHECKSUM\0A\00", [41 x i8] zeroinitializer }, align 32
@hamachi_rx._entry_ptr.57 = internal global ptr @hamachi_rx._entry.55, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@hamachi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016%s: Link changed: AutoNegotiation Ctrl %4.4x, Status %4.4x %4.4x Intr status %4.4x.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hamachi_error\00", [18 x i8] zeroinitializer }, align 32
@hamachi_error._entry_ptr = internal global ptr @hamachi_error._entry, section ".printk_index", align 4
@hamachi_error._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Something Wicked happened! %4.4x.\0A\00", [55 x i8] zeroinitializer }, align 32
@hamachi_error._entry_ptr.64 = internal global ptr @hamachi_error._entry.62, section ".printk_index", align 4
@hamachi_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Hamachi Autonegotiation status %4.4x, LPA %4.4x.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hamachi_timer\00", [18 x i8] zeroinitializer }, align 32
@hamachi_timer._entry_ptr = internal global ptr @hamachi_timer._entry, section ".printk_index", align 4
@hamachi_timer._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s: Autonegotiation regs %4.4x %4.4x %4.4x %4.4x %4.4x %4.4x.\0A\00", [63 x i8] zeroinitializer }, align 32
@hamachi_timer._entry_ptr.69 = internal global ptr @hamachi_timer._entry.67, section ".printk_index", align 4
@hamachi_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s: Shutting down ethercard, status was Tx %4.4x Rx %4.4x Int %2.2x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hamachi_close\00", [18 x i8] zeroinitializer }, align 32
@hamachi_close._entry_ptr = internal global ptr @hamachi_close._entry, section ".printk_index", align 4
@hamachi_close._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Queue pointers were Tx %d / %d,  Rx %d / %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@hamachi_close._entry_ptr.74 = internal global ptr @hamachi_close._entry.72, section ".printk_index", align 4
@hamachi_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Hamachi transmit queue full at slot %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hamachi_start_xmit\00", [45 x i8] zeroinitializer }, align 32
@hamachi_start_xmit._entry_ptr = internal global ptr @hamachi_start_xmit._entry, section ".printk_index", align 4
@hamachi_start_xmit._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: Hamachi transmit frame #%d queued in slot %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@hamachi_start_xmit._entry_ptr.79 = internal global ptr @hamachi_start_xmit._entry.77, section ".printk_index", align 4
@hamachi_siocdevprivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 1898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s: tx %08x, rx %08x intr\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hamachi_siocdevprivate\00", [41 x i8] zeroinitializer }, align 32
@hamachi_siocdevprivate._entry_ptr = internal global ptr @hamachi_siocdevprivate._entry, section ".printk_index", align 4
@hamachi_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014%s: Hamachi transmit timed out, status %8.8x, resetting...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hamachi_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr = internal global ptr @hamachi_tx_timeout._entry, section ".printk_index", align 4
@hamachi_tx_timeout._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Rx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.86 = internal global ptr @hamachi_tx_timeout._entry.84, section ".printk_index", align 4
@hamachi_tx_timeout._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c %8.8x\00", [23 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.89 = internal global ptr @hamachi_tx_timeout._entry.87, section ".printk_index", align 4
@hamachi_tx_timeout._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.92 = internal global ptr @hamachi_tx_timeout._entry.90, section ".printk_index", align 4
@hamachi_tx_timeout._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Tx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.95 = internal global ptr @hamachi_tx_timeout._entry.93, section ".printk_index", align 4
@hamachi_tx_timeout._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.2, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c %4.4x\00", [23 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.98 = internal global ptr @hamachi_tx_timeout._entry.96, section ".printk_index", align 4
@hamachi_tx_timeout._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hamachi_tx_timeout._entry_ptr.100 = internal global ptr @hamachi_tx_timeout._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hamachi GNIC-II\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 81, i64 145]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 40, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 41, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 36, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"min_rx_pkt\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 48, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"max_rx_gap\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 47, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"max_rx_latency\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 46, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"min_tx_pkt\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 51, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"max_tx_gap\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 50, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"max_tx_latency\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 49, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 57, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [8 x i8] c"force32\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 63, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"hamachi_driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1944, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [10 x i8] c"rx_params\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 103, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [10 x i8] c"tx_params\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 104, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 86, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 87, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1945, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"hamachi_pci_tbl\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1938, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 590, i32 13 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"printed_version\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 599, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 601, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 169, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 643, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c"hamachi_netdev_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 567, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"chip_tbl\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 424, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1860, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"ethtool_ops_no_mii\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1869, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 744, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 748, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 762, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 808, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 910, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 952, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 955, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 958, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 984, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 988, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1323, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1380, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1387, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1415, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1435, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1440, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1443, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1445, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1455, i32 5 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1494, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 326, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1633, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1651, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1034, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1037, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1670, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1673, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1229, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1294, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1896, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1057, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1061, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1063, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1065, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1066, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1068, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1070, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 425, i32 30 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [48 x i8] c"../drivers/net/ethernet/packetengines/hamachi.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1823, i32 25 }
@llvm.compiler.used = appending global [203 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_debug362, ptr @__UNIQUE_ID_debugtype347, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_force32374, ptr @__UNIQUE_ID_force32type359, ptr @__UNIQUE_ID_full_duplex373, ptr @__UNIQUE_ID_full_duplextype358, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_max_interrupt_work360, ptr @__UNIQUE_ID_max_interrupt_worktype345, ptr @__UNIQUE_ID_max_rx_gap364, ptr @__UNIQUE_ID_max_rx_gaptype349, ptr @__UNIQUE_ID_max_rx_latency365, ptr @__UNIQUE_ID_max_rx_latencytype350, ptr @__UNIQUE_ID_max_tx_gap367, ptr @__UNIQUE_ID_max_tx_gaptype352, ptr @__UNIQUE_ID_max_tx_latency368, ptr @__UNIQUE_ID_max_tx_latencytype353, ptr @__UNIQUE_ID_min_rx_pkt363, ptr @__UNIQUE_ID_min_rx_pkttype348, ptr @__UNIQUE_ID_min_tx_pkt366, ptr @__UNIQUE_ID_min_tx_pkttype351, ptr @__UNIQUE_ID_mtu361, ptr @__UNIQUE_ID_mtutype346, ptr @__UNIQUE_ID_options372, ptr @__UNIQUE_ID_optionstype357, ptr @__UNIQUE_ID_rx_copybreak369, ptr @__UNIQUE_ID_rx_copybreaktype354, ptr @__UNIQUE_ID_rx_params370, ptr @__UNIQUE_ID_rx_paramstype355, ptr @__UNIQUE_ID_tx_params371, ptr @__UNIQUE_ID_tx_paramstype356, ptr @__exitcall_hamachi_exit, ptr @__initcall__kmod_hamachi__375_1966_hamachi_init6, ptr @__param_debug, ptr @__param_force32, ptr @__param_full_duplex, ptr @__param_max_interrupt_work, ptr @__param_max_rx_gap, ptr @__param_max_rx_latency, ptr @__param_max_tx_gap, ptr @__param_max_tx_latency, ptr @__param_min_rx_pkt, ptr @__param_min_tx_pkt, ptr @__param_mtu, ptr @__param_options, ptr @__param_rx_copybreak, ptr @__param_rx_params, ptr @__param_tx_params, ptr @hamachi_close._entry, ptr @hamachi_close._entry.72, ptr @hamachi_close._entry_ptr, ptr @hamachi_close._entry_ptr.74, ptr @hamachi_error._entry, ptr @hamachi_error._entry.62, ptr @hamachi_error._entry_ptr, ptr @hamachi_error._entry_ptr.64, ptr @hamachi_exit, ptr @hamachi_init_one._entry, ptr @hamachi_init_one._entry.10, ptr @hamachi_init_one._entry.4, ptr @hamachi_init_one._entry.7, ptr @hamachi_init_one._entry_ptr, ptr @hamachi_init_one._entry_ptr.12, ptr @hamachi_init_one._entry_ptr.6, ptr @hamachi_init_one._entry_ptr.9, ptr @hamachi_interrupt._entry, ptr @hamachi_interrupt._entry.32, ptr @hamachi_interrupt._entry.35, ptr @hamachi_interrupt._entry_ptr, ptr @hamachi_interrupt._entry_ptr.34, ptr @hamachi_interrupt._entry_ptr.37, ptr @hamachi_open._entry, ptr @hamachi_open._entry.17, ptr @hamachi_open._entry.20, ptr @hamachi_open._entry.23, ptr @hamachi_open._entry.26, ptr @hamachi_open._entry_ptr, ptr @hamachi_open._entry_ptr.19, ptr @hamachi_open._entry_ptr.22, ptr @hamachi_open._entry_ptr.25, ptr @hamachi_open._entry_ptr.28, ptr @hamachi_rx._entry, ptr @hamachi_rx._entry.40, ptr @hamachi_rx._entry.43, ptr @hamachi_rx._entry.46, ptr @hamachi_rx._entry.49, ptr @hamachi_rx._entry.52, ptr @hamachi_rx._entry.55, ptr @hamachi_rx._entry_ptr, ptr @hamachi_rx._entry_ptr.42, ptr @hamachi_rx._entry_ptr.45, ptr @hamachi_rx._entry_ptr.48, ptr @hamachi_rx._entry_ptr.51, ptr @hamachi_rx._entry_ptr.54, ptr @hamachi_rx._entry_ptr.57, ptr @hamachi_siocdevprivate._entry, ptr @hamachi_siocdevprivate._entry_ptr, ptr @hamachi_start_xmit._entry, ptr @hamachi_start_xmit._entry.77, ptr @hamachi_start_xmit._entry_ptr, ptr @hamachi_start_xmit._entry_ptr.79, ptr @hamachi_timer._entry, ptr @hamachi_timer._entry.67, ptr @hamachi_timer._entry_ptr, ptr @hamachi_timer._entry_ptr.69, ptr @hamachi_tx_timeout._entry, ptr @hamachi_tx_timeout._entry.84, ptr @hamachi_tx_timeout._entry.87, ptr @hamachi_tx_timeout._entry.90, ptr @hamachi_tx_timeout._entry.93, ptr @hamachi_tx_timeout._entry.96, ptr @hamachi_tx_timeout._entry.99, ptr @hamachi_tx_timeout._entry_ptr, ptr @hamachi_tx_timeout._entry_ptr.100, ptr @hamachi_tx_timeout._entry_ptr.86, ptr @hamachi_tx_timeout._entry_ptr.89, ptr @hamachi_tx_timeout._entry_ptr.92, ptr @hamachi_tx_timeout._entry_ptr.95, ptr @hamachi_tx_timeout._entry_ptr.98, ptr @read_eeprom._entry, ptr @read_eeprom._entry_ptr, ptr @max_interrupt_work, ptr @mtu, ptr @debug, ptr @min_rx_pkt, ptr @max_rx_gap, ptr @max_rx_latency, ptr @min_tx_pkt, ptr @max_tx_gap, ptr @max_tx_latency, ptr @rx_copybreak, ptr @force32, ptr @hamachi_driver, ptr @rx_params, ptr @tx_params, ptr @options, ptr @full_duplex, ptr @.str, ptr @hamachi_pci_tbl, ptr @hamachi_init_one.card_idx, ptr @hamachi_init_one.printed_version, ptr @.str.1, ptr @.str.2, ptr @version, ptr @hamachi_init_one.__key, ptr @.str.3, ptr @hamachi_netdev_ops, ptr @chip_tbl, ptr @ethtool_ops, ptr @ethtool_ops_no_mii, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @hamachi_open.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.101, ptr @.str.102], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_rx_pkt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rx_gap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rx_latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_tx_pkt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tx_gap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tx_latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one.printed_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 187, i32 224, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_tbl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops_no_mii to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_interrupt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_interrupt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_rx._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_error._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_timer._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_close._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_start_xmit._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_siocdevprivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hamachi_tx_timeout._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hamachi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @hamachi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hamachi_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ring_dma = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #9
  %2 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ring_dma, align 4, !annotation !332
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %3 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %4 = load i32, ptr @hamachi_init_one.printed_version, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @hamachi_init_one.printed_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #12
  br label %if.end2

if.end2:                                          ; preds = %do.end, %entry.if.end2_crit_edge
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call7 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %irq11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %7 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq11, align 4
  %call12 = tail call ptr @ioremap(i32 noundef %6, i32 noundef 1024) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.err_out_release_crit_edge, label %if.end15

if.end10.err_out_release_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_release

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2500, i32 noundef 1, i32 noundef 1) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.err_out_iounmap_crit_edge, label %if.end19

if.end15.err_out_iounmap_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_iounmap

if.end19:                                         ; preds = %if.end15
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev20, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call12, i32 240
  %add.ptr4.i = getelementptr i8, ptr %call12, i32 242
  %add.ptr42.i = getelementptr i8, ptr %call12, i32 241
  br label %for.body

for.body:                                         ; preds = %read_eeprom.exit.for.body_crit_edge, %if.end19
  %i.0496 = phi i32 [ 0, %if.end19 ], [ %inc24, %read_eeprom.exit.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %bogus_cnt.0.i = phi i32 [ 1000, %for.body ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  %11 = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp ne i8 %11, 0
  %dec.i = add nsw i32 %bogus_cnt.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %do.body.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

do.body.i:                                        ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @arm_heavy_mb() #9
  %12 = trunc i32 %i.0496 to i16
  %conv3.i = add i16 %12, 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %13) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #9, !srcloc !338
  br label %while.cond9.i

while.cond9.i:                                    ; preds = %land.rhs19.i.while.cond9.i_crit_edge, %do.body.i
  %bogus_cnt.1.i = phi i32 [ 1000, %do.body.i ], [ %dec20.i, %land.rhs19.i.while.cond9.i_crit_edge ]
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not.i = icmp eq i8 %15, 0
  br i1 %tobool18.not.i, label %while.cond9.i.while.end25.i_crit_edge, label %land.rhs19.i

while.cond9.i.while.end25.i_crit_edge:            ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end25.i

land.rhs19.i:                                     ; preds = %while.cond9.i
  %dec20.i = add nsw i32 %bogus_cnt.1.i, -1
  %cmp21.not.i = icmp eq i32 %dec20.i, 0
  br i1 %cmp21.not.i, label %land.rhs19.i.while.end25.i_crit_edge, label %land.rhs19.i.while.cond9.i_crit_edge

land.rhs19.i.while.cond9.i_crit_edge:             ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond9.i

land.rhs19.i.while.end25.i_crit_edge:             ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end25.i

while.end25.i:                                    ; preds = %land.rhs19.i.while.end25.i_crit_edge, %while.cond9.i.while.end25.i_crit_edge
  %bogus_cnt.2.i = phi i32 [ 0, %land.rhs19.i.while.end25.i_crit_edge ], [ %bogus_cnt.1.i, %while.cond9.i.while.end25.i_crit_edge ]
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp26.i = icmp sgt i32 %16, 5
  br i1 %cmp26.i, label %do.end30.i, label %while.end25.i.read_eeprom.exit_crit_edge

while.end25.i.read_eeprom.exit_crit_edge:         ; preds = %while.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_eeprom.exit

do.end30.i:                                       ; preds = %while.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  %conv38.i = zext i8 %17 to i32
  %sub.i = sub i32 1000, %bogus_cnt.2.i
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv38.i, i32 noundef %sub.i) #12
  br label %read_eeprom.exit

read_eeprom.exit:                                 ; preds = %do.end30.i, %while.end25.i.read_eeprom.exit_crit_edge
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42.i) #9, !srcloc !333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  %arrayidx23 = getelementptr [6 x i8], ptr %addr, i32 0, i32 %i.0496
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx23, align 1
  %inc24 = add nuw nsw i32 %i.0496, 1
  %exitcond.not = icmp eq i32 %inc24, 6
  br i1 %exitcond.not, label %for.end, label %read_eeprom.exit.for.body_crit_edge

read_eeprom.exit.for.body_crit_edge:              ; preds = %read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %read_eeprom.exit
  call void @dev_addr_mod(ptr noundef nonnull %call16, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #9
  %add.ptr.i476 = getelementptr i8, ptr %call16, i32 2304
  %lock = getelementptr i8, ptr %call16, i32 4672
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @hamachi_init_one.__key, i16 noundef signext 3) #9
  %mii_if = getelementptr i8, ptr %call16, i32 4748
  %dev30 = getelementptr i8, ptr %call16, i32 4768
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16, ptr %dev30, align 4
  %mdio_read = getelementptr i8, ptr %call16, i32 4772
  %21 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call16, i32 4776
  %22 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call16, i32 4756
  %23 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call16, i32 4760
  %24 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 31, ptr %reg_num_mask, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %for.end.err_out_cleardev_crit_edge, label %if.end39

for.end.err_out_cleardev_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_cleardev

if.end39:                                         ; preds = %for.end
  %tx_ring = getelementptr i8, ptr %call16, i32 2308
  %25 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %tx_ring, align 4
  %26 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call16, i32 4616
  %28 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tx_ring_dma, align 4
  %call.i477 = call ptr @dma_alloc_attrs(ptr noundef %dev20, i32 noundef 4096, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tobool42.not = icmp eq ptr %call.i477, null
  br i1 %tobool42.not, label %if.end39.err_out_unmap_tx_crit_edge, label %if.end44

if.end39.err_out_unmap_tx_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_unmap_tx

if.end44:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %add.ptr.i476 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i477, ptr %add.ptr.i476, align 4
  %30 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call16, i32 4620
  %32 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %rx_ring_dma, align 4
  %33 = load i32, ptr @hamachi_init_one.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp45 = icmp slt i32 %33, 8
  br i1 %cmp45, label %cond.true, label %if.end44.cond.end_crit_edge

if.end44.cond.end_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx47 = getelementptr [8 x i32], ptr @options, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx47, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end44.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 0, %if.end44.cond.end_crit_edge ]
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 4
  %36 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not = icmp eq i32 %37, 0
  %spec.select = select i1 %tobool48.not, i32 %cond, i32 %37
  %38 = load i32, ptr @force32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool52.not = icmp eq i32 %38, 0
  br i1 %tobool52.not, label %cond.false54, label %cond.end.do.body65_crit_edge

cond.end.do.body65_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

cond.false54:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp55 = icmp sgt i32 %spec.select, -1
  br i1 %cmp55, label %cond.end61, label %cond.end61.thread

cond.end61.thread:                                ; preds = %cond.false54
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @force32, align 4
  br label %do.body70

cond.end61:                                       ; preds = %cond.false54
  %and = lshr i32 %spec.select, 4
  %39 = and i32 %and, 7
  store i32 %39, ptr @force32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool63.not = icmp eq i32 %39, 0
  br i1 %tobool63.not, label %cond.end61.do.body70_crit_edge, label %cond.end61.do.body65_crit_edge

cond.end61.do.body65_crit_edge:                   ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body65

cond.end61.do.body70_crit_edge:                   ; preds = %cond.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

do.body65:                                        ; preds = %cond.end61.do.body65_crit_edge, %cond.end.do.body65_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  call void @arm_heavy_mb() #9
  %40 = load i32, ptr @force32, align 4
  %conv68 = trunc i32 %40 to i8
  %add.ptr = getelementptr i8, ptr %call12, i32 109
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv68) #9, !srcloc !338
  br label %do.body70

do.body70:                                        ; preds = %do.body65, %cond.end61.do.body70_crit_edge, %cond.end61.thread
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  call void @arm_heavy_mb() #9
  %add.ptr73 = getelementptr i8, ptr %call12, i32 107
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 1) #9, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 2147480) #9
  %add.ptr74 = getelementptr i8, ptr %call12, i32 96
  %42 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #9, !srcloc !333
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool81.not497 = icmp sgt i8 %42, -1
  br i1 %tobool81.not497, label %do.body70.for.body84_crit_edge, label %do.body70.for.end94_crit_edge

do.body70.for.end94_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end94

do.body70.for.body84_crit_edge:                   ; preds = %do.body70
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %do.body70.for.body84_crit_edge
  %boguscnt.0498 = phi i32 [ %inc93, %for.body84.for.body84_crit_edge ], [ 0, %do.body70.for.body84_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 2147480) #9
  %44 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #9, !srcloc !333
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  %inc93 = add nuw nsw i32 %boguscnt.0498, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool81.not = icmp sgt i8 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %boguscnt.0498)
  %cmp82 = icmp ult i32 %boguscnt.0498, 999
  %or.cond = select i1 %tobool81.not, i1 %cmp82, i1 false
  br i1 %or.cond, label %for.body84.for.body84_crit_edge, label %for.body84.for.end94_crit_edge

for.body84.for.end94_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end94

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84

for.end94:                                        ; preds = %for.body84.for.end94_crit_edge, %do.body70.for.end94_crit_edge
  %base95 = getelementptr i8, ptr %call16, i32 4800
  %45 = ptrtoint ptr %base95 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call12, ptr %base95, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call16, ptr %driver_data.i.i, align 4
  %chip_id96 = getelementptr i8, ptr %call16, i32 4716
  %47 = ptrtoint ptr %chip_id96 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %1, ptr %chip_id96, align 4
  %pci_dev = getelementptr i8, ptr %call16, i32 4796
  %48 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pdev, ptr %pci_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp97 = icmp sgt i32 %spec.select, 0
  br i1 %cmp97, label %if.then99, label %for.end94.if.end129_crit_edge

for.end94.if.end129_crit_edge:                    ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then99:                                        ; preds = %for.end94
  %option100 = getelementptr i8, ptr %call16, i32 4792
  %49 = ptrtoint ptr %option100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select, ptr %option100, align 4
  %and101 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex = getelementptr i8, ptr %call16, i32 4764
  %50 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %if.end114

if.else:                                          ; preds = %if.then99
  %and105 = and i32 %spec.select, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.else.if.end114_crit_edge, label %if.then107

if.else.if.end114_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then107:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex109 = getelementptr i8, ptr %call16, i32 4764
  %51 = ptrtoint ptr %full_duplex109 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load110 = load i8, ptr %full_duplex109, align 4
  %bf.clear111 = and i8 %bf.load110, 127
  store i8 %bf.clear111, ptr %full_duplex109, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %if.else.if.end114_crit_edge, %if.then103
  %default_port = getelementptr i8, ptr %call16, i32 4740
  %52 = trunc i32 %spec.select to i8
  %53 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load116 = load i8, ptr %default_port, align 4
  %54 = shl i8 %52, 2
  %bf.shl = and i8 %54, 60
  %bf.clear117 = and i8 %bf.load116, -61
  %bf.set118 = or i8 %bf.clear117, %bf.shl
  store i8 %bf.set118, ptr %default_port, align 4
  %bf.clear121 = and i32 %spec.select, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear121)
  %tobool122.not = icmp eq i32 %bf.clear121, 0
  br i1 %tobool122.not, label %if.end114.if.end129_crit_edge, label %if.then123

if.end114.if.end129_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then123:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %force_media = getelementptr i8, ptr %call16, i32 4764
  %55 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load125 = load i8, ptr %force_media, align 4
  %bf.set127 = or i8 %bf.load125, 64
  store i8 %bf.set127, ptr %force_media, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then123, %if.end114.if.end129_crit_edge, %for.end94.if.end129_crit_edge
  %56 = load i32, ptr @hamachi_init_one.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %56)
  %cmp130 = icmp slt i32 %56, 8
  br i1 %cmp130, label %land.lhs.true, label %if.end129.if.end141_crit_edge

if.end129.if.end141_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

land.lhs.true:                                    ; preds = %if.end129
  %arrayidx132 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp133 = icmp sgt i32 %58, 0
  br i1 %cmp133, label %if.then135, label %land.lhs.true.if.end141_crit_edge

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then135:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex137 = getelementptr i8, ptr %call16, i32 4764
  %59 = ptrtoint ptr %full_duplex137 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load138 = load i8, ptr %full_duplex137, align 4
  %bf.set140 = or i8 %bf.load138, -128
  store i8 %bf.set140, ptr %full_duplex137, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then135, %land.lhs.true.if.end141_crit_edge, %if.end129.if.end141_crit_edge
  %full_duplex143 = getelementptr i8, ptr %call16, i32 4764
  %60 = ptrtoint ptr %full_duplex143 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load144 = load i8, ptr %full_duplex143, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load144)
  %tobool147.not = icmp sgt i8 %bf.load144, -1
  %and148 = and i32 %spec.select, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %or.cond474 = select i1 %tobool147.not, i1 %tobool149.not, i1 false
  br i1 %or.cond474, label %if.end141.if.end154_crit_edge, label %if.then150

if.end141.if.end154_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.then150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %duplex_lock = getelementptr i8, ptr %call16, i32 4740
  %61 = ptrtoint ptr %duplex_lock to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load151 = load i8, ptr %duplex_lock, align 4
  %bf.set153 = or i8 %bf.load151, 64
  store i8 %bf.set153, ptr %duplex_lock, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %if.end141.if.end154_crit_edge
  %62 = load i32, ptr @max_rx_latency, align 4
  %and155 = and i32 %62, 255
  store i32 %and155, ptr @max_rx_latency, align 4
  %63 = load i32, ptr @max_rx_gap, align 4
  %and156 = and i32 %63, 255
  store i32 %and156, ptr @max_rx_gap, align 4
  %64 = load i32, ptr @min_rx_pkt, align 4
  %and157 = and i32 %64, 255
  store i32 %and157, ptr @min_rx_pkt, align 4
  %65 = load i32, ptr @max_tx_latency, align 4
  %and158 = and i32 %65, 255
  store i32 %and158, ptr @max_tx_latency, align 4
  %66 = load i32, ptr @max_tx_gap, align 4
  %and159 = and i32 %66, 255
  store i32 %and159, ptr @max_tx_gap, align 4
  %67 = load i32, ptr @min_tx_pkt, align 4
  %and160 = and i32 %67, 255
  store i32 %and160, ptr @min_tx_pkt, align 4
  br i1 %cmp130, label %cond.end173, label %if.end154.cond.false178_crit_edge

if.end154.cond.false178_crit_edge:                ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false178

cond.end173:                                      ; preds = %if.end154
  %arrayidx164 = getelementptr [8 x i32], ptr @rx_params, i32 0, i32 %56
  %68 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx164, align 4
  %arrayidx171 = getelementptr [8 x i32], ptr @tx_params, i32 0, i32 %56
  %70 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp175 = icmp sgt i32 %69, -1
  br i1 %cmp175, label %cond.end173.cond.end181_crit_edge, label %cond.end173.cond.false178_crit_edge

cond.end173.cond.false178_crit_edge:              ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false178

cond.end173.cond.end181_crit_edge:                ; preds = %cond.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end181

cond.false178:                                    ; preds = %cond.end173.cond.false178_crit_edge, %if.end154.cond.false178_crit_edge
  %cond174493 = phi i32 [ %71, %cond.end173.cond.false178_crit_edge ], [ -1, %if.end154.cond.false178_crit_edge ]
  %shl = shl nuw nsw i32 %and157, 16
  %shl179 = shl nuw nsw i32 %and156, 8
  %or = or i32 %shl, %shl179
  %or180 = or i32 %or, %and155
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false178, %cond.end173.cond.end181_crit_edge
  %cond174494 = phi i32 [ %cond174493, %cond.false178 ], [ %71, %cond.end173.cond.end181_crit_edge ]
  %cond182 = phi i32 [ %or180, %cond.false178 ], [ %69, %cond.end173.cond.end181_crit_edge ]
  %rx_int_var183 = getelementptr i8, ptr %call16, i32 4784
  %72 = ptrtoint ptr %rx_int_var183 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond182, ptr %rx_int_var183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond174494)
  %cmp184 = icmp sgt i32 %cond174494, -1
  br i1 %cmp184, label %cond.end181.cond.end192_crit_edge, label %cond.false187

cond.end181.cond.end192_crit_edge:                ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end192

cond.false187:                                    ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #11
  %73 = load i32, ptr @min_tx_pkt, align 4
  %shl188 = shl i32 %73, 16
  %74 = load i32, ptr @max_tx_gap, align 4
  %shl189 = shl i32 %74, 8
  %or190 = or i32 %shl189, %shl188
  %75 = load i32, ptr @max_tx_latency, align 4
  %or191 = or i32 %or190, %75
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false187, %cond.end181.cond.end192_crit_edge
  %cond193 = phi i32 [ %or191, %cond.false187 ], [ %cond174494, %cond.end181.cond.end192_crit_edge ]
  %tx_int_var194 = getelementptr i8, ptr %call16, i32 4788
  %76 = ptrtoint ptr %tx_int_var194 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %cond193, ptr %tx_int_var194, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 16
  %77 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @hamachi_netdev_ops, ptr %netdev_ops, align 8
  %78 = ptrtoint ptr %chip_id96 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip_id96, align 4
  %80 = and i32 %79, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %81 = icmp eq i32 %80, 0
  %cond199 = select i1 %81, ptr @ethtool_ops_no_mii, ptr @ethtool_ops
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 44
  %82 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cond199, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 115
  %83 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 500, ptr %watchdog_timeo, align 4
  %84 = load i32, ptr @mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool200.not = icmp eq i32 %84, 0
  br i1 %tobool200.not, label %cond.end192.if.end202_crit_edge, label %if.then201

cond.end192.if.end202_crit_edge:                  ; preds = %cond.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then201:                                       ; preds = %cond.end192
  call void @__sanitizer_cov_trace_pc() #11
  %mtu = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 20
  %85 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %mtu, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %cond.end192.if.end202_crit_edge
  %call203 = call i32 @register_netdev(ptr noundef nonnull %call16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %do.end209, label %if.then205

if.then205:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %add.ptr.i476 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i476, align 4
  %88 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev20, i32 noundef 4096, ptr noundef %87, i32 noundef %89, i32 noundef 0) #9
  br label %err_out_unmap_tx

do.end209:                                        ; preds = %if.end202
  %name213 = getelementptr [2 x %struct.chip_info], ptr @chip_tbl, i32 0, i32 %1, i32 4
  %90 = ptrtoint ptr %name213 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name213, align 4
  %add.ptr216 = getelementptr i8, ptr %call12, i32 104
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #9, !srcloc !346
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call16, i32 0, i32 86
  %94 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_addr, align 64
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call16, ptr noundef %91, i32 noundef %93, ptr noundef nonnull %call12, ptr noundef %95, i32 noundef %8) #12
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #9, !srcloc !333
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  %add.ptr236 = getelementptr i8, ptr %call12, i32 102
  %97 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr236) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  %98 = and i16 %97, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool242.not = icmp eq i16 %98, 0
  %cond243 = select i1 %tobool242.not, i32 32, i32 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool244.not = icmp eq i8 %96, 0
  br i1 %tobool244.not, label %do.end209.cond.end248_crit_edge, label %cond.true245

do.end209.cond.end248_crit_edge:                  ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end248

cond.true245:                                     ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #11
  %99 = and i8 %96, 127
  %div.rhs.trunc = zext i8 %99 to i16
  %div495 = udiv i16 2000, %div.rhs.trunc
  %div.zext = zext i16 %div495 to i32
  %phi.cast = zext i8 %99 to i32
  br label %cond.end248

cond.end248:                                      ; preds = %cond.true245, %do.end209.cond.end248_crit_edge
  %.pre-phi = phi i32 [ %phi.cast, %cond.true245 ], [ 0, %do.end209.cond.end248_crit_edge ]
  %cond249 = phi i32 [ %div.zext, %cond.true245 ], [ 0, %do.end209.cond.end248_crit_edge ]
  %add.ptr253 = getelementptr i8, ptr %call12, i32 109
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr253) #9, !srcloc !333
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  %conv257 = zext i8 %100 to i32
  %add.ptr260 = getelementptr i8, ptr %call12, i32 234
  %101 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr260) #9, !srcloc !349
  %102 = call i16 @llvm.bswap.i16(i16 %101)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  %conv264 = zext i16 %102 to i32
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %call16, i32 noundef %cond243, i32 noundef %cond249, i32 noundef %.pre-phi, i32 noundef %conv257, i32 noundef %conv264) #12
  %103 = ptrtoint ptr %chip_id96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %chip_id96, align 4
  %105 = and i32 %104, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %cond.end248.do.body317_crit_edge, label %for.cond272.preheader

cond.end248.do.body317_crit_edge:                 ; preds = %cond.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body317

for.cond272.preheader:                            ; preds = %cond.end248
  %advertising = getelementptr i8, ptr %call16, i32 4752
  br label %for.body279

for.body279:                                      ; preds = %if.end301.for.body279_crit_edge, %for.cond272.preheader
  %phy_idx.0501 = phi i32 [ 0, %for.cond272.preheader ], [ %phy_idx.1, %if.end301.for.body279_crit_edge ]
  %phy.0499 = phi i32 [ 0, %for.cond272.preheader ], [ %inc303, %if.end301.for.body279_crit_edge ]
  %107 = ptrtoint ptr %base95 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base95, align 4
  %add.ptr.i478 = getelementptr i8, ptr %108, i32 174
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body279
  %i.044.i = phi i32 [ 10000, %for.body279 ], [ %dec.i479, %for.body.i.for.body.i_crit_edge ]
  %109 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i478) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %110 = and i16 %109, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %cmp3.i = icmp eq i16 %110, 0
  %dec.i479 = add nsw i32 %i.044.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.044.i)
  %cmp.not.i = icmp eq i32 %i.044.i, 0
  %or.cond.i480 = select i1 %cmp3.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i480, label %do.body.i481, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body.i481:                                     ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  call void @arm_heavy_mb() #9
  %phy.0.tr = trunc i32 %phy.0499 to i16
  %111 = shl i16 %phy.0.tr, 8
  %conv5.i = or i16 %111, 1
  %112 = call i16 @llvm.bswap.i16(i16 %conv5.i) #9
  %add.ptr6.i = getelementptr i8, ptr %108, i32 168
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %112) #9, !srcloc !336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %add.ptr10.i = getelementptr i8, ptr %108, i32 166
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 256) #9, !srcloc !336
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %do.body.i481
  %i.145.i = phi i32 [ 10000, %do.body.i481 ], [ %dec28.i, %for.body14.i.for.body14.i_crit_edge ]
  %113 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i478) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %114 = and i16 %113, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp23.i = icmp eq i16 %114, 0
  %dec28.i = add nsw i32 %i.145.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.145.i)
  %cmp12.not.i = icmp eq i32 %i.145.i, 0
  %or.cond46.i = select i1 %cmp23.i, i1 true, i1 %cmp12.not.i
  br i1 %or.cond46.i, label %mdio_read.exit, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

mdio_read.exit:                                   ; preds = %for.body14.i
  %add.ptr32.i = getelementptr i8, ptr %108, i32 172
  %115 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32.i) #9, !srcloc !349
  %116 = call i16 @llvm.bswap.i16(i16 %115) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  %117 = zext i16 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i16 %116, label %if.then286 [
    i16 -1, label %mdio_read.exit.if.end301_crit_edge
    i16 0, label %mdio_read.exit.if.end301_crit_edge502
  ]

mdio_read.exit.if.end301_crit_edge502:            ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

mdio_read.exit.if.end301_crit_edge:               ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

if.then286:                                       ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv36.i = zext i16 %116 to i32
  %conv287 = trunc i32 %phy.0499 to i8
  %inc288 = add i32 %phy_idx.0501, 1
  %arrayidx289 = getelementptr %struct.hamachi_private, ptr %add.ptr.i476, i32 0, i32 17, i32 %phy_idx.0501
  %118 = ptrtoint ptr %arrayidx289 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv287, ptr %arrayidx289, align 1
  %call290 = call i32 @mdio_read(ptr noundef nonnull %call16, i32 noundef %phy.0499, i32 noundef 4), !range !358
  %119 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call290, ptr %advertising, align 4
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %call16, i32 noundef %phy.0499, i32 noundef %conv36.i, i32 noundef %call290) #12
  br label %if.end301

if.end301:                                        ; preds = %if.then286, %mdio_read.exit.if.end301_crit_edge, %mdio_read.exit.if.end301_crit_edge502
  %phy_idx.1 = phi i32 [ %inc288, %if.then286 ], [ %phy_idx.0501, %mdio_read.exit.if.end301_crit_edge ], [ %phy_idx.0501, %mdio_read.exit.if.end301_crit_edge502 ]
  %inc303 = add nuw nsw i32 %phy.0499, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phy.0499)
  %cmp273 = icmp ult i32 %phy.0499, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp276 = icmp slt i32 %phy_idx.1, 4
  %or.cond475 = select i1 %cmp273, i1 %cmp276, i1 false
  br i1 %or.cond475, label %if.end301.for.body279_crit_edge, label %for.end304

if.end301.for.body279_crit_edge:                  ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body279

for.end304:                                       ; preds = %if.end301
  %mii_cnt = getelementptr i8, ptr %call16, i32 4744
  %120 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %phy_idx.1, ptr %mii_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp306 = icmp sgt i32 %phy_idx.1, 0
  br i1 %cmp306, label %if.then308, label %if.else313

if.then308:                                       ; preds = %for.end304
  call void @__sanitizer_cov_trace_pc() #11
  %phys309 = getelementptr i8, ptr %call16, i32 4780
  %121 = ptrtoint ptr %phys309 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %phys309, align 4
  %conv311 = zext i8 %122 to i32
  %123 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv311, ptr %mii_if, align 4
  br label %do.body317

if.else313:                                       ; preds = %for.end304
  call void @__sanitizer_cov_trace_pc() #11
  %124 = call ptr @memset(ptr %mii_if, i32 0, i32 32)
  br label %do.body317

do.body317:                                       ; preds = %if.else313, %if.then308, %cond.end248.do.body317_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  call void @arm_heavy_mb() #9
  %add.ptr320 = getelementptr i8, ptr %call12, i32 228
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr320, i16 4) #9, !srcloc !336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !360
  call void @arm_heavy_mb() #9
  %add.ptr324 = getelementptr i8, ptr %call12, i32 232
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr324, i16 -8184) #9, !srcloc !336
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %add.ptr328 = getelementptr i8, ptr %call12, i32 224
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr328, i16 16) #9, !srcloc !336
  %125 = load i32, ptr @hamachi_init_one.card_idx, align 4
  %inc329 = add i32 %125, 1
  store i32 %inc329, ptr @hamachi_init_one.card_idx, align 4
  br label %cleanup

err_out_unmap_tx:                                 ; preds = %if.then205, %if.end39.err_out_unmap_tx_crit_edge
  %ret.0 = phi i32 [ %call203, %if.then205 ], [ -12, %if.end39.err_out_unmap_tx_crit_edge ]
  %126 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tx_ring, align 4
  %128 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev20, i32 noundef 512, ptr noundef %127, i32 noundef %129, i32 noundef 0) #9
  br label %err_out_cleardev

err_out_cleardev:                                 ; preds = %err_out_unmap_tx, %for.end.err_out_cleardev_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_out_unmap_tx ], [ -12, %for.end.err_out_cleardev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call16) #9
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_cleardev, %if.end15.err_out_iounmap_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_out_cleardev ], [ -12, %if.end15.err_out_iounmap_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call12) #9
  br label %err_out_release

err_out_release:                                  ; preds = %err_out_iounmap, %if.end10.err_out_release_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_out_iounmap ], [ -12, %if.end10.err_out_release_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out_release, %do.body317, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body317 ], [ %call7, %if.end6.cleanup_crit_edge ], [ %ret.3, %err_out_release ], [ -5, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hamachi_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 4620
  %4 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 4096, ptr noundef %3, i32 noundef %5, i32 noundef 0) #9
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 4616
  %8 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 512, ptr noundef %7, i32 noundef %9, i32 noundef 0) #9
  tail call void @unregister_netdev(ptr noundef nonnull %1) #9
  %base = getelementptr i8, ptr %1, i32 4800
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %11) #9
  tail call void @free_netdev(ptr noundef nonnull %1) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 174
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.044 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  %dec = add nsw i32 %i.044, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.044)
  %cmp.not = icmp eq i32 %i.044, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 %phy_id, 8
  %add = add i32 %shl, %location
  %conv5 = trunc i32 %add to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %add.ptr6 = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %4) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %add.ptr10 = getelementptr i8, ptr %1, i32 166
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 256) #9, !srcloc !336
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %do.body
  %i.145 = phi i32 [ 10000, %do.body ], [ %dec28, %for.body14.for.body14_crit_edge ]
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %6 = and i16 %5, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp23 = icmp eq i16 %6, 0
  %dec28 = add nsw i32 %i.145, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.145)
  %cmp12.not = icmp eq i32 %i.145, 0
  %or.cond46 = select i1 %cmp23, i1 true, i1 %cmp12.not
  br i1 %or.cond46, label %for.end29, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end29:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32 = getelementptr i8, ptr %1, i32 172
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32) #9, !srcloc !349
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  %conv36 = zext i16 %8 to i32
  ret i32 %conv36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 174
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  %3 = and i16 %2, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  %dec = add nsw i32 %i.037, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.037)
  %cmp.not = icmp eq i32 %i.037, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp.not
  br i1 %or.cond, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 %phy_id, 8
  %add = add i32 %shl, %location
  %conv5 = trunc i32 %add to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %add.ptr6 = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %4) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  %conv10 = trunc i32 %value to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %add.ptr11 = getelementptr i8, ptr %1, i32 170
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %5) #9, !srcloc !336
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %do.body
  %i.138 = phi i32 [ 10000, %do.body ], [ %dec29, %for.body15.for.body15_crit_edge ]
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  %7 = and i16 %6, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp24 = icmp eq i16 %7, 0
  %dec29 = add nsw i32 %i.138, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.138)
  %cmp13.not = icmp eq i32 %i.138, 0
  %or.cond39 = select i1 %cmp24, i1 true, i1 %cmp13.not
  br i1 %or.cond39, label %for.end30, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.end30:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 4796
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @hamachi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_full.i = getelementptr i8, ptr %dev, i32 4740
  %6 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %tx_full.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %tx_full.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 4720
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = call ptr @memset(ptr %cur_rx.i, i32 0, i32 16)
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1493, i32 %9)
  %cmp.i = icmp ult i32 %9, 1493
  %10 = add i32 %9, 49
  %add3.i = and i32 %10, -8
  %cond.i = select i1 %cmp.i, i32 1536, i32 %add3.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 4736
  %11 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %rx_buf_sz.i, align 4
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 4724
  br label %for.body8.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.089.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.i = getelementptr %struct.hamachi_desc, ptr %13, i32 %i.089.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx5.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.089.i
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.cond6.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body8.i:                                      ; preds = %for.inc24.i.for.body8.i_crit_edge, %for.cond6.preheader.i
  %i.190.i = phi i32 [ 0, %for.cond6.preheader.i ], [ %inc25.i, %for.inc24.i.for.body8.i_crit_edge ]
  %16 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz.i, align 4
  %add10.i = add i32 %17, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add10.i, i32 noundef 2592) #9
  %arrayidx13.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.190.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %arrayidx13.i, align 4
  %cmp14.i = icmp eq ptr %call.i.i, null
  br i1 %cmp14.i, label %for.body8.i.for.end26.i_crit_edge, label %if.end.i

for.body8.i.for.end26.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26.i

if.end.i:                                         ; preds = %for.body8.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr.i84.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i85.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i84.i) #9
  br i1 %call.i85.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.for.inc24.i_crit_edge, label %if.then.i.i, !prof !366

land.rhs.i.i.for.inc24.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc24.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev15.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev15.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %30, %if.end.i.i.i ], [ %28, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %for.inc24.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev15.i, ptr noundef %add.ptr.i84.i, i32 noundef %26) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %add.ptr.i84.i to i32
  %sub.i.i = add i32 %32, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i86.i = getelementptr %struct.page, ptr %31, i32 %shr.i.i
  %and.i.i = and i32 %32, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev15.i, ptr noundef %add.ptr.i86.i, i32 noundef %and.i.i, i32 noundef %26, i32 noundef 2, i32 noundef 0) #9
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.for.inc24.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.for.inc24.i_crit_edge ]
  %33 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %addr.i = getelementptr %struct.hamachi_desc, ptr %35, i32 %i.190.i, i32 1
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %addr.i, align 4
  %37 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buf_sz.i, align 4
  %sub.i = add i32 %38, 1073741822
  %or.i = or i32 %sub.i, -805306368
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx22.i = getelementptr %struct.hamachi_desc, ptr %41, i32 %i.190.i
  %42 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx22.i, align 4
  %inc25.i = add nuw nsw i32 %i.190.i, 1
  %exitcond92.not.i = icmp eq i32 %inc25.i, 512
  br i1 %exitcond92.not.i, label %for.inc24.i.for.end26.i_crit_edge, label %for.inc24.i.for.body8.i_crit_edge

for.inc24.i.for.body8.i_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.inc24.i.for.end26.i_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26.i

for.end26.i:                                      ; preds = %for.inc24.i.for.end26.i_crit_edge, %for.body8.i.for.end26.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.190.i, %for.body8.i.for.end26.i_crit_edge ], [ 512, %for.inc24.i.for.end26.i_crit_edge ]
  %sub27.i = add nsw i32 %i.1.lcssa.i, -512
  %43 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub27.i, ptr %dirty_rx.i, align 4
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx30.i = getelementptr %struct.hamachi_desc, ptr %45, i32 511
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30.i, align 4
  %or32.i = or i32 %47, 32
  store i32 %or32.i, ptr %arrayidx30.i, align 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.end26.i
  %i.291.i = phi i32 [ 0, %for.end26.i ], [ %inc40.i, %for.body35.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.291.i
  %48 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx36.i, align 4
  %49 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx37.i = getelementptr %struct.hamachi_desc, ptr %50, i32 %i.291.i
  %51 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx37.i, align 4
  %inc40.i = add nuw nsw i32 %i.291.i, 1
  %exitcond93.not.i = icmp eq i32 %inc40.i, 64
  br i1 %exitcond93.not.i, label %hamachi_init_ring.exit, label %for.body35.i.for.body35.i_crit_edge

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35.i

hamachi_init_ring.exit:                           ; preds = %for.body35.i
  %52 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx43.i = getelementptr %struct.hamachi_desc, ptr %53, i32 63
  %54 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx43.i, align 4
  %or45.i = or i32 %55, 32
  store i32 %or45.i, ptr %arrayidx43.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 4620
  %56 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_ring_dma, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %add.ptr = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %58) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 4616
  %59 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_ring_dma, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %add.ptr5 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %61) #9, !srcloc !368
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr9 = getelementptr i8, ptr %1, i32 210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr, align 64
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %65) #9, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.1, align 1
  %add.ptr10.1 = getelementptr i8, ptr %1, i32 211
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.1, i8 %69) #9, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %71, i32 2
  %72 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.2, align 1
  %add.ptr10.2 = getelementptr i8, ptr %1, i32 212
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.2, i8 %73) #9, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %75, i32 3
  %76 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.3, align 1
  %add.ptr10.3 = getelementptr i8, ptr %1, i32 213
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.3, i8 %77) #9, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %79, i32 4
  %80 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.4, align 1
  %add.ptr10.4 = getelementptr i8, ptr %1, i32 214
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.4, i8 %81) #9, !srcloc !338
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %83, i32 5
  %84 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.5, align 1
  %add.ptr10.5 = getelementptr i8, ptr %1, i32 215
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.5, i8 %85) #9, !srcloc !338
  %add.ptr11 = getelementptr i8, ptr %1, i32 110
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #9, !srcloc !349
  %87 = lshr i16 %86, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  %conv15 = zext i16 %87 to i32
  %88 = zext i32 %conv15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %conv15, label %for.end.unreachabledefault [
    i32 0, label %do.body16
    i32 1, label %do.body21
    i32 2, label %do.body26
    i32 3, label %do.body31
  ]

do.body16:                                        ; preds = %hamachi_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  tail call void @arm_heavy_mb() #9
  %add.ptr19 = getelementptr i8, ptr %1, i32 248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 0) #9, !srcloc !336
  br label %sw.epilog

do.body21:                                        ; preds = %hamachi_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %add.ptr24 = getelementptr i8, ptr %1, i32 248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 10240) #9, !srcloc !336
  br label %sw.epilog

do.body26:                                        ; preds = %hamachi_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  tail call void @arm_heavy_mb() #9
  %add.ptr29 = getelementptr i8, ptr %1, i32 248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 19456) #9, !srcloc !336
  br label %sw.epilog

do.body31:                                        ; preds = %hamachi_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %add.ptr34 = getelementptr i8, ptr %1, i32 248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 27648) #9, !srcloc !336
  br label %sw.epilog

for.end.unreachabledefault:                       ; preds = %hamachi_init_ring.exit
  unreachable

sw.epilog:                                        ; preds = %do.body31, %do.body26, %do.body21, %do.body16
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %89 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp47 = icmp eq i8 %90, 0
  br i1 %cmp47, label %if.then49, label %sw.epilog.if.end52_crit_edge

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load = load i8, ptr %tx_full.i, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 15
  %92 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %bf.clear, ptr %if_port, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %sw.epilog.if.end52_crit_edge
  %93 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load53 = load i8, ptr %tx_full.i, align 4
  %94 = and i8 %bf.load53, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp57.not.not = icmp eq i8 %94, 0
  br i1 %cmp57.not.not, label %if.then59, label %if.end52.do.body63_crit_edge

if.end52.do.body63_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %full_duplex = getelementptr i8, ptr %dev, i32 4764
  %95 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load60 = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load60, -128
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.then59, %if.end52.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %add.ptr66 = getelementptr i8, ptr %1, i32 118
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 256) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %add.ptr70 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 0) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  tail call void @arm_heavy_mb() #9
  %add.ptr74 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 128) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 24353) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %add.ptr82 = getelementptr i8, ptr %1, i32 162
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr82, i16 3072) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  tail call void @arm_heavy_mb() #9
  %add.ptr86 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86, i16 6160) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %add.ptr90 = getelementptr i8, ptr %1, i32 176
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr90, i16 -32761) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %add.ptr94 = getelementptr i8, ptr %1, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -53248) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @arm_heavy_mb() #9
  %add.ptr98 = getelementptr i8, ptr %1, i32 206
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98, i16 -4603) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  tail call void @arm_heavy_mb() #9
  %add.ptr102 = getelementptr i8, ptr %1, i32 228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102, i16 4) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @arm_heavy_mb() #9
  %add.ptr106 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr106, i8 3) #9, !srcloc !338
  %rx_int_var107 = getelementptr i8, ptr %dev, i32 4784
  %96 = ptrtoint ptr %rx_int_var107 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_int_var107, align 4
  %tx_int_var108 = getelementptr i8, ptr %dev, i32 4788
  %98 = ptrtoint ptr %tx_int_var108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_int_var108, align 4
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp109 = icmp sgt i32 %100, 1
  br i1 %cmp109, label %do.end114, label %do.body63.do.body138_crit_edge

do.body63.do.body138_crit_edge:                   ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138

do.end114:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %and116 = and i32 %99, 255
  %and117 = lshr i32 %99, 8
  %shr118 = and i32 %and117, 255
  %and119 = lshr i32 %99, 16
  %shr120 = and i32 %and119, 255
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and116, i32 noundef %shr118, i32 noundef %shr120) #12
  %and126 = and i32 %97, 255
  %and127 = lshr i32 %97, 8
  %shr128 = and i32 %and127, 255
  %and129 = lshr i32 %97, 16
  %shr130 = and i32 %and129, 255
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %and126, i32 noundef %shr128, i32 noundef %shr130) #12
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %97, i32 noundef %99) #12
  br label %do.body138

do.body138:                                       ; preds = %do.end114, %do.body63.do.body138_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %101 = tail call i32 @llvm.bswap.i32(i32 %99)
  %add.ptr141 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %101) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  tail call void @arm_heavy_mb() #9
  %102 = tail call i32 @llvm.bswap.i32(i32 %97)
  %add.ptr145 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %102) #9, !srcloc !368
  tail call void @set_rx_mode(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %103 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %104, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %add.ptr149 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 -2021161088) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %add.ptr153 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr153, i16 0) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %add.ptr157 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr157, i16 7424) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 7424) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  tail call void @arm_heavy_mb() #9
  %add.ptr165 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr165, i16 256) #9, !srcloc !336
  %105 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp166 = icmp sgt i32 %105, 2
  br i1 %cmp166, label %do.end171, label %do.body138.do.body191_crit_edge

do.body138.do.body191_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body191

do.end171:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr177 = getelementptr i8, ptr %1, i32 38
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr177) #9, !srcloc !349
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  %conv181 = zext i16 %107 to i32
  %add.ptr184 = getelementptr i8, ptr %1, i32 6
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr184) #9, !srcloc !349
  %109 = tail call i16 @llvm.bswap.i16(i16 %108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  %conv188 = zext i16 %109 to i32
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %dev, i32 noundef %conv181, i32 noundef %conv188) #12
  br label %do.body191

do.body191:                                       ; preds = %do.end171, %do.body138.do.body191_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 4624
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @hamachi_timer, i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef nonnull @hamachi_open.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %110, 240
  %expires = getelementptr i8, ptr %dev, i32 4632
  %111 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body191, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body191 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4800
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
  br i1 %cmp, label %do.end, label %entry.do.body25_crit_edge

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %conv = zext i16 %6 to i32
  %add.ptr6 = getelementptr i8, ptr %1, i32 38
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6) #9, !srcloc !349
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  %conv10 = zext i16 %8 to i32
  %add.ptr13 = getelementptr i8, ptr %1, i32 136
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !346
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %dev, i32 noundef %conv, i32 noundef %conv10, i32 noundef %10) #12
  %cur_tx = getelementptr i8, ptr %dev, i32 4728
  %11 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 4732
  %13 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dirty_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 4720
  %15 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 4724
  %17 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_rx, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %dev, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #12
  br label %do.body25

do.body25:                                        ; preds = %do.end, %entry.do.body25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  tail call void @arm_heavy_mb() #9
  %add.ptr28 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  tail call void @arm_heavy_mb() #9
  %add.ptr32 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 33554432) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %add.ptr36 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 512) #9, !srcloc !336
  %pci_dev = getelementptr i8, ptr %dev, i32 4796
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call37 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %dev) #9
  %timer = getelementptr i8, ptr %dev, i32 4624
  %call38 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 4736
  br label %for.body

for.cond53.preheader:                             ; preds = %if.end49
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body56

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %do.body25
  %i.0117 = phi i32 [ 0, %do.body25 ], [ %inc, %if.end49.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0117
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx41 = getelementptr %struct.hamachi_desc, ptr %26, i32 %i.0117
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx41, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %for.body.if.end49_crit_edge, label %if.then42

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev, align 4
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  %addr = getelementptr %struct.hamachi_desc, ptr %31, i32 %i.0117, i32 1
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev44, i32 noundef %34, i32 noundef %36, i32 noundef 2, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %24) #9
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %for.body.if.end49_crit_edge
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %addr52 = getelementptr %struct.hamachi_desc, ptr %39, i32 %i.0117, i32 1
  %40 = ptrtoint ptr %addr52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -805249094, ptr %addr52, align 4
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.cond53.preheader, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body56:                                       ; preds = %for.inc67.for.body56_crit_edge, %for.cond53.preheader
  %i.1119 = phi i32 [ 0, %for.cond53.preheader ], [ %inc68, %for.inc67.for.body56_crit_edge ]
  %arrayidx57 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.1119
  %41 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %42, null
  br i1 %tobool58.not, label %for.body56.for.inc67_crit_edge, label %if.then59

for.body56.for.inc67_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc67

if.then59:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring, align 4
  %addr63 = getelementptr %struct.hamachi_desc, ptr %46, i32 %i.1119, i32 1
  %47 = ptrtoint ptr %addr63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr63, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %len = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev61, i32 noundef %49, i32 noundef %51, i32 noundef 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %42) #9
  %52 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx57, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %if.then59, %for.body56.for.inc67_crit_edge
  %inc68 = add nuw nsw i32 %i.1119, 1
  %exitcond121.not = icmp eq i32 %inc68, 64
  br i1 %exitcond121.not, label %do.body70, label %for.inc67.for.body56_crit_edge

for.inc67.for.body56_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

do.body70:                                        ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  tail call void @arm_heavy_mb() #9
  %add.ptr73 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 0) #9, !srcloc !338
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_full = getelementptr i8, ptr %dev, i32 4740
  %0 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %cur_tx17 = getelementptr i8, ptr %dev, i32 4728
  %1 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_tx17, align 4
  br i1 %tobool.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %dev, i32 noundef %2) #12
  %base = getelementptr i8, ptr %dev, i32 4800
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 6
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %6 = and i16 %5, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %7 = icmp eq i16 %6, 256
  br i1 %7, label %do.end.cleanup_crit_edge, label %do.body11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 256) #9, !srcloc !336
  br label %cleanup

if.end16:                                         ; preds = %entry
  %rem = and i32 %2, 63
  %arrayidx = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %arrayidx, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 4796
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end16
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !366

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev18) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev18, ptr noundef %14, i32 noundef %16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %22, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i111 = getelementptr %struct.page, ptr %21, i32 %shr.i
  %and.i = and i32 %22, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev18, ptr noundef %add.ptr.i111, i32 noundef %and.i, i32 noundef %16, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %23 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 4
  %addr = getelementptr %struct.hamachi_desc, ptr %25, i32 %rem, i32 1
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem)
  %cmp = icmp eq i32 %rem, 63
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %. = select i1 %cmp, i32 -268435456, i32 -805306368
  %or27 = or i32 %28, %.
  %29 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %30 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring, align 4
  %arrayidx29 = getelementptr %struct.hamachi_desc, ptr %31, i32 %rem
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx29, align 4
  %33 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_tx17, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %cur_tx17, align 4
  %base35 = getelementptr i8, ptr %dev, i32 4800
  %35 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base35, align 4
  %add.ptr36 = getelementptr i8, ptr %36, i32 6
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %38 = and i16 %37, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %38)
  %39 = icmp eq i16 %38, 256
  br i1 %39, label %dma_map_single_attrs.exit.if.end53_crit_edge, label %do.body48

dma_map_single_attrs.exit.if.end53_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.body48:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base35, align 4
  %add.ptr52 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 256) #9, !srcloc !336
  br label %if.end53

if.end53:                                         ; preds = %do.body48, %dma_map_single_attrs.exit.if.end53_crit_edge
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 4732
  %42 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_tx17, align 4
  %44 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dirty_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.not3.i = icmp eq i32 %43, %45
  br i1 %cmp.not3.i, label %if.end53.hamachi_tx.exit_crit_edge, label %for.body.lr.ph.i

if.end53.hamachi_tx.exit_crit_edge:               ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %hamachi_tx.exit

for.body.lr.ph.i:                                 ; preds = %if.end53
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %46 = phi i32 [ %45, %for.body.lr.ph.i ], [ %inc23.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.i = and i32 %46, 63
  %47 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring, align 4
  %arrayidx.i = getelementptr %struct.hamachi_desc, ptr %48, i32 %rem.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %and.i112 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.hamachi_tx.exit_crit_edge

for.body.i.hamachi_tx.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hamachi_tx.exit

if.end.i:                                         ; preds = %for.body.i
  %arrayidx3.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem.i
  %51 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then5.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %addr.i = getelementptr %struct.hamachi_desc, ptr %48, i32 %rem.i, i32 1
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 6
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev6.i, i32 noundef %57, i32 noundef %59, i32 noundef 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %52) #9
  %60 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %arrayidx3.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %if.end.i.if.end11.i_crit_edge
  %61 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_ring, align 4
  %arrayidx13.i = getelementptr %struct.hamachi_desc, ptr %62, i32 %rem.i
  %63 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem.i)
  %cmp15.i = icmp eq i32 %rem.i, 63
  br i1 %cmp15.i, label %if.then16.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_ring, align 4
  %arrayidx18.i = getelementptr %struct.hamachi_desc, ptr %65, i32 63
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx18.i, align 4
  %or.i = or i32 %67, 32
  store i32 %or.i, ptr %arrayidx18.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %if.end11.i.for.inc.i_crit_edge
  %68 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %69, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %70 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dirty_tx.i, align 4
  %inc23.i = add i32 %71, 1
  store i32 %inc23.i, ptr %dirty_tx.i, align 4
  %72 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_tx17, align 4
  %cmp.not.i = icmp eq i32 %73, %inc23.i
  br i1 %cmp.not.i, label %for.inc.i.hamachi_tx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.hamachi_tx.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hamachi_tx.exit

hamachi_tx.exit:                                  ; preds = %for.inc.i.hamachi_tx.exit_crit_edge, %for.body.i.hamachi_tx.exit_crit_edge, %if.end53.hamachi_tx.exit_crit_edge
  %74 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cur_tx17, align 4
  %76 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dirty_tx.i, align 4
  %sub = sub i32 %75, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub)
  %cmp56 = icmp ult i32 %sub, 60
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %hamachi_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %78 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %79) #9
  br label %if.end62

if.else59:                                        ; preds = %hamachi_tx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load61 = load i8, ptr %tx_full, align 4
  %bf.set = or i8 %bf.load61, -128
  store i8 %bf.set, ptr %tx_full, align 4
  %_tx.i.i113 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %81 = ptrtoint ptr %_tx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %_tx.i.i113, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %82, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then58
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp63 = icmp sgt i32 %83, 4
  br i1 %cmp63, label %do.end68, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %cur_tx17 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_tx17, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %dev, i32 noundef %85, i32 noundef %rem) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %if.end62.cleanup_crit_edge, %do.body11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %do.end.cleanup_crit_edge ], [ 16, %do.body11 ], [ 0, %do.end68 ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 3840) #9, !srcloc !336
  br label %if.end60

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp = icmp slt i32 %5, 64
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.else9, label %do.body5

do.body5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  tail call void @arm_heavy_mb() #9
  %add.ptr8 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 2816) #9, !srcloc !336
  br label %if.end60

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp eq i32 %5, 0
  br i1 %cmp12, label %do.body55, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else9
  %6 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %6)
  %ha.081 = load ptr, ptr %mc, align 4
  %cmp19.not82 = icmp eq ptr %ha.081, %mc
  br i1 %cmp19.not82, label %for.cond.preheader.do.body41.lr.ph_crit_edge, label %do.body20.lr.ph

for.cond.preheader.do.body41.lr.ph_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41.lr.ph

do.body20.lr.ph:                                  ; preds = %for.cond.preheader
  %add.ptr23 = getelementptr i8, ptr %1, i32 256
  %add.ptr29 = getelementptr i8, ptr %1, i32 260
  br label %do.body20

for.cond37.preheader:                             ; preds = %do.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc)
  %cmp3885 = icmp slt i32 %inc, 64
  br i1 %cmp3885, label %for.cond37.preheader.do.body41.lr.ph_crit_edge, label %for.cond37.preheader.do.body50_crit_edge

for.cond37.preheader.do.body50_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

for.cond37.preheader.do.body41.lr.ph_crit_edge:   ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41.lr.ph

do.body41.lr.ph:                                  ; preds = %for.cond37.preheader.do.body41.lr.ph_crit_edge, %for.cond.preheader.do.body41.lr.ph_crit_edge
  %i.0.lcssa89 = phi i32 [ %inc, %for.cond37.preheader.do.body41.lr.ph_crit_edge ], [ 0, %for.cond.preheader.do.body41.lr.ph_crit_edge ]
  %add.ptr44 = getelementptr i8, ptr %1, i32 260
  br label %do.body41

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %do.body20.lr.ph
  %ha.084 = phi ptr [ %ha.081, %do.body20.lr.ph ], [ %ha.0, %do.body20.do.body20_crit_edge ]
  %i.083 = phi i32 [ 0, %do.body20.lr.ph ], [ %inc, %do.body20.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  tail call void @arm_heavy_mb() #9
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.084, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mul = shl i32 %i.083, 3
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %9) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr %struct.netdev_hw_addr, ptr %ha.084, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %11 to i32
  %or = or i32 %conv, 131072
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr31 = getelementptr i8, ptr %add.ptr29, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %12) #9, !srcloc !368
  %inc = add i32 %i.083, 1
  %13 = ptrtoint ptr %ha.084 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0 = load ptr, ptr %ha.084, align 4
  %cmp19.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp19.not, label %for.cond37.preheader, label %do.body20.do.body20_crit_edge

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

do.body41:                                        ; preds = %do.body41.do.body41_crit_edge, %do.body41.lr.ph
  %i.186 = phi i32 [ %i.0.lcssa89, %do.body41.lr.ph ], [ %inc48, %do.body41.do.body41_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  tail call void @arm_heavy_mb() #9
  %mul45 = shl i32 %i.186, 3
  %add.ptr46 = getelementptr i8, ptr %add.ptr44, i32 %mul45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #9, !srcloc !368
  %inc48 = add i32 %i.186, 1
  %exitcond.not = icmp eq i32 %inc48, 64
  br i1 %exitcond.not, label %do.body41.do.body50_crit_edge, label %do.body41.do.body41_crit_edge

do.body41.do.body41_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body41

do.body41.do.body50_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

do.body50:                                        ; preds = %do.body41.do.body50_crit_edge, %for.cond37.preheader.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !412
  tail call void @arm_heavy_mb() #9
  %add.ptr53 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53, i16 768) #9, !srcloc !336
  br label %if.end60

do.body55:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !413
  tail call void @arm_heavy_mb() #9
  %add.ptr58 = getelementptr i8, ptr %1, i32 208
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 256) #9, !srcloc !336
  br label %if.end60

if.end60:                                         ; preds = %do.body55, %do.body50, %do.body5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %lock = getelementptr i8, ptr %dev, i32 4672
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 4748
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readonly %rq, ptr nocapture noundef readnone %data, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35315, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35315
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call4, label %do.body, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifr_ifru, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr i8, ptr %dev, i32 4800
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  tail call void @arm_heavy_mb() #9
  %arrayidx10 = getelementptr %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #9, !srcloc !368
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !346
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 124
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !346
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %dev, i32 noundef %15, i32 noundef %19) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hamachi_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 6
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !349
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %conv = zext i16 %3 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %dev, i32 noundef %conv) #12
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %5) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end13.do.end13_crit_edge, %entry
  %i.0243 = phi i32 [ 0, %entry ], [ %inc, %do.end13.do.end13_crit_edge ]
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.hamachi_desc, ptr %7, i32 %i.0243
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %10) #12
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %do.end19, label %do.end13.do.end13_crit_edge

do.end13.do.end13_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end19:                                         ; preds = %do.end13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #12
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ring, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %12) #12
  br label %do.end33

do.end33:                                         ; preds = %do.end33.do.end33_crit_edge, %do.end19
  %i.1244 = phi i32 [ 0, %do.end19 ], [ %inc40, %do.end33.do.end33_crit_edge ]
  %13 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_ring, align 4
  %arrayidx36 = getelementptr %struct.hamachi_desc, ptr %14, i32 %i.1244
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx36, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %17) #12
  %inc40 = add nuw nsw i32 %i.1244, 1
  %exitcond253.not = icmp eq i32 %inc40, 64
  br i1 %exitcond253.not, label %do.end44, label %do.end33.do.end33_crit_edge

do.end33.do.end33_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

do.end44:                                         ; preds = %do.end33
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #12
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %18 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %if_port, align 2
  br label %for.body50

for.cond57.preheader:                             ; preds = %for.body50
  %pci_dev = getelementptr i8, ptr %dev, i32 4796
  br label %for.body60

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %do.end44
  %i.2245 = phi i32 [ 0, %do.end44 ], [ %inc55, %for.body50.for.body50_crit_edge ]
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx52 = getelementptr %struct.hamachi_desc, ptr %20, i32 %i.2245
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx52, align 4
  %and = and i32 %22, -129
  store i32 %and, ptr %arrayidx52, align 4
  %inc55 = add nuw nsw i32 %i.2245, 1
  %exitcond254.not = icmp eq i32 %inc55, 512
  br i1 %exitcond254.not, label %for.cond57.preheader, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.body60:                                       ; preds = %if.end81.for.body60_crit_edge, %for.cond57.preheader
  %i.3246 = phi i32 [ 0, %for.cond57.preheader ], [ %inc83, %if.end81.for.body60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.3246)
  %cmp61 = icmp eq i32 %i.3246, 63
  %23 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ring, align 4
  br i1 %cmp61, label %if.then, label %if.else

if.then:                                          ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx64 = getelementptr %struct.hamachi_desc, ptr %24, i32 63
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx64, align 4
  %and66 = and i32 %26, -65536
  %or = or i32 %and66, 32
  store i32 %or, ptr %arrayidx64, align 4
  br label %if.end

if.else:                                          ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx71 = getelementptr %struct.hamachi_desc, ptr %24, i32 %i.3246
  %27 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx71, align 4
  %and73 = and i32 %28, -65536
  store i32 %and73, ptr %arrayidx71, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx74 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.3246
  %29 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx74, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end.if.end81_crit_edge, label %if.then75

if.end.if.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then75:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 4
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring, align 4
  %addr = getelementptr %struct.hamachi_desc, ptr %34, i32 %i.3246, i32 1
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %len = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev76, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %30) #9
  %40 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx74, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %if.end.if.end81_crit_edge
  %inc83 = add nuw nsw i32 %i.3246, 1
  %exitcond255.not = icmp eq i32 %inc83, 64
  br i1 %exitcond255.not, label %for.end84, label %if.end81.for.body60_crit_edge

if.end81.for.body60_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

for.end84:                                        ; preds = %if.end81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 12884880) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %add.ptr88 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88, i16 512) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  tail call void @arm_heavy_mb() #9
  %add.ptr92 = getelementptr i8, ptr %1, i32 107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92, i8 1) #9, !srcloc !338
  %tx_full = getelementptr i8, ptr %dev, i32 4740
  %42 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %tx_full, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %tx_full, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 4720
  %dirty_rx = getelementptr i8, ptr %dev, i32 4724
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 4736
  %43 = call ptr @memset(ptr %cur_rx, i32 0, i32 16)
  br label %for.body96

for.body96:                                       ; preds = %if.end108.for.body96_crit_edge, %for.end84
  %i.4248 = phi i32 [ 0, %for.end84 ], [ %inc110, %if.end108.for.body96_crit_edge ]
  %arrayidx98 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.4248
  %44 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %45, null
  br i1 %tobool99.not, label %for.body96.if.end108_crit_edge, label %if.then100

for.body96.if.end108_crit_edge:                   ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then100:                                       ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  %addr105 = getelementptr %struct.hamachi_desc, ptr %49, i32 %i.4248, i32 1
  %50 = ptrtoint ptr %addr105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr105, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev102, i32 noundef %52, i32 noundef %54, i32 noundef 2, i32 noundef 0) #9
  tail call void @consume_skb(ptr noundef nonnull %45) #9
  %55 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx98, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %for.body96.if.end108_crit_edge
  %inc110 = add nuw nsw i32 %i.4248, 1
  %exitcond256.not = icmp eq i32 %inc110, 512
  br i1 %exitcond256.not, label %if.end108.for.body115_crit_edge, label %if.end108.for.body96_crit_edge

if.end108.for.body96_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body96

if.end108.for.body115_crit_edge:                  ; preds = %if.end108
  br label %for.body115

for.body115:                                      ; preds = %for.inc137.for.body115_crit_edge, %if.end108.for.body115_crit_edge
  %i.5250 = phi i32 [ %inc138, %for.inc137.for.body115_crit_edge ], [ 0, %if.end108.for.body115_crit_edge ]
  %56 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_buf_sz, align 4
  %add.i.i = add i32 %57, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cleanup, label %if.end124

if.end124:                                        ; preds = %for.body115
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %61, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %arrayidx120 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.5250
  %62 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i, ptr %arrayidx120, align 4
  %63 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci_dev, align 4
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %65 = load ptr, ptr %data.i.i.i, align 4
  %66 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_buf_sz, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %65) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end124
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.for.inc137_crit_edge, label %if.then.i, !prof !366

land.rhs.i.for.inc137_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc137

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev126) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44, i32 3
  %68 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i235 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i235, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev126, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %71, %if.end.i.i ], [ %69, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %for.inc137

if.end39.i:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev126, ptr noundef %65, i32 noundef %67) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %65 to i32
  %sub.i = add i32 %73, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i236 = getelementptr %struct.page, ptr %72, i32 %shr.i
  %and.i = and i32 %73, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev126, ptr noundef %add.ptr.i236, i32 noundef %and.i, i32 noundef %67, i32 noundef 2, i32 noundef 0) #9
  br label %for.inc137

cleanup:                                          ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx120238 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.5250
  %74 = ptrtoint ptr %arrayidx120238 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx120238, align 4
  br label %for.end139

for.inc137:                                       ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.for.inc137_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.for.inc137_crit_edge ]
  %75 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 4
  %addr131 = getelementptr %struct.hamachi_desc, ptr %77, i32 %i.5250, i32 1
  %78 = ptrtoint ptr %addr131 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %addr131, align 4
  %79 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_buf_sz, align 4
  %sub = add i32 %80, 1073741822
  %or133 = or i32 %sub, -805306368
  %81 = tail call i32 @llvm.bswap.i32(i32 %or133)
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx135 = getelementptr %struct.hamachi_desc, ptr %83, i32 %i.5250
  %84 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %arrayidx135, align 4
  %inc138 = add nuw nsw i32 %i.5250, 1
  %exitcond257.not = icmp eq i32 %inc138, 512
  br i1 %exitcond257.not, label %for.inc137.for.end139_crit_edge, label %for.inc137.for.body115_crit_edge

for.inc137.for.body115_crit_edge:                 ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body115

for.inc137.for.end139_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end139

for.end139:                                       ; preds = %for.inc137.for.end139_crit_edge, %cleanup
  %i.5242 = phi i32 [ %i.5250, %cleanup ], [ 512, %for.inc137.for.end139_crit_edge ]
  %sub140 = add nsw i32 %i.5242, -512
  %85 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub140, ptr %dirty_rx, align 4
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx143 = getelementptr %struct.hamachi_desc, ptr %87, i32 511
  %88 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx143, align 4
  %or145 = or i32 %89, 32
  store i32 %or145, ptr %arrayidx143, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 12
  %93 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp.not.i.i = icmp eq i32 %94, %92
  br i1 %cmp.not.i.i, label %for.end139.netif_trans_update.exit_crit_edge, label %do.body5.i.i

for.end139.netif_trans_update.exit_crit_edge:     ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %92, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %for.end139.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %96 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_errors, align 4
  %inc146 = add i32 %97, 1
  store i32 %inc146, ptr %tx_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %add.ptr150 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr150, i16 512) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr150, i16 256) #9, !srcloc !336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88, i16 256) #9, !srcloc !336
  %98 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %99) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hamachi_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %4 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_bytes, align 8
  %add.ptr5 = getelementptr i8, ptr %1, i32 944
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !346
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %7 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tx_bytes, align 4
  %add.ptr12 = getelementptr i8, ptr %1, i32 800
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !346
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %10 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %multicast, align 8
  %add.ptr19 = getelementptr i8, ptr %1, i32 872
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !346
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %13 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_length_errors, align 8
  %add.ptr26 = getelementptr i8, ptr %1, i32 860
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !346
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %16 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_over_errors, align 4
  %add.ptr33 = getelementptr i8, ptr %1, i32 864
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !346
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %19 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rx_crc_errors, align 8
  %add.ptr40 = getelementptr i8, ptr %1, i32 868
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !346
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %22 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rx_frame_errors, align 4
  %add.ptr47 = getelementptr i8, ptr %1, i32 876
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !346
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %25 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rx_missed_errors, align 4
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %base = getelementptr i8, ptr %dev_instance, i32 4800
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = load i32, ptr @max_interrupt_work, align 4
  %lock = getelementptr i8, ptr %dev_instance, i32 4672
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %cur_rx.i = getelementptr i8, ptr %dev_instance, i32 4720
  %dirty_rx.i = getelementptr i8, ptr %dev_instance, i32 4724
  %pci_dev.i = getelementptr i8, ptr %dev_instance, i32 4796
  %rx_buf_sz.i = getelementptr i8, ptr %dev_instance, i32 4736
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 10
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 6
  %stats236.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36
  %tx_full = getelementptr i8, ptr %dev_instance, i32 4740
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 4728
  %dirty_tx = getelementptr i8, ptr %dev_instance, i32 4732
  %tx_ring = getelementptr i8, ptr %dev_instance, i32 2308
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 2
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %multicast.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 8
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 11
  %rx_missed_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 15
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 14
  br label %do.body

do.body:                                          ; preds = %if.end58.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ 1, %if.end58.do.body_crit_edge ]
  %boguscnt.0 = phi i32 [ %2, %entry ], [ %dec, %if.end58.do.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp sgt i32 %5, 4
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %dev_instance, i32 noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %if.end.do.end73_crit_edge, label %if.end8

if.end.do.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

if.end8:                                          ; preds = %if.end
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8.if.end11_crit_edge, label %if.then9

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_rx.i, align 4
  %rem.i = and i32 %7, 511
  %8 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty_rx.i, align 4
  %add.i = sub i32 512, %7
  %sub.i = add i32 %add.i, %9
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.i = icmp sgt i32 %10, 4
  br i1 %cmp.i, label %do.end.i, label %if.then9.if.end.i_crit_edge

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.i = getelementptr %struct.hamachi_desc, ptr %12, i32 %rem.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %rem.i, i32 noundef %14) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then9.if.end.i_crit_edge
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx5.i159 = getelementptr %struct.hamachi_desc, ptr %16, i32 %rem.i
  %17 = ptrtoint ptr %arrayidx5.i159 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i159, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool.not.i160 = icmp sgt i32 %19, -1
  br i1 %tobool.not.i160, label %if.end.i.if.end8.i_crit_edge, label %if.end.i.for.cond.preheader.i_crit_edge

if.end.i.for.cond.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %20 = phi i32 [ %139, %cleanup.i.if.end8.i_crit_edge ], [ %19, %if.end.i.if.end8.i_crit_edge ]
  %arrayidx5.i164 = phi ptr [ %arrayidx5.i, %cleanup.i.if.end8.i_crit_edge ], [ %arrayidx5.i159, %if.end.i.if.end8.i_crit_edge ]
  %21 = phi ptr [ %136, %cleanup.i.if.end8.i_crit_edge ], [ %16, %if.end.i.if.end8.i_crit_edge ]
  %entry1.0.i162 = phi i32 [ %rem241.i, %cleanup.i.if.end8.i_crit_edge ], [ %rem.i, %if.end.i.if.end8.i_crit_edge ]
  %boguscnt.0.i161 = phi i32 [ %dec.i, %cleanup.i.if.end8.i_crit_edge ], [ %sub.i, %if.end.i.if.end8.i_crit_edge ]
  %22 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %addr.i = getelementptr %struct.hamachi_desc, ptr %21, i32 %entry1.0.i162, i32 1
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %27 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev9.i, i32 noundef %26, i32 noundef %28, i32 noundef 2) #9
  %arrayidx10.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %entry1.0.i162
  %29 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %conv11.i = and i32 %20, 65535
  %sub12.i = add nsw i32 %conv11.i, -12
  %arrayidx13.i = getelementptr i8, ptr %32, i32 %sub12.i
  %33 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx13.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp15.i = icmp sgt i32 %36, 4
  br i1 %cmp15.i, label %do.end20.i, label %if.end8.i.if.end23.i_crit_edge

if.end8.i.if.end23.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.end20.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %35) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end20.i, %if.end8.i.if.end23.i_crit_edge
  %dec.i = add i32 %boguscnt.0.i161, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp24.i = icmp slt i32 %dec.i, 0
  br i1 %cmp24.i, label %if.end23.i.for.cond.preheader.i_crit_edge, label %if.end27.i

if.end23.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.end27.i:                                       ; preds = %if.end23.i
  %and28.i = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.end33.i, label %if.end27.i.if.end76.i_crit_edge

if.end27.i.if.end76.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_rx.i, align 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dev_instance, i32 noundef %38, i32 noundef %conv11.i, i32 noundef %20) #12
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %41 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_rx.i, align 4
  %rem46.i = and i32 %42, 511
  %arrayidx47.i = getelementptr %struct.hamachi_desc, ptr %40, i32 %rem46.i
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %dev_instance, ptr noundef %arrayidx5.i164, ptr noundef %arrayidx47.i) #12
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %45 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cur_rx.i, align 4
  %add57.i = add i32 %46, 1
  %rem58.i = and i32 %add57.i, 511
  %arrayidx59.i = getelementptr %struct.hamachi_desc, ptr %44, i32 %rem58.i
  %47 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx59.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %and61.i = and i32 %49, -65536
  %and68.i = and i32 %49, 65535
  %sub71.i = add i32 %46, 511
  %rem72.i = and i32 %sub71.i, 511
  %arrayidx73.i = getelementptr %struct.hamachi_desc, ptr %44, i32 %rem72.i
  %50 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx73.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %dev_instance, i32 noundef %and61.i, i32 noundef %and68.i, i32 noundef %52) #12
  %53 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_length_errors.i, align 8
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %rx_length_errors.i, align 8
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.end33.i, %if.end27.i.if.end76.i_crit_edge
  %and77.i = and i32 %35, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.else.i, label %if.then79.i

if.then79.i:                                      ; preds = %if.end76.i
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp80.i = icmp sgt i32 %55, 2
  br i1 %cmp80.i, label %do.end85.i, label %if.then79.i.if.end88.i_crit_edge

if.then79.i.if.end88.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

do.end85.i:                                       ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %35) #12
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end85.i, %if.then79.i.if.end88.i_crit_edge
  %56 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_errors.i, align 8
  %inc90.i = add i32 %57, 1
  store i32 %inc90.i, ptr %rx_errors.i, align 8
  %and91.i = and i32 %35, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end88.i.if.end97.i_crit_edge, label %if.then93.i

if.end88.i.if.end97.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97.i

if.then93.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_length_errors.i, align 8
  %inc96.i = add i32 %59, 1
  store i32 %inc96.i, ptr %rx_length_errors.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then93.i, %if.end88.i.if.end97.i_crit_edge
  %and98.i = and i32 %35, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.end97.i.if.end103.i_crit_edge, label %if.then100.i

if.end97.i.if.end103.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

if.then100.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_frame_errors.i, align 4
  %inc102.i = add i32 %61, 1
  store i32 %inc102.i, ptr %rx_frame_errors.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then100.i, %if.end97.i.if.end103.i_crit_edge
  %and104.i = and i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end109.i_crit_edge, label %if.then106.i

if.end103.i.if.end109.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_crc_errors.i, align 8
  %inc108.i = add i32 %63, 1
  store i32 %inc108.i, ptr %rx_crc_errors.i, align 8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end109.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp110.i = icmp slt i32 %35, 0
  br i1 %cmp110.i, label %if.end109.i.cleanup.sink.split.i_crit_edge, label %if.end109.i.cleanup.i_crit_edge

if.end109.i.cleanup.i_crit_edge:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end109.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end76.i
  %64 = and i32 %35, 2047
  %conv118.i = add nuw nsw i32 %64, 65532
  %sub120.i = add nsw i32 %conv11.i, -8
  %arrayidx121.i = getelementptr i8, ptr %32, i32 %sub120.i
  %65 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx121.i, align 4
  %conv122.i = and i32 %conv118.i, 65535
  %67 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv122.i, i32 %67)
  %cmp123.i = icmp slt i32 %conv122.i, %67
  br i1 %cmp123.i, label %land.lhs.true.i, label %if.else.i.if.else156.i_crit_edge

if.else.i.if.else156.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else156.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %add126.i = add nuw nsw i32 %conv122.i, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add126.i, i32 noundef 2592) #9
  %cmp128.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp128.not.i, label %land.lhs.true.i.if.else156.i_crit_edge, label %do.end133.i

land.lhs.true.i.if.else156.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else156.i

do.end133.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %dev_instance) #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %68 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %69, i32 2
  store ptr %add.ptr.i3.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %71, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %72 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_dev.i, align 4
  %dev139.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  %addr142.i = getelementptr %struct.hamachi_desc, ptr %75, i32 %entry1.0.i162, i32 1
  %76 = ptrtoint ptr %addr142.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr142.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  %79 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev139.i, i32 noundef %78, i32 noundef %80, i32 noundef 2) #9
  %81 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx10.i, align 4
  %data146.i = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %data146.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data146.i, align 4
  %85 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %84, i32 %conv122.i)
  %call149.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv122.i) #9
  %88 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pci_dev.i, align 4
  %dev151.i = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  %addr154.i = getelementptr %struct.hamachi_desc, ptr %91, i32 %entry1.0.i162, i32 1
  %92 = ptrtoint ptr %addr154.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr154.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  %95 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev151.i, i32 noundef %94, i32 noundef %96, i32 noundef 2) #9
  br label %if.end169.i

if.else156.i:                                     ; preds = %land.lhs.true.i.if.else156.i_crit_edge, %if.else.i.if.else156.i_crit_edge
  %97 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci_dev.i, align 4
  %dev158.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 4
  %addr161.i = getelementptr %struct.hamachi_desc, ptr %100, i32 %entry1.0.i162, i32 1
  %101 = ptrtoint ptr %addr161.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %addr161.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #9
  %104 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev158.i, i32 noundef %103, i32 noundef %105, i32 noundef 2, i32 noundef 0) #9
  %106 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx10.i, align 4
  %call166.i = tail call ptr @skb_put(ptr noundef %107, i32 noundef %conv122.i) #9
  %108 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %arrayidx10.i, align 4
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.else156.i, %do.end133.i
  %skb.0.i = phi ptr [ %call.i.i, %do.end133.i ], [ %107, %if.else156.i ]
  %call170.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_instance) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %109 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %call170.i, ptr %protocol.i, align 8
  %shr.i = lshr i32 %66, 24
  %trunc.i = trunc i32 %shr.i to i8
  %110 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %trunc.i, label %if.end169.i.if.end234.i_crit_edge [
    i8 -111, label %if.end169.i.if.then176.i_crit_edge
    i8 81, label %if.end169.i.if.then176.i_crit_edge179
  ]

if.end169.i.if.then176.i_crit_edge179:            ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176.i

if.end169.i.if.then176.i_crit_edge:               ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then176.i

if.end169.i.if.end234.i_crit_edge:                ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234.i

if.then176.i:                                     ; preds = %if.end169.i.if.then176.i_crit_edge, %if.end169.i.if.then176.i_crit_edge179
  %data177.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %111 = ptrtoint ptr %data177.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data177.i, align 4
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %tot_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %114)
  %cmp179.i = icmp ugt i16 %114, 45
  br i1 %cmp179.i, label %if.then181.i, label %if.then176.i.if.end234.i_crit_edge

if.then176.i.if.end234.i_crit_edge:               ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234.i

if.then181.i:                                     ; preds = %if.then176.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %112, i32 0, i32 4
  %115 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %frag_off.i, align 2
  %117 = and i16 %116, 8194
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool184.not.i = icmp eq i16 %117, 0
  br i1 %tobool184.not.i, label %if.then185.i, label %if.then181.i.if.end234.i_crit_edge

if.then181.i.if.end234.i_crit_edge:               ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end234.i

if.then185.i:                                     ; preds = %if.then181.i
  %sub187.i = add nsw i32 %conv11.i, -16
  %arrayidx188.i = getelementptr i8, ptr %32, i32 %sub187.i
  %118 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx188.i, align 4
  %sub190.i = add nsw i32 %conv11.i, -20
  %arrayidx191.i = getelementptr i8, ptr %32, i32 %sub190.i
  %and195.i = and i32 %119, -5
  %and192.i = shl i32 %119, 29
  %sext.i = ashr i32 %and192.i, 31
  %p.0.i = getelementptr i32, ptr %arrayidx191.i, i32 %sext.i
  %120 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %p.0.i, align 4
  %add.ptr.i139 = getelementptr i32, ptr %p.0.i, i32 -1
  %122 = ptrtoint ptr %add.ptr.i139 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %add.ptr.i139, align 4
  %124 = zext i32 %and195.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and195.i, label %if.then185.i.sw.epilog.thread.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb200.i
    i32 2, label %sw.bb207.i
    i32 3, label %sw.bb210.i
  ]

if.then185.i.sw.epilog.thread.i_crit_edge:        ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

sw.bb.i:                                          ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %and197.i = and i32 %121, 65535
  %shr198.i = lshr i32 %121, 16
  %add199.i = add nuw nsw i32 %and197.i, %shr198.i
  br label %sw.epilog.i

sw.bb200.i:                                       ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr201.i = lshr i32 %121, 16
  %and202.i = and i32 %121, 65535
  %add203.i = add nuw nsw i32 %shr201.i, %and202.i
  %shr204.i = lshr i32 %123, 16
  %and205.i = and i32 %shr204.i, 65280
  %add206.i = add nuw nsw i32 %add203.i, %and205.i
  br label %sw.epilog.i

sw.bb207.i:                                       ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr208.i = lshr i32 %123, 16
  %add209.i = add i32 %shr208.i, %121
  br label %sw.epilog.i

sw.bb210.i:                                       ; preds = %if.then185.i
  call void @__sanitizer_cov_trace_pc() #11
  %and211.i = and i32 %123, 65280
  %add212.i = add i32 %and211.i, %121
  %shr213.i = lshr i32 %123, 16
  %add214.i = add i32 %add212.i, %shr213.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb210.i, %sw.bb207.i, %sw.bb200.i, %sw.bb.i
  %crc.0.i = phi i32 [ %add214.i, %sw.bb210.i ], [ %add209.i, %sw.bb207.i ], [ %add206.i, %sw.bb200.i ], [ %add199.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %crc.0.i)
  %tobool216.not.i = icmp ult i32 %crc.0.i, 65536
  %and218.i = and i32 %crc.0.i, 65535
  %inc219.i = add nuw nsw i32 %and218.i, 1
  br i1 %tobool216.not.i, label %sw.epilog.i.sw.epilog.thread.i_crit_edge, label %sw.epilog.i._crit_edge

sw.epilog.i._crit_edge:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %125

sw.epilog.i.sw.epilog.thread.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.epilog.i.sw.epilog.thread.i_crit_edge, %if.then185.i.sw.epilog.thread.i_crit_edge
  %crc.016.i = phi i32 [ %crc.0.i, %sw.epilog.i.sw.epilog.thread.i_crit_edge ], [ 0, %if.then185.i.sw.epilog.thread.i_crit_edge ]
  br label %125

125:                                              ; preds = %sw.epilog.thread.i, %sw.epilog.i._crit_edge
  %126 = phi i32 [ %crc.016.i, %sw.epilog.thread.i ], [ %inc219.i, %sw.epilog.i._crit_edge ]
  %conv223.i = and i32 %66, 65535
  %127 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %conv223.i, i32 %126)
  %cmp224.i = icmp ugt i32 %conv223.i, %126
  %neg.i = and i32 %126, 65535
  %and229.i = xor i32 %neg.i, 65535
  %128 = sub nsw i32 0, %126
  %storemerge1.p.i = select i1 %cmp224.i, i32 %128, i32 %and229.i
  %storemerge1.i = add i32 %storemerge1.p.i, %conv223.i
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge1.i, ptr %127, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15
  %130 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end234.i

if.end234.i:                                      ; preds = %125, %if.then181.i.if.end234.i_crit_edge, %if.then176.i.if.end234.i_crit_edge, %if.end169.i.if.end234.i_crit_edge
  %call235.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end234.i, %if.end109.i.cleanup.sink.split.i_crit_edge
  %stats236.sink24.i = phi ptr [ %stats236.i, %if.end234.i ], [ %rx_dropped.i, %if.end109.i.cleanup.sink.split.i_crit_edge ]
  %131 = ptrtoint ptr %stats236.sink24.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %stats236.sink24.i, align 8
  %inc237.i = add i32 %132, 1
  store i32 %inc237.i, ptr %stats236.sink24.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.end109.i.cleanup.i_crit_edge
  %133 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cur_rx.i, align 4
  %inc240.i = add i32 %134, 1
  store i32 %inc240.i, ptr %cur_rx.i, align 4
  %rem241.i = and i32 %inc240.i, 511
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx5.i = getelementptr %struct.hamachi_desc, ptr %136, i32 %rem241.i
  %137 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx5.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #9
  %tobool.not.i = icmp sgt i32 %139, -1
  br i1 %tobool.not.i, label %cleanup.i.if.end8.i_crit_edge, label %cleanup.i.for.cond.preheader.i_crit_edge

cleanup.i.for.cond.preheader.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

cleanup.i.if.end8.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.cond.preheader.i:                             ; preds = %cleanup.i.for.cond.preheader.i_crit_edge, %if.end23.i.for.cond.preheader.i_crit_edge, %if.end.i.for.cond.preheader.i_crit_edge
  %140 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cur_rx.i, align 4
  %142 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dirty_rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp249.not20.i = icmp eq i32 %141, %143
  br i1 %cmp249.not20.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %144 = phi i32 [ %inc295.i, %for.inc.i.for.body.i_crit_edge ], [ %143, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rem253.i = and i32 %144, 511
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx255.i = getelementptr %struct.hamachi_desc, ptr %146, i32 %rem253.i
  %arrayidx257.i = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 2, i32 %rem253.i
  %147 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx257.i, align 4
  %cmp258.i = icmp eq ptr %148, null
  br i1 %cmp258.i, label %if.then260.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then260.i:                                     ; preds = %for.body.i
  %149 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rx_buf_sz.i, align 4
  %add263.i = add i32 %150, 2
  %call.i5.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add263.i, i32 noundef 2592) #9
  %151 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i5.i, ptr %arrayidx257.i, align 4
  %cmp267.i = icmp eq ptr %call.i5.i, null
  br i1 %cmp267.i, label %if.then260.i.for.end.i_crit_edge, label %if.end270.i

if.then260.i.for.end.i_crit_edge:                 ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end270.i:                                      ; preds = %if.then260.i
  %data.i6.i = getelementptr inbounds %struct.sk_buff, ptr %call.i5.i, i32 0, i32 19
  %152 = ptrtoint ptr %data.i6.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %153, i32 2
  store ptr %add.ptr.i7.i, ptr %data.i6.i, align 4
  %tail.i8.i = getelementptr inbounds %struct.sk_buff, ptr %call.i5.i, i32 0, i32 16
  %154 = ptrtoint ptr %tail.i8.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tail.i8.i, align 8
  %add.ptr1.i9.i = getelementptr i8, ptr %155, i32 2
  store ptr %add.ptr1.i9.i, ptr %tail.i8.i, align 8
  %156 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pci_dev.i, align 4
  %dev272.i = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44
  %158 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i10.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i7.i) #9
  br i1 %call.i10.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end270.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup277.i_crit_edge, label %if.then.i.i, !prof !366

land.rhs.i.i.cleanup277.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup277.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev272.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %157, i32 0, i32 44, i32 3
  %160 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %161, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %dev272.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev272.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %163, %if.end.i.i.i ], [ %161, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %cleanup277.i

if.end39.i.i:                                     ; preds = %if.end270.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev272.i, ptr noundef %add.ptr.i7.i, i32 noundef %159) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %164 = load ptr, ptr @mem_map, align 4
  %165 = ptrtoint ptr %add.ptr.i7.i to i32
  %sub.i.i = add i32 %165, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i11.i = getelementptr %struct.page, ptr %164, i32 %shr.i.i
  %and.i.i = and i32 %165, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev272.i, ptr noundef %add.ptr.i11.i, i32 noundef %and.i.i, i32 noundef %159, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup277.i

cleanup277.i:                                     ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.cleanup277.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.cleanup277.i_crit_edge ]
  %166 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  %addr276.i = getelementptr %struct.hamachi_desc, ptr %146, i32 %rem253.i, i32 1
  %167 = ptrtoint ptr %addr276.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %addr276.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup277.i, %for.body.i.for.inc.i_crit_edge
  %168 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rx_buf_sz.i, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %rem253.i)
  %cmp283.i = icmp eq i32 %rem253.i, 511
  %storemerge.v.i = select i1 %cmp283.i, i32 240, i32 208
  %storemerge.i = or i32 %170, %storemerge.v.i
  %171 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %storemerge.i, ptr %arrayidx255.i, align 4
  %172 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dirty_rx.i, align 4
  %inc295.i = add i32 %173, 1
  store i32 %inc295.i, ptr %dirty_rx.i, align 4
  %174 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cur_rx.i, align 4
  %cmp249.not.i = icmp eq i32 %175, %inc295.i
  br i1 %cmp249.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then260.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr296.i = getelementptr i8, ptr %177, i32 38
  %178 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr296.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  %179 = and i16 %178, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %179)
  %tobool302.not.i = icmp eq i16 %179, 0
  br i1 %tobool302.not.i, label %for.end.i.if.end11_crit_edge, label %do.body304.i

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body304.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void @arm_heavy_mb() #9
  %180 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base, align 4
  %add.ptr308.i = getelementptr i8, ptr %181, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr308.i, i16 256) #9, !srcloc !336
  br label %if.end11

if.end11:                                         ; preds = %do.body304.i, %for.end.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %and12 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end54_crit_edge, label %if.then14

if.end11.if.end54_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then14:                                        ; preds = %if.end11
  %182 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load = load i8, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool15.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool15.not, label %if.then14.if.end54.sink.split_crit_edge, label %for.cond.preheader

if.then14.if.end54.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

for.cond.preheader:                               ; preds = %if.then14
  %183 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cur_tx, align 4
  %185 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %186)
  %cmp17.not165 = icmp eq i32 %184, %186
  br i1 %cmp17.not165, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %187 = phi i32 [ %inc44, %for.inc.for.body_crit_edge ], [ %186, %for.cond.preheader.for.body_crit_edge ]
  %rem = and i32 %187, 63
  %188 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.hamachi_desc, ptr %189, i32 %rem
  %190 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx, align 4
  %and20 = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end23:                                         ; preds = %for.body
  %arrayidx24 = getelementptr %struct.hamachi_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %192 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %193, null
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pci_dev.i, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 44
  %addr = getelementptr %struct.hamachi_desc, ptr %189, i32 %rem, i32 1
  %196 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %addr, align 4
  %198 = tail call i32 @llvm.bswap.i32(i32 %197)
  %len = getelementptr inbounds %struct.sk_buff, ptr %193, i32 0, i32 6
  %199 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev27, i32 noundef %198, i32 noundef %200, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %193, i32 noundef 0) #9
  %201 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %arrayidx24, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23.if.end32_crit_edge
  %202 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %tx_ring, align 4
  %arrayidx34 = getelementptr %struct.hamachi_desc, ptr %203, i32 %rem
  %204 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem)
  %cmp36 = icmp eq i32 %rem, 63
  br i1 %cmp36, label %if.then37, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %205 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tx_ring, align 4
  %arrayidx39 = getelementptr %struct.hamachi_desc, ptr %206, i32 63
  %207 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx39, align 4
  %or = or i32 %208, 32
  store i32 %or, ptr %arrayidx39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %if.end32.for.inc_crit_edge
  %209 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %210, 1
  store i32 %inc, ptr %tx_packets, align 4
  %211 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dirty_tx, align 4
  %inc44 = add i32 %212, 1
  store i32 %inc44, ptr %dirty_tx, align 4
  %213 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cur_tx, align 4
  %cmp17.not = icmp eq i32 %214, %inc44
  br i1 %cmp17.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %215 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cur_tx, align 4
  %217 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %dirty_tx, align 4
  %sub47 = sub i32 %216, %218
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub47)
  %cmp48 = icmp ult i32 %sub47, 60
  br i1 %cmp48, label %if.then49, label %for.end.if.end54_crit_edge

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %219)
  %bf.load51 = load i8, ptr %tx_full, align 4
  %bf.clear = and i8 %bf.load51, 127
  store i8 %bf.clear, ptr %tx_full, align 4
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %if.then49, %if.then14.if.end54.sink.split_crit_edge
  %220 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %221) #9
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %for.end.if.end54_crit_edge, %if.end11.if.end54_crit_edge
  %and55 = and i32 %4, 460294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  %222 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base, align 4
  %and.i = and i32 %4, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i142 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i142, label %if.then57.if.end45.i_crit_edge, label %if.then.i

if.then57.if.end45.i_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then.i:                                        ; preds = %if.then57
  %224 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp.i143 = icmp sgt i32 %224, 1
  br i1 %cmp.i143, label %do.end.i146, label %if.then.i.if.end.i147_crit_edge

if.then.i.if.end.i147_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i147

do.end.i146:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i144 = getelementptr i8, ptr %223, i32 224
  %225 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i144) #9, !srcloc !349
  %226 = tail call i16 @llvm.bswap.i16(i16 %225) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %conv.i = zext i16 %226 to i32
  %add.ptr7.i = getelementptr i8, ptr %223, i32 226
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #9, !srcloc !349
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  %conv11.i145 = zext i16 %228 to i32
  %add.ptr14.i = getelementptr i8, ptr %223, i32 234
  %229 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i) #9, !srcloc !349
  %230 = tail call i16 @llvm.bswap.i16(i16 %229) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  %conv18.i = zext i16 %230 to i32
  %add.ptr21.i = getelementptr i8, ptr %223, i32 136
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !346
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev_instance, i32 noundef %conv.i, i32 noundef %conv11.i145, i32 noundef %conv18.i, i32 noundef %232) #12
  br label %if.end.i147

if.end.i147:                                      ; preds = %do.end.i146, %if.then.i.if.end.i147_crit_edge
  %add.ptr28.i = getelementptr i8, ptr %223, i32 226
  %233 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %234 = and i16 %233, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %tobool34.not.i = icmp eq i16 %234, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %add.ptr43.i = getelementptr i8, ptr %223, i32 108
  br i1 %tobool34.not.i, label %do.body40.i, label %do.body36.i

do.body36.i:                                      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43.i, i8 1) #9, !srcloc !338
  br label %if.end45.i

do.body40.i:                                      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43.i, i8 3) #9, !srcloc !338
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.body40.i, %do.body36.i, %if.then57.if.end45.i_crit_edge
  %and46.i = and i32 %4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end45.i.if.end62.i_crit_edge, label %if.then48.i

if.end45.i.if.end62.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %235 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %236, i32 816
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #9, !srcloc !346
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  %239 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %rx_bytes.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %236, i32 944
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #9, !srcloc !346
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  %242 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %tx_bytes.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %236, i32 800
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #9, !srcloc !346
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  %245 = ptrtoint ptr %multicast.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %244, ptr %multicast.i.i, align 8
  %add.ptr19.i.i = getelementptr i8, ptr %236, i32 872
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i.i) #9, !srcloc !346
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  %248 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %rx_length_errors.i, align 8
  %add.ptr26.i.i = getelementptr i8, ptr %236, i32 860
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i.i) #9, !srcloc !346
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %251 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %rx_over_errors.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %236, i32 864
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i.i) #9, !srcloc !346
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  %254 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %rx_crc_errors.i, align 8
  %add.ptr40.i.i = getelementptr i8, ptr %236, i32 868
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i.i) #9, !srcloc !346
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  %257 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %rx_frame_errors.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %236, i32 876
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i.i) #9, !srcloc !346
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  %260 = ptrtoint ptr %rx_missed_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %rx_missed_errors.i.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %223, i32 880
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  %add.ptr58.i = getelementptr i8, ptr %223, i32 1008
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then48.i, %if.end45.i.if.end62.i_crit_edge
  %and63.i = and i32 %4, -459010
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end62.i.if.end74.i_crit_edge, label %land.lhs.true.i148

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

land.lhs.true.i148:                               ; preds = %if.end62.i
  %263 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool65.not.i = icmp eq i32 %263, 0
  br i1 %tobool65.not.i, label %land.lhs.true.i148.if.end74.i_crit_edge, label %do.end69.i

land.lhs.true.i148.if.end74.i_crit_edge:          ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

do.end69.i:                                       ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #11
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %dev_instance, i32 noundef %4) #12
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end69.i, %land.lhs.true.i148.if.end74.i_crit_edge, %if.end62.i.if.end74.i_crit_edge
  %and75.i = and i32 %4, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end74.i.if.end78.i_crit_edge, label %if.then77.i

if.end74.i.if.end78.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then77.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  %264 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc.i149 = add i32 %265, 1
  store i32 %inc.i149, ptr %tx_fifo_errors.i, align 8
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then77.i, %if.end74.i.if.end78.i_crit_edge
  %and79.i = and i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end58_crit_edge, label %if.then81.i

if.end78.i.if.end58_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then81.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  %266 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc83.i = add i32 %267, 1
  store i32 %inc83.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then81.i, %if.end78.i.if.end58_crit_edge, %if.end54.if.end58_crit_edge
  %dec = add i32 %boguscnt.0, -1
  %cmp59 = icmp slt i32 %dec, 0
  br i1 %cmp59, label %do.end63, label %if.end58.do.body_crit_edge

if.end58.do.body_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %dev_instance, i32 noundef %4) #12
  br label %do.end73

do.end73:                                         ; preds = %do.end63, %if.end.do.end73_crit_edge
  %handled.1.ph = phi i32 [ 1, %do.end63 ], [ %handled.0, %if.end.do.end73_crit_edge ]
  %268 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %268)
  %cmp74 = icmp sgt i32 %268, 3
  br i1 %cmp74, label %do.end78, label %do.end73.if.end89_crit_edge

do.end73.if.end89_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end78:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr84 = getelementptr i8, ptr %1, i32 136
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #9, !srcloc !346
  %270 = tail call i32 @llvm.bswap.i32(i32 %269)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %dev_instance, i32 noundef %270) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end78, %do.end73.if.end89_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.ph)
  %tobool91.not = icmp ne i32 %handled.1.ph, 0
  %cond = zext i1 %tobool91.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hamachi_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr i8, ptr %t, i32 176
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %dev1 = getelementptr i8, ptr %t, i32 144
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 226
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #9, !srcloc !349
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  %conv = zext i16 %6 to i32
  %add.ptr8 = getelementptr i8, ptr %2, i32 234
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #9, !srcloc !349
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  %conv12 = zext i16 %8 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %4, i32 noundef %conv, i32 noundef %conv12) #12
  %add.ptr22 = getelementptr i8, ptr %2, i32 224
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #9, !srcloc !349
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  %conv26 = zext i16 %10 to i32
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #9, !srcloc !349
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  %conv33 = zext i16 %12 to i32
  %add.ptr36 = getelementptr i8, ptr %2, i32 228
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr36) #9, !srcloc !349
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  %conv40 = zext i16 %14 to i32
  %add.ptr43 = getelementptr i8, ptr %2, i32 230
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr43) #9, !srcloc !349
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  %conv47 = zext i16 %16 to i32
  %add.ptr50 = getelementptr i8, ptr %2, i32 232
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr50) #9, !srcloc !349
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %conv54 = zext i16 %18 to i32
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #9, !srcloc !349
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %conv61 = zext i16 %20 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %4, i32 noundef %conv26, i32 noundef %conv33, i32 noundef %conv40, i32 noundef %conv47, i32 noundef %conv54, i32 noundef %conv61) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 1000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %22 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hamachi_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.102, i32 noundef 32) #9
  %pci_dev = getelementptr i8, ptr %dev, i32 4796
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 4748
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 4748
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #9
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_if_running(ptr noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
define internal i32 @hamachi_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 4672
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 4748
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hamachi_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 4672
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %mii_if = getelementptr i8, ptr %dev, i32 4748
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !172, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !315, !317, !319, !321}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 510, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 511, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 512, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_max_interrupt_work, !8, !"__param_max_interrupt_work", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_interrupt_worktype345, !8, !"__UNIQUE_ID_max_interrupt_worktype345", i1 false, i1 false}
!10 = !{ptr @__param_mtu, !11, !"__param_mtu", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 515, i32 1}
!12 = !{ptr @__UNIQUE_ID_mtutype346, !11, !"__UNIQUE_ID_mtutype346", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 516, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype347, !14, !"__UNIQUE_ID_debugtype347", i1 false, i1 false}
!16 = !{ptr @__param_min_rx_pkt, !17, !"__param_min_rx_pkt", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 517, i32 1}
!18 = !{ptr @__UNIQUE_ID_min_rx_pkttype348, !17, !"__UNIQUE_ID_min_rx_pkttype348", i1 false, i1 false}
!19 = !{ptr @__param_max_rx_gap, !20, !"__param_max_rx_gap", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 518, i32 1}
!21 = !{ptr @__UNIQUE_ID_max_rx_gaptype349, !20, !"__UNIQUE_ID_max_rx_gaptype349", i1 false, i1 false}
!22 = !{ptr @__param_max_rx_latency, !23, !"__param_max_rx_latency", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 519, i32 1}
!24 = !{ptr @__UNIQUE_ID_max_rx_latencytype350, !23, !"__UNIQUE_ID_max_rx_latencytype350", i1 false, i1 false}
!25 = !{ptr @__param_min_tx_pkt, !26, !"__param_min_tx_pkt", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 520, i32 1}
!27 = !{ptr @__UNIQUE_ID_min_tx_pkttype351, !26, !"__UNIQUE_ID_min_tx_pkttype351", i1 false, i1 false}
!28 = !{ptr @__param_max_tx_gap, !29, !"__param_max_tx_gap", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 521, i32 1}
!30 = !{ptr @__UNIQUE_ID_max_tx_gaptype352, !29, !"__UNIQUE_ID_max_tx_gaptype352", i1 false, i1 false}
!31 = !{ptr @__param_max_tx_latency, !32, !"__param_max_tx_latency", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 522, i32 1}
!33 = !{ptr @__UNIQUE_ID_max_tx_latencytype353, !32, !"__UNIQUE_ID_max_tx_latencytype353", i1 false, i1 false}
!34 = !{ptr @__param_rx_copybreak, !35, !"__param_rx_copybreak", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 523, i32 1}
!36 = !{ptr @__UNIQUE_ID_rx_copybreaktype354, !35, !"__UNIQUE_ID_rx_copybreaktype354", i1 false, i1 false}
!37 = !{ptr @__param_rx_params, !38, !"__param_rx_params", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 524, i32 1}
!39 = !{ptr @__UNIQUE_ID_rx_paramstype355, !38, !"__UNIQUE_ID_rx_paramstype355", i1 false, i1 false}
!40 = !{ptr @__param_tx_params, !41, !"__param_tx_params", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 525, i32 1}
!42 = !{ptr @__UNIQUE_ID_tx_paramstype356, !41, !"__UNIQUE_ID_tx_paramstype356", i1 false, i1 false}
!43 = !{ptr @__param_options, !44, !"__param_options", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 526, i32 1}
!45 = !{ptr @__UNIQUE_ID_optionstype357, !44, !"__UNIQUE_ID_optionstype357", i1 false, i1 false}
!46 = !{ptr @__param_full_duplex, !47, !"__param_full_duplex", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 527, i32 1}
!48 = !{ptr @__UNIQUE_ID_full_duplextype358, !47, !"__UNIQUE_ID_full_duplextype358", i1 false, i1 false}
!49 = !{ptr @__param_force32, !50, !"__param_force32", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 528, i32 1}
!51 = !{ptr @__UNIQUE_ID_force32type359, !50, !"__UNIQUE_ID_force32type359", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_max_interrupt_work360, !53, !"__UNIQUE_ID_max_interrupt_work360", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 529, i32 1}
!54 = !{ptr @__UNIQUE_ID_mtu361, !55, !"__UNIQUE_ID_mtu361", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 530, i32 1}
!56 = !{ptr @__UNIQUE_ID_debug362, !57, !"__UNIQUE_ID_debug362", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 531, i32 1}
!58 = !{ptr @__UNIQUE_ID_min_rx_pkt363, !59, !"__UNIQUE_ID_min_rx_pkt363", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 532, i32 1}
!60 = !{ptr @__UNIQUE_ID_max_rx_gap364, !61, !"__UNIQUE_ID_max_rx_gap364", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 533, i32 1}
!62 = !{ptr @__UNIQUE_ID_max_rx_latency365, !63, !"__UNIQUE_ID_max_rx_latency365", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 534, i32 1}
!64 = !{ptr @__UNIQUE_ID_min_tx_pkt366, !65, !"__UNIQUE_ID_min_tx_pkt366", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 535, i32 1}
!66 = !{ptr @__UNIQUE_ID_max_tx_gap367, !67, !"__UNIQUE_ID_max_tx_gap367", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 536, i32 1}
!68 = !{ptr @__UNIQUE_ID_max_tx_latency368, !69, !"__UNIQUE_ID_max_tx_latency368", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 537, i32 1}
!70 = !{ptr @__UNIQUE_ID_rx_copybreak369, !71, !"__UNIQUE_ID_rx_copybreak369", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 538, i32 1}
!72 = !{ptr @__UNIQUE_ID_rx_params370, !73, !"__UNIQUE_ID_rx_params370", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 539, i32 1}
!74 = !{ptr @__UNIQUE_ID_tx_params371, !75, !"__UNIQUE_ID_tx_params371", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 540, i32 1}
!76 = !{ptr @__UNIQUE_ID_options372, !77, !"__UNIQUE_ID_options372", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 541, i32 1}
!78 = !{ptr @__UNIQUE_ID_full_duplex373, !79, !"__UNIQUE_ID_full_duplex373", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 542, i32 1}
!80 = !{ptr @__UNIQUE_ID_force32374, !81, !"__UNIQUE_ID_force32374", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 543, i32 1}
!82 = !{ptr @__initcall__kmod_hamachi__375_1966_hamachi_init6, !83, !"__initcall__kmod_hamachi__375_1966_hamachi_init6", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1966, i32 1}
!84 = !{ptr @__exitcall_hamachi_exit, !85, !"__exitcall_hamachi_exit", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1967, i32 1}
!86 = !{ptr @mtu, !87, !"mtu", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 41, i32 12}
!88 = !{ptr @rx_copybreak, !89, !"rx_copybreak", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 57, i32 12}
!90 = !{ptr @force32, !91, !"force32", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 63, i32 12}
!92 = !{ptr @__param_str_max_interrupt_work, !8, !"__param_str_max_interrupt_work", i1 false, i1 false}
!93 = !{ptr @max_interrupt_work, !94, !"max_interrupt_work", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 40, i32 12}
!95 = !{ptr @__param_str_mtu, !11, !"__param_str_mtu", i1 false, i1 false}
!96 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!97 = !{ptr @debug, !98, !"debug", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 36, i32 12}
!99 = !{ptr @__param_str_min_rx_pkt, !17, !"__param_str_min_rx_pkt", i1 false, i1 false}
!100 = !{ptr @min_rx_pkt, !101, !"min_rx_pkt", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 48, i32 12}
!102 = !{ptr @__param_str_max_rx_gap, !20, !"__param_str_max_rx_gap", i1 false, i1 false}
!103 = !{ptr @max_rx_gap, !104, !"max_rx_gap", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 47, i32 12}
!105 = !{ptr @__param_str_max_rx_latency, !23, !"__param_str_max_rx_latency", i1 false, i1 false}
!106 = !{ptr @max_rx_latency, !107, !"max_rx_latency", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 46, i32 12}
!108 = !{ptr @__param_str_min_tx_pkt, !26, !"__param_str_min_tx_pkt", i1 false, i1 false}
!109 = !{ptr @min_tx_pkt, !110, !"min_tx_pkt", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 51, i32 12}
!111 = !{ptr @__param_str_max_tx_gap, !29, !"__param_str_max_tx_gap", i1 false, i1 false}
!112 = !{ptr @max_tx_gap, !113, !"max_tx_gap", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 50, i32 12}
!114 = !{ptr @__param_str_max_tx_latency, !32, !"__param_str_max_tx_latency", i1 false, i1 false}
!115 = !{ptr @max_tx_latency, !116, !"max_tx_latency", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 49, i32 12}
!117 = !{ptr @__param_str_rx_copybreak, !35, !"__param_str_rx_copybreak", i1 false, i1 false}
!118 = !{ptr @__param_str_rx_params, !38, !"__param_str_rx_params", i1 false, i1 false}
!119 = !{ptr @__param_arr_rx_params, !38, !"__param_arr_rx_params", i1 false, i1 false}
!120 = !{ptr @rx_params, !121, !"rx_params", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 103, i32 12}
!122 = !{ptr @__param_str_tx_params, !41, !"__param_str_tx_params", i1 false, i1 false}
!123 = !{ptr @__param_arr_tx_params, !41, !"__param_arr_tx_params", i1 false, i1 false}
!124 = !{ptr @tx_params, !125, !"tx_params", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 104, i32 12}
!126 = !{ptr @__param_str_options, !44, !"__param_str_options", i1 false, i1 false}
!127 = !{ptr @__param_arr_options, !44, !"__param_arr_options", i1 false, i1 false}
!128 = !{ptr @options, !129, !"options", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 86, i32 12}
!130 = !{ptr @__param_str_full_duplex, !47, !"__param_str_full_duplex", i1 false, i1 false}
!131 = !{ptr @__param_arr_full_duplex, !47, !"__param_arr_full_duplex", i1 false, i1 false}
!132 = !{ptr @full_duplex, !133, !"full_duplex", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 87, i32 12}
!134 = !{ptr @__param_str_force32, !50, !"__param_str_force32", i1 false, i1 false}
!135 = !{ptr @.str, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1945, i32 11}
!137 = !{ptr @hamachi_driver, !138, !"hamachi_driver", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1944, i32 26}
!139 = !{ptr @hamachi_pci_tbl, !140, !"hamachi_pci_tbl", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1938, i32 35}
!141 = !{ptr @hamachi_init_one.card_idx, !142, !"card_idx", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 590, i32 13}
!143 = !{ptr @hamachi_init_one.printed_version, !144, !"printed_version", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 599, i32 13}
!145 = !{ptr @.str.1, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 601, i32 3}
!147 = !{ptr @.str.2, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @hamachi_init_one._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @hamachi_init_one._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @hamachi_init_one.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 643, i32 2}
!152 = !{ptr @.str.3, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.5, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 744, i32 2}
!155 = !{ptr @hamachi_init_one._entry.4, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @hamachi_init_one._entry_ptr.6, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.8, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 748, i32 2}
!159 = !{ptr @hamachi_init_one._entry.7, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @hamachi_init_one._entry_ptr.9, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.11, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 762, i32 5}
!163 = !{ptr @hamachi_init_one._entry.10, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @hamachi_init_one._entry_ptr.12, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @version, !166, !"version", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 169, i32 19}
!167 = !{ptr @.str.13, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 808, i32 3}
!169 = !{ptr @.str.14, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @read_eeprom._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @read_eeprom._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @hamachi_netdev_ops, !173, !"hamachi_netdev_ops", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 567, i32 36}
!174 = !{ptr @.str.15, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 910, i32 4}
!176 = !{ptr @.str.16, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hamachi_open._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @hamachi_open._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.18, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 952, i32 3}
!181 = !{ptr @hamachi_open._entry.17, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @hamachi_open._entry_ptr.19, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.21, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 955, i32 3}
!185 = !{ptr @hamachi_open._entry.20, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @hamachi_open._entry_ptr.22, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.24, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 958, i32 3}
!189 = !{ptr @hamachi_open._entry.23, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @hamachi_open._entry_ptr.25, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.27, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 984, i32 3}
!193 = !{ptr @hamachi_open._entry.26, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @hamachi_open._entry_ptr.28, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @hamachi_open.__key, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 988, i32 2}
!197 = !{ptr @.str.29, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.30, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1323, i32 4}
!200 = !{ptr @.str.31, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @hamachi_interrupt._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @hamachi_interrupt._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.33, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1380, i32 4}
!205 = !{ptr @hamachi_interrupt._entry.32, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @hamachi_interrupt._entry_ptr.34, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.36, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1387, i32 3}
!209 = !{ptr @hamachi_interrupt._entry.35, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @hamachi_interrupt._entry_ptr.37, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.38, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1415, i32 3}
!213 = !{ptr @.str.39, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @hamachi_rx._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @hamachi_rx._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.41, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1435, i32 4}
!218 = !{ptr @hamachi_rx._entry.40, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @hamachi_rx._entry_ptr.42, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.44, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1440, i32 4}
!222 = !{ptr @hamachi_rx._entry.43, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @hamachi_rx._entry_ptr.45, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.47, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1443, i32 4}
!226 = !{ptr @hamachi_rx._entry.46, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @hamachi_rx._entry_ptr.48, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.50, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1445, i32 4}
!230 = !{ptr @hamachi_rx._entry.49, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @hamachi_rx._entry_ptr.51, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.53, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1455, i32 5}
!234 = !{ptr @hamachi_rx._entry.52, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @hamachi_rx._entry_ptr.54, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.56, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1494, i32 5}
!238 = !{ptr @hamachi_rx._entry.55, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @hamachi_rx._entry_ptr.57, !237, !"_entry_ptr", i1 false, i1 false}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!242 = !{ptr @.str.58, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.59, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.60, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1633, i32 4}
!246 = !{ptr @.str.61, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @hamachi_error._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @hamachi_error._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.63, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1651, i32 3}
!251 = !{ptr @hamachi_error._entry.62, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @hamachi_error._entry_ptr.64, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.65, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1034, i32 3}
!255 = !{ptr @.str.66, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @hamachi_timer._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @hamachi_timer._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.68, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1037, i32 3}
!260 = !{ptr @hamachi_timer._entry.67, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @hamachi_timer._entry_ptr.69, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.70, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1670, i32 3}
!264 = !{ptr @.str.71, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @hamachi_close._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @hamachi_close._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.73, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1673, i32 3}
!269 = !{ptr @hamachi_close._entry.72, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @hamachi_close._entry_ptr.74, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.75, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1229, i32 3}
!273 = !{ptr @.str.76, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @hamachi_start_xmit._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @hamachi_start_xmit._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.78, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1294, i32 3}
!278 = !{ptr @hamachi_start_xmit._entry.77, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @hamachi_start_xmit._entry_ptr.79, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.80, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1896, i32 2}
!282 = !{ptr @.str.81, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @hamachi_siocdevprivate._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @hamachi_siocdevprivate._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.82, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1057, i32 2}
!287 = !{ptr @.str.83, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @hamachi_tx_timeout._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @hamachi_tx_timeout._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.85, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1061, i32 3}
!292 = !{ptr @hamachi_tx_timeout._entry.84, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @hamachi_tx_timeout._entry_ptr.86, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.88, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1063, i32 4}
!296 = !{ptr @hamachi_tx_timeout._entry.87, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @hamachi_tx_timeout._entry_ptr.89, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.91, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1065, i32 3}
!300 = !{ptr @hamachi_tx_timeout._entry.90, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @hamachi_tx_timeout._entry_ptr.92, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.94, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1066, i32 3}
!304 = !{ptr @hamachi_tx_timeout._entry.93, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @hamachi_tx_timeout._entry_ptr.95, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.97, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1068, i32 4}
!308 = !{ptr @hamachi_tx_timeout._entry.96, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @hamachi_tx_timeout._entry_ptr.98, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @hamachi_tx_timeout._entry.99, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1070, i32 3}
!312 = !{ptr @hamachi_tx_timeout._entry_ptr.100, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.101, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 425, i32 30}
!315 = !{ptr @chip_tbl, !316, !"chip_tbl", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 424, i32 3}
!317 = !{ptr @ethtool_ops, !318, !"ethtool_ops", i1 false, i1 false}
!318 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1860, i32 33}
!319 = !{ptr @.str.102, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1823, i32 25}
!321 = !{ptr @ethtool_ops_no_mii, !322, !"ethtool_ops_no_mii", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/packetengines/hamachi.c", i32 1869, i32 33}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{!"auto-init"}
!333 = !{i64 4726777}
!334 = !{i64 2156645864}
!335 = !{i64 2156646081}
!336 = !{i64 4725959}
!337 = !{i64 2156646487}
!338 = !{i64 4726382}
!339 = !{i64 2156646782}
!340 = !{i64 2156648583}
!341 = !{i64 2156648811}
!342 = !{i64 2156634852}
!343 = !{i64 2156635131}
!344 = !{i64 2156635964}
!345 = !{i64 2156636742}
!346 = !{i64 4726997}
!347 = !{i64 2156638936}
!348 = !{i64 2156639172}
!349 = !{i64 4726159}
!350 = !{i64 2156641713}
!351 = !{i64 2156641957}
!352 = !{i64 2156642491}
!353 = !{i64 2156649305}
!354 = !{i64 2156649538}
!355 = !{i64 2156649986}
!356 = !{i64 2156650663}
!357 = !{i64 2156651161}
!358 = !{i32 0, i32 65536}
!359 = !{i64 2156644538}
!360 = !{i64 2156644945}
!361 = !{i64 2156645347}
!362 = !{i64 2156651655}
!363 = !{i64 2156651888}
!364 = !{i64 2156652339}
!365 = !{i64 2156653017}
!366 = !{!"branch_weights", i32 2000, i32 1}
!367 = !{i64 2156653255}
!368 = !{i64 4726579}
!369 = !{i64 2156653690}
!370 = !{i64 2156654135}
!371 = !{i64 2156654678}
!372 = !{i64 2156654894}
!373 = !{i64 2156655293}
!374 = !{i64 2156655692}
!375 = !{i64 2156656091}
!376 = !{i64 2156658449}
!377 = !{i64 2156658854}
!378 = !{i64 2156659256}
!379 = !{i64 2156659655}
!380 = !{i64 2156660056}
!381 = !{i64 2156660459}
!382 = !{i64 2156660861}
!383 = !{i64 2156661266}
!384 = !{i64 2156661686}
!385 = !{i64 2156662088}
!386 = !{i64 2156662489}
!387 = !{i64 2156667574}
!388 = !{i64 2156667995}
!389 = !{i64 2156668421}
!390 = !{i64 2156668844}
!391 = !{i64 2156669252}
!392 = !{i64 2156669655}
!393 = !{i64 2156670054}
!394 = !{i64 2156672418}
!395 = !{i64 2156672904}
!396 = !{i64 2156737848}
!397 = !{i64 2156738334}
!398 = !{i64 2156738828}
!399 = !{i64 2156740770}
!400 = !{i64 2156741170}
!401 = !{i64 2156741545}
!402 = !{i64 2156742862}
!403 = !{i64 2156701304}
!404 = !{i64 2156701521}
!405 = !{i64 2156703055}
!406 = !{i64 2156703272}
!407 = !{i64 2156746936}
!408 = !{i64 2156747418}
!409 = !{i64 2156751377}
!410 = !{i64 2156751846}
!411 = !{i64 2156752326}
!412 = !{i64 2156752715}
!413 = !{i64 2156753116}
!414 = !{i64 2156753556}
!415 = !{i64 2156753957}
!416 = !{i64 2156756281}
!417 = !{i64 2156756783}
!418 = !{i64 2156685198}
!419 = !{i64 2156695367}
!420 = !{i64 2156695764}
!421 = !{i64 2156697261}
!422 = !{i64 2156697656}
!423 = !{i64 2156698051}
!424 = !{i64 2156743389}
!425 = !{i64 2156743863}
!426 = !{i64 2156744337}
!427 = !{i64 2156744811}
!428 = !{i64 2156745285}
!429 = !{i64 2156745759}
!430 = !{i64 2156746233}
!431 = !{i64 2156746707}
!432 = !{i64 2156705627}
!433 = !{i64 2156727407}
!434 = !{i64 2156727624}
!435 = !{i64 2156730416}
!436 = !{i64 2156730890}
!437 = !{i64 2156731424}
!438 = !{i64 2156731918}
!439 = !{i64 2156732404}
!440 = !{i64 2156733412}
!441 = !{i64 2156733886}
!442 = !{i64 2156711530}
!443 = !{i64 2156677476}
!444 = !{i64 2156678010}
!445 = !{i64 2156680570}
!446 = !{i64 2156681044}
!447 = !{i64 2156681518}
!448 = !{i64 2156681992}
!449 = !{i64 2156682466}
!450 = !{i64 2156682940}
