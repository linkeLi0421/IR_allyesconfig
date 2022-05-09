; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/alteon/acenic.c_pt.bc'
source_filename = "../drivers/net/ethernet/alteon/acenic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.149, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.149 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ace_regs = type { [16 x i32], i32, i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], i32, i32, [12 x i32], i32, [3 x i32], i32, [26 x i32], i32, [8 x i32], i32, i32, [3 x i32], i32, i32, [49 x i32], i32, [7 x i32], i32, i32, [3 x i32], i32, i32, [105 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, [31 x i32], [64 x i32], [512 x i32] }
%struct.ace_skb = type { [256 x %struct.tx_ring_info], [512 x %struct.ring_info], [1024 x %struct.ring_info], [256 x %struct.ring_info] }
%struct.tx_ring_info = type { ptr, i32, i32 }
%struct.ring_info = type { ptr, i32 }
%struct.rx_desc = type { %struct.aceaddr, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.aceaddr = type { i32, i32 }
%struct.ace_info = type { %union.anon.150, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, %struct.aceaddr, %struct.aceaddr, %struct.aceaddr, %struct.aceaddr }
%union.anon.150 = type { [256 x i32] }
%struct.ring_ctrl = type { %struct.aceaddr, i16, i16, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tx_desc = type { %struct.aceaddr, i32, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.147, i32 }
%struct.anon.147 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.event = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_author496 = internal constant [52 x i8] c"acenic.author=Jes Sorensen <jes@trained-monkey.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file497 = internal constant [47 x i8] c"acenic.file=drivers/net/ethernet/alteon/acenic\00", section ".modinfo", align 1
@__UNIQUE_ID_license498 = internal constant [19 x i8] c"acenic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [62 x i8] c"acenic.description=AceNIC/3C985/GA620 Gigabit Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware500 = internal constant [31 x i8] c"acenic.firmware=acenic/tg2.bin\00", section ".modinfo", align 1
@__param_str_link = internal constant [12 x i8] c"acenic.link\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_link = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @link_state }, align 4
@__param_link = internal constant %struct.kernel_param { ptr @__param_str_link, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_link } }, section "__param", align 4
@__UNIQUE_ID_linktype501 = internal constant [34 x i8] c"acenic.parmtype=link:array of int\00", section ".modinfo", align 1
@__param_str_trace = internal constant [13 x i8] c"acenic.trace\00", align 1
@__param_arr_trace = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @trace }, align 4
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_trace } }, section "__param", align 4
@__UNIQUE_ID_tracetype502 = internal constant [35 x i8] c"acenic.parmtype=trace:array of int\00", section ".modinfo", align 1
@__param_str_tx_coal_tick = internal constant [20 x i8] c"acenic.tx_coal_tick\00", align 1
@__param_arr_tx_coal_tick = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @tx_coal_tick }, align 4
@__param_tx_coal_tick = internal constant %struct.kernel_param { ptr @__param_str_tx_coal_tick, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_tx_coal_tick } }, section "__param", align 4
@__UNIQUE_ID_tx_coal_ticktype503 = internal constant [42 x i8] c"acenic.parmtype=tx_coal_tick:array of int\00", section ".modinfo", align 1
@__param_str_max_tx_desc = internal constant [19 x i8] c"acenic.max_tx_desc\00", align 1
@__param_arr_max_tx_desc = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @max_tx_desc }, align 4
@__param_max_tx_desc = internal constant %struct.kernel_param { ptr @__param_str_max_tx_desc, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_max_tx_desc } }, section "__param", align 4
@__UNIQUE_ID_max_tx_desctype504 = internal constant [41 x i8] c"acenic.parmtype=max_tx_desc:array of int\00", section ".modinfo", align 1
@__param_str_rx_coal_tick = internal constant [20 x i8] c"acenic.rx_coal_tick\00", align 1
@__param_arr_rx_coal_tick = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @rx_coal_tick }, align 4
@__param_rx_coal_tick = internal constant %struct.kernel_param { ptr @__param_str_rx_coal_tick, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_rx_coal_tick } }, section "__param", align 4
@__UNIQUE_ID_rx_coal_ticktype505 = internal constant [42 x i8] c"acenic.parmtype=rx_coal_tick:array of int\00", section ".modinfo", align 1
@__param_str_max_rx_desc = internal constant [19 x i8] c"acenic.max_rx_desc\00", align 1
@__param_arr_max_rx_desc = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @max_rx_desc }, align 4
@__param_max_rx_desc = internal constant %struct.kernel_param { ptr @__param_str_max_rx_desc, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_max_rx_desc } }, section "__param", align 4
@__UNIQUE_ID_max_rx_desctype506 = internal constant [41 x i8] c"acenic.parmtype=max_rx_desc:array of int\00", section ".modinfo", align 1
@__param_str_tx_ratio = internal constant [16 x i8] c"acenic.tx_ratio\00", align 1
@__param_arr_tx_ratio = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @tx_ratio }, align 4
@__param_tx_ratio = internal constant %struct.kernel_param { ptr @__param_str_tx_ratio, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.125 { ptr @__param_arr_tx_ratio } }, section "__param", align 4
@__UNIQUE_ID_tx_ratiotype507 = internal constant [38 x i8] c"acenic.parmtype=tx_ratio:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_link508 = internal constant [49 x i8] c"acenic.parm=link:AceNIC/3C985/NetGear link state\00", section ".modinfo", align 1
@__UNIQUE_ID_trace509 = internal constant [60 x i8] c"acenic.parm=trace:AceNIC/3C985/NetGear firmware trace level\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_coal_tick510 = internal constant [101 x i8] c"acenic.parm=tx_coal_tick:AceNIC/3C985/GA620 max clock ticks to wait from first tx descriptor arrives\00", section ".modinfo", align 1
@__UNIQUE_ID_max_tx_desc511 = internal constant [86 x i8] c"acenic.parm=max_tx_desc:AceNIC/3C985/GA620 max number of transmit descriptors to wait\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_coal_tick512 = internal constant [101 x i8] c"acenic.parm=rx_coal_tick:AceNIC/3C985/GA620 max clock ticks to wait from first rx descriptor arrives\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rx_desc513 = internal constant [85 x i8] c"acenic.parm=max_rx_desc:AceNIC/3C985/GA620 max number of receive descriptors to wait\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_ratio514 = internal constant [100 x i8] c"acenic.parm=tx_ratio:AceNIC/3C985/GA620 ratio of NIC memory used for TX/RX descriptors (range 0-63)\00", section ".modinfo", align 1
@__initcall__kmod_acenic__523_3179_acenic_pci_driver_init6 = internal global ptr @acenic_pci_driver_init, section ".initcall6.init", align 4
@acenic_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @acenic_pci_tbl, ptr @acenic_probe_one, ptr @acenic_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_acenic_pci_driver_exit = internal global ptr @acenic_pci_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@link_state = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@trace = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@tx_coal_tick = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@max_tx_desc = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@rx_coal_tick = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@max_rx_desc = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@tx_ratio = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"acenic\00", [25 x i8] zeroinitializer }, align 32
@acenic_pci_tbl = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4782, i32 1, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4782, i32 2, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4279, i32 1, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4997, i32 25098, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4997, i32 25354, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4113, i32 26, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4782, i32 250, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4265, i32 9, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@acenic_probe_one.boards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ace_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ace_open, ptr @ace_close, ptr @ace_start_xmit, ptr null, ptr null, ptr null, ptr @ace_set_multicast_list, ptr @ace_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ace_change_mtu, ptr null, ptr @ace_watchdog, ptr null, ptr null, ptr null, ptr @ace_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ace_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ace_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ace_get_link_ksettings, ptr @ace_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"acenic_probe_one\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/alteon/acenic.c\00", [59 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr = internal global ptr @acenic_probe_one._entry, section ".printk_index", align 4
@version = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"acenic.c: v0.92 08/05/2002  Jes Sorensen, linux-acenic@SunSITE.dk\0A                            http://home.cern.ch/~jes/gige/acenic.html\0A\00", [55 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016%s: Enabling PCI Memory Mapped access - was not enabled by BIOS/Firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.5 = internal global ptr @acenic_probe_one._entry.3, section ".printk_index", align 4
@acenic_probe_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s:  Unable to map I/O register, AceNIC %i will be disabled.\0A\00", [32 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.8 = internal global ptr @acenic_probe_one._entry.6, section ".printk_index", align 4
@acenic_probe_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Farallon PN9100-T \00", [39 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.11 = internal global ptr @acenic_probe_one._entry.9, section ".printk_index", align 4
@acenic_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: Alteon AceNIC \00", [43 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.14 = internal global ptr @acenic_probe_one._entry.12, section ".printk_index", align 4
@acenic_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: 3Com 3C985 \00", [46 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.17 = internal global ptr @acenic_probe_one._entry.15, section ".printk_index", align 4
@acenic_probe_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: NetGear GA620 \00", [43 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.20 = internal global ptr @acenic_probe_one._entry.18, section ".printk_index", align 4
@acenic_probe_one._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Farallon PN9000-SX \00", [38 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.23 = internal global ptr @acenic_probe_one._entry.21, section ".printk_index", align 4
@acenic_probe_one._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: SGI AceNIC \00", [46 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.26 = internal global ptr @acenic_probe_one._entry.24, section ".printk_index", align 4
@acenic_probe_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Unknown AceNIC \00", [42 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.29 = internal global ptr @acenic_probe_one._entry.27, section ".printk_index", align 4
@acenic_probe_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Gigabit Ethernet at 0x%08lx, \00", [34 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.32 = internal global ptr @acenic_probe_one._entry.30, section ".printk_index", align 4
@acenic_probe_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq %d\0A\00", [24 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.35 = internal global ptr @acenic_probe_one._entry.33, section ".printk_index", align 4
@acenic_probe_one._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Driver compiled without Tigon I support - NIC disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.38 = internal global ptr @acenic_probe_one._entry.36, section ".printk_index", align 4
@acenic_probe_one._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013acenic: device registration failed\0A\00", [58 x i8] zeroinitializer }, align 32
@acenic_probe_one._entry_ptr.41 = internal global ptr @acenic_probe_one._entry.39, section ".printk_index", align 4
@ace_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 2227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Firmware not running!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ace_open\00", [23 x i8] zeroinitializer }, align 32
@ace_open._entry_ptr = internal global ptr @ace_open._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ace_load_jumbo_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Out of memory when allocating jumbo receive buffers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ace_load_jumbo_rx_ring\00", [41 x i8] zeroinitializer }, align 32
@ace_load_jumbo_rx_ring._entry_ptr = internal global ptr @ace_load_jumbo_rx_ring._entry, section ".printk_index", align 4
@ace_load_std_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Out of memory when allocating standard receive buffers\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ace_load_std_rx_ring\00", [43 x i8] zeroinitializer }, align 32
@ace_load_std_rx_ring._entry_ptr = internal global ptr @ace_load_std_rx_ring._entry, section ".printk_index", align 4
@ace_load_mini_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016Out of memory when allocating mini receive buffers\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ace_load_mini_rx_ring\00", [42 x i8] zeroinitializer }, align 32
@ace_load_mini_rx_ring._entry_ptr = internal global ptr @ace_load_mini_rx_ring._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ace_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Transmit ring stuck full\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ace_start_xmit\00", [17 x i8] zeroinitializer }, align 32
@ace_start_xmit._entry_ptr = internal global ptr @ace_start_xmit._entry, section ".printk_index", align 4
@ace_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Enabling Jumbo frame support\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ace_change_mtu\00", [17 x i8] zeroinitializer }, align 32
@ace_change_mtu._entry_ptr = internal global ptr @ace_change_mtu._entry, section ".printk_index", align 4
@ace_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Transmitter is stuck, %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ace_watchdog\00", [19 x i8] zeroinitializer }, align 32
@ace_watchdog._entry_ptr = internal global ptr @ace_watchdog._entry, section ".printk_index", align 4
@ace_watchdog._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: BUG... transmitter died. Kicking it.\0A\00", [52 x i8] zeroinitializer }, align 32
@ace_watchdog._entry_ptr.58 = internal global ptr @ace_watchdog._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%i.%i.%i\00", [23 x i8] zeroinitializer }, align 32
@ace_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 2673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Renegotiating link state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ace_set_link_ksettings\00", [41 x i8] zeroinitializer }, align 32
@ace_set_link_ksettings._entry_ptr = internal global ptr @ace_set_link_ksettings._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ace_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016  Tigon II (Rev. %i), Firmware: %i.%i.%i, \00", [51 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ace_init\00", [23 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr = internal global ptr @ace_init._entry, section ".printk_index", align 4
@ace_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014  Unsupported Tigon version detected (%i)\0A\00", [51 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.66 = internal global ptr @ace_init._entry.64, section ".printk_index", align 4
@ace_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MAC: %pM\0A\00", [22 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.69 = internal global ptr @ace_init._entry.67, section ".printk_index", align 4
@ace_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016  PCI cache line size set incorrectly (%i bytes) by BIOS/FW, \00", [32 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.72 = internal global ptr @ace_init._entry.70, section ".printk_index", align 4
@ace_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"expecting %i\0A\00", [18 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.75 = internal global ptr @ace_init._entry.73, section ".printk_index", align 4
@ace_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.63, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"correcting to %i\0A\00", [46 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.78 = internal global ptr @ace_init._entry.76, section ".printk_index", align 4
@ace_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.63, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016  PCI bus width: %i bits, speed: %iMHz, latency: %i clks\0A\00", [36 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.81 = internal global ptr @ace_init._entry.79, section ".printk_index", align 4
@ace_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.63, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016  Disabling PCI memory write and invalidate\0A\00", [49 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.84 = internal global ptr @ace_init._entry.82, section ".printk_index", align 4
@ace_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.63, ptr @.str.2, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016  PCI memory write & invalidate enabled by BIOS, enabling counter measures\0A\00", [50 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.87 = internal global ptr @ace_init._entry.85, section ".printk_index", align 4
@ace_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.63, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Requested IRQ %d is busy\0A\00", [32 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.90 = internal global ptr @ace_init._entry.88, section ".printk_index", align 4
@ace_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.63, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014%s: more than %i NICs detected, ignoring module parameters!\0A\00", [33 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.93 = internal global ptr @ace_init._entry.91, section ".printk_index", align 4
@ace_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.63, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Setting half duplex link\0A\00", [32 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.96 = internal global ptr @ace_init._entry.94, section ".printk_index", align 4
@ace_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.63, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: No media speed specified, forcing auto negotiation\0A\00", [38 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.99 = internal global ptr @ace_init._entry.97, section ".printk_index", align 4
@ace_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.63, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Disabling flow control negotiation\0A\00", [54 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.102 = internal global ptr @ace_init._entry.100, section ".printk_index", align 4
@ace_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.63, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Enabling TX flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.105 = internal global ptr @ace_init._entry.103, section ".printk_index", align 4
@ace_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.63, ptr @.str.2, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Firmware NOT running!\0A\00", [35 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.108 = internal global ptr @ace_init._entry.106, section ".printk_index", align 4
@ace_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.63, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Someone is busy refilling the RX ring\0A\00", [51 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.111 = internal global ptr @ace_init._entry.109, section ".printk_index", align 4
@ace_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.63, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: Someone is busy refilling the RX mini ring\0A\00", [46 x i8] zeroinitializer }, align 32
@ace_init._entry_ptr.114 = internal global ptr @ace_init._entry.112, section ".printk_index", align 4
@read_eeprom_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 3090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Unable to sync eeprom\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_eeprom_byte\00", [47 x i8] zeroinitializer }, align 32
@read_eeprom_byte._entry_ptr = internal global ptr @read_eeprom_byte._entry, section ".printk_index", align 4
@read_eeprom_byte._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 3099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Unable to set address byte 0\0A\00", [60 x i8] zeroinitializer }, align 32
@read_eeprom_byte._entry_ptr.119 = internal global ptr @read_eeprom_byte._entry.117, section ".printk_index", align 4
@read_eeprom_byte._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 3108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Unable to set address byte 1\0A\00", [60 x i8] zeroinitializer }, align 32
@read_eeprom_byte._entry_ptr.122 = internal global ptr @read_eeprom_byte._entry.120, section ".printk_index", align 4
@read_eeprom_byte._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 3118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Unable to set READ_SELECT\0A\00", [63 x i8] zeroinitializer }, align 32
@read_eeprom_byte._entry_ptr.125 = internal global ptr @read_eeprom_byte._entry.123, section ".printk_index", align 4
@read_eeprom_byte._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 3175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Unable to read eeprom byte 0x%02lx\0A\00", [54 x i8] zeroinitializer }, align 32
@read_eeprom_byte._entry_ptr.128 = internal global ptr @read_eeprom_byte._entry.126, section ".printk_index", align 4
@ace_rx_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: unknown frame type (0x%02x) returned by NIC\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ace_rx_int\00", [21 x i8] zeroinitializer }, align 32
@ace_rx_int._entry_ptr = internal global ptr @ace_rx_int._entry, section ".printk_index", align 4
@ace_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Firmware up and running\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ace_handle_event\00", [47 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr = internal global ptr @ace_handle_event._entry, section ".printk_index", align 4
@ace_handle_event._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 1835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: Optical link UP (%s Duplex, Flow Control: %s%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.135 = internal global ptr @ace_handle_event._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX \00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@ace_handle_event._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.132, ptr @.str.2, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: Optical link DOWN\0A\00", [39 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.143 = internal global ptr @ace_handle_event._entry.141, section ".printk_index", align 4
@ace_handle_event._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.132, ptr @.str.2, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: 10/100BaseT link UP\0A\00", [37 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.146 = internal global ptr @ace_handle_event._entry.144, section ".printk_index", align 4
@ace_handle_event._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.132, ptr @.str.2, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unknown optical link state %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.149 = internal global ptr @ace_handle_event._entry.147, section ".printk_index", align 4
@ace_handle_event._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.132, ptr @.str.2, i32 1856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: invalid command error\0A\00", [35 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.152 = internal global ptr @ace_handle_event._entry.150, section ".printk_index", align 4
@ace_handle_event._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.132, ptr @.str.2, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: unimplemented command error\0A\00", [61 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.155 = internal global ptr @ace_handle_event._entry.153, section ".printk_index", align 4
@ace_handle_event._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.132, ptr @.str.2, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: bad config error\0A\00", [40 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.158 = internal global ptr @ace_handle_event._entry.156, section ".printk_index", align 4
@ace_handle_event._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.132, ptr @.str.2, i32 1868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: unknown error %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.161 = internal global ptr @ace_handle_event._entry.159, section ".printk_index", align 4
@ace_handle_event._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.132, ptr @.str.2, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Jumbo ring flushed\0A\00", [38 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.164 = internal global ptr @ace_handle_event._entry.162, section ".printk_index", align 4
@ace_handle_event._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.132, ptr @.str.2, i32 1903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unhandled event 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@ace_handle_event._entry_ptr.167 = internal global ptr @ace_handle_event._entry.165, section ".printk_index", align 4
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acenic/tg2.bin\00", [17 x i8] zeroinitializer }, align 32
@ace_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 2873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: trying to download firmware while the CPU is running!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ace_load_firmware\00", [46 x i8] zeroinitializer }, align 32
@ace_load_firmware._entry_ptr = internal global ptr @ace_load_firmware._entry, section ".printk_index", align 4
@ace_load_firmware._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 2883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to load firmware \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@ace_load_firmware._entry_ptr.173 = internal global ptr @ace_load_firmware._entry.171, section ".printk_index", align 4
@ace_load_firmware._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.2, i32 2901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: bogus load address %08x in \22%s\22\0A\00", [57 x i8] zeroinitializer }, align 32
@ace_load_firmware._entry_ptr.176 = internal global ptr @ace_load_firmware._entry.174, section ".printk_index", align 4
@ace_load_firmware._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.2, i32 2909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ace_load_firmware._entry_ptr.178 = internal global ptr @ace_load_firmware._entry.177, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4113, i64 4265, i64 4279, i64 4782, i64 4997]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 4096]
@__sancov_gen_cov_switch_values.181 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"acenic_pci_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 696, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant [11 x i8] c"link_state\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 391, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 392, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"tx_coal_tick\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 393, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"max_tx_desc\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 395, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"rx_coal_tick\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 394, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"max_rx_desc\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 396, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"tx_ratio\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 397, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3179, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"acenic_pci_tbl\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 130, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"boards_found\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 459, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"ace_netdev_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 442, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"ace_ethtool_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 434, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 484, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 424, i32 19 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 500, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 523, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 532, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 535, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 540, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 543, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 547, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 553, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 556, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 560, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 561, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 565, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 587, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2227, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1796, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1679, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1732, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2532, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2547, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1550, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1554, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2695, i32 52 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2672, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 925, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 941, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 999, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1011, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1014, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1016, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1023, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1051, i32 5 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1055, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1160, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1335, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1375, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1388, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1396, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1401, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1451, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1483, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1489, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3090, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3098, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3107, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3117, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 3174, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1965, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1816, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1830, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1839, i32 5 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1843, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1847, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1855, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1859, i32 5 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1863, i32 5 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1867, i32 5 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1896, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1902, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2864, i32 24 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2872, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2882, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2900, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.656 = private constant [40 x i8] c"../drivers/net/ethernet/alteon/acenic.c\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 2908, i32 3 }
@llvm.compiler.used = appending global [249 x ptr] [ptr @__UNIQUE_ID_author496, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file497, ptr @__UNIQUE_ID_firmware500, ptr @__UNIQUE_ID_license498, ptr @__UNIQUE_ID_link508, ptr @__UNIQUE_ID_linktype501, ptr @__UNIQUE_ID_max_rx_desc513, ptr @__UNIQUE_ID_max_rx_desctype506, ptr @__UNIQUE_ID_max_tx_desc511, ptr @__UNIQUE_ID_max_tx_desctype504, ptr @__UNIQUE_ID_rx_coal_tick512, ptr @__UNIQUE_ID_rx_coal_ticktype505, ptr @__UNIQUE_ID_trace509, ptr @__UNIQUE_ID_tracetype502, ptr @__UNIQUE_ID_tx_coal_tick510, ptr @__UNIQUE_ID_tx_coal_ticktype503, ptr @__UNIQUE_ID_tx_ratio514, ptr @__UNIQUE_ID_tx_ratiotype507, ptr @__exitcall_acenic_pci_driver_exit, ptr @__initcall__kmod_acenic__523_3179_acenic_pci_driver_init6, ptr @__param_link, ptr @__param_max_rx_desc, ptr @__param_max_tx_desc, ptr @__param_rx_coal_tick, ptr @__param_trace, ptr @__param_tx_coal_tick, ptr @__param_tx_ratio, ptr @ace_change_mtu._entry, ptr @ace_change_mtu._entry_ptr, ptr @ace_handle_event._entry, ptr @ace_handle_event._entry.133, ptr @ace_handle_event._entry.141, ptr @ace_handle_event._entry.144, ptr @ace_handle_event._entry.147, ptr @ace_handle_event._entry.150, ptr @ace_handle_event._entry.153, ptr @ace_handle_event._entry.156, ptr @ace_handle_event._entry.159, ptr @ace_handle_event._entry.162, ptr @ace_handle_event._entry.165, ptr @ace_handle_event._entry_ptr, ptr @ace_handle_event._entry_ptr.135, ptr @ace_handle_event._entry_ptr.143, ptr @ace_handle_event._entry_ptr.146, ptr @ace_handle_event._entry_ptr.149, ptr @ace_handle_event._entry_ptr.152, ptr @ace_handle_event._entry_ptr.155, ptr @ace_handle_event._entry_ptr.158, ptr @ace_handle_event._entry_ptr.161, ptr @ace_handle_event._entry_ptr.164, ptr @ace_handle_event._entry_ptr.167, ptr @ace_init._entry, ptr @ace_init._entry.100, ptr @ace_init._entry.103, ptr @ace_init._entry.106, ptr @ace_init._entry.109, ptr @ace_init._entry.112, ptr @ace_init._entry.64, ptr @ace_init._entry.67, ptr @ace_init._entry.70, ptr @ace_init._entry.73, ptr @ace_init._entry.76, ptr @ace_init._entry.79, ptr @ace_init._entry.82, ptr @ace_init._entry.85, ptr @ace_init._entry.88, ptr @ace_init._entry.91, ptr @ace_init._entry.94, ptr @ace_init._entry.97, ptr @ace_init._entry_ptr, ptr @ace_init._entry_ptr.102, ptr @ace_init._entry_ptr.105, ptr @ace_init._entry_ptr.108, ptr @ace_init._entry_ptr.111, ptr @ace_init._entry_ptr.114, ptr @ace_init._entry_ptr.66, ptr @ace_init._entry_ptr.69, ptr @ace_init._entry_ptr.72, ptr @ace_init._entry_ptr.75, ptr @ace_init._entry_ptr.78, ptr @ace_init._entry_ptr.81, ptr @ace_init._entry_ptr.84, ptr @ace_init._entry_ptr.87, ptr @ace_init._entry_ptr.90, ptr @ace_init._entry_ptr.93, ptr @ace_init._entry_ptr.96, ptr @ace_init._entry_ptr.99, ptr @ace_load_firmware._entry, ptr @ace_load_firmware._entry.171, ptr @ace_load_firmware._entry.174, ptr @ace_load_firmware._entry.177, ptr @ace_load_firmware._entry_ptr, ptr @ace_load_firmware._entry_ptr.173, ptr @ace_load_firmware._entry_ptr.176, ptr @ace_load_firmware._entry_ptr.178, ptr @ace_load_jumbo_rx_ring._entry, ptr @ace_load_jumbo_rx_ring._entry_ptr, ptr @ace_load_mini_rx_ring._entry, ptr @ace_load_mini_rx_ring._entry_ptr, ptr @ace_load_std_rx_ring._entry, ptr @ace_load_std_rx_ring._entry_ptr, ptr @ace_open._entry, ptr @ace_open._entry_ptr, ptr @ace_rx_int._entry, ptr @ace_rx_int._entry_ptr, ptr @ace_set_link_ksettings._entry, ptr @ace_set_link_ksettings._entry_ptr, ptr @ace_start_xmit._entry, ptr @ace_start_xmit._entry_ptr, ptr @ace_watchdog._entry, ptr @ace_watchdog._entry.56, ptr @ace_watchdog._entry_ptr, ptr @ace_watchdog._entry_ptr.58, ptr @acenic_pci_driver_exit, ptr @acenic_probe_one._entry, ptr @acenic_probe_one._entry.12, ptr @acenic_probe_one._entry.15, ptr @acenic_probe_one._entry.18, ptr @acenic_probe_one._entry.21, ptr @acenic_probe_one._entry.24, ptr @acenic_probe_one._entry.27, ptr @acenic_probe_one._entry.3, ptr @acenic_probe_one._entry.30, ptr @acenic_probe_one._entry.33, ptr @acenic_probe_one._entry.36, ptr @acenic_probe_one._entry.39, ptr @acenic_probe_one._entry.6, ptr @acenic_probe_one._entry.9, ptr @acenic_probe_one._entry_ptr, ptr @acenic_probe_one._entry_ptr.11, ptr @acenic_probe_one._entry_ptr.14, ptr @acenic_probe_one._entry_ptr.17, ptr @acenic_probe_one._entry_ptr.20, ptr @acenic_probe_one._entry_ptr.23, ptr @acenic_probe_one._entry_ptr.26, ptr @acenic_probe_one._entry_ptr.29, ptr @acenic_probe_one._entry_ptr.32, ptr @acenic_probe_one._entry_ptr.35, ptr @acenic_probe_one._entry_ptr.38, ptr @acenic_probe_one._entry_ptr.41, ptr @acenic_probe_one._entry_ptr.5, ptr @acenic_probe_one._entry_ptr.8, ptr @read_eeprom_byte._entry, ptr @read_eeprom_byte._entry.117, ptr @read_eeprom_byte._entry.120, ptr @read_eeprom_byte._entry.123, ptr @read_eeprom_byte._entry.126, ptr @read_eeprom_byte._entry_ptr, ptr @read_eeprom_byte._entry_ptr.119, ptr @read_eeprom_byte._entry_ptr.122, ptr @read_eeprom_byte._entry_ptr.125, ptr @read_eeprom_byte._entry_ptr.128, ptr @acenic_pci_driver, ptr @link_state, ptr @trace, ptr @tx_coal_tick, ptr @max_tx_desc, ptr @rx_coal_tick, ptr @max_rx_desc, ptr @tx_ratio, ptr @.str, ptr @acenic_pci_tbl, ptr @acenic_probe_one.boards_found, ptr @ace_netdev_ops, ptr @ace_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @version, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175], section "llvm.metadata"
@0 = internal global [158 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_state to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_coal_tick to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_tx_desc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_coal_tick to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rx_desc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_ratio to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_pci_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one.boards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acenic_probe_one._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_jumbo_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_std_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_mini_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_watchdog._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_byte._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_byte._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_byte._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom_byte._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_rx_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_handle_event._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_firmware._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_firmware._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ace_load_firmware._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acenic_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @acenic_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acenic_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @acenic_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acenic_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 384, i32 noundef 1, i32 noundef 1) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %add.ptr.i, align 128
  %pdev4 = getelementptr i8, ptr %call, i32 2564
  %2 = ptrtoint ptr %pdev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev4, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.end.pci_name.exit_crit_edge ]
  %name = getelementptr i8, ptr %call, i32 2584
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i.i, ptr %name, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %or7 = or i64 %9, 387
  store i64 %or7, ptr %features, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %10 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 500, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %11 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %12 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9000, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ace_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ace_ethtool_ops, ptr %ethtool_ops, align 16
  %15 = load i32, ptr @acenic_probe_one.boards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.end, label %pci_name.exit.if.end12_crit_edge

pci_name.exit.if.end12_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end, %pci_name.exit.if.end12_crit_edge
  %call13 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.fail_free_netdev_crit_edge

if.end12.fail_free_netdev_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_free_netdev

if.end16:                                         ; preds = %if.end12
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %pci_command = getelementptr i8, ptr %call, i32 2580
  %call17 = tail call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef %pci_command) #12
  %16 = ptrtoint ptr %pci_command to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pci_command, align 4
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool19.not = icmp eq i16 %18, 0
  br i1 %tobool19.not, label %do.end23, label %if.end16.if.end38_crit_edge

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %20) #15
  %21 = ptrtoint ptr %pci_command to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pci_command, align 4
  %23 = or i16 %22, 2
  store i16 %23, ptr %pci_command, align 4
  %24 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev4, align 4
  %call34 = tail call i32 @pci_write_config_word(ptr noundef %25, i32 noundef 4, i16 noundef zeroext %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !369
  tail call void @arm_heavy_mb() #12
  br label %if.end38

if.end38:                                         ; preds = %do.end23, %if.end16.if.end38_crit_edge
  %pci_latency = getelementptr i8, ptr %call, i32 2582
  %call39 = tail call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 13, ptr noundef %pci_latency) #12
  %26 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pci_latency, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %27)
  %cmp42 = icmp ult i8 %27, 65
  br i1 %cmp42, label %if.then44, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %pci_latency to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %pci_latency, align 2
  %call47 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 64) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end38.if.end48_crit_edge
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %29 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resource, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %31 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %base_addr, align 32
  %call50 = tail call ptr @ioremap(i32 noundef %30, i32 noundef 16384) #12
  %regs = getelementptr i8, ptr %call, i32 2312
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call50, ptr %regs, align 8
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 8
  %35 = load i32, ptr @acenic_probe_one.boards_found, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %34, i32 noundef %35) #15
  br label %fail_free_netdev

if.end60:                                         ; preds = %if.end48
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %36 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vendor, align 8
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %37, label %do.end115 [
    i16 4782, label %sw.bb
    i16 4279, label %do.end82
    i16 4997, label %do.end89
    i16 4113, label %sw.bb93
    i16 4265, label %if.end60.do.end109_crit_edge
  ]

if.end60.do.end109_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

sw.bb:                                            ; preds = %if.end60
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %40)
  %cmp63 = icmp eq i16 %40, 250
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 8
  br i1 %cmp63, label %do.end68, label %do.end74

do.end68:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %42) #15
  br label %do.end121

do.end74:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %42) #15
  br label %do.end121

do.end82:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 8
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %44) #15
  br label %do.end121

do.end89:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %46) #15
  br label %do.end121

sw.bb93:                                          ; preds = %if.end60
  %device94 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %47 = ptrtoint ptr %device94 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %device94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26, i16 %48)
  %cmp96 = icmp eq i16 %48, 26
  br i1 %cmp96, label %do.end101, label %sw.bb93.do.end109_crit_edge

sw.bb93.do.end109_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

do.end101:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %50) #15
  br label %do.end121

do.end109:                                        ; preds = %sw.bb93.do.end109_crit_edge, %if.end60.do.end109_crit_edge
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %52) #15
  br label %do.end121

do.end115:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 8
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %54) #15
  br label %do.end121

do.end121:                                        ; preds = %do.end115, %do.end109, %do.end101, %do.end89, %do.end82, %do.end74, %do.end68
  %55 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_addr, align 32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %56) #15
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %58) #15
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 8
  %HostCtrl = getelementptr inbounds %struct.ace_regs, ptr %60, i32 0, i32 1
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !371
  %62 = and i32 %61, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %62)
  %cmp134 = icmp eq i32 %62, 64
  br i1 %cmp134, label %do.end139, label %if.end143

do.end139:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #14
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %call) #15
  br label %fail_uninit

if.end143:                                        ; preds = %do.end121
  %call144 = tail call fastcc i32 @ace_allocate_descriptors(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.fail_free_netdev_crit_edge

if.end143.fail_free_netdev_crit_edge:             ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_free_netdev

if.end147:                                        ; preds = %if.end143
  %board_idx = getelementptr i8, ptr %call, i32 2576
  %63 = ptrtoint ptr %board_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %board_idx, align 16
  %call148 = tail call fastcc i32 @ace_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.fail_free_netdev_crit_edge

if.end147.fail_free_netdev_crit_edge:             ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_free_netdev

if.end151:                                        ; preds = %if.end147
  %call152 = tail call i32 @register_netdev(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end160, label %do.end157

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %fail_uninit

if.end160:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call, ptr %name, align 8
  %65 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features, align 16
  %or165 = or i64 %66, 32
  store i64 %or165, ptr %features, align 16
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call, ptr %driver_data.i.i, align 4
  %68 = load i32, ptr @acenic_probe_one.boards_found, align 4
  %inc = add i32 %68, 1
  store i32 %inc, ptr @acenic_probe_one.boards_found, align 4
  br label %cleanup

fail_uninit:                                      ; preds = %do.end157, %do.end139
  tail call fastcc void @ace_init_cleanup(ptr noundef nonnull %call)
  br label %fail_free_netdev

fail_free_netdev:                                 ; preds = %fail_uninit, %if.end147.fail_free_netdev_crit_edge, %if.end143.fail_free_netdev_crit_edge, %do.end56, %if.end12.fail_free_netdev_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_free_netdev, %if.end160, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %fail_free_netdev ], [ 0, %if.end160 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acenic_remove_one(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs2 = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 8
  tail call void @unregister_netdev(ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !372
  tail call void @arm_heavy_mb() #12
  %CpuCtrl = getelementptr inbounds %struct.ace_regs, ptr %3, i32 0, i32 17
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !373
  %5 = or i32 %4, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuCtrl, i32 %5) #12, !srcloc !374
  %version = getelementptr i8, ptr %1, i32 2324
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.body6, label %entry.do.body16_crit_edge

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !375
  tail call void @arm_heavy_mb() #12
  %CpuBCtrl = getelementptr inbounds %struct.ace_regs, ptr %3, i32 0, i32 25
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuBCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !376
  %9 = or i32 %8, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuBCtrl, i32 %9) #12, !srcloc !374
  br label %do.body16

do.body16:                                        ; preds = %do.body6, %entry.do.body16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !377
  tail call void @arm_heavy_mb() #12
  %Mb0Lo = getelementptr inbounds %struct.ace_regs, ptr %3, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mb0Lo, i32 16777216) #12, !srcloc !374
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !378
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %12) #12
  %skb27 = getelementptr i8, ptr %1, i32 2316
  %pdev35 = getelementptr i8, ptr %1, i32 2564
  %rx_std_ring = getelementptr i8, ptr %1, i32 2472
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %do.body16
  %indvars.iv = phi i32 [ 0, %do.body16 ], [ %indvars.iv.next, %if.end44.for.body_crit_edge ]
  %13 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb27, align 4
  %arrayidx = getelementptr %struct.ace_skb, ptr %14, i32 0, i32 1, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.body.if.end44_crit_edge, label %if.then29

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mapping34 = getelementptr %struct.ace_skb, ptr %14, i32 0, i32 1, i32 %indvars.iv, i32 1
  %17 = ptrtoint ptr %mapping34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mapping34, align 4
  %19 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev35, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev36, i32 noundef %18, i32 noundef 1518, i32 noundef 2, i32 noundef 0) #12
  %21 = ptrtoint ptr %rx_std_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_std_ring, align 8
  %size = getelementptr %struct.rx_desc, ptr %22, i32 %indvars.iv, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %size, align 2
  %24 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb27, align 4
  %arrayidx42 = getelementptr %struct.ace_skb, ptr %25, i32 0, i32 1, i32 %indvars.iv
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx42, align 4
  tail call void @consume_skb(ptr noundef nonnull %16) #12
  br label %if.end44

if.end44:                                         ; preds = %if.then29, %for.body.if.end44_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %for.end, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end44
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp46 = icmp sgt i32 %28, 1
  br i1 %cmp46, label %for.cond49.preheader, label %for.end.if.end82_crit_edge

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

for.cond49.preheader:                             ; preds = %for.end
  %rx_mini_ring = getelementptr i8, ptr %1, i32 2480
  br label %for.body53

for.body53:                                       ; preds = %if.end78.for.body53_crit_edge, %for.cond49.preheader
  %indvars.iv170 = phi i32 [ 0, %for.cond49.preheader ], [ %indvars.iv.next171, %if.end78.for.body53_crit_edge ]
  %29 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb27, align 4
  %arrayidx57 = getelementptr %struct.ace_skb, ptr %30, i32 0, i32 2, i32 %indvars.iv170
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx57, align 4
  %tobool59.not = icmp eq ptr %32, null
  br i1 %tobool59.not, label %for.body53.if.end78_crit_edge, label %if.then60

for.body53.if.end78_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then60:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  %mapping67 = getelementptr %struct.ace_skb, ptr %30, i32 0, i32 2, i32 %indvars.iv170, i32 1
  %33 = ptrtoint ptr %mapping67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mapping67, align 4
  %35 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev35, align 4
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev69, i32 noundef %34, i32 noundef 100, i32 noundef 2, i32 noundef 0) #12
  %37 = ptrtoint ptr %rx_mini_ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_mini_ring, align 16
  %size72 = getelementptr %struct.rx_desc, ptr %38, i32 %indvars.iv170, i32 2
  %39 = ptrtoint ptr %size72 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %size72, align 2
  %40 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb27, align 4
  %arrayidx76 = getelementptr %struct.ace_skb, ptr %41, i32 0, i32 2, i32 %indvars.iv170
  %42 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx76, align 4
  tail call void @consume_skb(ptr noundef nonnull %32) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then60, %for.body53.if.end78_crit_edge
  %indvars.iv.next171 = add nuw nsw i32 %indvars.iv170, 1
  %exitcond172.not = icmp eq i32 %indvars.iv.next171, 1024
  br i1 %exitcond172.not, label %if.end78.if.end82_crit_edge, label %if.end78.for.body53_crit_edge

if.end78.for.body53_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.end82:                                         ; preds = %if.end78.if.end82_crit_edge, %for.end.if.end82_crit_edge
  %rx_jumbo_ring = getelementptr i8, ptr %1, i32 2476
  br label %for.body87

for.body87:                                       ; preds = %if.end112.for.body87_crit_edge, %if.end82
  %indvars.iv173 = phi i32 [ 0, %if.end82 ], [ %indvars.iv.next174, %if.end112.for.body87_crit_edge ]
  %43 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %skb27, align 4
  %arrayidx91 = getelementptr %struct.ace_skb, ptr %44, i32 0, i32 3, i32 %indvars.iv173
  %45 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx91, align 4
  %tobool93.not = icmp eq ptr %46, null
  br i1 %tobool93.not, label %for.body87.if.end112_crit_edge, label %if.then94

for.body87.if.end112_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

if.then94:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  %mapping101 = getelementptr %struct.ace_skb, ptr %44, i32 0, i32 3, i32 %indvars.iv173, i32 1
  %47 = ptrtoint ptr %mapping101 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mapping101, align 4
  %49 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev35, align 4
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev103, i32 noundef %48, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #12
  %51 = ptrtoint ptr %rx_jumbo_ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_jumbo_ring, align 4
  %size106 = getelementptr %struct.rx_desc, ptr %52, i32 %indvars.iv173, i32 2
  %53 = ptrtoint ptr %size106 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %size106, align 2
  %54 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb27, align 4
  %arrayidx110 = getelementptr %struct.ace_skb, ptr %55, i32 0, i32 3, i32 %indvars.iv173
  %56 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx110, align 4
  tail call void @consume_skb(ptr noundef nonnull %46) #12
  br label %if.end112

if.end112:                                        ; preds = %if.then94, %for.body87.if.end112_crit_edge
  %indvars.iv.next174 = add nuw nsw i32 %indvars.iv173, 1
  %exitcond175.not = icmp eq i32 %indvars.iv.next174, 256
  br i1 %exitcond175.not, label %for.end115, label %if.end112.for.body87_crit_edge

if.end112.for.body87_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87

for.end115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ace_init_cleanup(ptr noundef %1)
  tail call void @free_netdev(ptr noundef %1) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ace_allocate_descriptors(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_ring_base_dma = getelementptr i8, ptr %dev, i32 2540
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 122880, ptr noundef %rx_ring_base_dma, i32 noundef 3264, i32 noundef 0) #12
  %rx_std_ring = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %rx_std_ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rx_std_ring, align 8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.rx_desc, ptr %call.i, i32 512
  %rx_jumbo_ring = getelementptr i8, ptr %dev, i32 2476
  %3 = ptrtoint ptr %rx_jumbo_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %rx_jumbo_ring, align 4
  %add.ptr6 = getelementptr %struct.rx_desc, ptr %call.i, i32 768
  %rx_mini_ring = getelementptr i8, ptr %dev, i32 2480
  %4 = ptrtoint ptr %rx_mini_ring to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr6, ptr %rx_mini_ring, align 16
  %add.ptr8 = getelementptr %struct.rx_desc, ptr %call.i, i32 1792
  %rx_return_ring = getelementptr i8, ptr %dev, i32 2484
  %5 = ptrtoint ptr %rx_return_ring to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr8, ptr %rx_return_ring, align 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %evt_ring_dma = getelementptr i8, ptr %dev, i32 2544
  %call.i77 = tail call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef 2048, ptr noundef %evt_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %evt_ring = getelementptr i8, ptr %dev, i32 2520
  %8 = ptrtoint ptr %evt_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i77, ptr %evt_ring, align 8
  %cmp13 = icmp eq ptr %call.i77, null
  br i1 %cmp13, label %if.end.fail_crit_edge, label %if.end15

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end15:                                         ; preds = %if.end
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2536
  %call.i78 = tail call ptr @dma_alloc_attrs(ptr noundef %dev17, i32 noundef 4096, ptr noundef %tx_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %tx_ring = getelementptr i8, ptr %dev, i32 2340
  %11 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i78, ptr %tx_ring, align 4
  %cmp20 = icmp eq ptr %call.i78, null
  br i1 %cmp20, label %if.end15.fail_crit_edge, label %if.end22

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end22:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %evt_prd_dma = getelementptr i8, ptr %dev, i32 2548
  %call.i79 = tail call ptr @dma_alloc_attrs(ptr noundef %dev24, i32 noundef 4, ptr noundef %evt_prd_dma, i32 noundef 3264, i32 noundef 0) #12
  %evt_prd = getelementptr i8, ptr %dev, i32 2524
  %14 = ptrtoint ptr %evt_prd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i79, ptr %evt_prd, align 4
  %cmp27 = icmp eq ptr %call.i79, null
  br i1 %cmp27, label %if.end22.fail_crit_edge, label %if.end29

if.end22.fail_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end29:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %rx_ret_prd_dma = getelementptr i8, ptr %dev, i32 2552
  %call.i80 = tail call ptr @dma_alloc_attrs(ptr noundef %dev31, i32 noundef 4, ptr noundef %rx_ret_prd_dma, i32 noundef 3264, i32 noundef 0) #12
  %rx_ret_prd = getelementptr i8, ptr %dev, i32 2528
  %17 = ptrtoint ptr %rx_ret_prd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i80, ptr %rx_ret_prd, align 32
  %cmp34 = icmp eq ptr %call.i80, null
  br i1 %cmp34, label %if.end29.fail_crit_edge, label %if.end36

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end36:                                         ; preds = %if.end29
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %tx_csm_dma = getelementptr i8, ptr %dev, i32 2556
  %call.i81 = tail call ptr @dma_alloc_attrs(ptr noundef %dev38, i32 noundef 4, ptr noundef %tx_csm_dma, i32 noundef 3264, i32 noundef 0) #12
  %tx_csm = getelementptr i8, ptr %dev, i32 2532
  %20 = ptrtoint ptr %tx_csm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i81, ptr %tx_csm, align 4
  %cmp41 = icmp eq ptr %call.i81, null
  br i1 %cmp41, label %if.end36.fail_crit_edge, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36.fail_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

fail:                                             ; preds = %if.end36.fail_crit_edge, %if.end29.fail_crit_edge, %if.end22.fail_crit_edge, %if.end15.fail_crit_edge, %if.end.fail_crit_edge, %entry.fail_crit_edge
  tail call fastcc void @ace_init_cleanup(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %fail ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ace_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %cache_size = alloca i8, align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cache_size) #12
  %0 = ptrtoint ptr %cache_size to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cache_size, align 1, !annotation !379
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %6 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %7 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs1, align 8
  %board_idx2 = getelementptr i8, ptr %dev, i32 2576
  %9 = ptrtoint ptr %board_idx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %board_idx2, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !380
  tail call void @arm_heavy_mb() #12
  %HostCtrl = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 134217736) #12, !srcloc !374
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !382
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 570425378) #12, !srcloc !374
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !384
  tail call void @arm_heavy_mb() #12
  %CpuCtrl = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 17
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !385
  %15 = or i32 %14, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuCtrl, i32 %15) #12, !srcloc !374
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !387
  tail call void @arm_heavy_mb() #12
  %Mb0Lo = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mb0Lo, i32 0) #12, !srcloc !374
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !388
  %18 = lshr i32 %17, 4
  %shr = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr)
  %cond733 = icmp eq i32 %shr, 6
  br i1 %cond733, label %do.end43, label %do.end72

do.end43:                                         ; preds = %entry
  %firmware_major = getelementptr i8, ptr %dev, i32 2588
  %19 = ptrtoint ptr %firmware_major to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %firmware_major, align 4
  %conv = zext i8 %20 to i32
  %firmware_minor = getelementptr i8, ptr %dev, i32 2589
  %21 = ptrtoint ptr %firmware_minor to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %firmware_minor, align 1
  %conv45 = zext i8 %22 to i32
  %firmware_fix = getelementptr i8, ptr %dev, i32 2590
  %23 = ptrtoint ptr %firmware_fix to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %firmware_fix, align 2
  %conv46 = zext i8 %24 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 6, i32 noundef %conv, i32 noundef %conv45, i32 noundef %conv46) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !389
  tail call void @arm_heavy_mb() #12
  %CpuBCtrl = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 25
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuBCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !390
  %26 = or i32 %25, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuBCtrl, i32 %26) #12, !srcloc !374
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuBCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !391
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  tail call void @arm_heavy_mb() #12
  %LocalCtrl = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 131072) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !393
  tail call void @arm_heavy_mb() #12
  %MiscCfg = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MiscCfg, i32 4096) #12, !srcloc !374
  %version = getelementptr i8, ptr %dev, i32 2324
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %version, align 4
  %tx_ring_entries = getelementptr i8, ptr %dev, i32 2352
  %29 = ptrtoint ptr %tx_ring_entries to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %tx_ring_entries, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  tail call void @arm_heavy_mb() #12
  %ModeStat = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ModeStat, i32 503447616) #12, !srcloc !374
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ModeStat) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %call87 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end43.init_error_crit_edge, label %for.inc

do.end43.init_error_crit_edge:                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

do.end72:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %shr) #15
  br label %init_error

for.inc:                                          ; preds = %do.end43
  %call87.1 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.1)
  %cmp88.1 = icmp slt i32 %call87.1, 0
  br i1 %cmp88.1, label %for.inc.init_error_crit_edge, label %for.inc.1

for.inc.init_error_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc.1:                                        ; preds = %for.inc
  %call87.2 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 142)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.2)
  %cmp88.2 = icmp slt i32 %call87.2, 0
  br i1 %cmp88.2, label %for.inc.1.init_error_crit_edge, label %for.inc.2

for.inc.1.init_error_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc.2:                                        ; preds = %for.inc.1
  %call87.3 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.3)
  %cmp88.3 = icmp slt i32 %call87.3, 0
  br i1 %cmp88.3, label %for.inc.2.init_error_crit_edge, label %for.inc.3

for.inc.2.init_error_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc.3:                                        ; preds = %for.inc.2
  %31 = shl i32 %call87, 24
  %and.1 = shl i32 %call87.1, 16
  %32 = and i32 %and.1, 16711680
  %33 = or i32 %31, %32
  %and.2 = shl i32 %call87.2, 8
  %34 = and i32 %and.2, 65280
  %shl.3 = or i32 %33, %34
  %and.3 = and i32 %call87.3, 255
  %or90.3 = or i32 %and.3, %shl.3
  %call100 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %for.inc.3.init_error_crit_edge, label %for.inc111

for.inc.3.init_error_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc111:                                       ; preds = %for.inc.3
  %call100.1 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 145)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.1)
  %cmp101.1 = icmp slt i32 %call100.1, 0
  br i1 %cmp101.1, label %for.inc111.init_error_crit_edge, label %for.inc111.1

for.inc111.init_error_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc111.1:                                     ; preds = %for.inc111
  %call100.2 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 146)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.2)
  %cmp101.2 = icmp slt i32 %call100.2, 0
  br i1 %cmp101.2, label %for.inc111.1.init_error_crit_edge, label %for.inc111.2

for.inc111.1.init_error_crit_edge:                ; preds = %for.inc111.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc111.2:                                     ; preds = %for.inc111.1
  %call100.3 = tail call fastcc i32 @read_eeprom_byte(ptr noundef %dev, i32 noundef 147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.3)
  %cmp101.3 = icmp slt i32 %call100.3, 0
  br i1 %cmp101.3, label %for.inc111.2.init_error_crit_edge, label %for.inc111.3

for.inc111.2.init_error_crit_edge:                ; preds = %for.inc111.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

for.inc111.3:                                     ; preds = %for.inc111.2
  %35 = shl i32 %call100, 24
  %and105.1 = shl i32 %call100.1, 16
  %36 = and i32 %and105.1, 16711680
  %37 = or i32 %35, %36
  %and105.2 = shl i32 %call100.2, 8
  %38 = and i32 %and105.2, 65280
  %shl97.3 = or i32 %37, %38
  %and105.3 = and i32 %call100.3, 255
  %or106.3 = or i32 %and105.3, %shl97.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %or90.3)
  %MacAddrHi = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MacAddrHi, i32 %39) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %or106.3)
  %MacAddrLo = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MacAddrLo, i32 %40) #12, !srcloc !374
  %conv122 = trunc i32 %call87.2 to i8
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv122, ptr %addr, align 1
  %conv124 = trunc i32 %call87.3 to i8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv124, ptr %1, align 1
  %conv128 = trunc i32 %call100 to i8
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv128, ptr %2, align 1
  %conv132 = trunc i32 %call100.1 to i8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv132, ptr %3, align 1
  %conv136 = trunc i32 %call100.2 to i8
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv136, ptr %4, align 1
  %conv139 = trunc i32 %call100.3 to i8
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv139, ptr %5, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %48) #15
  %pdev146 = getelementptr i8, ptr %dev, i32 2564
  %49 = ptrtoint ptr %pdev146 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev146, align 4
  %call147 = call i32 @pci_read_config_byte(ptr noundef %50, i32 noundef 12, ptr noundef nonnull %cache_size) #12
  %51 = ptrtoint ptr %cache_size to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cache_size, align 1
  %shl149 = shl i8 %52, 2
  store i8 %shl149, ptr %cache_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %shl149)
  %cmp152.not = icmp eq i8 %shl149, -128
  br i1 %cmp152.not, label %for.inc111.3.if.end178_crit_edge, label %do.end157

for.inc111.3.if.end178_crit_edge:                 ; preds = %for.inc111.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

do.end157:                                        ; preds = %for.inc111.3
  %conv151 = zext i8 %shl149 to i32
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv151) #15
  %53 = ptrtoint ptr %cache_size to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cache_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %54)
  %cmp162 = icmp ugt i8 %54, -128
  br i1 %cmp162, label %do.end167, label %do.end173

do.end167:                                        ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #14
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef 128) #15
  br label %if.end178

do.end173:                                        ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #14
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef 128) #15
  %call176 = call i32 @pci_write_config_byte(ptr noundef %50, i32 noundef 12, i8 noundef zeroext 32) #12
  br label %if.end178

if.end178:                                        ; preds = %do.end173, %do.end167, %for.inc111.3.if.end178_crit_edge
  %PciState = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 6
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PciState) #12, !srcloc !370
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and188 = and i32 %56, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool.not = icmp eq i32 %and188, 0
  %cond = select i1 %tobool.not, i32 64, i32 32
  %and189 = and i32 %56, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  %cond191 = select i1 %tobool190.not, i32 33, i32 66
  %pci_latency = getelementptr i8, ptr %dev, i32 2582
  %57 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pci_latency, align 2
  %conv192 = zext i8 %58 to i32
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %cond, i32 noundef %cond191, i32 noundef %conv192) #15
  %59 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp195 = icmp sgt i32 %60, 1
  br i1 %cmp195, label %if.then197, label %if.end178.do.body237_crit_edge

if.end178.do.body237_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body237

if.then197:                                       ; preds = %if.end178
  %or200 = or i32 %and189, 1979842560
  %pci_command = getelementptr i8, ptr %dev, i32 2580
  %61 = ptrtoint ptr %pci_command to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pci_command, align 4
  %63 = and i16 %62, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool208.not = icmp eq i16 %63, 0
  br i1 %tobool208.not, label %if.then197.do.body237_crit_edge, label %if.then209

if.then197.do.body237_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body237

if.then209:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  %and212 = and i16 %62, -17
  %64 = ptrtoint ptr %pci_command to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %and212, ptr %pci_command, align 4
  %call215 = call i32 @pci_write_config_word(ptr noundef %50, i32 noundef 4, i16 noundef zeroext %and212) #12
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #15
  br label %do.body237

do.body237:                                       ; preds = %if.then209, %if.then197.do.body237_crit_edge, %if.end178.do.body237_crit_edge
  %tmp.0 = phi i32 [ %or200, %if.then209 ], [ %or200, %if.then197.do.body237_crit_edge ], [ 1979711488, %if.end178.do.body237_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %65 = call i32 @llvm.bswap.i32(i32 %tmp.0)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PciState, i32 %65) #12, !srcloc !374
  %dev241 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %call242 = call i32 @dma_set_mask(ptr noundef %dev241, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.end245, label %do.body237.init_error_crit_edge

do.body237.init_error_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

if.end245:                                        ; preds = %do.body237
  %66 = ptrtoint ptr %pdev146 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev146, align 4
  %dev247 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %info_dma = getelementptr i8, ptr %dev, i32 2320
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev247, i32 noundef 1168, ptr noundef %info_dma, i32 noundef 3264, i32 noundef 0) #12
  %tobool249.not = icmp eq ptr %call.i, null
  br i1 %tobool249.not, label %if.end245.init_error_crit_edge, label %if.end251

if.end245.init_error_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

if.end251:                                        ; preds = %if.end245
  %info252 = getelementptr i8, ptr %dev, i32 2308
  %68 = ptrtoint ptr %info252 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %info252, align 4
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 17408, i32 noundef 3520, i32 noundef 3) #16
  %skb = getelementptr i8, ptr %dev, i32 2316
  %69 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i.i.i, ptr %skb, align 4
  %tobool254.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool254.not, label %if.end251.init_error_crit_edge, label %if.end256

if.end251.init_error_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

if.end256:                                        ; preds = %if.end251
  %irq = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 46
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call.i994 = call i32 @request_threaded_irq(i32 noundef %71, ptr noundef nonnull @ace_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i994)
  %tobool258.not = icmp eq i32 %call.i994, 0
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  br i1 %tobool258.not, label %if.else266, label %do.end262

do.end262:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str, i32 noundef %73) #15
  br label %init_error

if.else266:                                       ; preds = %if.end256
  %irq268 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %74 = ptrtoint ptr %irq268 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %irq268, align 4
  %call270 = call fastcc i32 @ace_load_firmware(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end273, label %if.else266.init_error_crit_edge

if.else266.init_error_crit_edge:                  ; preds = %if.else266
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_error

if.end273:                                        ; preds = %if.else266
  %fw_running = getelementptr i8, ptr %dev, i32 2572
  %75 = ptrtoint ptr %fw_running to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %fw_running, align 4
  %76 = ptrtoint ptr %info_dma to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %info_dma, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %InfoPtrHi = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InfoPtrHi, i32 0) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  call void @arm_heavy_mb() #12
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  %InfoPtrLo = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 69
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InfoPtrLo, i32 %78) #12, !srcloc !374
  %evt_ring = getelementptr i8, ptr %dev, i32 2520
  %79 = ptrtoint ptr %evt_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %evt_ring, align 8
  %81 = call ptr @memset(ptr %80, i32 0, i32 2048)
  %evt_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 1
  %evt_ring_dma = getelementptr i8, ptr %dev, i32 2544
  %82 = ptrtoint ptr %evt_ring_dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %evt_ring_dma, align 16
  %addrlo.i = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %addrlo.i, align 4
  %85 = ptrtoint ptr %evt_ctrl to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %evt_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %flags = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 1, i32 2
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags, align 2
  %evt_prd = getelementptr i8, ptr %dev, i32 2524
  %87 = ptrtoint ptr %evt_prd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %evt_prd, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 0, ptr %88, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  call void @arm_heavy_mb() #12
  %evt_prd_ptr = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 8
  %evt_prd_dma = getelementptr i8, ptr %dev, i32 2548
  %90 = ptrtoint ptr %evt_prd_dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %evt_prd_dma, align 4
  %addrlo.i995 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %addrlo.i995 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %addrlo.i995, align 4
  %93 = ptrtoint ptr %evt_prd_ptr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %evt_prd_ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  call void @arm_heavy_mb() #12
  %EvtCsm = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtCsm, i32 0) #12, !srcloc !374
  %cmd_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 2
  %addrlo.i996 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %94 = ptrtoint ptr %addrlo.i996 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 256, ptr %addrlo.i996, align 4
  %95 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %cmd_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %flags295 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 2, i32 2
  %96 = ptrtoint ptr %flags295 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags295, align 2
  %max_len = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %max_len to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %max_len, align 4
  br label %do.body302

do.body302:                                       ; preds = %do.body302.do.body302_crit_edge, %if.end273
  %indvars.iv = phi i32 [ 0, %if.end273 ], [ %indvars.iv.next, %do.body302.do.body302_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  call void @arm_heavy_mb() #12
  %arrayidx305 = getelementptr %struct.ace_regs, ptr %8, i32 0, i32 97, i32 %indvars.iv
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305, i32 0) #12, !srcloc !374
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %do.body309, label %do.body302.do.body302_crit_edge

do.body302.do.body302_crit_edge:                  ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body302

do.body309:                                       ; preds = %do.body302
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  call void @arm_heavy_mb() #12
  %CmdPrd = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd, i32 0) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  call void @arm_heavy_mb() #12
  %CmdCsm = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 77
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdCsm, i32 0) #12, !srcloc !374
  %98 = ptrtoint ptr %info_dma to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %info_dma, align 16
  %stats2_ptr = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 11
  %addrlo.i997 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 11, i32 1
  %100 = ptrtoint ptr %addrlo.i997 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %addrlo.i997, align 4
  %101 = ptrtoint ptr %stats2_ptr to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %stats2_ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %rx_std_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 4
  %rx_ring_base_dma = getelementptr i8, ptr %dev, i32 2540
  %102 = ptrtoint ptr %rx_ring_base_dma to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rx_ring_base_dma, align 4
  %addrlo.i998 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %104 = ptrtoint ptr %addrlo.i998 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %addrlo.i998, align 4
  %105 = ptrtoint ptr %rx_std_ctrl to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %rx_std_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %max_len321 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %max_len321 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1518, ptr %max_len321, align 4
  %flags323 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 4, i32 2
  %107 = ptrtoint ptr %flags323 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 25, ptr %flags323, align 2
  %rx_std_ring = getelementptr i8, ptr %dev, i32 2472
  %108 = ptrtoint ptr %rx_std_ring to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rx_std_ring, align 8
  %110 = call ptr @memset(ptr %109, i32 0, i32 16384)
  br label %for.body328

for.body328:                                      ; preds = %for.body328.for.body328_crit_edge, %do.body309
  %indvars.iv1031 = phi i32 [ 0, %do.body309 ], [ %indvars.iv.next1032, %for.body328.for.body328_crit_edge ]
  %111 = ptrtoint ptr %rx_std_ring to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx_std_ring, align 8
  %flags332 = getelementptr %struct.rx_desc, ptr %112, i32 %indvars.iv1031, i32 4
  %113 = ptrtoint ptr %flags332 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %flags332, align 2
  %indvars.iv.next1032 = add nuw nsw i32 %indvars.iv1031, 1
  %exitcond1033.not = icmp eq i32 %indvars.iv.next1032, 512
  br i1 %exitcond1033.not, label %for.end335, label %for.body328.for.body328_crit_edge

for.body328.for.body328_crit_edge:                ; preds = %for.body328
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body328

for.end335:                                       ; preds = %for.body328
  %rx_std_skbprd = getelementptr i8, ptr %dev, i32 2456
  %114 = ptrtoint ptr %rx_std_skbprd to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %rx_std_skbprd, align 8
  %cur_rx_bufs = getelementptr i8, ptr %dev, i32 2444
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cur_rx_bufs, i32 noundef 4) #12
  %115 = ptrtoint ptr %cur_rx_bufs to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %cur_rx_bufs, align 4
  %rx_jumbo_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 5
  %116 = ptrtoint ptr %rx_ring_base_dma to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_ring_base_dma, align 4
  %add338 = add i32 %117, 16384
  %addrlo.i999 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %118 = ptrtoint ptr %addrlo.i999 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add338, ptr %addrlo.i999, align 4
  %119 = ptrtoint ptr %rx_jumbo_ctrl to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %rx_jumbo_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %max_len340 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %max_len340 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %max_len340, align 4
  %flags342 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 5, i32 2
  %121 = ptrtoint ptr %flags342 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 25, ptr %flags342, align 2
  %rx_jumbo_ring = getelementptr i8, ptr %dev, i32 2476
  %122 = ptrtoint ptr %rx_jumbo_ring to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_jumbo_ring, align 4
  %124 = call ptr @memset(ptr %123, i32 0, i32 8192)
  br label %for.body347

for.body347:                                      ; preds = %for.body347.for.body347_crit_edge, %for.end335
  %indvars.iv1034 = phi i32 [ 0, %for.end335 ], [ %indvars.iv.next1035, %for.body347.for.body347_crit_edge ]
  %125 = ptrtoint ptr %rx_jumbo_ring to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_jumbo_ring, align 4
  %flags351 = getelementptr %struct.rx_desc, ptr %126, i32 %indvars.iv1034, i32 4
  %127 = ptrtoint ptr %flags351 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 17, ptr %flags351, align 2
  %indvars.iv.next1035 = add nuw nsw i32 %indvars.iv1034, 1
  %exitcond1036.not = icmp eq i32 %indvars.iv.next1035, 256
  br i1 %exitcond1036.not, label %for.end354, label %for.body347.for.body347_crit_edge

for.body347.for.body347_crit_edge:                ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body347

for.end354:                                       ; preds = %for.body347
  %rx_jumbo_skbprd = getelementptr i8, ptr %dev, i32 2464
  %128 = ptrtoint ptr %rx_jumbo_skbprd to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %rx_jumbo_skbprd, align 32
  %cur_jumbo_bufs = getelementptr i8, ptr %dev, i32 2452
  %call.i.i992 = call zeroext i1 @__kasan_check_write(ptr noundef %cur_jumbo_bufs, i32 noundef 4) #12
  %129 = ptrtoint ptr %cur_jumbo_bufs to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 0, ptr %cur_jumbo_bufs, align 4
  %rx_mini_ring = getelementptr i8, ptr %dev, i32 2480
  %130 = ptrtoint ptr %rx_mini_ring to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_mini_ring, align 16
  %132 = call ptr @memset(ptr %131, i32 0, i32 32768)
  %133 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp356 = icmp sgt i32 %134, 1
  %rx_mini_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6
  br i1 %cmp356, label %if.then358, label %if.else378

if.then358:                                       ; preds = %for.end354
  %135 = ptrtoint ptr %rx_ring_base_dma to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_ring_base_dma, align 4
  %add361 = add i32 %136, 24576
  %addrlo.i1000 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %137 = ptrtoint ptr %addrlo.i1000 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add361, ptr %addrlo.i1000, align 4
  %138 = ptrtoint ptr %rx_mini_ctrl to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %rx_mini_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %max_len363 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 1
  %139 = ptrtoint ptr %max_len363 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 100, ptr %max_len363, align 4
  %flags365 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 2
  %140 = ptrtoint ptr %flags365 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 25, ptr %flags365, align 2
  br label %for.body370

for.body370:                                      ; preds = %for.body370.for.body370_crit_edge, %if.then358
  %indvars.iv1037 = phi i32 [ 0, %if.then358 ], [ %indvars.iv.next1038, %for.body370.for.body370_crit_edge ]
  %141 = ptrtoint ptr %rx_mini_ring to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rx_mini_ring, align 16
  %flags374 = getelementptr %struct.rx_desc, ptr %142, i32 %indvars.iv1037, i32 4
  %143 = ptrtoint ptr %flags374 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 4097, ptr %flags374, align 2
  %indvars.iv.next1038 = add nuw nsw i32 %indvars.iv1037, 1
  %exitcond1039.not = icmp eq i32 %indvars.iv.next1038, 1024
  br i1 %exitcond1039.not, label %for.body370.if.end385_crit_edge, label %for.body370.for.body370_crit_edge

for.body370.for.body370_crit_edge:                ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body370

for.body370.if.end385_crit_edge:                  ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end385

if.else378:                                       ; preds = %for.end354
  call void @__sanitizer_cov_trace_pc() #14
  %addrlo.i1001 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %144 = ptrtoint ptr %addrlo.i1001 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %addrlo.i1001, align 4
  %145 = ptrtoint ptr %rx_mini_ctrl to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %rx_mini_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %flags382 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 2
  %146 = ptrtoint ptr %flags382 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 512, ptr %flags382, align 2
  %max_len384 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 6, i32 1
  %147 = ptrtoint ptr %max_len384 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %max_len384, align 4
  br label %if.end385

if.end385:                                        ; preds = %if.else378, %for.body370.if.end385_crit_edge
  %rx_mini_skbprd = getelementptr i8, ptr %dev, i32 2460
  %148 = ptrtoint ptr %rx_mini_skbprd to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %rx_mini_skbprd, align 4
  %cur_mini_bufs = getelementptr i8, ptr %dev, i32 2448
  %call.i.i993 = call zeroext i1 @__kasan_check_write(ptr noundef %cur_mini_bufs, i32 noundef 4) #12
  %149 = ptrtoint ptr %cur_mini_bufs to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile i32 0, ptr %cur_mini_bufs, align 4
  %rx_return_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 7
  %150 = ptrtoint ptr %rx_ring_base_dma to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_ring_base_dma, align 4
  %add388 = add i32 %151, 57344
  %addrlo.i1002 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %152 = ptrtoint ptr %addrlo.i1002 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add388, ptr %addrlo.i1002, align 4
  %153 = ptrtoint ptr %rx_return_ctrl to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %rx_return_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %flags390 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 7, i32 2
  %154 = ptrtoint ptr %flags390 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags390, align 2
  %max_len392 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 7, i32 1
  %155 = ptrtoint ptr %max_len392 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 2048, ptr %max_len392, align 4
  %rx_return_ring = getelementptr i8, ptr %dev, i32 2484
  %156 = ptrtoint ptr %rx_return_ring to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rx_return_ring, align 4
  %158 = call ptr @memset(ptr %157, i32 0, i32 65536)
  %rx_ret_prd_ptr = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 9
  %rx_ret_prd_dma = getelementptr i8, ptr %dev, i32 2552
  %159 = ptrtoint ptr %rx_ret_prd_dma to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_ret_prd_dma, align 8
  %addrlo.i1003 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 9, i32 1
  %161 = ptrtoint ptr %addrlo.i1003 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %addrlo.i1003, align 4
  %162 = ptrtoint ptr %rx_ret_prd_ptr to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %rx_ret_prd_ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %rx_ret_prd = getelementptr i8, ptr %dev, i32 2528
  %163 = ptrtoint ptr %rx_ret_prd to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rx_ret_prd, align 32
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 0, ptr %164, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %WinBase = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase, i32 3670016) #12, !srcloc !374
  %tx_ring = getelementptr i8, ptr %dev, i32 2340
  %166 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tx_ring, align 4
  %168 = call ptr @memset(ptr %167, i32 0, i32 4096)
  %tx_ctrl = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 3
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2536
  %169 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tx_ring_dma, align 8
  %addrlo.i1004 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %171 = ptrtoint ptr %addrlo.i1004 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %addrlo.i1004, align 4
  %172 = ptrtoint ptr %tx_ctrl to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %tx_ctrl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  %max_len398 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 3, i32 1
  %173 = ptrtoint ptr %max_len398 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 256, ptr %max_len398, align 4
  %flags403 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 3, i32 2
  %174 = ptrtoint ptr %flags403 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 121, ptr %flags403, align 2
  %tx_csm_ptr = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 10
  %tx_csm_dma = getelementptr i8, ptr %dev, i32 2556
  %175 = ptrtoint ptr %tx_csm_dma to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tx_csm_dma, align 4
  %addrlo.i1005 = getelementptr inbounds %struct.ace_info, ptr %call.i, i32 0, i32 10, i32 1
  %177 = ptrtoint ptr %addrlo.i1005 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %addrlo.i1005, align 4
  %178 = ptrtoint ptr %tx_csm_ptr to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %tx_csm_ptr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @arm_heavy_mb() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  call void @arm_heavy_mb() #12
  %DmaReadCfg = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 73
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadCfg, i32 -2147483648) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  call void @arm_heavy_mb() #12
  %DmaWriteCfg = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 74
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteCfg, i32 -2147483648) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  call void @arm_heavy_mb() #12
  %MaskInt = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 91
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MaskInt, i32 0) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @arm_heavy_mb() #12
  %IfIdx = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IfIdx, i32 16777216) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  call void @arm_heavy_mb() #12
  %TuneStatTicks = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneStatTicks, i32 -2138825216) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  call void @arm_heavy_mb() #12
  %TuneTrace = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneTrace, i32 0) #12, !srcloc !374
  call fastcc void @ace_set_rxtx_parms(ptr noundef %dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp422 = icmp eq i32 %10, -1
  br i1 %cmp422, label %do.end427, label %if.else430

do.end427:                                        ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr i8, ptr %dev, i32 2584
  %179 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name, align 8
  %call429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %180, i32 noundef 8) #15
  br label %if.end488

if.else430:                                       ; preds = %if.end385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp431 = icmp sgt i32 %10, -1
  br i1 %cmp431, label %if.then433, label %if.else430.if.end488_crit_edge

if.else430.if.end488_crit_edge:                   ; preds = %if.else430
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end488

if.then433:                                       ; preds = %if.else430
  %arrayidx434 = getelementptr [8 x i32], ptr @tx_coal_tick, i32 0, i32 %10
  %181 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx434, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool435.not = icmp eq i32 %182, 0
  br i1 %tobool435.not, label %if.then433.if.end441_crit_edge, label %do.body437

if.then433.if.end441_crit_edge:                   ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end441

do.body437:                                       ; preds = %if.then433
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  call void @arm_heavy_mb() #12
  %183 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx434, align 4
  %185 = call i32 @llvm.bswap.i32(i32 %184)
  %TuneTxCoalTicks = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 79
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneTxCoalTicks, i32 %185) #12, !srcloc !374
  br label %if.end441

if.end441:                                        ; preds = %do.body437, %if.then433.if.end441_crit_edge
  %arrayidx442 = getelementptr [8 x i32], ptr @max_tx_desc, i32 0, i32 %10
  %186 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool443.not = icmp eq i32 %187, 0
  br i1 %tobool443.not, label %if.end441.if.end449_crit_edge, label %do.body445

if.end441.if.end449_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end449

do.body445:                                       ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  call void @arm_heavy_mb() #12
  %188 = ptrtoint ptr %arrayidx442 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx442, align 4
  %190 = call i32 @llvm.bswap.i32(i32 %189)
  %TuneMaxTxDesc = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 81
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxTxDesc, i32 %190) #12, !srcloc !374
  br label %if.end449

if.end449:                                        ; preds = %do.body445, %if.end441.if.end449_crit_edge
  %arrayidx450 = getelementptr [8 x i32], ptr @rx_coal_tick, i32 0, i32 %10
  %191 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool451.not = icmp eq i32 %192, 0
  br i1 %tobool451.not, label %if.end449.if.end457_crit_edge, label %do.body453

if.end449.if.end457_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end457

do.body453:                                       ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  call void @arm_heavy_mb() #12
  %193 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx450, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194)
  %TuneRxCoalTicks = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneRxCoalTicks, i32 %195) #12, !srcloc !374
  br label %if.end457

if.end457:                                        ; preds = %do.body453, %if.end449.if.end457_crit_edge
  %arrayidx458 = getelementptr [8 x i32], ptr @max_rx_desc, i32 0, i32 %10
  %196 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool459.not = icmp eq i32 %197, 0
  br i1 %tobool459.not, label %if.end457.if.end465_crit_edge, label %do.body461

if.end457.if.end465_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end465

do.body461:                                       ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  call void @arm_heavy_mb() #12
  %198 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx458, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  %TuneMaxRxDesc = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 82
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxRxDesc, i32 %200) #12, !srcloc !374
  br label %if.end465

if.end465:                                        ; preds = %do.body461, %if.end457.if.end465_crit_edge
  %arrayidx466 = getelementptr [8 x i32], ptr @trace, i32 0, i32 %10
  %201 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx466, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool467.not = icmp eq i32 %202, 0
  br i1 %tobool467.not, label %if.end465.if.end474_crit_edge, label %do.body469

if.end465.if.end474_crit_edge:                    ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end474

do.body469:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  call void @arm_heavy_mb() #12
  %203 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx466, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneTrace, i32 %205) #12, !srcloc !374
  br label %if.end474

if.end474:                                        ; preds = %do.body469, %if.end465.if.end474_crit_edge
  %arrayidx475 = getelementptr [8 x i32], ptr @tx_ratio, i32 0, i32 %10
  %206 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx475, align 4
  %208 = add i32 %207, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %208)
  %209 = icmp ult i32 %208, 63
  br i1 %209, label %do.body482, label %if.end474.land.lhs.true497_crit_edge

if.end474.land.lhs.true497_crit_edge:             ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true497

do.body482:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  call void @arm_heavy_mb() #12
  %210 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx475, align 4
  %212 = call i32 @llvm.bswap.i32(i32 %211)
  %TxBufRat = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxBufRat, i32 %212) #12, !srcloc !374
  br label %land.lhs.true497

if.end488:                                        ; preds = %if.else430.if.end488_crit_edge, %do.end427
  %213 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %214)
  %cmp490 = icmp sgt i32 %214, 1
  %spec.select = select i1 %cmp490, i32 1890516992, i32 1888419840
  br label %if.end578

land.lhs.true497:                                 ; preds = %do.body482, %if.end474.land.lhs.true497_crit_edge
  %215 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %216)
  %cmp4901006 = icmp sgt i32 %216, 1
  %spec.select1007 = select i1 %cmp4901006, i32 1890516992, i32 1888419840
  %arrayidx498 = getelementptr [8 x i32], ptr @link_state, i32 0, i32 %10
  %217 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx498, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool499.not = icmp eq i32 %218, 0
  br i1 %tobool499.not, label %land.lhs.true497.if.end578_crit_edge, label %if.then500

land.lhs.true497.if.end578_crit_edge:             ; preds = %land.lhs.true497
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end578

if.then500:                                       ; preds = %land.lhs.true497
  %and502 = and i32 %218, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502)
  %tobool503.not = icmp eq i32 %and502, 0
  br i1 %tobool503.not, label %if.then500.if.end512_crit_edge, label %do.end507

if.then500.if.end512_crit_edge:                   ; preds = %if.then500
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end512

do.end507:                                        ; preds = %if.then500
  call void @__sanitizer_cov_trace_pc() #14
  %name509 = getelementptr i8, ptr %dev, i32 2584
  %219 = ptrtoint ptr %name509 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name509, align 8
  %call510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %220) #15
  br label %if.end512

if.end512:                                        ; preds = %do.end507, %if.then500.if.end512_crit_edge
  %and518 = and i32 %218, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518)
  %tobool519.not = icmp eq i32 %and518, 0
  %tmp.4 = select i1 %tobool519.not, i32 1073741824, i32 1073807360
  %and523 = shl i32 %218, 12
  %221 = and i32 %and523, 393216
  %222 = or i32 %221, %tmp.4
  %and533 = and i32 %218, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533)
  %cmp534 = icmp eq i32 %and533, 0
  br i1 %cmp534, label %do.end539, label %if.end512.if.end544_crit_edge

if.end512.if.end544_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end544

do.end539:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #14
  %name541 = getelementptr i8, ptr %dev, i32 2584
  %223 = ptrtoint ptr %name541 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %name541, align 8
  %call542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %224) #15
  br label %if.end544

if.end544:                                        ; preds = %do.end539, %if.end512.if.end544_crit_edge
  %tmp.7 = phi i32 [ 1611071488, %do.end539 ], [ %222, %if.end512.if.end544_crit_edge ]
  %and545 = and i32 %218, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and545)
  %cmp546 = icmp eq i32 %and545, 0
  br i1 %cmp546, label %if.then548, label %do.end553

if.then548:                                       ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #14
  %or549 = or i32 %tmp.7, 268435456
  br label %if.end557

do.end553:                                        ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #14
  %name555 = getelementptr i8, ptr %dev, i32 2584
  %225 = ptrtoint ptr %name555 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %name555, align 8
  %call556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %226) #15
  br label %if.end557

if.end557:                                        ; preds = %do.end553, %if.then548
  %tmp.8 = phi i32 [ %or549, %if.then548 ], [ %tmp.7, %do.end553 ]
  %and558 = shl i32 %218, 14
  %227 = and i32 %and558, 8388608
  %228 = or i32 %tmp.8, %227
  %and563 = and i32 %218, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and563)
  %tobool564.not = icmp eq i32 %and563, 0
  br i1 %tobool564.not, label %if.end557.if.end578_crit_edge, label %land.lhs.true565

if.end557.if.end578_crit_edge:                    ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end578

land.lhs.true565:                                 ; preds = %if.end557
  %229 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp567 = icmp sgt i32 %230, 1
  br i1 %cmp567, label %do.end572, label %land.lhs.true565.if.end578_crit_edge

land.lhs.true565.if.end578_crit_edge:             ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end578

do.end572:                                        ; preds = %land.lhs.true565
  call void @__sanitizer_cov_trace_pc() #14
  %name574 = getelementptr i8, ptr %dev, i32 2584
  %231 = ptrtoint ptr %name574 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name574, align 8
  %call575 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %232) #15
  %or576 = or i32 %228, 2097152
  br label %if.end578

if.end578:                                        ; preds = %do.end572, %land.lhs.true565.if.end578_crit_edge, %if.end557.if.end578_crit_edge, %land.lhs.true497.if.end578_crit_edge, %if.end488
  %tmp.11 = phi i32 [ %spec.select1007, %land.lhs.true497.if.end578_crit_edge ], [ %spec.select, %if.end488 ], [ %or576, %do.end572 ], [ %228, %land.lhs.true565.if.end578_crit_edge ], [ %228, %if.end557.if.end578_crit_edge ]
  %link = getelementptr i8, ptr %dev, i32 2328
  %233 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %tmp.11, ptr %link, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  call void @arm_heavy_mb() #12
  %234 = call i32 @llvm.bswap.i32(i32 %tmp.11)
  %TuneLink = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneLink, i32 %234) #12, !srcloc !374
  %235 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %236)
  %cmp583 = icmp sgt i32 %236, 1
  br i1 %cmp583, label %do.body586, label %if.end578.do.body590_crit_edge

if.end578.do.body590_crit_edge:                   ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body590

do.body586:                                       ; preds = %if.end578
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  call void @arm_heavy_mb() #12
  %TuneFastLink = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 85
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneFastLink, i32 %234) #12, !srcloc !374
  br label %do.body590

do.body590:                                       ; preds = %do.body586, %if.end578.do.body590_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  call void @arm_heavy_mb() #12
  %firmware_start = getelementptr i8, ptr %dev, i32 2592
  %237 = ptrtoint ptr %firmware_start to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %firmware_start, align 32
  %239 = call i32 @llvm.bswap.i32(i32 %238)
  %Pc = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Pc, i32 %239) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !424
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mb0Lo, i32 0) #12, !srcloc !374
  %cur_rx = getelementptr i8, ptr %dev, i32 2468
  %240 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %cur_rx, align 4
  %tx_ret_csm = getelementptr i8, ptr %dev, i32 2348
  %241 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 0, ptr %tx_ret_csm, align 4
  %tx_csm = getelementptr i8, ptr %dev, i32 2532
  %242 = ptrtoint ptr %tx_csm to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %tx_csm, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile i32 0, ptr %243, align 4
  %tx_prd = getelementptr i8, ptr %dev, i32 2344
  %245 = ptrtoint ptr %tx_prd to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %tx_prd, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !425
  call void @arm_heavy_mb() #12
  call fastcc void @ace_set_txprd(ptr noundef %8, i32 noundef 0)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  call void @arm_heavy_mb() #12
  %RxRetCsm = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxRetCsm, i32 0) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  call void @arm_heavy_mb() #12
  %AssistState = getelementptr inbounds %struct.ace_regs, ptr %8, i32 0, i32 15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %AssistState, i32 16777216) #12, !srcloc !374
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !428
  call void @arm_heavy_mb() #12
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !429
  %247 = and i32 %246, -33554689
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuCtrl, i32 %247) #12, !srcloc !374
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %249 = load volatile i32, ptr @jiffies, align 128
  %add623.neg = sub i32 -300, %249
  %250 = load volatile i32, ptr @jiffies, align 128
  %sub1022 = add i32 %add623.neg, %250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1022)
  %cmp6241023 = icmp slt i32 %sub1022, 0
  br i1 %cmp6241023, label %do.body590.land.rhs_crit_edge, label %do.body590.while.end_crit_edge

do.body590.while.end_crit_edge:                   ; preds = %do.body590
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body590.land.rhs_crit_edge:                    ; preds = %do.body590
  br label %land.rhs

land.rhs:                                         ; preds = %do.end632.land.rhs_crit_edge, %do.body590.land.rhs_crit_edge
  %251 = ptrtoint ptr %fw_running to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile i32, ptr %fw_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool627.not = icmp eq i32 %252, 0
  br i1 %tobool627.not, label %do.end632, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end632:                                        ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !431
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %253 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add623.neg, %253
  %cmp624 = icmp slt i32 %sub, 0
  br i1 %cmp624, label %do.end632.land.rhs_crit_edge, label %do.end632.while.end_crit_edge

do.end632.while.end_crit_edge:                    ; preds = %do.end632
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end632.land.rhs_crit_edge:                     ; preds = %do.end632
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %do.end632.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.body590.while.end_crit_edge
  %254 = ptrtoint ptr %fw_running to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load volatile i32, ptr %fw_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool638.not = icmp eq i32 %255, 0
  br i1 %tobool638.not, label %do.end642, label %if.end689

do.end642:                                        ; preds = %while.end
  %name644 = getelementptr i8, ptr %dev, i32 2584
  %256 = ptrtoint ptr %name644 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %name644, align 8
  %call645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %257) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !433
  call void @arm_heavy_mb() #12
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !434
  %259 = or i32 %258, 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuCtrl, i32 %259) #12, !srcloc !374
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !435
  %261 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %262)
  %cmp664 = icmp sgt i32 %262, 1
  br i1 %cmp664, label %do.body667, label %do.end642.do.body679_crit_edge

do.end642.do.body679_crit_edge:                   ; preds = %do.end642
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body679

do.body667:                                       ; preds = %do.end642
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  call void @arm_heavy_mb() #12
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuBCtrl) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !437
  %264 = or i32 %263, 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CpuBCtrl, i32 %264) #12, !srcloc !374
  br label %do.body679

do.body679:                                       ; preds = %do.body667, %do.end642.do.body679_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mb0Lo, i32 0) #12, !srcloc !374
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Mb0Lo) #12, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  br label %init_error

if.end689:                                        ; preds = %while.end
  %std_refill_busy = getelementptr i8, ptr %dev, i32 2432
  %call690 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %std_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call690)
  %tobool691.not = icmp eq i32 %call690, 0
  br i1 %tobool691.not, label %if.then692, label %do.end696

if.then692:                                       ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ace_load_std_rx_ring(ptr noundef %dev, i32 noundef 72)
  br label %if.end700

do.end696:                                        ; preds = %if.end689
  call void @__sanitizer_cov_trace_pc() #14
  %name698 = getelementptr i8, ptr %dev, i32 2584
  %266 = ptrtoint ptr %name698 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %name698, align 8
  %call699 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %267) #15
  br label %if.end700

if.end700:                                        ; preds = %do.end696, %if.then692
  %268 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %269)
  %cmp702 = icmp sgt i32 %269, 1
  br i1 %cmp702, label %if.then704, label %if.end700.cleanup717_crit_edge

if.end700.cleanup717_crit_edge:                   ; preds = %if.end700
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup717

if.then704:                                       ; preds = %if.end700
  %mini_refill_busy = getelementptr i8, ptr %dev, i32 2436
  %call705 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %mini_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call705)
  %tobool706.not = icmp eq i32 %call705, 0
  br i1 %tobool706.not, label %if.then707, label %do.end711

if.then707:                                       ; preds = %if.then704
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ace_load_mini_rx_ring(ptr noundef %dev, i32 noundef 64)
  br label %cleanup717

do.end711:                                        ; preds = %if.then704
  call void @__sanitizer_cov_trace_pc() #14
  %name713 = getelementptr i8, ptr %dev, i32 2584
  %270 = ptrtoint ptr %name713 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %name713, align 8
  %call714 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %271) #15
  br label %cleanup717

init_error:                                       ; preds = %do.body679, %if.else266.init_error_crit_edge, %do.end262, %if.end251.init_error_crit_edge, %if.end245.init_error_crit_edge, %do.body237.init_error_crit_edge, %for.inc111.2.init_error_crit_edge, %for.inc111.1.init_error_crit_edge, %for.inc111.init_error_crit_edge, %for.inc.3.init_error_crit_edge, %for.inc.2.init_error_crit_edge, %for.inc.1.init_error_crit_edge, %for.inc.init_error_crit_edge, %do.end72, %do.end43.init_error_crit_edge
  %ecode.4 = phi i32 [ %call.i994, %do.end262 ], [ %call270, %if.else266.init_error_crit_edge ], [ -16, %do.body679 ], [ -19, %do.end72 ], [ -19, %do.body237.init_error_crit_edge ], [ -11, %if.end245.init_error_crit_edge ], [ -11, %if.end251.init_error_crit_edge ], [ -5, %for.inc111.2.init_error_crit_edge ], [ -5, %for.inc111.1.init_error_crit_edge ], [ -5, %for.inc111.init_error_crit_edge ], [ -5, %for.inc.3.init_error_crit_edge ], [ -5, %for.inc.2.init_error_crit_edge ], [ -5, %for.inc.1.init_error_crit_edge ], [ -5, %for.inc.init_error_crit_edge ], [ -5, %do.end43.init_error_crit_edge ]
  call fastcc void @ace_init_cleanup(ptr noundef %dev)
  br label %cleanup717

cleanup717:                                       ; preds = %init_error, %do.end711, %if.then707, %if.end700.cleanup717_crit_edge
  %retval.0 = phi i32 [ %ecode.4, %init_error ], [ 0, %if.then707 ], [ 0, %do.end711 ], [ 0, %if.end700.cleanup717_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache_size) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_init_cleanup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_std_ring.i = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %rx_std_ring.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_std_ring.i, align 8
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev.i = getelementptr i8, ptr %dev, i32 2564
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %rx_ring_base_dma.i = getelementptr i8, ptr %dev, i32 2540
  %4 = ptrtoint ptr %rx_ring_base_dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_base_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 122880, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #12
  %6 = call ptr @memset(ptr %rx_std_ring.i, i32 0, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %evt_ring.i = getelementptr i8, ptr %dev, i32 2520
  %7 = ptrtoint ptr %evt_ring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %evt_ring.i, align 8
  %cmp4.not.i = icmp eq ptr %8, null
  br i1 %cmp4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev6.i = getelementptr i8, ptr %dev, i32 2564
  %9 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev6.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %evt_ring_dma.i = getelementptr i8, ptr %dev, i32 2544
  %11 = ptrtoint ptr %evt_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %evt_ring_dma.i, align 16
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef 2048, ptr noundef nonnull %8, i32 noundef %12, i32 noundef 0) #12
  %13 = ptrtoint ptr %evt_ring.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %evt_ring.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2340
  %14 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring.i, align 4
  %cmp11.not.i = icmp eq ptr %15, null
  br i1 %cmp11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev13.i = getelementptr i8, ptr %dev, i32 2564
  %16 = ptrtoint ptr %pdev13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev13.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2536
  %18 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev14.i, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %19, i32 noundef 0) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end10.i.if.end16.i_crit_edge
  %20 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_ring.i, align 4
  %evt_prd.i = getelementptr i8, ptr %dev, i32 2524
  %21 = ptrtoint ptr %evt_prd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %evt_prd.i, align 4
  %cmp18.not.i = icmp eq ptr %22, null
  br i1 %cmp18.not.i, label %if.end16.i.if.end24.i_crit_edge, label %if.then19.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev20.i = getelementptr i8, ptr %dev, i32 2564
  %23 = ptrtoint ptr %pdev20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev20.i, align 4
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %evt_prd_dma.i = getelementptr i8, ptr %dev, i32 2548
  %25 = ptrtoint ptr %evt_prd_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %evt_prd_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev21.i, i32 noundef 4, ptr noundef nonnull %22, i32 noundef %26, i32 noundef 0) #12
  %27 = ptrtoint ptr %evt_prd.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %evt_prd.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end24.i_crit_edge
  %rx_ret_prd.i = getelementptr i8, ptr %dev, i32 2528
  %28 = ptrtoint ptr %rx_ret_prd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_ret_prd.i, align 32
  %cmp25.not.i = icmp eq ptr %29, null
  br i1 %cmp25.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then26.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev27.i = getelementptr i8, ptr %dev, i32 2564
  %30 = ptrtoint ptr %pdev27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev27.i, align 4
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %rx_ret_prd_dma.i = getelementptr i8, ptr %dev, i32 2552
  %32 = ptrtoint ptr %rx_ret_prd_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_ret_prd_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev28.i, i32 noundef 4, ptr noundef nonnull %29, i32 noundef %33, i32 noundef 0) #12
  %34 = ptrtoint ptr %rx_ret_prd.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rx_ret_prd.i, align 32
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end31.i_crit_edge
  %tx_csm.i = getelementptr i8, ptr %dev, i32 2532
  %35 = ptrtoint ptr %tx_csm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_csm.i, align 4
  %cmp32.not.i = icmp eq ptr %36, null
  br i1 %cmp32.not.i, label %if.end31.i.ace_free_descriptors.exit_crit_edge, label %if.then33.i

if.end31.i.ace_free_descriptors.exit_crit_edge:   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ace_free_descriptors.exit

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdev34.i = getelementptr i8, ptr %dev, i32 2564
  %37 = ptrtoint ptr %pdev34.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev34.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %tx_csm_dma.i = getelementptr i8, ptr %dev, i32 2556
  %39 = ptrtoint ptr %tx_csm_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_csm_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev35.i, i32 noundef 4, ptr noundef nonnull %36, i32 noundef %40, i32 noundef 0) #12
  %41 = ptrtoint ptr %tx_csm.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx_csm.i, align 4
  br label %ace_free_descriptors.exit

ace_free_descriptors.exit:                        ; preds = %if.then33.i, %if.end31.i.ace_free_descriptors.exit_crit_edge
  %info = getelementptr i8, ptr %dev, i32 2308
  %42 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %ace_free_descriptors.exit.if.end_crit_edge, label %if.then

ace_free_descriptors.exit.if.end_crit_edge:       ; preds = %ace_free_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ace_free_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %info_dma = getelementptr i8, ptr %dev, i32 2320
  %46 = ptrtoint ptr %info_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %info_dma, align 16
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 1168, ptr noundef nonnull %43, i32 noundef %47, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %ace_free_descriptors.exit.if.end_crit_edge
  %skb = getelementptr i8, ptr %dev, i32 2316
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb, align 4
  tail call void @kfree(ptr noundef %49) #12
  %trace_buf = getelementptr i8, ptr %dev, i32 2560
  %50 = ptrtoint ptr %trace_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trace_buf, align 128
  tail call void @kfree(ptr noundef %51) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool3.not = icmp eq i32 %53, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call ptr @free_irq(i32 noundef %53, ptr noundef %dev) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %regs = getelementptr i8, ptr %dev, i32 2312
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %55) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %fw_running = getelementptr i8, ptr %dev, i32 2572
  %2 = ptrtoint ptr %fw_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %dev) #15
  br label %cleanup

do.body3:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %add6 = add i32 %5, 18
  %6 = tail call i32 @llvm.bswap.i32(i32 %add6)
  %IfMtu = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IfMtu, i32 %6) #12, !srcloc !374
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 15) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %8, 24
  %rem.i = add i32 %add.i, 16777216
  %9 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %9) #12, !srcloc !374
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i58 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i58, i32 1048577) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i59 = shl i32 %11, 24
  %rem.i60 = add i32 %add.i59, 16777216
  %12 = and i32 %rem.i60, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %12) #12, !srcloc !374
  %jumbo = getelementptr i8, ptr %dev, i32 2492
  %13 = ptrtoint ptr %jumbo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jumbo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %do.body3.if.end26_crit_edge, label %land.lhs.true

do.body3.if.end26_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %do.body3
  %jumbo_refill_busy = getelementptr i8, ptr %dev, i32 2440
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ace_load_jumbo_rx_ring(ptr noundef %dev, i32 noundef 48)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %land.lhs.true.if.end26_crit_edge, %do.body3.if.end26_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end26.if.end39_crit_edge, label %if.then28

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i62 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i62, i32 1048586) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i63 = shl i32 %18, 24
  %rem.i64 = add i32 %add.i63, 16777216
  %19 = and i32 %rem.i64, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %19) #12, !srcloc !374
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end26.if.end39_crit_edge
  %.sink = phi i32 [ 1, %if.then28 ], [ 0, %if.end26.if.end39_crit_edge ]
  %20 = getelementptr i8, ptr %dev, i32 2332
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 4
  %mcast_all = getelementptr i8, ptr %dev, i32 2336
  %22 = ptrtoint ptr %mcast_all to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mcast_all, align 32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %ace_tasklet = getelementptr i8, ptr %dev, i32 2496
  tail call void @tasklet_setup(ptr noundef %ace_tasklet, ptr noundef nonnull @ace_tasklet) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %promisc = getelementptr i8, ptr %dev, i32 2332
  %4 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 2097162) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %7, 24
  %rem.i = add i32 %add.i, 16777216
  %8 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %8) #12, !srcloc !374
  %9 = ptrtoint ptr %promisc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %promisc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %CmdPrd.i116 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i116) #12, !srcloc !370
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i117 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i117, i32 2097153) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i118 = shl i32 %11, 24
  %rem.i119 = add i32 %add.i118, 16777216
  %12 = and i32 %rem.i119, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i116, i32 %12) #12, !srcloc !374
  %ace_tasklet = getelementptr i8, ptr %dev, i32 2496
  tail call void @tasklet_kill(ptr noundef %ace_tasklet) #12
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !444
  %and.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not = icmp eq i32 %and.i, 0
  br i1 %tobool27.not, label %if.then28, label %if.end.do.end31_crit_edge

if.end.do.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %if.end.do.end31_crit_edge
  %14 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %HostCtrl.i = getelementptr inbounds %struct.ace_regs, ptr %15, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl.i) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !446
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl.i, i32 %17) #12, !srcloc !374
  %irq.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %19) #12
  %skb35 = getelementptr i8, ptr %dev, i32 2316
  %tx_ring = getelementptr i8, ptr %dev, i32 2340
  %pdev = getelementptr i8, ptr %dev, i32 2564
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %do.end31
  %indvars.iv = phi i32 [ 0, %do.end31 ], [ %indvars.iv.next, %if.end49.for.body_crit_edge ]
  %20 = ptrtoint ptr %skb35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb35, align 4
  %add.ptr = getelementptr %struct.tx_ring_info, ptr %21, i32 %indvars.iv
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %maplen = getelementptr %struct.tx_ring_info, ptr %21, i32 %indvars.iv, i32 2
  %24 = ptrtoint ptr %maplen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maplen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %for.body.if.end45_crit_edge, label %if.then39

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring, align 4
  %add.ptr41 = getelementptr %struct.tx_desc, ptr %27, i32 %indvars.iv
  %28 = call ptr @memset(ptr %add.ptr41, i32 0, i32 16)
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %mapping = getelementptr %struct.tx_ring_info, ptr %21, i32 %indvars.iv, i32 1
  %31 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mapping, align 4
  %33 = ptrtoint ptr %maplen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maplen, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev42, i32 noundef %32, i32 noundef %34, i32 noundef 1, i32 noundef 0) #12
  %35 = ptrtoint ptr %maplen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %maplen, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %for.body.if.end45_crit_edge
  %tobool46.not = icmp eq ptr %23, null
  br i1 %tobool46.not, label %if.end45.if.end49_crit_edge, label %if.then47

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %23) #12
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %add.ptr, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45.if.end49_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end49
  %jumbo = getelementptr i8, ptr %dev, i32 2492
  %37 = ptrtoint ptr %jumbo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %jumbo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not = icmp eq i32 %38, 0
  br i1 %tobool50.not, label %for.end.if.end61_crit_edge, label %if.then51

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i116) #12, !srcloc !370
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i121 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i121, i32 5) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i122 = shl i32 %40, 24
  %rem.i123 = add i32 %add.i122, 16777216
  %41 = and i32 %rem.i123, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i116, i32 %41) #12, !srcloc !374
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %for.end.if.end61_crit_edge
  %42 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @arm_heavy_mb() #12
  %HostCtrl.i125 = getelementptr inbounds %struct.ace_regs, ptr %43, i32 0, i32 1
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl.i125) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  %45 = and i32 %44, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl.i125, i32 %45) #12, !srcloc !374
  br i1 %tobool27.not, label %if.then71, label %if.end61.do.body73_crit_edge

if.end61.do.body73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body73

if.then71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body73

do.body73:                                        ; preds = %if.then71, %if.end61.do.body73_crit_edge
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool81.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool81.not, label %if.then85, label %do.body73.do.end88_crit_edge, !prof !450

do.body73.do.end88_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body73.do.end88_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #12, !srcloc !451
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tx_prd = getelementptr i8, ptr %dev, i32 2344
  %tx_ret_csm = getelementptr i8, ptr %dev, i32 2348
  %3 = ptrtoint ptr %tx_prd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_prd, align 8
  %5 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %tx_ret_csm, align 4
  %7 = xor i32 %4, -1
  %sub1.i274 = add i32 %6, %7
  %and.i275 = and i32 %sub1.i274, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i275)
  %cmp276 = icmp ult i32 %and.i275, 18
  br i1 %cmp276, label %overflow.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

overflow.lr.ph:                                   ; preds = %entry
  %add.neg = sub i32 -300, %2
  br label %overflow

if.end:                                           ; preds = %if.then125.if.end_crit_edge, %entry.if.end_crit_edge
  %.lcssa = phi i32 [ %4, %entry.if.end_crit_edge ], [ %111, %if.then125.if.end_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %pdev.i = getelementptr i8, ptr %dev, i32 2564
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i229 = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i230 = and i32 %17, 4095
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %call.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i229, i32 noundef %and.i230, i32 noundef %19, i32 noundef 1, i32 noundef 0) #12
  %skb3.i = getelementptr i8, ptr %dev, i32 2316
  %20 = ptrtoint ptr %skb3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb3.i, align 4
  %add.ptr4.i = getelementptr %struct.tx_ring_info, ptr %21, i32 %.lcssa
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %22 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %add.ptr4.i, align 4
  %mapping6.i = getelementptr %struct.tx_ring_info, ptr %21, i32 %.lcssa, i32 1
  %23 = ptrtoint ptr %mapping6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %mapping6.i, align 4
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %maplen.i = getelementptr %struct.tx_ring_info, ptr %21, i32 %.lcssa, i32 2
  %26 = ptrtoint ptr %maplen.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %maplen.i, align 4
  %27 = load i32, ptr %len.i, align 4
  %shl = shl i32 %27, 16
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %ip_summed, align 8
  %29 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %29)
  %cmp6 = icmp eq i16 %29, 1536
  %spec.select.v = select i1 %cmp6, i32 5, i32 4
  %spec.select = or i32 %spec.select.v, %shl
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %30 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bf.load11 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load11)
  %tobool14.not = icmp sgt i32 %bf.load11, -1
  br i1 %tobool14.not, label %if.then4.if.end18_crit_edge, label %if.then15

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %or16 = or i32 %spec.select, 512
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %31 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_tci, align 2
  %conv17 = zext i16 %32 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then4.if.end18_crit_edge
  %flagsize.1 = phi i32 [ %or16, %if.then15 ], [ %spec.select, %if.then4.if.end18_crit_edge ]
  %vlan_tag.0 = phi i32 [ %conv17, %if.then15 ], [ 0, %if.then4.if.end18_crit_edge ]
  %tx_ring = getelementptr i8, ptr %dev, i32 2340
  %33 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring, align 4
  %add.ptr = getelementptr %struct.tx_desc, ptr %34, i32 %.lcssa
  %add19 = add i32 %.lcssa, 1
  %rem = and i32 %add19, 255
  %35 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %tx_ret_csm, align 4
  %notlhs268 = sub i32 254, %.lcssa
  %sub1.i231 = add i32 %notlhs268, %36
  %and.i232 = and i32 %sub1.i231, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i232)
  %cmp22 = icmp ult i32 %and.i232, 18
  %or25 = or i32 %flagsize.1, 2048
  %spec.select225 = select i1 %cmp22, i32 %or25, i32 %flagsize.1
  %and.i233 = and i32 %spec.select225, -2049
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %add.ptr, align 4
  %addrlo.i = getelementptr inbounds %struct.aceaddr, ptr %add.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i, ptr %addrlo.i, align 4
  %flagsize4.i = getelementptr %struct.tx_desc, ptr %34, i32 %.lcssa, i32 1
  %39 = ptrtoint ptr %flagsize4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i233, ptr %flagsize4.i, align 4
  %vlanres.i = getelementptr %struct.tx_desc, ptr %34, i32 %.lcssa, i32 2
  %40 = ptrtoint ptr %vlanres.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %vlan_tag.0, ptr %vlanres.i, align 4
  br label %do.body

if.else:                                          ; preds = %if.end
  %41 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %add.ptr4.i, align 4
  %mapping6.i245 = getelementptr %struct.tx_ring_info, ptr %21, i32 %.lcssa, i32 1
  %42 = ptrtoint ptr %mapping6.i245 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i, ptr %mapping6.i245, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %maplen.i246 = getelementptr %struct.tx_ring_info, ptr %21, i32 %.lcssa, i32 2
  %45 = ptrtoint ptr %maplen.i246 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %maplen.i246, align 4
  %46 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i, align 8
  %sub.i248 = sub i32 %46, %48
  %shl33 = shl i32 %sub.i248, 16
  %ip_summed34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed34 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load35 = load i16, ptr %ip_summed34, align 8
  %50 = and i16 %bf.load35, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %50)
  %cmp40 = icmp eq i16 %50, 1536
  %or43 = zext i1 %cmp40 to i32
  %spec.select226 = or i32 %shl33, %or43
  %vlan_present45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %vlan_present45 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load46 = load i32, ptr %vlan_present45, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load46)
  %tobool49.not = icmp sgt i32 %bf.load46, -1
  br i1 %tobool49.not, label %if.else.if.end54_crit_edge, label %if.then50

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or51 = or i32 %spec.select226, 512
  %vlan_tci52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %52 = ptrtoint ptr %vlan_tci52 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vlan_tci52, align 2
  %conv53 = zext i16 %53 to i32
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else.if.end54_crit_edge
  %flagsize.4 = phi i32 [ %or51, %if.then50 ], [ %spec.select226, %if.else.if.end54_crit_edge ]
  %vlan_tag29.0 = phi i32 [ %conv53, %if.then50 ], [ 0, %if.else.if.end54_crit_edge ]
  %tx_ring55 = getelementptr i8, ptr %dev, i32 2340
  %54 = ptrtoint ptr %tx_ring55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_ring55, align 4
  %add.ptr56 = getelementptr %struct.tx_desc, ptr %55, i32 %.lcssa
  %and.i249 = and i32 %flagsize.4, -2049
  %56 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %add.ptr56, align 4
  %addrlo.i250 = getelementptr inbounds %struct.aceaddr, ptr %add.ptr56, i32 0, i32 1
  %57 = ptrtoint ptr %addrlo.i250 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i, ptr %addrlo.i250, align 4
  %flagsize4.i251 = getelementptr %struct.tx_desc, ptr %55, i32 %.lcssa, i32 1
  %58 = ptrtoint ptr %flagsize4.i251 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and.i249, ptr %flagsize4.i251, align 4
  %vlanres.i252 = getelementptr %struct.tx_desc, ptr %55, i32 %.lcssa, i32 2
  %59 = ptrtoint ptr %vlanres.i252 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %vlan_tag29.0, ptr %vlanres.i252, align 4
  %idx.0.in277 = add i32 %.lcssa, 1
  %idx.0278 = and i32 %idx.0.in277, 255
  %60 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %end.i, align 4
  %nr_frags61279 = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %nr_frags61279 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %nr_frags61279, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp63281.not = icmp eq i8 %63, 0
  br i1 %cmp63281.not, label %if.end54.do.body_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

if.end54.do.body_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body:                                         ; preds = %if.end107.for.body_crit_edge, %if.end54.for.body_crit_edge
  %64 = phi ptr [ %97, %if.end107.for.body_crit_edge ], [ %61, %if.end54.for.body_crit_edge ]
  %idx.0284 = phi i32 [ %idx.0, %if.end107.for.body_crit_edge ], [ %idx.0278, %if.end54.for.body_crit_edge ]
  %i.0283 = phi i32 [ %inc, %if.end107.for.body_crit_edge ], [ 0, %if.end54.for.body_crit_edge ]
  %idx.0.in.in282 = phi i32 [ %idx.0284, %if.end107.for.body_crit_edge ], [ %.lcssa, %if.end54.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %64, i32 0, i32 12, i32 %i.0283
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %64, i32 0, i32 12, i32 %i.0283, i32 1
  %65 = ptrtoint ptr %skb3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skb3.i, align 4
  %add.ptr69 = getelementptr %struct.tx_ring_info, ptr %66, i32 %idx.0284
  %67 = ptrtoint ptr %tx_ring55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_ring55, align 4
  %add.ptr71 = getelementptr %struct.tx_desc, ptr %68, i32 %idx.0284
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_len.i, align 4
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %64, i32 0, i32 12, i32 %i.0283, i32 2
  %75 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev72, ptr noundef %74, i32 noundef %76, i32 noundef %72, i32 noundef 1, i32 noundef 0) #12
  %77 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_len.i, align 4
  %shl76 = shl i32 %78, 16
  %79 = ptrtoint ptr %ip_summed34 to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load78 = load i16, ptr %ip_summed34, align 8
  %80 = and i16 %bf.load78, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %80)
  %cmp83 = icmp eq i16 %80, 1536
  %or86 = zext i1 %cmp83 to i32
  %spec.select227 = or i32 %shl76, %or86
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %nr_frags91 = getelementptr inbounds %struct.skb_shared_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %nr_frags91 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %nr_frags91, align 2
  %conv92 = zext i8 %84 to i32
  %sub = add nsw i32 %conv92, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0283, i32 %sub)
  %cmp93 = icmp eq i32 %i.0283, %sub
  br i1 %cmp93, label %if.then95, label %for.body.if.end107_crit_edge

for.body.if.end107_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then95:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %tx_ret_csm, align 4
  %notlhs = sub i32 253, %idx.0.in.in282
  %sub1.i258 = add i32 %notlhs, %86
  %and.i259 = and i32 %sub1.i258, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i259)
  %cmp99 = icmp ult i32 %and.i259, 18
  %spec.select228.v = select i1 %cmp99, i32 2052, i32 4
  %spec.select228 = or i32 %spec.select228.v, %spec.select227
  br label %if.end107

if.end107:                                        ; preds = %if.then95, %for.body.if.end107_crit_edge
  %storemerge = phi ptr [ %skb, %if.then95 ], [ null, %for.body.if.end107_crit_edge ]
  %flagsize.8 = phi i32 [ %spec.select228, %if.then95 ], [ %spec.select227, %for.body.if.end107_crit_edge ]
  %87 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %storemerge, ptr %add.ptr69, align 4
  %mapping108 = getelementptr %struct.tx_ring_info, ptr %66, i32 %idx.0284, i32 1
  %88 = ptrtoint ptr %mapping108 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call2.i, ptr %mapping108, align 4
  %89 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bv_len.i, align 4
  %maplen = getelementptr %struct.tx_ring_info, ptr %66, i32 %idx.0284, i32 2
  %91 = ptrtoint ptr %maplen to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %maplen, align 4
  %and.i261 = and i32 %flagsize.8, -2049
  %92 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %add.ptr71, align 4
  %addrlo.i262 = getelementptr inbounds %struct.aceaddr, ptr %add.ptr71, i32 0, i32 1
  %93 = ptrtoint ptr %addrlo.i262 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call2.i, ptr %addrlo.i262, align 4
  %flagsize4.i263 = getelementptr %struct.tx_desc, ptr %68, i32 %idx.0284, i32 1
  %94 = ptrtoint ptr %flagsize4.i263 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and.i261, ptr %flagsize4.i263, align 4
  %vlanres.i264 = getelementptr %struct.tx_desc, ptr %68, i32 %idx.0284, i32 2
  %95 = ptrtoint ptr %vlanres.i264 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %vlan_tag29.0, ptr %vlanres.i264, align 4
  %inc = add nuw nsw i32 %i.0283, 1
  %idx.0.in = add nuw nsw i32 %idx.0284, 1
  %idx.0 = and i32 %idx.0.in, 255
  %96 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i, align 4
  %nr_frags61 = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %nr_frags61 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nr_frags61, align 2
  %conv62 = zext i8 %99 to i32
  %cmp63 = icmp ult i32 %inc, %conv62
  br i1 %cmp63, label %if.end107.for.body_crit_edge, label %if.end107.do.body_crit_edge

if.end107.do.body_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end107.for.body_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body:                                          ; preds = %if.end107.do.body_crit_edge, %if.end54.do.body_crit_edge, %if.end18
  %idx.1 = phi i32 [ %rem, %if.end18 ], [ %idx.0278, %if.end54.do.body_crit_edge ], [ %idx.0, %if.end107.do.body_crit_edge ]
  %flagsize.9 = phi i32 [ %spec.select225, %if.end18 ], [ %flagsize.4, %if.end54.do.body_crit_edge ], [ %flagsize.8, %if.end107.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  tail call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %tx_prd to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %idx.1, ptr %tx_prd, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  tail call void @arm_heavy_mb() #12
  %101 = shl nuw i32 %idx.1, 24
  %TxPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPrd.i, i32 %101) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  tail call void @arm_heavy_mb() #12
  %and = and i32 %flagsize.9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool113.not = icmp eq i32 %and, 0
  br i1 %tobool113.not, label %do.body.cleanup_crit_edge, label %if.then114

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then114:                                       ; preds = %do.body
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %102 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %103, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %104 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %tx_ret_csm, align 4
  %106 = xor i32 %idx.1, -1
  %sub1.i265 = add i32 %105, %106
  %and.i266 = and i32 %sub1.i265, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i266)
  %cmp117 = icmp ult i32 %and.i266, 18
  br i1 %cmp117, label %if.then114.cleanup_crit_edge, label %if.then119

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %108) #12
  br label %cleanup

overflow:                                         ; preds = %if.then125.overflow_crit_edge, %overflow.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %sub122 = add i32 %add.neg, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub122)
  %cmp123 = icmp slt i32 %sub122, 0
  br i1 %cmp123, label %if.then125, label %do.end138

if.then125:                                       ; preds = %overflow
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !455
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !457
  %110 = ptrtoint ptr %tx_prd to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_prd, align 8
  %112 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %tx_ret_csm, align 4
  %114 = xor i32 %111, -1
  %sub1.i = add i32 %113, %114
  %and.i = and i32 %sub1.i, 254
  %cmp = icmp ult i32 %and.i, 18
  br i1 %cmp, label %if.then125.overflow_crit_edge, label %if.then125.if.end_crit_edge

if.then125.if.end_crit_edge:                      ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then125.overflow_crit_edge:                    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %overflow

do.end138:                                        ; preds = %overflow
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end138, %if.then119, %if.then114.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %do.end138 ], [ 0, %if.then114.cleanup_crit_edge ], [ 0, %if.then119 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ace_set_multicast_list(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mcast_all = getelementptr i8, ptr %dev, i32 2336
  %4 = ptrtoint ptr %mcast_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mcast_all, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 1048590) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %7, 24
  %rem.i = add i32 %add.i, 16777216
  %8 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %8) #12, !srcloc !374
  %9 = ptrtoint ptr %mcast_all to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mcast_all, align 32
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %mcast_all10 = getelementptr i8, ptr %dev, i32 2336
  %10 = ptrtoint ptr %mcast_all10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mcast_all10, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.else.if.end23_crit_edge, label %if.then12

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i107 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i107) #12, !srcloc !370
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i108 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i108, i32 2097166) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i109 = shl i32 %13, 24
  %rem.i110 = add i32 %add.i109, 16777216
  %14 = and i32 %rem.i110, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i107, i32 %14) #12, !srcloc !374
  %15 = ptrtoint ptr %mcast_all10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mcast_all10, align 32
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %if.else.if.end23_crit_edge, %if.then
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %and25 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %promisc45 = getelementptr i8, ptr %dev, i32 2332
  %18 = ptrtoint ptr %promisc45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %promisc45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool26.not, label %land.lhs.true44, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end23
  br i1 %tobool46.not, label %if.then29, label %land.lhs.true27.if.end59_crit_edge

land.lhs.true27.if.end59_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i111 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i111) #12, !srcloc !370
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i112 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i112, i32 1048586) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i113 = shl i32 %21, 24
  %rem.i114 = add i32 %add.i113, 16777216
  %22 = and i32 %rem.i114, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i111, i32 %22) #12, !srcloc !374
  br label %if.end59.sink.split

land.lhs.true44:                                  ; preds = %if.end23
  br i1 %tobool46.not, label %land.lhs.true44.if.end59_crit_edge, label %if.then47

land.lhs.true44.if.end59_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i115 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i115) #12, !srcloc !370
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i116 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i116, i32 2097162) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i117 = shl i32 %24, 24
  %rem.i118 = add i32 %add.i117, 16777216
  %25 = and i32 %rem.i118, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i115, i32 %25) #12, !srcloc !374
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then47, %if.then29
  %.sink = phi i32 [ 0, %if.then47 ], [ 1, %if.then29 ]
  %26 = ptrtoint ptr %promisc45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %promisc45, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %land.lhs.true44.if.end59_crit_edge, %land.lhs.true27.if.end59_crit_edge
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.end59.if.else73_crit_edge, label %land.lhs.true60

if.end59.if.else73_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else73

land.lhs.true60:                                  ; preds = %if.end59
  %mcast_all61 = getelementptr i8, ptr %dev, i32 2336
  %29 = ptrtoint ptr %mcast_all61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mcast_all61, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool62.not = icmp eq i32 %30, 0
  br i1 %tobool62.not, label %if.then63, label %land.lhs.true60.if.else73_crit_edge

land.lhs.true60.if.else73_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else73

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i119 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i119) #12, !srcloc !370
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i120 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i120, i32 1048590) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i121 = shl i32 %32, 24
  %rem.i122 = add i32 %add.i121, 16777216
  %33 = and i32 %rem.i122, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i119, i32 %33) #12, !srcloc !374
  br label %if.end87

if.else73:                                        ; preds = %land.lhs.true60.if.else73_crit_edge, %if.end59.if.else73_crit_edge
  %mcast_all74 = getelementptr i8, ptr %dev, i32 2336
  %34 = ptrtoint ptr %mcast_all74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mcast_all74, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool75.not = icmp eq i32 %35, 0
  br i1 %tobool75.not, label %if.then76, label %if.else73.if.end87_crit_edge

if.else73.if.end87_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then76:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i123 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i123) #12, !srcloc !370
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i124 = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i124, i32 2097166) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i125 = shl i32 %37, 24
  %rem.i126 = add i32 %add.i125, 16777216
  %38 = and i32 %rem.i126, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i123, i32 %38) #12, !srcloc !374
  br label %if.end87

if.end87:                                         ; preds = %if.then76, %if.else73.if.end87_crit_edge, %if.then63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_set_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !458
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %or = or i32 %shl, %conv4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %MacAddrHi = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MacAddrHi, i32 %10) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !459
  tail call void @arm_heavy_mb() #12
  %arrayidx8 = getelementptr i8, ptr %5, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %shl10 = shl nuw i32 %conv9, 24
  %arrayidx11 = getelementptr i8, ptr %5, i32 3
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %or14 = or i32 %shl13, %shl10
  %arrayidx15 = getelementptr i8, ptr %5, i32 4
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %16 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %or14, %shl17
  %arrayidx19 = getelementptr i8, ptr %5, i32 5
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %or21 = or i32 %or18, %conv20
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %MacAddrLo = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MacAddrLo, i32 %19) #12, !srcloc !374
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 12) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %21, 24
  %rem.i = add i32 %add.i, 16777216
  %22 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %22) #12, !srcloc !374
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !460
  tail call void @arm_heavy_mb() #12
  %add2 = add i32 %new_mtu, 18
  %2 = tail call i32 @llvm.bswap.i32(i32 %add2)
  %IfMtu = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IfMtu, i32 %2) #12, !srcloc !374
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %new_mtu, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %new_mtu)
  %cmp = icmp sgt i32 %new_mtu, 1500
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %jumbo_refill_busy13 = getelementptr i8, ptr %dev, i32 2440
  br label %while.cond

if.then:                                          ; preds = %entry
  %jumbo = getelementptr i8, ptr %dev, i32 2492
  %4 = ptrtoint ptr %jumbo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jumbo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end6, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end6:                                          ; preds = %if.then
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %dev) #15
  %6 = ptrtoint ptr %jumbo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %jumbo, align 4
  %jumbo_refill_busy = getelementptr i8, ptr %dev, i32 2440
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end6.if.end_crit_edge

do.end6.if.end_crit_edge:                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then11:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ace_load_jumbo_rx_ring(ptr noundef %dev, i32 noundef 48)
  br label %if.end

if.end:                                           ; preds = %if.then11, %do.end6.if.end_crit_edge
  tail call fastcc void @ace_set_rxtx_parms(ptr noundef %dev, i32 noundef 1)
  br label %if.end26

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy13) #12
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %8) #12
  tail call fastcc void @ace_set_rxtx_parms(ptr noundef %dev, i32 noundef 0)
  %jumbo16 = getelementptr i8, ptr %dev, i32 2492
  %9 = ptrtoint ptr %jumbo16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jumbo16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool17.not = icmp eq i32 %10, 0
  br i1 %tobool17.not, label %while.end.if.end26_crit_edge, label %if.then18

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 5) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %12, 24
  %rem.i = add i32 %add.i, 16777216
  %13 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %13) #12, !srcloc !374
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %while.end.if.end26_crit_edge, %if.end, %if.then.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ace_watchdog(ptr noundef %data, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %data, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %tx_csm = getelementptr i8, ptr %data, i32 2532
  %2 = ptrtoint ptr %tx_csm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_csm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %tx_ret_csm = getelementptr i8, ptr %data, i32 2348
  %6 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tx_ret_csm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %do.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %HostCtrl = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !461
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %data, i32 noundef %9) #15
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %data) #15
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ace_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %drop_space = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 32, i32 27
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %drop_space) #12, !srcloc !370
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !462
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %4 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_missed_errors, align 4
  %kept_mc = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 32, i32 30
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %kept_mc) #12, !srcloc !370
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !463
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %7 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %multicast, align 8
  %coll = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 32, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %coll) #12, !srcloc !370
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %10 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %collisions, align 4
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_load_jumbo_rx_ring(ptr noundef %dev, i32 noundef %nr_bufs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %rx_jumbo_skbprd = getelementptr i8, ptr %dev, i32 2464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bufs)
  %cmp77 = icmp sgt i32 %nr_bufs, 0
  br i1 %cmp77, label %for.body.lr.ph, label %entry.error_out_crit_edge

entry.error_out_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %rx_jumbo_skbprd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_skbprd, align 32
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %skb9 = getelementptr i8, ptr %dev, i32 2316
  %rx_jumbo_ring = getelementptr i8, ptr %dev, i32 2476
  %call.i.i7091 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 9020, i32 noundef 2592) #12
  %tobool.not.i.i92 = icmp eq ptr %call.i.i7091, null
  br i1 %tobool.not.i.i92, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  br label %for.inc

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc
  %call.i.i70 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 9020, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i70, null
  br i1 %tobool.not.i.i, label %for.body.for.end.loopexit_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %call.i.i7095 = phi ptr [ %call.i.i70, %for.body.for.inc_crit_edge ], [ %call.i.i7091, %for.body.lr.ph.for.inc_crit_edge ]
  %i.07894 = phi i16 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.0.in7993 = phi i32 [ %rem, %for.body.for.inc_crit_edge ], [ %3, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.080 = trunc i32 %idx.0.in7993 to i16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i7095, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i7095, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %10, i32 %shr
  %and = and i32 %11, 4095
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 9018, i32 noundef 2, i32 noundef 0) #12
  %12 = ptrtoint ptr %skb9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb9, align 4
  %sext75 = shl i32 %idx.0.in7993, 16
  %idxprom = ashr exact i32 %sext75, 16
  %arrayidx = getelementptr %struct.ace_skb, ptr %13, i32 0, i32 3, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i7095, ptr %arrayidx, align 4
  %15 = load ptr, ptr %skb9, align 4
  %mapping15 = getelementptr %struct.ace_skb, ptr %15, i32 0, i32 3, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %mapping15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %mapping15, align 4
  %17 = ptrtoint ptr %rx_jumbo_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_jumbo_ring, align 4
  %arrayidx17 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom
  %addrlo.i = getelementptr inbounds %struct.aceaddr, ptr %arrayidx17, i32 0, i32 1
  %19 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call8, ptr %addrlo.i, align 4
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  tail call void @arm_heavy_mb() #12
  %size = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 9018, ptr %size, align 2
  %idx18 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %idx18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %idx.080, ptr %idx18, align 4
  %add20 = add nsw i32 %idxprom, 1
  %rem = srem i32 %add20, 256
  %inc = add i16 %i.07894, 1
  %conv2 = sext i16 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %nr_bufs)
  %cmp = icmp slt i32 %conv2, %nr_bufs
  br i1 %cmp, label %for.body, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %phi.cmp = icmp eq i16 %inc, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge
  %i.0.lcssa = phi i1 [ true, %for.body.lr.ph.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %idx.0.in.lcssa = phi i32 [ %3, %for.body.lr.ph.for.end_crit_edge ], [ %rem, %for.end.loopexit ]
  %conv2.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %conv2, %for.end.loopexit ]
  br i1 %i.0.lcssa, label %for.end.error_out_crit_edge, label %if.end26

for.end.error_out_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_out

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %cur_jumbo_bufs = getelementptr i8, ptr %dev, i32 2452
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_jumbo_bufs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_jumbo_bufs, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_jumbo_bufs, ptr %cur_jumbo_bufs, i32 %conv2.lcssa, ptr elementtype(i32) %cur_jumbo_bufs) #12, !srcloc !465
  %sext = shl i32 %idx.0.in.lcssa, 16
  %conv28 = ashr exact i32 %sext, 16
  %24 = ptrtoint ptr %rx_jumbo_skbprd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv28, ptr %rx_jumbo_skbprd, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !466
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv28)
  %RxJumboPrd = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxJumboPrd, i32 %25) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !467
  tail call void @arm_heavy_mb() #12
  br label %out

out:                                              ; preds = %do.end39, %error_out.out_crit_edge, %if.end26
  %jumbo_refill_busy = getelementptr i8, ptr %dev, i32 2440
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy) #12
  ret void

error_out:                                        ; preds = %for.end.error_out_crit_edge, %entry.error_out_crit_edge
  %call34 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %error_out.out_crit_edge, label %do.end39

error_out.out_crit_edge:                          ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end39:                                         ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ace_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -192
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %cur_rx_bufs = getelementptr i8, ptr %t, i32 -52
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_rx_bufs, i32 noundef 4) #12
  %2 = ptrtoint ptr %cur_rx_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %cur_rx_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %3)
  %cmp = icmp slt i32 %3, 54
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %std_refill_busy = getelementptr i8, ptr %t, i32 -64
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %std_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 72, %3
  tail call fastcc void @ace_load_std_rx_ring(ptr noundef %1, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %version = getelementptr i8, ptr %t, i32 -172
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp sgt i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %cur_mini_bufs = getelementptr i8, ptr %t, i32 -48
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_mini_bufs, i32 noundef 4) #12
  %6 = ptrtoint ptr %cur_mini_bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cur_mini_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %7)
  %cmp5 = icmp slt i32 %7, 48
  br i1 %cmp5, label %land.lhs.true6, label %if.then3.if.end12_crit_edge

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.then3
  %mini_refill_busy = getelementptr i8, ptr %t, i32 -60
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %mini_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true6.if.end12_crit_edge

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %sub10 = sub i32 64, %7
  tail call fastcc void @ace_load_mini_rx_ring(ptr noundef %1, i32 noundef %sub10)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true6.if.end12_crit_edge, %if.then3.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %cur_jumbo_bufs = getelementptr i8, ptr %t, i32 -44
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_jumbo_bufs, i32 noundef 4) #12
  %8 = ptrtoint ptr %cur_jumbo_bufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cur_jumbo_bufs, align 4
  %jumbo = getelementptr i8, ptr %t, i32 -4
  %10 = ptrtoint ptr %jumbo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jumbo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %9)
  %cmp16 = icmp slt i32 %9, 36
  %or.cond = select i1 %tobool14.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %land.lhs.true17, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true17:                                  ; preds = %if.end12
  %jumbo_refill_busy = getelementptr i8, ptr %t, i32 -56
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true17.if.end22_crit_edge

land.lhs.true17.if.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  %sub21 = sub i32 48, %9
  tail call fastcc void @ace_load_jumbo_rx_ring(ptr noundef %1, i32 noundef %sub21)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true17.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %tasklet_pending = getelementptr i8, ptr %t, i32 -8
  %12 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tasklet_pending, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_load_std_rx_ring(ptr noundef %dev, i32 noundef %nr_bufs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %cur_rx_bufs = getelementptr i8, ptr %dev, i32 2444
  tail call void @llvm.prefetch.p0(ptr %cur_rx_bufs, i32 1, i32 3, i32 1)
  %rx_std_skbprd = getelementptr i8, ptr %dev, i32 2456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bufs)
  %cmp75 = icmp sgt i32 %nr_bufs, 0
  br i1 %cmp75, label %for.body.lr.ph, label %entry.do.end37_crit_edge

entry.do.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %rx_std_skbprd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_std_skbprd, align 8
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %skb9 = getelementptr i8, ptr %dev, i32 2316
  %rx_std_ring = getelementptr i8, ptr %dev, i32 2472
  %call.i.i6889 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1520, i32 noundef 2592) #12
  %tobool.not.i.i90 = icmp eq ptr %call.i.i6889, null
  br i1 %tobool.not.i.i90, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  br label %for.inc

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc
  %call.i.i68 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1520, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i68, null
  br i1 %tobool.not.i.i, label %for.body.for.end.loopexit_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %call.i.i6893 = phi ptr [ %call.i.i68, %for.body.for.inc_crit_edge ], [ %call.i.i6889, %for.body.lr.ph.for.inc_crit_edge ]
  %i.07692 = phi i16 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.0.in7791 = phi i32 [ %rem, %for.body.for.inc_crit_edge ], [ %3, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.078 = trunc i32 %idx.0.in7791 to i16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i6893, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i6893, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %10, i32 %shr
  %and = and i32 %11, 4095
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 1518, i32 noundef 2, i32 noundef 0) #12
  %12 = ptrtoint ptr %skb9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb9, align 4
  %sext73 = shl i32 %idx.0.in7791, 16
  %idxprom = ashr exact i32 %sext73, 16
  %arrayidx = getelementptr %struct.ace_skb, ptr %13, i32 0, i32 1, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i6893, ptr %arrayidx, align 4
  %15 = load ptr, ptr %skb9, align 4
  %mapping15 = getelementptr %struct.ace_skb, ptr %15, i32 0, i32 1, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %mapping15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %mapping15, align 4
  %17 = ptrtoint ptr %rx_std_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_std_ring, align 8
  %arrayidx17 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom
  %addrlo.i = getelementptr inbounds %struct.aceaddr, ptr %arrayidx17, i32 0, i32 1
  %19 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call8, ptr %addrlo.i, align 4
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  tail call void @arm_heavy_mb() #12
  %size = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1518, ptr %size, align 2
  %idx18 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %idx18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %idx.078, ptr %idx18, align 4
  %add20 = add nsw i32 %idxprom, 1
  %rem = srem i32 %add20, 512
  %inc = add i16 %i.07692, 1
  %conv2 = sext i16 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %nr_bufs)
  %cmp = icmp slt i32 %conv2, %nr_bufs
  br i1 %cmp, label %for.body, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %phi.cmp = icmp eq i16 %inc, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge
  %i.0.lcssa = phi i1 [ true, %for.body.lr.ph.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %idx.0.in.lcssa = phi i32 [ %3, %for.body.lr.ph.for.end_crit_edge ], [ %rem, %for.end.loopexit ]
  %conv2.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %conv2, %for.end.loopexit ]
  br i1 %i.0.lcssa, label %for.end.do.end37_crit_edge, label %if.end26

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_rx_bufs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_rx_bufs, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_rx_bufs, ptr %cur_rx_bufs, i32 %conv2.lcssa, ptr elementtype(i32) %cur_rx_bufs) #12, !srcloc !465
  %sext = shl i32 %idx.0.in.lcssa, 16
  %conv29 = ashr exact i32 %sext, 16
  %24 = ptrtoint ptr %rx_std_skbprd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv29, ptr %rx_std_skbprd, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !468
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %RxStdPrd = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxStdPrd, i32 %25) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  tail call void @arm_heavy_mb() #12
  br label %out

out:                                              ; preds = %do.end37, %if.end26
  %std_refill_busy = getelementptr i8, ptr %dev, i32 2432
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %std_refill_busy) #12
  ret void

do.end37:                                         ; preds = %for.end.do.end37_crit_edge, %entry.do.end37_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #15
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_load_mini_rx_ring(ptr noundef %dev, i32 noundef %nr_bufs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %cur_mini_bufs = getelementptr i8, ptr %dev, i32 2448
  tail call void @llvm.prefetch.p0(ptr %cur_mini_bufs, i32 1, i32 3, i32 1)
  %rx_mini_skbprd = getelementptr i8, ptr %dev, i32 2460
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bufs)
  %cmp75 = icmp sgt i32 %nr_bufs, 0
  br i1 %cmp75, label %for.body.lr.ph, label %entry.do.end37_crit_edge

entry.do.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %rx_mini_skbprd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_skbprd, align 4
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %skb9 = getelementptr i8, ptr %dev, i32 2316
  %rx_mini_ring = getelementptr i8, ptr %dev, i32 2480
  %call.i.i6889 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 102, i32 noundef 2592) #12
  %tobool.not.i.i90 = icmp eq ptr %call.i.i6889, null
  br i1 %tobool.not.i.i90, label %for.body.lr.ph.for.end_crit_edge, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  br label %for.inc

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc
  %call.i.i68 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 102, i32 noundef 2592) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i68, null
  br i1 %tobool.not.i.i, label %for.body.for.end.loopexit_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %call.i.i6893 = phi ptr [ %call.i.i68, %for.body.for.inc_crit_edge ], [ %call.i.i6889, %for.body.lr.ph.for.inc_crit_edge ]
  %i.07692 = phi i16 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.0.in7791 = phi i32 [ %rem, %for.body.for.inc_crit_edge ], [ %3, %for.body.lr.ph.for.inc_crit_edge ]
  %idx.078 = trunc i32 %idx.0.in7791 to i16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i6893, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i6893, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %7, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub = add i32 %11, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %10, i32 %shr
  %and = and i32 %11, 4095
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %dev5, ptr noundef %add.ptr, i32 noundef %and, i32 noundef 100, i32 noundef 2, i32 noundef 0) #12
  %12 = ptrtoint ptr %skb9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb9, align 4
  %sext73 = shl i32 %idx.0.in7791, 16
  %idxprom = ashr exact i32 %sext73, 16
  %arrayidx = getelementptr %struct.ace_skb, ptr %13, i32 0, i32 2, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i6893, ptr %arrayidx, align 4
  %15 = load ptr, ptr %skb9, align 4
  %mapping15 = getelementptr %struct.ace_skb, ptr %15, i32 0, i32 2, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %mapping15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %mapping15, align 4
  %17 = ptrtoint ptr %rx_mini_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_mini_ring, align 16
  %arrayidx17 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom
  %addrlo.i = getelementptr inbounds %struct.aceaddr, ptr %arrayidx17, i32 0, i32 1
  %19 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call8, ptr %addrlo.i, align 4
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  tail call void @arm_heavy_mb() #12
  %size = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 100, ptr %size, align 2
  %idx18 = getelementptr %struct.rx_desc, ptr %18, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %idx18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %idx.078, ptr %idx18, align 4
  %add20 = add nsw i32 %idxprom, 1
  %rem = srem i32 %add20, 1024
  %inc = add i16 %i.07692, 1
  %conv2 = sext i16 %inc to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %nr_bufs)
  %cmp = icmp slt i32 %conv2, %nr_bufs
  br i1 %cmp, label %for.body, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %phi.cmp = icmp eq i16 %inc, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge
  %i.0.lcssa = phi i1 [ true, %for.body.lr.ph.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %idx.0.in.lcssa = phi i32 [ %3, %for.body.lr.ph.for.end_crit_edge ], [ %rem, %for.end.loopexit ]
  %conv2.lcssa = phi i32 [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %conv2, %for.end.loopexit ]
  br i1 %i.0.lcssa, label %for.end.do.end37_crit_edge, label %if.end26

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

if.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_mini_bufs, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_mini_bufs, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_mini_bufs, ptr %cur_mini_bufs, i32 %conv2.lcssa, ptr elementtype(i32) %cur_mini_bufs) #12, !srcloc !465
  %sext = shl i32 %idx.0.in.lcssa, 16
  %conv29 = ashr exact i32 %sext, 16
  %24 = ptrtoint ptr %rx_mini_skbprd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv29, ptr %rx_mini_skbprd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv29)
  %RxMiniPrd = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxMiniPrd, i32 %25) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  br label %out

out:                                              ; preds = %do.end37, %if.end26
  %mini_refill_busy = getelementptr i8, ptr %dev, i32 2436
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %mini_refill_busy) #12
  ret void

do.end37:                                         ; preds = %for.end.do.end37_crit_edge, %entry.do.end37_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #15
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_set_txprd(ptr noundef %regs, i32 noundef %value) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %TxPrd = getelementptr inbounds %struct.ace_regs, ptr %regs, i32 0, i32 38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPrd, i32 %0) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ace_set_rxtx_parms(ptr nocapture noundef readonly %dev, i32 noundef %jumbo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %board_idx2 = getelementptr i8, ptr %dev, i32 2576
  %2 = ptrtoint ptr %board_idx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board_idx2, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end75_crit_edge

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jumbo)
  %tobool.not = icmp eq i32 %jumbo, 0
  %arrayidx = getelementptr [8 x i32], ptr @tx_coal_tick, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  br i1 %tobool4.not, label %do.body, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  tail call void @arm_heavy_mb() #12
  %TuneTxCoalTicks = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneTxCoalTicks, i32 -1878982656) #12, !srcloc !374
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then3.if.end_crit_edge
  %arrayidx6 = getelementptr [8 x i32], ptr @max_tx_desc, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %do.body9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %TuneMaxTxDesc = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxTxDesc, i32 1006632960) #12, !srcloc !374
  br label %if.end12

if.end12:                                         ; preds = %do.body9, %if.end.if.end12_crit_edge
  %arrayidx13 = getelementptr [8 x i32], ptr @rx_coal_tick, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %do.body16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  %TuneRxCoalTicks = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneRxCoalTicks, i32 2013265920) #12, !srcloc !374
  br label %if.end19

if.end19:                                         ; preds = %do.body16, %if.end12.if.end19_crit_edge
  %arrayidx20 = getelementptr [8 x i32], ptr @max_rx_desc, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %do.body23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @arm_heavy_mb() #12
  %TuneMaxRxDesc = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxRxDesc, i32 419430400) #12, !srcloc !374
  br label %if.end26

if.end26:                                         ; preds = %do.body23, %if.end19.if.end26_crit_edge
  %arrayidx27 = getelementptr [8 x i32], ptr @tx_ratio, i32 0, i32 %3
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool28.not = icmp eq i32 %13, 0
  br i1 %tobool28.not, label %do.body30, label %if.end26.if.end75_crit_edge

if.end26.if.end75_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.body30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !476
  tail call void @arm_heavy_mb() #12
  %TxBufRat = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxBufRat, i32 352321536) #12, !srcloc !374
  br label %if.end75

if.else:                                          ; preds = %if.then
  br i1 %tobool4.not, label %do.body37, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !477
  tail call void @arm_heavy_mb() #12
  %TuneTxCoalTicks40 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneTxCoalTicks40, i32 335544320) #12, !srcloc !374
  br label %if.end41

if.end41:                                         ; preds = %do.body37, %if.else.if.end41_crit_edge
  %arrayidx42 = getelementptr [8 x i32], ptr @max_tx_desc, i32 0, i32 %3
  %14 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool43.not = icmp eq i32 %15, 0
  br i1 %tobool43.not, label %do.body45, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.body45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !478
  tail call void @arm_heavy_mb() #12
  %TuneMaxTxDesc48 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxTxDesc48, i32 1006632960) #12, !srcloc !374
  br label %if.end49

if.end49:                                         ; preds = %do.body45, %if.end41.if.end49_crit_edge
  %arrayidx50 = getelementptr [8 x i32], ptr @rx_coal_tick, i32 0, i32 %3
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool51.not = icmp eq i32 %17, 0
  br i1 %tobool51.not, label %do.body53, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.body53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %TuneRxCoalTicks56 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneRxCoalTicks56, i32 503316480) #12, !srcloc !374
  br label %if.end57

if.end57:                                         ; preds = %do.body53, %if.end49.if.end57_crit_edge
  %arrayidx58 = getelementptr [8 x i32], ptr @max_rx_desc, i32 0, i32 %3
  %18 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool59.not = icmp eq i32 %19, 0
  br i1 %tobool59.not, label %do.body61, label %if.end57.if.end65_crit_edge

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.body61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !480
  tail call void @arm_heavy_mb() #12
  %TuneMaxRxDesc64 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneMaxRxDesc64, i32 100663296) #12, !srcloc !374
  br label %if.end65

if.end65:                                         ; preds = %do.body61, %if.end57.if.end65_crit_edge
  %arrayidx66 = getelementptr [8 x i32], ptr @tx_ratio, i32 0, i32 %3
  %20 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool67.not = icmp eq i32 %21, 0
  br i1 %tobool67.not, label %do.body69, label %if.end65.if.end75_crit_edge

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.body69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !481
  tail call void @arm_heavy_mb() #12
  %TxBufRat72 = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxBufRat72, i32 352321536) #12, !srcloc !374
  br label %if.end75

if.end75:                                         ; preds = %do.body69, %if.end65.if.end75_crit_edge, %do.body30, %if.end26.if.end75_crit_edge, %entry.if.end75_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ace_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %firmware_major = getelementptr i8, ptr %dev, i32 2588
  %0 = ptrtoint ptr %firmware_major to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %firmware_major, align 4
  %conv = zext i8 %1 to i32
  %firmware_minor = getelementptr i8, ptr %dev, i32 2589
  %2 = ptrtoint ptr %firmware_minor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %firmware_minor, align 1
  %conv3 = zext i8 %3 to i32
  %firmware_fix = getelementptr i8, ptr %dev, i32 2590
  %4 = ptrtoint ptr %firmware_fix to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %firmware_fix, align 2
  %conv4 = zext i8 %5 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4)
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.pci_name.exit_crit_edge ]
  %call9 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  br label %if.end

if.end:                                           ; preds = %pci_name.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 88)
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %port, align 1
  %GigLnkState = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 92
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %GigLnkState) #12, !srcloc !370
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %speed, align 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %FastLnkState = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 93
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FastLnkState) #12, !srcloc !370
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !483
  %and10 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else15, label %if.then12

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %speed14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %speed14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %speed14, align 4
  br label %if.end25

if.else15:                                        ; preds = %if.else
  %and16 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %speed23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %speed23, align 4
  br label %if.end25

if.else21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %speed23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then18, %if.then12, %if.then
  %link.0 = phi i32 [ %5, %if.then ], [ %8, %if.then12 ], [ %8, %if.then18 ], [ %8, %if.else21 ]
  %and26 = lshr i32 %link.0, 19
  %12 = trunc i32 %and26 to i8
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %14, align 4
  %and34 = lshr i32 %link.0, 29
  %16 = trunc i32 %and34 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %18, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 1151) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %GigLnkState = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %GigLnkState) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  %3 = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else:                                          ; preds = %entry
  %FastLnkState = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 93
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FastLnkState) #12, !srcloc !370
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  %and9 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and13 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %. = select i1 %tobool14.not, i32 100, i32 10
  br label %if.end18

if.end18:                                         ; preds = %if.else12, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %speed.0 = phi i32 [ 1000, %entry.if.end18_crit_edge ], [ 100, %if.else.if.end18_crit_edge ], [ %., %if.else12 ]
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  %spec.select = select i1 %cmp, i32 1889992704, i32 1353121792
  %speed24 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %speed.0)
  %cmp25.not = icmp eq i32 %9, %speed.0
  br i1 %cmp25.not, label %if.end18.if.end36_crit_edge, label %if.then27

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then27:                                        ; preds = %if.end18
  %and28 = and i32 %spec.select, 1889533952
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %9, label %if.then27.if.end36_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb32
    i32 10, label %sw.bb34
  ]

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

sw.bb:                                            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %or31 = and i32 %spec.select, 1889796096
  br label %if.end36

sw.bb32:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %or33 = and i32 %spec.select, 1889665024
  br label %if.end36

sw.bb34:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %or35 = and i32 %spec.select, 1889599488
  br label %if.end36

if.end36:                                         ; preds = %sw.bb34, %sw.bb32, %sw.bb, %if.then27.if.end36_crit_edge, %if.end18.if.end36_crit_edge
  %link.1 = phi i32 [ %and28, %if.then27.if.end36_crit_edge ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb ], [ %spec.select, %if.end18.if.end36_crit_edge ]
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp39 = icmp eq i8 %12, 1
  %or42 = or i32 %link.1, 524288
  %spec.select91 = select i1 %cmp39, i32 %or42, i32 %link.1
  %link44 = getelementptr i8, ptr %dev, i32 2328
  %13 = ptrtoint ptr %link44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %link44, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select91, i32 %14)
  %cmp45.not = icmp eq i32 %spec.select91, %14
  br i1 %cmp45.not, label %if.end36.if.end67_crit_edge, label %if.then47

if.end36.if.end67_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev) #15
  %15 = ptrtoint ptr %link44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select91, ptr %link44, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select91)
  %TuneLink = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneLink, i32 %16) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !487
  tail call void @arm_heavy_mb() #12
  %TuneFastLink = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TuneFastLink, i32 %16) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  tail call void @arm_heavy_mb() #12
  %CmdPrd.i = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CmdPrd.i) #12, !srcloc !370
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %arrayidx.i = getelementptr %struct.ace_regs, ptr %1, i32 0, i32 97, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 11) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %add.i = shl i32 %18, 24
  %rem.i = add i32 %add.i, 16777216
  %19 = and i32 %rem.i, 1056964608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CmdPrd.i, i32 %19) #12, !srcloc !374
  br label %if.end67

if.end67:                                         ; preds = %if.then47, %if.end36.if.end67_crit_edge
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_eeprom_byte(ptr nocapture noundef readonly %dev, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !444
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  tail call fastcc void @eeprom_start(ptr noundef %1)
  tail call fastcc void @eeprom_prep(ptr noundef %1, i8 noundef zeroext -96)
  %call13 = tail call fastcc i32 @eeprom_check_ack(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end52, label %do.body16

do.body16:                                        ; preds = %do.end12
  br i1 %tobool.not, label %if.then25, label %do.body16.do.body27_crit_edge

do.body16.do.body27_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

if.then25:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.body16.do.body27_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool35.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool35.not, label %if.then39, label %do.body27.do.end42_crit_edge, !prof !450

do.body27.do.end42_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27.do.end42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !451
  br label %do.end368

if.end52:                                         ; preds = %do.end12
  %shr = lshr i32 %offset, 8
  %conv53 = trunc i32 %shr to i8
  tail call fastcc void @eeprom_prep(ptr noundef %1, i8 noundef zeroext %conv53)
  %call54 = tail call fastcc i32 @eeprom_check_ack(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end99, label %do.body57

do.body57:                                        ; preds = %if.end52
  br i1 %tobool.not, label %if.then66, label %do.body57.do.body68_crit_edge

do.body57.do.body68_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body68

do.body68:                                        ; preds = %if.then66, %do.body57.do.body68_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i432 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i432)
  %tobool76.not = icmp eq i32 %and.i.i432, 0
  br i1 %tobool76.not, label %if.then85, label %do.body68.do.end88_crit_edge, !prof !450

do.body68.do.end88_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

if.then85:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body68.do.end88_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !451
  br label %do.end368

if.end99:                                         ; preds = %if.end52
  %conv101 = trunc i32 %offset to i8
  tail call fastcc void @eeprom_prep(ptr noundef %1, i8 noundef zeroext %conv101)
  %call102 = tail call fastcc i32 @eeprom_check_ack(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end147, label %do.body105

do.body105:                                       ; preds = %if.end99
  br i1 %tobool.not, label %if.then114, label %do.body105.do.body116_crit_edge

do.body105.do.body116_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body116

if.then114:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body116

do.body116:                                       ; preds = %if.then114, %do.body105.do.body116_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i434 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i434)
  %tobool124.not = icmp eq i32 %and.i.i434, 0
  br i1 %tobool124.not, label %if.then133, label %do.body116.do.end136_crit_edge, !prof !450

do.body116.do.end136_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end136

if.then133:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body116.do.end136_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !451
  br label %do.end368

if.end147:                                        ; preds = %if.end99
  tail call fastcc void @eeprom_start(ptr noundef %1)
  tail call fastcc void @eeprom_prep(ptr noundef %1, i8 noundef zeroext -95)
  %call148 = tail call fastcc i32 @eeprom_check_ack(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %for.cond.preheader, label %do.body151

for.cond.preheader:                               ; preds = %if.end147
  %LocalCtrl = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 2
  br label %for.body

do.body151:                                       ; preds = %if.end147
  br i1 %tobool.not, label %if.then160, label %do.body151.do.body162_crit_edge

do.body151.do.body162_crit_edge:                  ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body162

if.then160:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body162

do.body162:                                       ; preds = %if.then160, %do.body151.do.body162_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i436 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i436)
  %tobool170.not = icmp eq i32 %and.i.i436, 0
  br i1 %tobool170.not, label %if.then179, label %do.body162.do.end182_crit_edge, !prof !450

do.body162.do.end182_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end182

if.then179:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end182

do.end182:                                        ; preds = %if.then179, %do.body162.do.end182_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !451
  br label %do.end368

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %result.0440 = phi i32 [ 0, %for.cond.preheader ], [ %or236, %for.body.for.body_crit_edge ]
  %i.0439 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !489
  %8 = and i32 %7, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !490
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %8) #12, !srcloc !374
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 858992) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  tail call void @arm_heavy_mb() #12
  %11 = or i32 %8, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !493
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %11) #12, !srcloc !374
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !494
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !495
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #12
  %shl = shl i32 %result.0440, 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !496
  %15 = lshr i32 %14, 15
  %.lobit = and i32 %15, 1
  %or236 = or i32 %.lobit, %shl
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !497
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !498
  %18 = and i32 %17, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !499
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %18) #12, !srcloc !374
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  tail call void @arm_heavy_mb() #12
  %cmp261 = icmp eq i16 %i.0439, 7
  %inc = add nuw nsw i16 %i.0439, 1
  br i1 %cmp261, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %21 = or i32 %18, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !502
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %21) #12, !srcloc !374
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !503
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !504
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #12
  %24 = or i32 %18, 24576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !505
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %24) #12, !srcloc !374
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !506
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !507
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !508
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !509
  %28 = or i32 %27, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %28) #12, !srcloc !374
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !510
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 858992) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !511
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !512
  %32 = and i32 %31, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %32) #12, !srcloc !374
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !514
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 429496) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 429496) #12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !515
  %37 = or i32 %36, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !516
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %37) #12, !srcloc !374
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !517
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !518
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #12
  %40 = and i32 %37, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !519
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %40) #12, !srcloc !374
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !521
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 429496) #12
  %43 = or i32 %40, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %43) #12, !srcloc !374
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !524
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 429496) #12
  %46 = or i32 %36, 28672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %46) #12, !srcloc !374
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !527
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 858992) #12
  %49 = and i32 %46, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !528
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %49) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !529
  tail call void @arm_heavy_mb() #12
  br i1 %tobool.not, label %if.then339, label %for.end.do.body341_crit_edge

for.end.do.body341_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body341

if.then339:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body341

do.body341:                                       ; preds = %if.then339, %for.end.do.body341_crit_edge
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !449
  %and.i.i438 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i438)
  %tobool349.not = icmp eq i32 %and.i.i438, 0
  br i1 %tobool349.not, label %if.then358, label %do.body341.do.end361_crit_edge, !prof !450

do.body341.do.end361_crit_edge:                   ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end361

if.then358:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end361

do.end361:                                        ; preds = %if.then358, %do.body341.do.end361_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !451
  br label %out

out:                                              ; preds = %do.end368, %do.end361
  %result.1 = phi i32 [ -5, %do.end368 ], [ %or236, %do.end361 ]
  ret i32 %result.1

do.end368:                                        ; preds = %do.end182, %do.end136, %do.end88, %do.end42
  %.str.115.sink = phi ptr [ @.str.115, %do.end42 ], [ @.str.118, %do.end88 ], [ @.str.121, %do.end136 ], [ @.str.124, %do.end182 ]
  %name = getelementptr i8, ptr %dev, i32 2584
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.115.sink, ptr noundef %52) #15
  %name370 = getelementptr i8, ptr %dev, i32 2584
  %53 = ptrtoint ptr %name370 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name370, align 8
  %call371 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %54, i32 noundef %offset) #15
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ace_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %HostCtrl = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  tail call void @arm_heavy_mb() #12
  %Mb0Lo = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mb0Lo, i32 0) #12, !srcloc !374
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Mb0Lo) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  %rx_ret_prd = getelementptr i8, ptr %dev_id, i32 2528
  %5 = ptrtoint ptr %rx_ret_prd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ret_prd, align 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %cur_rx = getelementptr i8, ptr %dev_id, i32 2468
  %9 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %do.body.if.end11_crit_edge, label %while.body.lr.ph.i

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

while.body.lr.ph.i:                               ; preds = %do.body
  %cur_rx_bufs.i = getelementptr i8, ptr %dev_id, i32 2444
  tail call void @llvm.prefetch.p0(ptr %cur_rx_bufs.i, i32 1, i32 3, i32 1) #12
  %cur_mini_bufs.i = getelementptr i8, ptr %dev_id, i32 2448
  tail call void @llvm.prefetch.p0(ptr %cur_mini_bufs.i, i32 1, i32 3, i32 1) #12
  %rx_return_ring.i = getelementptr i8, ptr %dev_id, i32 2484
  %skb10.i = getelementptr i8, ptr %dev_id, i32 2316
  %cur_jumbo_bufs.i = getelementptr i8, ptr %dev_id, i32 2452
  %pdev.i = getelementptr i8, ptr %dev_id, i32 2564
  %stats.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %std_count.0103.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %std_count.1.i, %cleanup.i.while.body.i_crit_edge ]
  %mini_count.0102.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %mini_count.1.i, %cleanup.i.while.body.i_crit_edge ]
  %idx.0100.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %rem.i, %cleanup.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0100.i, i32 %10)
  %cmp1.i = icmp eq i32 %idx.0100.i, %10
  br i1 %cmp1.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %rx_return_ring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_return_ring.i, align 4
  %idx2.i = getelementptr %struct.rx_desc, ptr %12, i32 %idx.0100.i, i32 1
  %13 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idx2.i, align 4
  %conv.i = zext i16 %14 to i32
  %flags.i = getelementptr %struct.rx_desc, ptr %12, i32 %idx.0100.i, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 2
  %conv3.i = zext i16 %16 to i32
  %and.i = and i32 %conv3.i, 4112
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %and.i, label %cleanup.thread.i [
    i32 0, label %sw.bb.i
    i32 16, label %sw.bb6.i
    i32 4096, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %skb10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb10.i, align 4
  %arrayidx5.i = getelementptr %struct.ace_skb, ptr %19, i32 0, i32 1, i32 %conv.i
  %inc.i = add i32 %std_count.0103.i, 1
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %skb10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb10.i, align 4
  %arrayidx8.i = getelementptr %struct.ace_skb, ptr %21, i32 0, i32 3, i32 %conv.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_jumbo_bufs.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_jumbo_bufs.i, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_jumbo_bufs.i, ptr %cur_jumbo_bufs.i, i32 1, ptr elementtype(i32) %cur_jumbo_bufs.i) #12, !srcloc !534
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %skb10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb10.i, align 4
  %arrayidx11.i = getelementptr %struct.ace_skb, ptr %24, i32 0, i32 2, i32 %conv.i
  %inc12.i = add i32 %mini_count.0102.i, 1
  br label %sw.epilog.i

cleanup.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i.le = zext i16 %16 to i32
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %dev_id, i32 noundef %conv3.i.le) #15
  br label %ace_rx_int.exit

sw.epilog.i:                                      ; preds = %sw.bb9.i, %sw.bb6.i, %sw.bb.i
  %mini_count.1.i = phi i32 [ %inc12.i, %sw.bb9.i ], [ %mini_count.0102.i, %sw.bb6.i ], [ %mini_count.0102.i, %sw.bb.i ]
  %std_count.1.i = phi i32 [ %std_count.0103.i, %sw.bb9.i ], [ %std_count.0103.i, %sw.bb6.i ], [ %inc.i, %sw.bb.i ]
  %rip.0.i = phi ptr [ %arrayidx11.i, %sw.bb9.i ], [ %arrayidx8.i, %sw.bb6.i ], [ %arrayidx5.i, %sw.bb.i ]
  %mapsize.0.i = phi i32 [ 100, %sw.bb9.i ], [ 9018, %sw.bb6.i ], [ 1518, %sw.bb.i ]
  %25 = ptrtoint ptr %rip.0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rip.0.i, align 4
  store ptr null, ptr %rip.0.i, align 4
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 4
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %mapping.i = getelementptr inbounds %struct.ring_info, ptr %rip.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mapping.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev18.i, i32 noundef %30, i32 noundef %mapsize.0.i, i32 noundef 2, i32 noundef 0) #12
  %size.i = getelementptr %struct.rx_desc, ptr %12, i32 %idx.0100.i, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size.i, align 2
  %conv19.i = zext i16 %32 to i32
  %call20.i = tail call ptr @skb_put(ptr noundef %26, i32 noundef %conv19.i) #12
  %tcp_udp_csum.i = getelementptr %struct.rx_desc, ptr %12, i32 %idx.0100.i, i32 6
  %33 = ptrtoint ptr %tcp_udp_csum.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tcp_udp_csum.i, align 2
  %call21.i = tail call zeroext i16 @eth_type_trans(ptr noundef %26, ptr noundef %dev_id) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %call21.i, ptr %protocol.i, align 8
  %and22.i = and i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end25.i_crit_edge, label %if.then23.i

sw.epilog.i.if.end25.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then23.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv24.i = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv24.i, ptr %36, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15
  %38 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %sw.epilog.i.if.end25.i_crit_edge
  %and26.i = and i32 %conv3.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.cleanup.i_crit_edge, label %if.then28.i

if.end25.i.cleanup.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %vlan.i = getelementptr %struct.rx_desc, ptr %12, i32 %idx.0100.i, i32 8
  %39 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vlan.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15, i32 0, i32 9
  %41 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15, i32 0, i32 10
  %42 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %40, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15, i32 0, i32 3
  %43 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then28.i, %if.end25.i.cleanup.i_crit_edge
  %call30.i = tail call i32 @netif_rx(ptr noundef %26) #12
  %44 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats.i, align 8
  %inc31.i = add i32 %45, 1
  store i32 %inc31.i, ptr %stats.i, align 8
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size.i, align 2
  %conv33.i = zext i16 %47 to i32
  %48 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %49, %conv33.i
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %add35.i = add i32 %idx.0100.i, 1
  %rem.i = and i32 %add35.i, 2047
  %cmp.not.i = icmp eq i32 %rem.i, %8
  br i1 %cmp.not.i, label %while.end.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i90.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_rx_bufs.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_rx_bufs.i, i32 1, i32 3, i32 1) #12
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_rx_bufs.i, ptr %cur_rx_bufs.i, i32 %std_count.1.i, ptr elementtype(i32) %cur_rx_bufs.i) #12, !srcloc !534
  %call.i.i91.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cur_mini_bufs.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %cur_mini_bufs.i, i32 1, i32 3, i32 1) #12
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_mini_bufs.i, ptr %cur_mini_bufs.i, i32 %mini_count.1.i, ptr elementtype(i32) %cur_mini_bufs.i) #12, !srcloc !534
  br label %ace_rx_int.exit

ace_rx_int.exit:                                  ; preds = %while.end.i, %cleanup.thread.i
  %52 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %8, ptr %cur_rx, align 4
  br label %if.end11

if.end11:                                         ; preds = %ace_rx_int.exit, %do.body.if.end11_crit_edge
  %tx_csm = getelementptr i8, ptr %dev_id, i32 2532
  %53 = ptrtoint ptr %tx_csm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_csm, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %tx_ret_csm = getelementptr i8, ptr %dev_id, i32 2348
  %57 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %tx_ret_csm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp12.not = icmp eq i32 %56, %58
  br i1 %cmp12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %tx_prd = getelementptr i8, ptr %dev_id, i32 2344
  %59 = ptrtoint ptr %tx_prd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_prd, align 8
  %61 = xor i32 %60, -1
  %sub1.i = add i32 %56, %61
  %and.i136 = and i32 %sub1.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and.i136)
  %cmp15 = icmp ult i32 %and.i136, 18
  br i1 %cmp15, label %if.then13.if.end18_crit_edge, label %if.then16

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  %skb1.i = getelementptr i8, ptr %dev_id, i32 2316
  %pdev.i137 = getelementptr i8, ptr %dev_id, i32 2564
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end10.i.do.body.i_crit_edge, %if.then16
  %idx.addr.0.i = phi i32 [ %58, %if.then16 ], [ %rem.i145, %if.end10.i.do.body.i_crit_edge ]
  %62 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skb1.i, align 4
  %add.ptr.i138 = getelementptr %struct.tx_ring_info, ptr %63, i32 %idx.addr.0.i
  %64 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i138, align 4
  %maplen.i = getelementptr %struct.tx_ring_info, ptr %63, i32 %idx.addr.0.i, i32 2
  %66 = ptrtoint ptr %maplen.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %maplen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i139 = icmp eq i32 %67, 0
  br i1 %tobool.not.i139, label %do.body.i.if.end.i142_crit_edge, label %if.then.i141

do.body.i.if.end.i142_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i142

if.then.i141:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %pdev.i137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i137, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %mapping.i140 = getelementptr %struct.tx_ring_info, ptr %63, i32 %idx.addr.0.i, i32 1
  %70 = ptrtoint ptr %mapping.i140 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mapping.i140, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3.i, i32 noundef %71, i32 noundef %67, i32 noundef 1, i32 noundef 0) #12
  %72 = ptrtoint ptr %maplen.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %maplen.i, align 4
  br label %if.end.i142

if.end.i142:                                      ; preds = %if.then.i141, %do.body.i.if.end.i142_crit_edge
  %tobool6.not.i = icmp eq ptr %65, null
  br i1 %tobool6.not.i, label %if.end.i142.if.end10.i_crit_edge, label %if.then7.i

if.end.i142.if.end10.i_crit_edge:                 ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_packets.i, align 4
  %inc.i143 = add i32 %74, 1
  store i32 %inc.i143, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 6
  %75 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i, align 4
  %77 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_bytes.i, align 4
  %add.i144 = add i32 %78, %76
  store i32 %add.i144, ptr %tx_bytes.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %65, i32 noundef 0) #12
  %79 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %add.ptr.i138, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i142.if.end10.i_crit_edge
  %add11.i = add i32 %idx.addr.0.i, 1
  %rem.i145 = and i32 %add11.i, 255
  %cmp.not.i146 = icmp eq i32 %rem.i145, %56
  br i1 %cmp.not.i146, label %do.end.i, label %if.end10.i.do.body.i_crit_edge

if.end10.i.do.body.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.end.i:                                         ; preds = %if.end10.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %80 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end.i.ace_tx_int.exit_crit_edge, label %if.then13.i

do.end.i.ace_tx_int.exit_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ace_tx_int.exit

if.then13.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %81) #12
  br label %ace_tx_int.exit

ace_tx_int.exit:                                  ; preds = %if.then13.i, %do.end.i.ace_tx_int.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !535
  tail call void @arm_heavy_mb() #12
  %84 = ptrtoint ptr %tx_ret_csm to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %56, ptr %tx_ret_csm, align 4
  br label %if.end18

if.end18:                                         ; preds = %ace_tx_int.exit, %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %EvtCsm = getelementptr inbounds %struct.ace_regs, ptr %1, i32 0, i32 76
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EvtCsm) #12, !srcloc !370
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !536
  %evt_prd = getelementptr i8, ptr %dev_id, i32 2524
  %87 = ptrtoint ptr %evt_prd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %evt_prd, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %90)
  %cmp24.not = icmp eq i32 %86, %90
  br i1 %cmp24.not, label %if.end18.if.end31_crit_edge, label %while.body.lr.ph.i147

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

while.body.lr.ph.i147:                            ; preds = %if.end18
  %evt_ring.i = getelementptr i8, ptr %dev_id, i32 2520
  %skb.i = getelementptr i8, ptr %dev_id, i32 2316
  %rx_jumbo_ring.i = getelementptr i8, ptr %dev_id, i32 2476
  %jumbo.i = getelementptr i8, ptr %dev_id, i32 2492
  %rx_jumbo_skbprd.i = getelementptr i8, ptr %dev_id, i32 2464
  %name116.i = getelementptr i8, ptr %dev_id, i32 2584
  %jumbo_refill_busy.i = getelementptr i8, ptr %dev_id, i32 2440
  %fw_running.i = getelementptr i8, ptr %dev_id, i32 2572
  br label %while.body.i149

while.body.i149:                                  ; preds = %sw.epilog129.i.while.body.i149_crit_edge, %while.body.lr.ph.i147
  %evtcsm.addr.0175.i = phi i32 [ %86, %while.body.lr.ph.i147 ], [ %rem.i158, %sw.epilog129.i.while.body.i149_crit_edge ]
  %91 = ptrtoint ptr %evt_ring.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %evt_ring.i, align 8
  %arrayidx.i = getelementptr %struct.event, ptr %92, i32 %evtcsm.addr.0175.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load.i148 = load i32, ptr %arrayidx.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i148, 24
  %trunc.i = trunc i32 %bf.lshr.i to i8
  %94 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.181)
  switch i8 %trunc.i, label %do.end121.i [
    i8 1, label %do.end.i150
    i8 4, label %while.body.i149.sw.epilog129.i_crit_edge
    i8 6, label %sw.bb5.i
    i8 7, label %sw.bb48.i
    i8 9, label %while.body.i149.for.body.i_crit_edge
  ]

while.body.i149.for.body.i_crit_edge:             ; preds = %while.body.i149
  br label %for.body.i

while.body.i149.sw.epilog129.i_crit_edge:         ; preds = %while.body.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog129.i

do.end.i150:                                      ; preds = %while.body.i149
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name116.i, align 8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %96) #15
  %97 = ptrtoint ptr %fw_running.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 1, ptr %fw_running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !537
  tail call void @arm_heavy_mb() #12
  br label %sw.epilog129.i

sw.bb5.i:                                         ; preds = %while.body.i149
  %bf.lshr9.i = lshr i32 %bf.load.i148, 12
  %conv.i151 = and i32 %bf.lshr9.i, 4095
  %98 = zext i32 %conv.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %conv.i151, label %do.end43.i [
    i32 1, label %sw.bb11.i
    i32 2, label %do.end30.i
    i32 3, label %do.end37.i
  ]

sw.bb11.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs1, align 8
  %GigLnkState.i = getelementptr inbounds %struct.ace_regs, ptr %100, i32 0, i32 92
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %GigLnkState.i) #12, !srcloc !370
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  %103 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %name116.i, align 8
  %and.i152 = and i32 %102, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool.not.i153 = icmp eq i32 %and.i152, 0
  %cond.i = select i1 %tobool.not.i153, ptr @.str.137, ptr @.str.136
  %and20.i = and i32 %102, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  %cond22.i = select i1 %tobool21.not.i, ptr @.str.139, ptr @.str.138
  %and23.i = and i32 %102, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.139, ptr @.str.140
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %104, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond22.i, ptr noundef nonnull %cond25.i) #15
  br label %sw.epilog129.i

do.end30.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name116.i, align 8
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %106) #15
  br label %sw.epilog129.i

do.end37.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %name116.i, align 8
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %108) #15
  br label %sw.epilog129.i

do.end43.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name116.i, align 8
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %110, i32 noundef %conv.i151) #15
  br label %sw.epilog129.i

sw.bb48.i:                                        ; preds = %while.body.i149
  %bf.lshr52.i = lshr i32 %bf.load.i148, 12
  %bf.clear53.i = and i32 %bf.lshr52.i, 4095
  %111 = zext i32 %bf.clear53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %bf.clear53.i, label %do.end78.i [
    i32 1, label %do.end57.i
    i32 2, label %do.end64.i
    i32 3, label %do.end71.i
  ]

do.end57.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name116.i, align 8
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %113) #15
  br label %sw.epilog129.i

do.end64.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name116.i, align 8
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %115) #15
  br label %sw.epilog129.i

do.end71.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name116.i, align 8
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %117) #15
  br label %sw.epilog129.i

do.end78.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name116.i, align 8
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %119, i32 noundef %bf.clear53.i) #15
  br label %sw.epilog129.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.i149.for.body.i_crit_edge
  %i.0172.i = phi i32 [ %inc.i156, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.i149.for.body.i_crit_edge ]
  %120 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %skb.i, align 4
  %arrayidx91.i = getelementptr %struct.ace_skb, ptr %121, i32 0, i32 3, i32 %i.0172.i
  %122 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx91.i, align 4
  %tobool93.not.i = icmp eq ptr %123, null
  br i1 %tobool93.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i155

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i155:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %rx_jumbo_ring.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rx_jumbo_ring.i, align 4
  %size.i154 = getelementptr %struct.rx_desc, ptr %125, i32 %i.0172.i, i32 2
  %126 = ptrtoint ptr %size.i154 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %size.i154, align 2
  %127 = load ptr, ptr %rx_jumbo_ring.i, align 4
  %arrayidx96.i = getelementptr %struct.rx_desc, ptr %127, i32 %i.0172.i
  %addrlo.i.i = getelementptr inbounds %struct.aceaddr, ptr %arrayidx96.i, i32 0, i32 1
  %128 = ptrtoint ptr %addrlo.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %addrlo.i.i, align 4
  %129 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %arrayidx96.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  tail call void @arm_heavy_mb() #12
  %130 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %skb.i, align 4
  %arrayidx99.i = getelementptr %struct.ace_skb, ptr %131, i32 0, i32 3, i32 %i.0172.i
  %132 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx99.i, align 4
  tail call void @consume_skb(ptr noundef %133) #12
  %134 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %skb.i, align 4
  %arrayidx103.i = getelementptr %struct.ace_skb, ptr %135, i32 0, i32 3, i32 %i.0172.i
  %136 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %arrayidx103.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i155, %for.body.i.for.inc.i_crit_edge
  %inc.i156 = add nuw nsw i32 %i.0172.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i156, 256
  br i1 %exitcond.not.i, label %do.body105.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body105.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !539
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs1, align 8
  %RxJumboPrd.i = getelementptr inbounds %struct.ace_regs, ptr %138, i32 0, i32 42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxJumboPrd.i, i32 0) #12, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !540
  tail call void @arm_heavy_mb() #12
  %139 = ptrtoint ptr %jumbo.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %jumbo.i, align 4
  %140 = ptrtoint ptr %rx_jumbo_skbprd.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %rx_jumbo_skbprd.i, align 32
  %141 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name116.i, align 8
  %call117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %142) #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy.i) #12
  br label %sw.epilog129.i

do.end121.i:                                      ; preds = %while.body.i149
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %name116.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name116.i, align 8
  %call128.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %144, i32 noundef %bf.lshr.i) #15
  br label %sw.epilog129.i

sw.epilog129.i:                                   ; preds = %do.end121.i, %do.body105.i, %do.end78.i, %do.end71.i, %do.end64.i, %do.end57.i, %do.end43.i, %do.end37.i, %do.end30.i, %sw.bb11.i, %do.end.i150, %while.body.i149.sw.epilog129.i_crit_edge
  %add.i157 = add i32 %evtcsm.addr.0175.i, 1
  %rem.i158 = and i32 %add.i157, 255
  %cmp.not.i159 = icmp eq i32 %rem.i158, %90
  br i1 %cmp.not.i159, label %ace_handle_event.exit, label %sw.epilog129.i.while.body.i149_crit_edge

sw.epilog129.i.while.body.i149_crit_edge:         ; preds = %sw.epilog129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i149

ace_handle_event.exit:                            ; preds = %sw.epilog129.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !541
  tail call void @arm_heavy_mb() #12
  %145 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtCsm, i32 %145) #12, !srcloc !374
  br label %if.end31

if.end31:                                         ; preds = %ace_handle_event.exit, %if.end18.if.end31_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %146 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end31.cleanup_crit_edge, label %if.then33

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %if.end31
  %cur_rx_bufs = getelementptr i8, ptr %dev_id, i32 2444
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_rx_bufs, i32 noundef 4) #12
  %148 = ptrtoint ptr %cur_rx_bufs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %cur_rx_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %149)
  %cmp35 = icmp slt i32 %149, 54
  br i1 %cmp35, label %if.then36, label %if.then33.if.end42_crit_edge

if.then33.if.end42_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %149)
  %cmp37 = icmp slt i32 %149, 16
  br i1 %cmp37, label %land.lhs.true, label %if.then36.if.end42_crit_edge

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then36
  %std_refill_busy = getelementptr i8, ptr %dev_id, i32 2432
  %call38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %std_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 72, %149
  tail call fastcc void @ace_load_std_rx_ring(ptr noundef %dev_id, i32 noundef %sub)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true.if.end42_crit_edge, %if.then36.if.end42_crit_edge, %if.then33.if.end42_crit_edge
  %run_tasklet.0 = phi i32 [ 0, %if.then40 ], [ 0, %if.then33.if.end42_crit_edge ], [ 1, %land.lhs.true.if.end42_crit_edge ], [ 1, %if.then36.if.end42_crit_edge ]
  %cur_mini_bufs = getelementptr i8, ptr %dev_id, i32 2448
  %call.i.i134 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_mini_bufs, i32 noundef 4) #12
  %150 = ptrtoint ptr %cur_mini_bufs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %cur_mini_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %151)
  %cmp44 = icmp slt i32 %151, 48
  br i1 %cmp44, label %if.then45, label %if.end42.if.end54_crit_edge

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %151)
  %cmp46 = icmp slt i32 %151, 12
  br i1 %cmp46, label %land.lhs.true47, label %if.then45.if.end54_crit_edge

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true47:                                  ; preds = %if.then45
  %mini_refill_busy = getelementptr i8, ptr %dev_id, i32 2436
  %call48 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %mini_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %land.lhs.true47.if.end54_crit_edge

land.lhs.true47.if.end54_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  %sub51 = sub i32 64, %151
  tail call fastcc void @ace_load_mini_rx_ring(ptr noundef %dev_id, i32 noundef %sub51)
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %land.lhs.true47.if.end54_crit_edge, %if.then45.if.end54_crit_edge, %if.end42.if.end54_crit_edge
  %run_tasklet.1 = phi i32 [ %run_tasklet.0, %if.then50 ], [ %run_tasklet.0, %if.end42.if.end54_crit_edge ], [ 1, %land.lhs.true47.if.end54_crit_edge ], [ 1, %if.then45.if.end54_crit_edge ]
  %jumbo = getelementptr i8, ptr %dev_id, i32 2492
  %152 = ptrtoint ptr %jumbo to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %jumbo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool55.not = icmp eq i32 %153, 0
  br i1 %tobool55.not, label %if.end54.if.end69_crit_edge, label %if.then56

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then56:                                        ; preds = %if.end54
  %cur_jumbo_bufs = getelementptr i8, ptr %dev_id, i32 2452
  %call.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cur_jumbo_bufs, i32 noundef 4) #12
  %154 = ptrtoint ptr %cur_jumbo_bufs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %cur_jumbo_bufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %155)
  %cmp58 = icmp slt i32 %155, 36
  br i1 %cmp58, label %if.then59, label %if.then56.if.end69_crit_edge

if.then56.if.end69_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %155)
  %cmp60 = icmp slt i32 %155, 6
  br i1 %cmp60, label %land.lhs.true61, label %if.then59.land.lhs.true71_crit_edge

if.then59.land.lhs.true71_crit_edge:              ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

land.lhs.true61:                                  ; preds = %if.then59
  %jumbo_refill_busy = getelementptr i8, ptr %dev_id, i32 2440
  %call62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %jumbo_refill_busy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %land.lhs.true61.land.lhs.true71_crit_edge

land.lhs.true61.land.lhs.true71_crit_edge:        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  %sub65 = sub i32 48, %155
  tail call fastcc void @ace_load_jumbo_rx_ring(ptr noundef %dev_id, i32 noundef %sub65)
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.then56.if.end69_crit_edge, %if.end54.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %run_tasklet.1)
  %tobool70.not = icmp eq i32 %run_tasklet.1, 0
  br i1 %tobool70.not, label %if.end69.cleanup_crit_edge, label %if.end69.land.lhs.true71_crit_edge

if.end69.land.lhs.true71_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true71:                                  ; preds = %if.end69.land.lhs.true71_crit_edge, %land.lhs.true61.land.lhs.true71_crit_edge, %if.then59.land.lhs.true71_crit_edge
  %tasklet_pending = getelementptr i8, ptr %dev_id, i32 2488
  %156 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tasklet_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool72.not = icmp eq i32 %157, 0
  br i1 %tobool72.not, label %if.then73, label %land.lhs.true71.cleanup_crit_edge

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then73:                                        ; preds = %land.lhs.true71
  %158 = ptrtoint ptr %tasklet_pending to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %tasklet_pending, align 8
  %state.i161 = getelementptr i8, ptr %dev_id, i32 2500
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i162 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i162, label %if.then.i163, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i163:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %ace_tasklet = getelementptr i8, ptr %dev_id, i32 2496
  tail call void @__tasklet_schedule(ptr noundef %ace_tasklet) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i163, %if.then73.cleanup_crit_edge, %land.lhs.true71.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end69.cleanup_crit_edge ], [ 1, %land.lhs.true71.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ 1, %if.then73.cleanup_crit_edge ], [ 1, %if.then.i163 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ace_load_firmware(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !379
  %regs1 = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs1, align 8
  %CpuCtrl = getelementptr inbounds %struct.ace_regs, ptr %2, i32 0, i32 17
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CpuCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !542
  %4 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr i8, ptr %dev, i32 2584
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %6) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr i8, ptr %dev, i32 2564
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call7 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.168, ptr noundef %dev6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %name14 = getelementptr i8, ptr %dev, i32 2584
  %9 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name14, align 8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %10, ptr noundef nonnull @.str.168) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %firmware_major = getelementptr i8, ptr %dev, i32 2588
  %17 = ptrtoint ptr %firmware_major to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %firmware_major, align 4
  %18 = load ptr, ptr %data, align 4
  %arrayidx19 = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 1
  %firmware_minor = getelementptr i8, ptr %dev, i32 2589
  %21 = ptrtoint ptr %firmware_minor to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %firmware_minor, align 1
  %22 = load ptr, ptr %data, align 4
  %arrayidx21 = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21, align 1
  %firmware_fix = getelementptr i8, ptr %dev, i32 2590
  %25 = ptrtoint ptr %firmware_fix to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %firmware_fix, align 2
  %arrayidx22 = getelementptr i32, ptr %14, i32 1
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %firmware_start = getelementptr i8, ptr %dev, i32 2592
  %28 = ptrtoint ptr %firmware_start to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %firmware_start, align 32
  %29 = add i32 %27, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -507904, i32 %29)
  %30 = icmp ult i32 %29, -507904
  br i1 %30, label %if.end16.out.sink.split_crit_edge, label %if.end34

if.end16.out.sink.split_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end34:                                         ; preds = %if.end16
  %arrayidx35 = getelementptr i32, ptr %14, i32 2
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx35, align 4
  %33 = add i32 %32, -524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -507904, i32 %33)
  %34 = icmp ult i32 %33, -507904
  br i1 %34, label %if.end34.out.sink.split_crit_edge, label %if.end46

if.end34.out.sink.split_crit_edge:                ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end46:                                         ; preds = %if.end34
  %Window.i = getelementptr inbounds %struct.ace_regs, ptr %2, i32 0, i32 98
  %WinBase.i = getelementptr inbounds %struct.ace_regs, ptr %2, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %if.end46
  %dest.addr.06.i = phi i32 [ 8192, %if.end46 ], [ %add21.i, %for.end.i.while.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ 516096, %if.end46 ], [ %sub.i, %for.end.i.while.body.i_crit_edge ]
  %neg.i = and i32 %dest.addr.06.i, 2047
  %add.i = sub nuw nsw i32 2048, %neg.i
  %35 = call i32 @llvm.umin.i32(i32 %size.addr.05.i, i32 %add.i) #12
  %add.ptr.i80 = getelementptr i8, ptr %Window.i, i32 %neg.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !543
  call void @arm_heavy_mb() #12
  %and10.i = and i32 %dest.addr.06.i, -2048
  %36 = call i32 @llvm.bswap.i32(i32 %and10.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase.i, i32 %36) #12, !srcloc !374
  %div1.i = lshr i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp132.not.i = icmp ult i32 %35, 4
  br i1 %cmp132.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.do.body15.i_crit_edge

while.body.i.do.body15.i_crit_edge:               ; preds = %while.body.i
  br label %do.body15.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body15.i:                                      ; preds = %do.body15.i.do.body15.i_crit_edge, %while.body.i.do.body15.i_crit_edge
  %conv114.i = phi i32 [ %conv11.i, %do.body15.i.do.body15.i_crit_edge ], [ 0, %while.body.i.do.body15.i_crit_edge ]
  %i.03.i = phi i16 [ %inc.i, %do.body15.i.do.body15.i_crit_edge ], [ 0, %while.body.i.do.body15.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  call void @arm_heavy_mb() #12
  %mul.i = shl nsw i32 %conv114.i, 2
  %add.ptr19.i = getelementptr i8, ptr %add.ptr.i80, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 0) #12, !srcloc !374
  %inc.i = add i16 %i.03.i, 1
  %conv11.i = sext i16 %inc.i to i32
  %cmp13.i = icmp sgt i32 %div1.i, %conv11.i
  br i1 %cmp13.i, label %do.body15.i.do.body15.i_crit_edge, label %do.body15.i.for.end.i_crit_edge

do.body15.i.for.end.i_crit_edge:                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body15.i.do.body15.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i

for.end.i:                                        ; preds = %do.body15.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %add21.i = add i32 %35, %dest.addr.06.i
  %sub.i = sub i32 %size.addr.05.i, %35
  %cmp1.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1.i, label %for.end.i.while.body.i_crit_edge, label %ace_clear.exit

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

ace_clear.exit:                                   ; preds = %for.end.i
  %37 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %sub = add i32 %40, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 1
  br i1 %cmp.i, label %ace_clear.exit.out_crit_edge, label %while.body.i87.preheader

ace_clear.exit.out_crit_edge:                     ; preds = %ace_clear.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.i87.preheader:                         ; preds = %ace_clear.exit
  %arrayidx47 = getelementptr i32, ptr %14, i32 3
  br label %while.body.i87

while.cond.loopexit.i:                            ; preds = %do.body15.i93.while.cond.loopexit.i_crit_edge, %while.body.i87.while.cond.loopexit.i_crit_edge
  %size.addr.1.lcssa.i = phi i32 [ %size.addr.046.i, %while.body.i87.while.cond.loopexit.i_crit_edge ], [ %sub.i89, %do.body15.i93.while.cond.loopexit.i_crit_edge ]
  %dest.addr.1.lcssa.i = phi i32 [ %dest.addr.047.i, %while.body.i87.while.cond.loopexit.i_crit_edge ], [ %add19.i, %do.body15.i93.while.cond.loopexit.i_crit_edge ]
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.048.i, %while.body.i87.while.cond.loopexit.i_crit_edge ], [ %incdec.ptr.i, %do.body15.i93.while.cond.loopexit.i_crit_edge ]
  %cmp1.i83 = icmp sgt i32 %size.addr.1.lcssa.i, 0
  br i1 %cmp1.i83, label %while.cond.loopexit.i.while.body.i87_crit_edge, label %while.cond.loopexit.i.out_crit_edge

while.cond.loopexit.i.out_crit_edge:              ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.cond.loopexit.i.while.body.i87_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i87

while.body.i87:                                   ; preds = %while.cond.loopexit.i.while.body.i87_crit_edge, %while.body.i87.preheader
  %src.addr.048.i = phi ptr [ %src.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i87_crit_edge ], [ %arrayidx47, %while.body.i87.preheader ]
  %dest.addr.047.i = phi i32 [ %dest.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i87_crit_edge ], [ %32, %while.body.i87.preheader ]
  %size.addr.046.i = phi i32 [ %size.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i87_crit_edge ], [ %sub, %while.body.i87.preheader ]
  %neg.i84 = and i32 %dest.addr.047.i, 2047
  %add.i85 = sub nuw nsw i32 2048, %neg.i84
  %41 = call i32 @llvm.umin.i32(i32 %size.addr.046.i, i32 %add.i85) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  call void @arm_heavy_mb() #12
  %and10.i86 = and i32 %dest.addr.047.i, -2048
  %42 = call i32 @llvm.bswap.i32(i32 %and10.i86) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase.i, i32 %42) #12, !srcloc !374
  %43 = lshr i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp1337.not.i = icmp ult i32 %41, 4
  br i1 %cmp1337.not.i, label %while.body.i87.while.cond.loopexit.i_crit_edge, label %do.body15.preheader.i

while.body.i87.while.cond.loopexit.i_crit_edge:   ; preds = %while.body.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit.i

do.body15.preheader.i:                            ; preds = %while.body.i87
  %add.ptr.i88 = getelementptr i8, ptr %Window.i, i32 %neg.i84
  br label %do.body15.i93

do.body15.i93:                                    ; preds = %do.body15.i93.do.body15.i93_crit_edge, %do.body15.preheader.i
  %src.addr.142.i = phi ptr [ %incdec.ptr.i, %do.body15.i93.do.body15.i93_crit_edge ], [ %src.addr.048.i, %do.body15.preheader.i ]
  %dest.addr.141.i = phi i32 [ %add19.i, %do.body15.i93.do.body15.i93_crit_edge ], [ %dest.addr.047.i, %do.body15.preheader.i ]
  %i.040.i = phi i16 [ %inc.i90, %do.body15.i93.do.body15.i93_crit_edge ], [ 0, %do.body15.preheader.i ]
  %tdest.039.i = phi ptr [ %add.ptr18.i, %do.body15.i93.do.body15.i93_crit_edge ], [ %add.ptr.i88, %do.body15.preheader.i ]
  %size.addr.138.i = phi i32 [ %sub.i89, %do.body15.i93.do.body15.i93_crit_edge ], [ %size.addr.046.i, %do.body15.preheader.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !546
  call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %src.addr.142.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src.addr.142.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tdest.039.i, i32 %46) #12, !srcloc !374
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.142.i, i32 1
  %add.ptr18.i = getelementptr i8, ptr %tdest.039.i, i32 4
  %add19.i = add i32 %dest.addr.141.i, 4
  %sub.i89 = add i32 %size.addr.138.i, -4
  %inc.i90 = add i16 %i.040.i, 1
  %conv11.i91 = sext i16 %inc.i90 to i32
  %cmp13.i92 = icmp sgt i32 %43, %conv11.i91
  br i1 %cmp13.i92, label %do.body15.i93.do.body15.i93_crit_edge, label %do.body15.i93.while.cond.loopexit.i_crit_edge

do.body15.i93.while.cond.loopexit.i_crit_edge:    ; preds = %do.body15.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.loopexit.i

do.body15.i93.do.body15.i93_crit_edge:            ; preds = %do.body15.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i93

out.sink.split:                                   ; preds = %if.end34.out.sink.split_crit_edge, %if.end16.out.sink.split_crit_edge
  %.sink94 = phi i32 [ %27, %if.end16.out.sink.split_crit_edge ], [ %32, %if.end34.out.sink.split_crit_edge ]
  %name44 = getelementptr i8, ptr %dev, i32 2584
  %47 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name44, align 8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %48, i32 noundef %.sink94, ptr noundef nonnull @.str.168) #15
  br label %out

out:                                              ; preds = %out.sink.split, %while.cond.loopexit.i.out_crit_edge, %ace_clear.exit.out_crit_edge
  %ret.0 = phi i32 [ 0, %ace_clear.exit.out_crit_edge ], [ -22, %out.sink.split ], [ 0, %while.cond.loopexit.i.out_crit_edge ]
  %49 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %50) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end12, %do.end
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ %ret.0, %out ], [ -14, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eeprom_start(ptr noundef %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %LocalCtrl = getelementptr inbounds %struct.ace_regs, ptr %regs, i32 0, i32 2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !547
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 429496) #12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !548
  %3 = or i32 %2, 24576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !549
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %3) #12, !srcloc !374
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #12
  %6 = or i32 %2, 28672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %6) #12, !srcloc !374
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !553
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !554
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #12
  %9 = and i32 %6, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !555
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %9) #12, !srcloc !374
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !557
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #12
  %12 = and i32 %6, -20481
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !558
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %12) #12, !srcloc !374
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !559
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !560
  tail call void @arm_heavy_mb() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eeprom_prep(ptr noundef %regs, i8 noundef zeroext %magic) unnamed_addr #2 align 64 {
for.body.peel.next:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 429496) #12
  %LocalCtrl = getelementptr inbounds %struct.ace_regs, ptr %regs, i32 0, i32 2
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !561
  %2 = and i32 %1, -24577
  %3 = or i32 %2, 8192
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !562
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %3) #12, !srcloc !374
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !563
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !564
  tail call void @arm_heavy_mb() #12
  %6 = and i32 %4, -5242881
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #12
  %9 = and i8 %magic, -128
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 15
  %local.1.peel = or i32 %11, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !565
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %local.1.peel)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %12) #12, !srcloc !374
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !566
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !567
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #12
  %or30.peel = or i32 %local.1.peel, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !568
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or30.peel)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %15) #12, !srcloc !374
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !569
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !570
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !571
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %7) #12, !srcloc !374
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !573
  tail call void @arm_heavy_mb() #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %magic.addr.082.in = phi i8 [ %magic, %for.body.peel.next ], [ %magic.addr.082, %for.body.for.body_crit_edge ]
  %i.081 = phi i16 [ 1, %for.body.peel.next ], [ %inc, %for.body.for.body_crit_edge ]
  %magic.addr.082 = shl i8 %magic.addr.082.in, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #12
  %20 = and i8 %magic.addr.082, -128
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 15
  %local.1 = or i32 %22, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !565
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %local.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %23) #12, !srcloc !374
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !566
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !567
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 429496) #12
  %or30 = or i32 %local.1, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !568
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %or30)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %26) #12, !srcloc !374
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !569
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !570
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !571
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %7) #12, !srcloc !374
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !573
  tail call void @arm_heavy_mb() #12
  %inc = add nuw nsw i16 %i.081, 1
  %cmp = icmp ult i16 %i.081, 7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end, !llvm.loop !574

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeprom_check_ack(ptr noundef %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %LocalCtrl = getelementptr inbounds %struct.ace_regs, ptr %regs, i32 0, i32 2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %1 = and i32 %0, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !577
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %1) #12, !srcloc !374
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !578
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !579
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 858992) #12
  %4 = or i32 %1, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !580
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %4) #12, !srcloc !374
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !581
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !582
  tail call void @arm_heavy_mb() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  %8 = lshr i32 %7, 15
  %.lobit = and i32 %8, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !584
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !585
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !586
  %11 = and i32 %10, -4097
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %11) #12, !srcloc !374
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #12, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !587
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !588
  tail call void @arm_heavy_mb() #12
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 158)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !289, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !302, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !346, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359}
!llvm.module.flags = !{!360, !361, !362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !{ptr @__UNIQUE_ID_author496, !1, !"__UNIQUE_ID_author496", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 400, i32 1}
!2 = !{ptr @__UNIQUE_ID_file497, !3, !"__UNIQUE_ID_file497", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 401, i32 1}
!4 = !{ptr @__UNIQUE_ID_license498, !3, !"__UNIQUE_ID_license498", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description499, !6, !"__UNIQUE_ID_description499", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 402, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmware500, !8, !"__UNIQUE_ID_firmware500", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 406, i32 1}
!9 = !{ptr @__param_link, !10, !"__param_link", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 408, i32 1}
!11 = !{ptr @__UNIQUE_ID_linktype501, !10, !"__UNIQUE_ID_linktype501", i1 false, i1 false}
!12 = !{ptr @__param_trace, !13, !"__param_trace", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 409, i32 1}
!14 = !{ptr @__UNIQUE_ID_tracetype502, !13, !"__UNIQUE_ID_tracetype502", i1 false, i1 false}
!15 = !{ptr @__param_tx_coal_tick, !16, !"__param_tx_coal_tick", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 410, i32 1}
!17 = !{ptr @__UNIQUE_ID_tx_coal_ticktype503, !16, !"__UNIQUE_ID_tx_coal_ticktype503", i1 false, i1 false}
!18 = !{ptr @__param_max_tx_desc, !19, !"__param_max_tx_desc", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 411, i32 1}
!20 = !{ptr @__UNIQUE_ID_max_tx_desctype504, !19, !"__UNIQUE_ID_max_tx_desctype504", i1 false, i1 false}
!21 = !{ptr @__param_rx_coal_tick, !22, !"__param_rx_coal_tick", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 412, i32 1}
!23 = !{ptr @__UNIQUE_ID_rx_coal_ticktype505, !22, !"__UNIQUE_ID_rx_coal_ticktype505", i1 false, i1 false}
!24 = !{ptr @__param_max_rx_desc, !25, !"__param_max_rx_desc", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 413, i32 1}
!26 = !{ptr @__UNIQUE_ID_max_rx_desctype506, !25, !"__UNIQUE_ID_max_rx_desctype506", i1 false, i1 false}
!27 = !{ptr @__param_tx_ratio, !28, !"__param_tx_ratio", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 414, i32 1}
!29 = !{ptr @__UNIQUE_ID_tx_ratiotype507, !28, !"__UNIQUE_ID_tx_ratiotype507", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_link508, !31, !"__UNIQUE_ID_link508", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 415, i32 1}
!32 = !{ptr @__UNIQUE_ID_trace509, !33, !"__UNIQUE_ID_trace509", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 416, i32 1}
!34 = !{ptr @__UNIQUE_ID_tx_coal_tick510, !35, !"__UNIQUE_ID_tx_coal_tick510", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 417, i32 1}
!36 = !{ptr @__UNIQUE_ID_max_tx_desc511, !37, !"__UNIQUE_ID_max_tx_desc511", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 418, i32 1}
!38 = !{ptr @__UNIQUE_ID_rx_coal_tick512, !39, !"__UNIQUE_ID_rx_coal_tick512", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 419, i32 1}
!40 = !{ptr @__UNIQUE_ID_max_rx_desc513, !41, !"__UNIQUE_ID_max_rx_desc513", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 420, i32 1}
!42 = !{ptr @__UNIQUE_ID_tx_ratio514, !43, !"__UNIQUE_ID_tx_ratio514", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 421, i32 1}
!44 = !{ptr @__initcall__kmod_acenic__523_3179_acenic_pci_driver_init6, !45, !"__initcall__kmod_acenic__523_3179_acenic_pci_driver_init6", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3179, i32 1}
!46 = !{ptr @__exitcall_acenic_pci_driver_exit, !45, !"__exitcall_acenic_pci_driver_exit", i1 false, i1 false}
!47 = !{ptr @__param_str_link, !10, !"__param_str_link", i1 false, i1 false}
!48 = !{ptr @__param_arr_link, !10, !"__param_arr_link", i1 false, i1 false}
!49 = !{ptr @link_state, !50, !"link_state", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 391, i32 12}
!51 = !{ptr @__param_str_trace, !13, !"__param_str_trace", i1 false, i1 false}
!52 = !{ptr @__param_arr_trace, !13, !"__param_arr_trace", i1 false, i1 false}
!53 = !{ptr @trace, !54, !"trace", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 392, i32 12}
!55 = !{ptr @__param_str_tx_coal_tick, !16, !"__param_str_tx_coal_tick", i1 false, i1 false}
!56 = !{ptr @__param_arr_tx_coal_tick, !16, !"__param_arr_tx_coal_tick", i1 false, i1 false}
!57 = !{ptr @tx_coal_tick, !58, !"tx_coal_tick", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 393, i32 12}
!59 = !{ptr @__param_str_max_tx_desc, !19, !"__param_str_max_tx_desc", i1 false, i1 false}
!60 = !{ptr @__param_arr_max_tx_desc, !19, !"__param_arr_max_tx_desc", i1 false, i1 false}
!61 = !{ptr @max_tx_desc, !62, !"max_tx_desc", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 395, i32 12}
!63 = !{ptr @__param_str_rx_coal_tick, !22, !"__param_str_rx_coal_tick", i1 false, i1 false}
!64 = !{ptr @__param_arr_rx_coal_tick, !22, !"__param_arr_rx_coal_tick", i1 false, i1 false}
!65 = !{ptr @rx_coal_tick, !66, !"rx_coal_tick", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 394, i32 12}
!67 = !{ptr @__param_str_max_rx_desc, !25, !"__param_str_max_rx_desc", i1 false, i1 false}
!68 = !{ptr @__param_arr_max_rx_desc, !25, !"__param_arr_max_rx_desc", i1 false, i1 false}
!69 = !{ptr @max_rx_desc, !70, !"max_rx_desc", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 396, i32 12}
!71 = !{ptr @__param_str_tx_ratio, !28, !"__param_str_tx_ratio", i1 false, i1 false}
!72 = !{ptr @__param_arr_tx_ratio, !28, !"__param_arr_tx_ratio", i1 false, i1 false}
!73 = !{ptr @tx_ratio, !74, !"tx_ratio", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 397, i32 12}
!75 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @acenic_pci_driver, !77, !"acenic_pci_driver", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 696, i32 26}
!78 = !{ptr @acenic_pci_tbl, !79, !"acenic_pci_tbl", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 130, i32 35}
!80 = !{ptr @acenic_probe_one.boards_found, !81, !"boards_found", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 459, i32 13}
!82 = !{ptr @.str.1, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 484, i32 3}
!84 = !{ptr @.str.2, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @acenic_probe_one._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @acenic_probe_one._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 500, i32 3}
!89 = !{ptr @acenic_probe_one._entry.3, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @acenic_probe_one._entry_ptr.5, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.7, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 523, i32 3}
!93 = !{ptr @acenic_probe_one._entry.6, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @acenic_probe_one._entry_ptr.8, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.10, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 532, i32 4}
!97 = !{ptr @acenic_probe_one._entry.9, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @acenic_probe_one._entry_ptr.11, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.13, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 535, i32 4}
!101 = !{ptr @acenic_probe_one._entry.12, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @acenic_probe_one._entry_ptr.14, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.16, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 540, i32 3}
!105 = !{ptr @acenic_probe_one._entry.15, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @acenic_probe_one._entry_ptr.17, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.19, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 543, i32 3}
!109 = !{ptr @acenic_probe_one._entry.18, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @acenic_probe_one._entry_ptr.20, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.22, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 547, i32 4}
!113 = !{ptr @acenic_probe_one._entry.21, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @acenic_probe_one._entry_ptr.23, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.25, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 553, i32 3}
!117 = !{ptr @acenic_probe_one._entry.24, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @acenic_probe_one._entry_ptr.26, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.28, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 556, i32 3}
!121 = !{ptr @acenic_probe_one._entry.27, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @acenic_probe_one._entry_ptr.29, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 560, i32 2}
!125 = !{ptr @acenic_probe_one._entry.30, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @acenic_probe_one._entry_ptr.32, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 561, i32 2}
!129 = !{ptr @acenic_probe_one._entry.33, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @acenic_probe_one._entry_ptr.35, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 565, i32 3}
!133 = !{ptr @acenic_probe_one._entry.36, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @acenic_probe_one._entry_ptr.38, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 587, i32 3}
!137 = !{ptr @acenic_probe_one._entry.39, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @acenic_probe_one._entry_ptr.41, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @ace_netdev_ops, !140, !"ace_netdev_ops", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 442, i32 36}
!141 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2227, i32 3}
!143 = !{ptr @.str.43, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ace_open._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @ace_open._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.44, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1796, i32 3}
!148 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ace_load_jumbo_rx_ring._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ace_load_jumbo_rx_ring._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.46, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1679, i32 2}
!153 = !{ptr @.str.47, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ace_load_std_rx_ring._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @ace_load_std_rx_ring._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.48, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1732, i32 2}
!158 = !{ptr @.str.49, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ace_load_mini_rx_ring._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ace_load_mini_rx_ring._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.50, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2532, i32 2}
!163 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ace_start_xmit._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ace_start_xmit._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.52, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2547, i32 4}
!168 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @ace_change_mtu._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @ace_change_mtu._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1550, i32 3}
!173 = !{ptr @.str.55, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @ace_watchdog._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @ace_watchdog._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.57, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1554, i32 3}
!178 = !{ptr @ace_watchdog._entry.56, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @ace_watchdog._entry_ptr.58, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @ace_ethtool_ops, !181, !"ace_ethtool_ops", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 434, i32 33}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2695, i32 52}
!184 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2672, i32 3}
!186 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ace_set_link_ksettings._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @ace_set_link_ksettings._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @version, !190, !"version", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 424, i32 19}
!191 = !{ptr @.str.62, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 925, i32 3}
!193 = !{ptr @.str.63, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ace_init._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @ace_init._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.65, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 941, i32 3}
!198 = !{ptr @ace_init._entry.64, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ace_init._entry_ptr.66, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.68, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 999, i32 2}
!202 = !{ptr @ace_init._entry.67, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @ace_init._entry_ptr.69, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1011, i32 3}
!206 = !{ptr @ace_init._entry.70, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @ace_init._entry_ptr.72, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1014, i32 4}
!210 = !{ptr @ace_init._entry.73, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @ace_init._entry_ptr.75, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.77, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1016, i32 4}
!214 = !{ptr @ace_init._entry.76, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @ace_init._entry_ptr.78, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1023, i32 2}
!218 = !{ptr @ace_init._entry.79, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @ace_init._entry_ptr.81, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.83, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1051, i32 5}
!222 = !{ptr @ace_init._entry.82, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ace_init._entry_ptr.84, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.86, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1055, i32 4}
!226 = !{ptr @ace_init._entry.85, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @ace_init._entry_ptr.87, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.89, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1160, i32 3}
!230 = !{ptr @ace_init._entry.88, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @ace_init._entry_ptr.90, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.92, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1335, i32 3}
!234 = !{ptr @ace_init._entry.91, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ace_init._entry_ptr.93, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.95, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1375, i32 4}
!238 = !{ptr @ace_init._entry.94, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @ace_init._entry_ptr.96, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1388, i32 4}
!242 = !{ptr @ace_init._entry.97, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @ace_init._entry_ptr.99, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.101, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1396, i32 4}
!246 = !{ptr @ace_init._entry.100, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @ace_init._entry_ptr.102, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1401, i32 4}
!250 = !{ptr @ace_init._entry.103, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ace_init._entry_ptr.105, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.107, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1451, i32 3}
!254 = !{ptr @ace_init._entry.106, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ace_init._entry_ptr.108, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1483, i32 3}
!258 = !{ptr @ace_init._entry.109, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @ace_init._entry_ptr.111, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.113, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1489, i32 4}
!262 = !{ptr @ace_init._entry.112, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @ace_init._entry_ptr.114, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.115, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3090, i32 3}
!266 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @read_eeprom_byte._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @read_eeprom_byte._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.118, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3098, i32 3}
!271 = !{ptr @read_eeprom_byte._entry.117, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @read_eeprom_byte._entry_ptr.119, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3107, i32 3}
!275 = !{ptr @read_eeprom_byte._entry.120, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @read_eeprom_byte._entry_ptr.122, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3117, i32 3}
!279 = !{ptr @read_eeprom_byte._entry.123, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @read_eeprom_byte._entry_ptr.125, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.127, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 3174, i32 2}
!283 = !{ptr @read_eeprom_byte._entry.126, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @read_eeprom_byte._entry_ptr.128, !282, !"_entry_ptr", i1 false, i1 false}
!285 = distinct !{null, !286, !"dis_pci_mem_inval", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 398, i32 12}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1965, i32 4}
!289 = !{ptr @.str.130, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @ace_rx_int._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @ace_rx_int._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1816, i32 4}
!294 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @ace_handle_event._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @ace_handle_event._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1830, i32 5}
!299 = !{ptr @ace_handle_event._entry.133, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @ace_handle_event._entry_ptr.135, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.140, !298, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1839, i32 5}
!308 = !{ptr @ace_handle_event._entry.141, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @ace_handle_event._entry_ptr.143, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.145, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1843, i32 5}
!312 = !{ptr @ace_handle_event._entry.144, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @ace_handle_event._entry_ptr.146, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1847, i32 5}
!316 = !{ptr @ace_handle_event._entry.147, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @ace_handle_event._entry_ptr.149, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.151, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1855, i32 5}
!320 = !{ptr @ace_handle_event._entry.150, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @ace_handle_event._entry_ptr.152, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1859, i32 5}
!324 = !{ptr @ace_handle_event._entry.153, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @ace_handle_event._entry_ptr.155, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.157, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1863, i32 5}
!328 = !{ptr @ace_handle_event._entry.156, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @ace_handle_event._entry_ptr.158, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1867, i32 5}
!332 = !{ptr @ace_handle_event._entry.159, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @ace_handle_event._entry_ptr.161, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.163, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1896, i32 4}
!336 = !{ptr @ace_handle_event._entry.162, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @ace_handle_event._entry_ptr.164, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.166, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 1902, i32 4}
!340 = !{ptr @ace_handle_event._entry.165, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @ace_handle_event._entry_ptr.167, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2864, i32 24}
!344 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2872, i32 3}
!346 = !{ptr @.str.170, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @ace_load_firmware._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @ace_load_firmware._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.172, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2882, i32 3}
!351 = !{ptr @ace_load_firmware._entry.171, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @ace_load_firmware._entry_ptr.173, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.175, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2900, i32 3}
!355 = !{ptr @ace_load_firmware._entry.174, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @ace_load_firmware._entry_ptr.176, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @ace_load_firmware._entry.177, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/alteon/acenic.c", i32 2908, i32 3}
!359 = !{ptr @ace_load_firmware._entry_ptr.178, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 1, !"min_enum_size", i32 4}
!362 = !{i32 8, !"branch-target-enforcement", i32 0}
!363 = !{i32 8, !"sign-return-address", i32 0}
!364 = !{i32 8, !"sign-return-address-all", i32 0}
!365 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 2}
!368 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!369 = !{i64 2157978673}
!370 = !{i64 5065049}
!371 = !{i64 2157993567}
!372 = !{i64 2157997879}
!373 = !{i64 2157998788}
!374 = !{i64 5064631}
!375 = !{i64 2157999769}
!376 = !{i64 2158000682}
!377 = !{i64 2158000914}
!378 = !{i64 2158001552}
!379 = !{!"auto-init"}
!380 = !{i64 2158005266}
!381 = !{i64 2158005968}
!382 = !{i64 2158006773}
!383 = !{i64 2158007535}
!384 = !{i64 2158008485}
!385 = !{i64 2158009394}
!386 = !{i64 2158009893}
!387 = !{i64 2158010100}
!388 = !{i64 2158010742}
!389 = !{i64 2158013377}
!390 = !{i64 2158014290}
!391 = !{i64 2158014793}
!392 = !{i64 2158015014}
!393 = !{i64 2158015419}
!394 = !{i64 2158017528}
!395 = !{i64 2158018308}
!396 = !{i64 2158018526}
!397 = !{i64 2158018917}
!398 = !{i64 2158025564}
!399 = !{i64 2158033197}
!400 = !{i64 2158035537}
!401 = !{i64 2158035971}
!402 = !{i64 2157928868}
!403 = !{i64 2158036348}
!404 = !{i64 2158036556}
!405 = !{i64 2158036935}
!406 = !{i64 2158037311}
!407 = !{i64 2158037684}
!408 = !{i64 2158038250}
!409 = !{i64 2158039156}
!410 = !{i64 2158039555}
!411 = !{i64 2158039943}
!412 = !{i64 2158040316}
!413 = !{i64 2158040736}
!414 = !{i64 2158041160}
!415 = !{i64 2158043344}
!416 = !{i64 2158043820}
!417 = !{i64 2158044294}
!418 = !{i64 2158044770}
!419 = !{i64 2158045231}
!420 = !{i64 2158045672}
!421 = !{i64 2158052623}
!422 = !{i64 2158053012}
!423 = !{i64 2158053410}
!424 = !{i64 2158053829}
!425 = !{i64 2158054141}
!426 = !{i64 2158054351}
!427 = !{i64 2158054731}
!428 = !{i64 2158055868}
!429 = !{i64 2158056801}
!430 = !{i64 2158057312}
!431 = !{i64 2158057971}
!432 = !{i64 2158057813}
!433 = !{i64 2158060379}
!434 = !{i64 2158061288}
!435 = !{i64 2158061787}
!436 = !{i64 2158062743}
!437 = !{i64 2158063656}
!438 = !{i64 2158063888}
!439 = !{i64 2158064518}
!440 = !{i64 2158113572}
!441 = !{i64 2158004198}
!442 = !{i64 2158004423}
!443 = !{i64 2158004842}
!444 = !{i64 828524, i64 828585}
!445 = !{i64 2157931062}
!446 = !{i64 2157931963}
!447 = !{i64 2157933504}
!448 = !{i64 2157934409}
!449 = !{i64 831256}
!450 = !{!"branch_weights", i32 1, i32 2000}
!451 = !{i64 831541}
!452 = !{i64 2158120966}
!453 = !{i64 2157929248}
!454 = !{i64 2157929572}
!455 = !{i64 2158121592}
!456 = !{i64 2158121821}
!457 = !{i64 2158121663}
!458 = !{i64 2158135777}
!459 = !{i64 2158136258}
!460 = !{i64 2158123524}
!461 = !{i64 2158073992}
!462 = !{i64 2158137304}
!463 = !{i64 2158137798}
!464 = !{i64 2158138280}
!465 = !{i64 2148424824, i64 2148424850, i64 2148424879, i64 2148424913, i64 2148424944, i64 2148424967}
!466 = !{i64 2158085190}
!467 = !{i64 2158085513}
!468 = !{i64 2158078524}
!469 = !{i64 2158078845}
!470 = !{i64 2158081847}
!471 = !{i64 2158082169}
!472 = !{i64 2158068230}
!473 = !{i64 2158068629}
!474 = !{i64 2158069027}
!475 = !{i64 2158069426}
!476 = !{i64 2158069815}
!477 = !{i64 2158070206}
!478 = !{i64 2158070602}
!479 = !{i64 2158070998}
!480 = !{i64 2158071392}
!481 = !{i64 2158071778}
!482 = !{i64 2158131324}
!483 = !{i64 2158131834}
!484 = !{i64 2158132395}
!485 = !{i64 2158132905}
!486 = !{i64 2158134818}
!487 = !{i64 2158135213}
!488 = !{i64 2158135541}
!489 = !{i64 2158209856}
!490 = !{i64 2158210080}
!491 = !{i64 2158210742}
!492 = !{i64 2158211423}
!493 = !{i64 2158211647}
!494 = !{i64 2158212309}
!495 = !{i64 2158212452}
!496 = !{i64 2158213472}
!497 = !{i64 2158214162}
!498 = !{i64 2158214644}
!499 = !{i64 2158214868}
!500 = !{i64 2158215530}
!501 = !{i64 2158216211}
!502 = !{i64 2158216435}
!503 = !{i64 2158217097}
!504 = !{i64 2158217240}
!505 = !{i64 2158218002}
!506 = !{i64 2158218664}
!507 = !{i64 2158218807}
!508 = !{i64 2158220303}
!509 = !{i64 2158221216}
!510 = !{i64 2158221721}
!511 = !{i64 2158223219}
!512 = !{i64 2158224136}
!513 = !{i64 2158224643}
!514 = !{i64 2158224786}
!515 = !{i64 2158192818}
!516 = !{i64 2158193042}
!517 = !{i64 2158193704}
!518 = !{i64 2158193847}
!519 = !{i64 2158194609}
!520 = !{i64 2158195271}
!521 = !{i64 2158195414}
!522 = !{i64 2158196176}
!523 = !{i64 2158196838}
!524 = !{i64 2158196981}
!525 = !{i64 2158197743}
!526 = !{i64 2158198405}
!527 = !{i64 2158198548}
!528 = !{i64 2158199310}
!529 = !{i64 2158199633}
!530 = !{i64 2158109537}
!531 = !{i64 2158109749}
!532 = !{i64 2158110379}
!533 = !{i64 2158105911}
!534 = !{i64 2148427289, i64 2148427315, i64 2148427344, i64 2148427378, i64 2148427409, i64 2148427432}
!535 = !{i64 2158109059}
!536 = !{i64 2158111005}
!537 = !{i64 2158088918}
!538 = !{i64 2158089439}
!539 = !{i64 2158102337}
!540 = !{i64 2158102662}
!541 = !{i64 2158111218}
!542 = !{i64 2158163979}
!543 = !{i64 2158162913}
!544 = !{i64 2158163342}
!545 = !{i64 2158150261}
!546 = !{i64 2158150718}
!547 = !{i64 2158170947}
!548 = !{i64 2158171967}
!549 = !{i64 2158172200}
!550 = !{i64 2158172862}
!551 = !{i64 2158173005}
!552 = !{i64 2158173767}
!553 = !{i64 2158174429}
!554 = !{i64 2158174572}
!555 = !{i64 2158175334}
!556 = !{i64 2158175996}
!557 = !{i64 2158176139}
!558 = !{i64 2158176901}
!559 = !{i64 2158177563}
!560 = !{i64 2158177706}
!561 = !{i64 2158178726}
!562 = !{i64 2158178959}
!563 = !{i64 2158179621}
!564 = !{i64 2158179764}
!565 = !{i64 2158180535}
!566 = !{i64 2158181197}
!567 = !{i64 2158181340}
!568 = !{i64 2158182102}
!569 = !{i64 2158182764}
!570 = !{i64 2158182907}
!571 = !{i64 2158183678}
!572 = !{i64 2158184340}
!573 = !{i64 2158184483}
!574 = distinct !{!574, !575}
!575 = !{!"llvm.loop.peeled.count", i32 1}
!576 = !{i64 2158184965}
!577 = !{i64 2158185189}
!578 = !{i64 2158185851}
!579 = !{i64 2158185994}
!580 = !{i64 2158186756}
!581 = !{i64 2158187418}
!582 = !{i64 2158187561}
!583 = !{i64 2158188581}
!584 = !{i64 2158189271}
!585 = !{i64 2158190231}
!586 = !{i64 2158191148}
!587 = !{i64 2158191655}
!588 = !{i64 2158191798}
