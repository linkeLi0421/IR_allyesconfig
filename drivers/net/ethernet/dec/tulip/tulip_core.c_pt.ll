; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/tulip_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/tulip_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.tulip_chip_table = type { ptr, i32, i32, i32, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.tulip_rx_desc = type { i32, i32, i32, i32 }
%struct.mediatable = type { i16, i8, i8, i8, i32, i32, [0 x %struct.medialeaf] }
%struct.medialeaf = type { i8, i8, ptr }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
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
%struct.tulip_tx_desc = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10baseT\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10base2\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUI\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100baseTx\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"10baseT-FDX\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"100baseTx-FDX\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100baseT4\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100baseFx\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"100baseFx-FDX\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MII 10baseT\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MII 10baseT-FDX\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MII\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"10baseT(forced)\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MII 100baseTx\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MII 100baseTx-FDX\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MII 100baseT4\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MII 100baseFx-HDX\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MII 100baseFx-FDX\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Home-PNA 1Mbps\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Invalid-19\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Transceiver reset\00", [46 x i8] zeroinitializer }, align 32
@medianame = dso_local constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.21], [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author342 = internal constant [35 x i8] c"tulip.author=The Linux Kernel Team\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [54 x i8] c"tulip.description=Digital 21*4* Tulip ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [48 x i8] c"tulip.file=drivers/net/ethernet/dec/tulip/tulip\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [18 x i8] c"tulip.license=GPL\00", section ".modinfo", align 1
@__param_str_tulip_debug = internal constant [18 x i8] c"tulip.tulip_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tulip_debug = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tulip_debug = internal constant %struct.kernel_param { ptr @__param_str_tulip_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tulip_debug } }, section "__param", align 4
@__UNIQUE_ID_tulip_debugtype346 = internal constant [31 x i8] c"tulip.parmtype=tulip_debug:int\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [25 x i8] c"tulip.max_interrupt_work\00", align 1
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 25, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype347 = internal constant [38 x i8] c"tulip.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [19 x i8] c"tulip.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } { i32 1518, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype348 = internal constant [32 x i8] c"tulip.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_csr0 = internal constant [11 x i8] c"tulip.csr0\00", align 1
@csr0 = internal global { i32, [28 x i8] } { i32 27281408, [28 x i8] zeroinitializer }, align 32
@__param_csr0 = internal constant %struct.kernel_param { ptr @__param_str_csr0, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @csr0 } }, section "__param", align 4
@__UNIQUE_ID_csr0type349 = internal constant [24 x i8] c"tulip.parmtype=csr0:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [14 x i8] c"tulip.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype350 = internal constant [36 x i8] c"tulip.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [18 x i8] c"tulip.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype351 = internal constant [40 x i8] c"tulip.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Digital DS21140 Tulip\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital DS21142/43 Tulip\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Lite-On 82c168 PNIC\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Macronix 98713 PMAC\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Macronix 98715 PMAC\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Macronix 98725 PMAC\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASIX AX88140\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lite-On PNIC-II\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADMtek Comet\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compex 9881 PMAC\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Intel DS21145 Tulip\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Conexant LANfinity\00", [45 x i8] zeroinitializer }, align 32
@tulip_tbl = dso_local constant { [15 x %struct.tulip_chip_table], [88 x i8] } { [15 x %struct.tulip_chip_table] [%struct.tulip_chip_table zeroinitializer, %struct.tulip_chip_table zeroinitializer, %struct.tulip_chip_table { ptr @.str.22, i32 128, i32 125935, i32 4103, ptr @tulip_timer, ptr @tulip_media_task }, %struct.tulip_chip_table { ptr @.str.23, i32 128, i32 134347775, i32 4443, ptr @tulip_timer, ptr @t21142_media_task }, %struct.tulip_chip_table { ptr @.str.24, i32 256, i32 130031, i32 129, ptr @pnic_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.25, i32 128, i32 125935, i32 7, ptr @mxic_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.26, i32 256, i32 125935, i32 2, ptr @mxic_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.27, i32 256, i32 125935, i32 2, ptr @mxic_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.28, i32 128, i32 130047, i32 551, ptr @tulip_timer, ptr @tulip_media_task }, %struct.tulip_chip_table { ptr @.str.29, i32 256, i32 134347775, i32 5185, ptr @pnic2_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.30, i32 256, i32 109551, i32 2081, ptr @comet_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.31, i32 128, i32 125935, i32 7, ptr @mxic_timer, ptr null }, %struct.tulip_chip_table { ptr @.str.32, i32 128, i32 134347775, i32 4187, ptr @tulip_timer, ptr @tulip_media_task }, %struct.tulip_chip_table zeroinitializer, %struct.tulip_chip_table { ptr @.str.33, i32 256, i32 125935, i32 17, ptr @tulip_timer, ptr @tulip_media_task }], [88 x i8] zeroinitializer }, align 32
@tulip_media_cap = dso_local constant { <{ [18 x i8], [14 x i8] }>, [32 x i8] } { <{ [18 x i8], [14 x i8] }> <{ [18 x i8] c"\00\00\00\10\03\13\10\18\1B\04\07\05\00\14\17\14\1C\1F", [14 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@tulip_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.34, ptr @tulip_pci_tbl, ptr @tulip_init_one, ptr @tulip_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tulip_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_tulip__357_1962_tulip_init6 = internal global ptr @tulip_init, section ".initcall6.init", align 4
@__exitcall_tulip_cleanup = internal global ptr @tulip_cleanup, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@tulip_pci_tbl = internal constant { [35 x %struct.pci_device_id], [256 x i8] } { [35 x %struct.pci_device_id] [%struct.pci_device_id { i32 4113, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4113, i32 25, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4525, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4313, i32 1298, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4313, i32 1329, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4699, i32 5120, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4525, i32 49429, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4887, i32 2433, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4887, i32 2437, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4887, i32 6533, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4887, i32 38161, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5073, i32 43778, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5073, i32 43779, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5073, i32 43784, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4170, i32 2433, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4170, i32 10100, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4697, i32 41248, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4598, i32 39041, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 57, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4371, i32 4630, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4371, i32 4631, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4371, i32 38161, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4486, i32 5441, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4486, i32 5473, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4486, i32 5521, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5361, i32 6147, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5670, i32 33808, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5943, i32 43785, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5943, i32 43784, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 6067, i32 43784, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4279, i32 37632, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5354, i32 43784, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5140, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 5140, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@tulip_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tulip_suspend, ptr @tulip_resume, ptr @tulip_suspend, ptr @tulip_resume, ptr @tulip_suspend, ptr @tulip_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tulip_init_one.last_phys_addr = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\00Linux", [26 x i8] zeroinitializer }, align 32
@tulip_init_one.board_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@tulip_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.37, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013tulip: skipping LMC card\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tulip_init_one\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/dec/tulip/tulip_core.c\00", [52 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr = internal global ptr @tulip_init_one._entry, section ".printk_index", align 4
@tulip_init_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.37, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tulip: skipping SBE T3E3 port\0A\00", [63 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.40 = internal global ptr @tulip_init_one._entry.38, section ".printk_index", align 4
@early_486_chipsets = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 1155, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 1174, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tulip_init_one._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.37, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013tulip: Cannot enable tulip board #%d, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.43 = internal global ptr @tulip_init_one._entry.41, section ".printk_index", align 4
@tulip_init_one._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.37, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013tulip: %s: I/O region (0x%llx@0x%llx) too small, aborting\0A\00", [35 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.46 = internal global ptr @tulip_init_one._entry.44, section ".printk_index", align 4
@tulip_init_one._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.37, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016tulip: %s: Enabled WOL support for AN983B\0A\00", [51 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.49 = internal global ptr @tulip_init_one._entry.47, section ".printk_index", align 4
@tulip_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tp->lock\00", [22 x i8] zeroinitializer }, align 32
@tulip_init_one.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&tp->mii_lock\00", [18 x i8] zeroinitializer }, align 32
@tulip_init_one.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&tp->timer)\00", [19 x i8] zeroinitializer }, align 32
@tulip_init_one.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&tp->media_work)\00", [61 x i8] zeroinitializer }, align 32
@tulip_init_one._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.36, ptr @.str.37, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016tulip: tulip%d: Transceiver selection forced to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.59 = internal global ptr @tulip_init_one._entry.57, section ".printk_index", align 4
@tulip_init_one.media2advert = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 32, i16 64, i16 992, i16 96, i16 128, i16 256, i16 512], [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tulip%d\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@tulip_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @tulip_open, ptr @tulip_close, ptr @tulip_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @private_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tulip_tx_timeout, ptr null, ptr null, ptr null, ptr @tulip_get_stats, ptr null, ptr null, ptr @poll_tulip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @tulip_get_drvinfo, ptr null, ptr null, ptr @tulip_ethtool_get_wol, ptr @tulip_ethtool_set_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@tulip_init_one._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.36, ptr @.str.37, i32 1710, ptr @.str.64, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s rev %d at MMIO %#llx,%s %pM, IRQ %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tulip_init_one._entry_ptr.66 = internal global ptr @tulip_init_one._entry.62, section ".printk_index", align 4
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" EEPROM not present,\00", [43 x i8] zeroinitializer }, align 32
@tulip_mwi_config.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.68, ptr @.str.37, ptr @.str.69, i8 1, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tulip_mwi_config\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tulip_mwi_config()\0A\00", [44 x i8] zeroinitializer }, align 32
@tulip_mwi_config.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.68, ptr @.str.37, ptr @.str.70, i8 1, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MWI config cacheline=%d, csr0=%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.71, ptr @.str.72, ptr @.str.73, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@tulip_up.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.76, ptr @.str.37, ptr @.str.77, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tulip_up\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tulip_up(), irq==%d\0A\00", [43 x i8] zeroinitializer }, align 32
@tulip_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.37, i32 382, ptr @.str.64, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using user-specified media %s\0A\00", [33 x i8] zeroinitializer }, align 32
@tulip_up._entry_ptr = internal global ptr @tulip_up._entry, section ".printk_index", align 4
@tulip_up._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.76, ptr @.str.37, i32 392, ptr @.str.64, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using EEPROM-set media %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tulip_up._entry_ptr.81 = internal global ptr @tulip_up._entry.79, section ".printk_index", align 4
@tulip_up._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.76, ptr @.str.37, i32 422, ptr @.str.64, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using MII transceiver %d, status %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@tulip_up._entry_ptr.84 = internal global ptr @tulip_up._entry.82, section ".printk_index", align 4
@tulip_up.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.76, ptr @.str.37, ptr @.str.85, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Done tulip_up(), CSR0 %08x, CSR5 %08x CSR6 %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tulip_up.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&tp->oom_timer)\00", [47 x i8] zeroinitializer }, align 32
@tulip_close.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.87, ptr @.str.37, ptr @.str.88, i8 0, i8 -49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tulip_close\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Shutting down ethercard, status was %02x\0A\00", [54 x i8] zeroinitializer }, align 32
@tulip_down.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@set_rx_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.37, i32 1096, ptr @.str.64, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Added filter for %pM  %08x bit %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_rx_mode\00", [20 x i8] zeroinitializer }, align 32
@set_rx_mode._entry_ptr = internal global ptr @set_rx_mode._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@tulip_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.37, i32 538, ptr @.str.93, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Transmit timeout using MII device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tulip_tx_timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tulip_tx_timeout._entry_ptr = internal global ptr @tulip_tx_timeout._entry, section ".printk_index", align 4
@tulip_tx_timeout._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.37, i32 546, ptr @.str.93, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"21140 transmit timed out, status %08x, SIA %08x %08x %08x %08x, resetting...\0A\00", [50 x i8] zeroinitializer }, align 32
@tulip_tx_timeout._entry_ptr.96 = internal global ptr @tulip_tx_timeout._entry.94, section ".printk_index", align 4
@tulip_tx_timeout._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.92, ptr @.str.37, i32 556, ptr @.str.93, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"PNIC2 transmit timed out, status %08x, CSR6/7 %08x / %08x CSR12 %08x, resetting...\0A\00", [44 x i8] zeroinitializer }, align 32
@tulip_tx_timeout._entry_ptr.99 = internal global ptr @tulip_tx_timeout._entry.97, section ".printk_index", align 4
@tulip_tx_timeout._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.92, ptr @.str.37, i32 560, ptr @.str.93, ptr @.str.65 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Transmit timed out, status %08x, CSR12 %08x, resetting...\0A\00", [37 x i8] zeroinitializer }, align 32
@tulip_tx_timeout._entry_ptr.102 = internal global ptr @tulip_tx_timeout._entry.100, section ".printk_index", align 4
@tulip_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.37, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013tulip: request_irq failed in resume\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tulip_resume\00", [19 x i8] zeroinitializer }, align 32
@tulip_resume._entry_ptr = internal global ptr @tulip_resume._entry, section ".printk_index", align 4
@tulip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.37, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014tulip: tulip: unknown CPU architecture, using default csr0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tulip_init\00", [21 x i8] zeroinitializer }, align 32
@tulip_init._entry_ptr = internal global ptr @tulip_init._entry, section ".printk_index", align 4
@tulip_rx_copybreak = external dso_local local_unnamed_addr global i32, align 4
@tulip_max_interrupt_work = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4470, i64 4982]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 16, i64 9, i64 2305, i64 2306]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 160, i64 192]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1530]
@__sancov_gen_cov_switch_values.111 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 5, i64 9, i64 11, i64 13]
@__sancov_gen_cov_switch_values.118 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14]
@__sancov_gen_cov_switch_values.119 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 10]
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 46, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 46, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 46, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 46, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 47, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 47, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 47, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 47, i32 47 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 48, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 48, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 48, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 48, i32 53 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 49, i32 59 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 50, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 50, i32 23 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 50, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 50, i32 62 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 51, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 51, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"medianame\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 45, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"tulip_debug\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 110, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 36, i32 21 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 58, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [5 x i8] c"csr0\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 87, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 135, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 140, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 145, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 149, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 153, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 157, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 161, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 166, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 170, i32 5 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 174, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 178, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 192, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant [10 x i8] c"tulip_tbl\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 130, i32 31 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"tulip_media_cap\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 244, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"tulip_driver\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1930, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 41, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 40, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1931, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"tulip_pci_tbl\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 198, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"tulip_pm_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1928, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"last_phys_addr\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1293, i32 23 }
@___asan_gen_.264 = private unnamed_addr constant [10 x i8] c"board_idx\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1304, i32 13 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1319, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1325, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"early_486_chipsets\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1283, i32 35 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1394, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1407, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1452, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1460, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1461, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1462, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1464, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1645, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [13 x i8] c"media2advert\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1655, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1663, i32 22 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1665, i32 21 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"tulip_netdev_ops\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1268, i32 36 }
@___asan_gen_.348 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 890, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1701, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1189, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1251, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 546, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 326, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 319, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 380, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 390, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 419, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 486, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 497, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 829, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 773, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1092, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 537, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 542, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 551, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 558, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1862, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.487 = private constant [47 x i8] c"../drivers/net/ethernet/dec/tulip/tulip_core.c\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 1942, i32 3 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_csr0type349, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_full_duplextype351, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_max_interrupt_worktype347, ptr @__UNIQUE_ID_optionstype350, ptr @__UNIQUE_ID_rx_copybreaktype348, ptr @__UNIQUE_ID_tulip_debugtype346, ptr @__exitcall_tulip_cleanup, ptr @__initcall__kmod_tulip__357_1962_tulip_init6, ptr @__param_csr0, ptr @__param_full_duplex, ptr @__param_max_interrupt_work, ptr @__param_options, ptr @__param_rx_copybreak, ptr @__param_tulip_debug, ptr @set_rx_mode._entry, ptr @set_rx_mode._entry_ptr, ptr @tulip_cleanup, ptr @tulip_init._entry, ptr @tulip_init._entry_ptr, ptr @tulip_init_one._entry, ptr @tulip_init_one._entry.38, ptr @tulip_init_one._entry.41, ptr @tulip_init_one._entry.44, ptr @tulip_init_one._entry.47, ptr @tulip_init_one._entry.57, ptr @tulip_init_one._entry.62, ptr @tulip_init_one._entry_ptr, ptr @tulip_init_one._entry_ptr.40, ptr @tulip_init_one._entry_ptr.43, ptr @tulip_init_one._entry_ptr.46, ptr @tulip_init_one._entry_ptr.49, ptr @tulip_init_one._entry_ptr.59, ptr @tulip_init_one._entry_ptr.66, ptr @tulip_resume._entry, ptr @tulip_resume._entry_ptr, ptr @tulip_tx_timeout._entry, ptr @tulip_tx_timeout._entry.100, ptr @tulip_tx_timeout._entry.94, ptr @tulip_tx_timeout._entry.97, ptr @tulip_tx_timeout._entry_ptr, ptr @tulip_tx_timeout._entry_ptr.102, ptr @tulip_tx_timeout._entry_ptr.96, ptr @tulip_tx_timeout._entry_ptr.99, ptr @tulip_up._entry, ptr @tulip_up._entry.79, ptr @tulip_up._entry.82, ptr @tulip_up._entry_ptr, ptr @tulip_up._entry_ptr.81, ptr @tulip_up._entry_ptr.84, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @medianame, ptr @tulip_debug, ptr @max_interrupt_work, ptr @rx_copybreak, ptr @csr0, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @tulip_tbl, ptr @tulip_media_cap, ptr @tulip_driver, ptr @options, ptr @full_duplex, ptr @.str.34, ptr @tulip_pci_tbl, ptr @tulip_pm_ops, ptr @tulip_init_one.last_phys_addr, ptr @tulip_init_one.board_idx, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @early_486_chipsets, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @tulip_init_one.__key, ptr @.str.50, ptr @tulip_init_one.__key.51, ptr @.str.52, ptr @tulip_init_one.__key.53, ptr @.str.54, ptr @tulip_init_one.__key.55, ptr @.str.56, ptr @.str.58, ptr @tulip_init_one.media2advert, ptr @.str.60, ptr @.str.61, ptr @tulip_netdev_ops, ptr @ops, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @tulip_up.__key, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @tulip_down.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @medianame to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csr0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_tbl to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_media_cap to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_pci_tbl to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.last_phys_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.board_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_486_chipsets to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one.media2advert to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init_one._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_up._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_up._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_up.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_down.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rx_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_tx_timeout._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_tx_timeout._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_tx_timeout._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tulip_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 864
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
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
  %media_work = getelementptr i8, ptr %t, i32 820
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %media_work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_media_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @t21142_media_task(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxic_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic2_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comet_timer(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tulip_cleanup() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @tulip_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csr0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #15
  store i32 10504192, ptr @csr0, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @rx_copybreak, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tulip_rx_copybreak to i32))
  store i32 %1, ptr @tulip_rx_copybreak, align 4
  %2 = load i32, ptr @max_interrupt_work, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tulip_max_interrupt_work to i32))
  store i32 %2, ptr @tulip_max_interrupt_work, align 4
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @tulip_driver, ptr noundef null, ptr noundef nonnull @.str.34) #12
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 4
  %sig = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %9 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %10 = load i32, ptr @tulip_init_one.board_idx, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @tulip_init_one.board_idx, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %11 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_vendor, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %entry.if.end25_crit_edge [
    i16 4982, label %do.end
    i16 4470, label %land.lhs.true
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %14 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_device, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %15, label %land.lhs.true.if.end25_crit_edge [
    i16 9, label %land.lhs.true.do.end22_crit_edge
    i16 2305, label %land.lhs.true.do.end22_crit_edge987
    i16 2306, label %land.lhs.true.do.end22_crit_edge988
  ]

land.lhs.true.do.end22_crit_edge988:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true.do.end22_crit_edge987:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end22:                                         ; preds = %land.lhs.true.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge987, %land.lhs.true.do.end22_crit_edge988
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  %call26 = tail call i32 @pci_dev_present(ptr noundef nonnull @early_486_chipsets) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  store i32 10504192, ptr @csr0, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %17 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %1, label %if.end28.if.end41_crit_edge [
    i32 8, label %if.then31
    i32 4, label %if.then39
  ]

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then31:                                        ; preds = %if.end28
  %18 = load i32, ptr @csr0, align 4
  %and = and i32 %18, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp32 = icmp eq i32 %and, 0
  br i1 %cmp32, label %if.then34, label %if.then31.if.end41_crit_edge

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %18, 8192
  br label %if.end41.sink.split

if.then39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %19 = load i32, ptr @csr0, align 4
  %and40 = and i32 %19, 983039
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then39, %if.then34
  %or.sink = phi i32 [ %or, %if.then34 ], [ %and40, %if.then39 ]
  %cmp37934.ph = phi i1 [ false, %if.then34 ], [ true, %if.then39 ]
  store i32 %or.sink, ptr @csr0, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.then31.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  %cmp37934 = phi i1 [ false, %if.then31.if.end41_crit_edge ], [ false, %if.end28.if.end41_crit_edge ], [ %cmp37934.ph, %if.end41.sink.split ]
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %20 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4738, i16 %21)
  %cmp.i = icmp eq i16 %21, 4738
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.i:                                  ; preds = %if.end41
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28414, i16 %23)
  %cmp3.i = icmp eq i16 %23, -28414
  br i1 %cmp3.i, label %if.then44, label %land.lhs.true.i.if.end46_crit_edge

land.lhs.true.i.if.end46_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = load i32, ptr @csr0, align 4
  %and45 = and i32 %24, -32571648
  store i32 %and45, ptr @csr0, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.i.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %call47 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %25 = load i32, ptr @tulip_init_one.board_idx, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %25) #15
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %irq56 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %26 = ptrtoint ptr %irq56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq56, align 4
  %call57 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2608, i32 noundef 1, i32 noundef 1) #12
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev62 = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev61, ptr %parent, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %29 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp64 = icmp eq i32 %30, 0
  br i1 %cmp64, label %if.end60.cond.end_crit_edge, label %cond.false

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resource, align 8
  %sub = add i32 %30, 1
  %add = sub i32 %sub, %32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end60.cond.end_crit_edge ]
  %io_size = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %1, i32 1
  %33 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %34)
  %cmp72 = icmp ult i32 %cond, %34
  br i1 %cmp72, label %do.end77, label %if.end103

do.end77:                                         ; preds = %cond.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end77.pci_name.exit_crit_edge

do.end77.pci_name.exit_crit_edge:                 ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev61, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end77.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %do.end77.pci_name.exit_crit_edge ]
  br i1 %cmp64, label %pci_name.exit.cond.end95_crit_edge, label %cond.false86

pci_name.exit.cond.end95_crit_edge:               ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end95

cond.false86:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %resource, align 8
  %sub93 = add i32 %30, 1
  %add94 = sub i32 %sub93, %40
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false86, %pci_name.exit.cond.end95_crit_edge
  %cond96 = phi i32 [ %add94, %cond.false86 ], [ 0, %pci_name.exit.cond.end95_crit_edge ]
  %conv97 = zext i32 %cond96 to i64
  %41 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %resource, align 8
  %conv101 = zext i32 %42 to i64
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i, i64 noundef %conv97, i64 noundef %conv101) #15
  br label %err_out_free_netdev

if.end103:                                        ; preds = %cond.end
  %call104 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.err_out_free_netdev_crit_edge

if.end103.err_out_free_netdev_crit_edge:          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_netdev

if.end107:                                        ; preds = %if.end103
  %call110 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef %34) #12
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end107.err_out_free_res_crit_edge, label %if.end113

if.end107.err_out_free_res_crit_edge:             ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_free_res

if.end113:                                        ; preds = %if.end107
  %add.ptr.i = getelementptr i8, ptr %call57, i32 2304
  %dev115 = getelementptr i8, ptr %call57, i32 4904
  %43 = ptrtoint ptr %dev115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call57, ptr %dev115, align 8
  %rx_ring_dma = getelementptr i8, ptr %call57, i32 2320
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev61, i32 noundef 2560, ptr noundef %rx_ring_dma, i32 noundef 3264, i32 noundef 0) #12
  %rx_ring = getelementptr i8, ptr %call57, i32 2312
  %44 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %rx_ring, align 8
  %tobool119.not = icmp eq ptr %call.i, null
  br i1 %tobool119.not, label %if.end113.err_out_mtable_crit_edge, label %if.end121

if.end113.err_out_mtable_crit_edge:               ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out_mtable

if.end121:                                        ; preds = %if.end113
  %add.ptr = getelementptr %struct.tulip_rx_desc, ptr %call.i, i32 128
  %tx_ring = getelementptr i8, ptr %call57, i32 2316
  %45 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %tx_ring, align 4
  %46 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_ring_dma, align 8
  %add124 = add i32 %47, 2048
  %tx_ring_dma = getelementptr i8, ptr %call57, i32 2324
  %48 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add124, ptr %tx_ring_dma, align 4
  %chip_id = getelementptr i8, ptr %call57, i32 3800
  %49 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %1, ptr %chip_id, align 8
  %flags = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %1, i32 3
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %flags126 = getelementptr i8, ptr %call57, i32 3808
  %52 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %flags126, align 8
  %supported = getelementptr i8, ptr %call57, i32 4784
  %53 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr i8, ptr %call57, i32 4788
  %54 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp128 = icmp eq i32 %1, 10
  br i1 %cmp128, label %if.then130, label %if.end121.if.end145_crit_edge

if.end121.if.end145_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145

if.then130:                                       ; preds = %if.end121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sig) #12
  %55 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %sig, align 4, !annotation !280
  %call131 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 128, ptr noundef nonnull %sig) #12
  %56 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159453975, i32 %57)
  %cmp132 = icmp eq i32 %57, 159453975
  br i1 %cmp132, label %if.then134, label %if.then130.if.end144_crit_edge

if.then130.if.end144_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144

if.then134:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags126, align 8
  %or136 = or i32 %59, 65536
  store i32 %or136, ptr %flags126, align 8
  %60 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 33, ptr %supported, align 4
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.36) #15
  br label %if.end144

if.end144:                                        ; preds = %if.then134, %if.then130.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sig) #12
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end121.if.end145_crit_edge
  %pdev146 = getelementptr i8, ptr %call57, i32 4832
  %61 = ptrtoint ptr %pdev146 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pdev, ptr %pdev146, align 8
  %base_addr = getelementptr i8, ptr %call57, i32 4848
  %62 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call110, ptr %base_addr, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %63 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %revision, align 4
  %conv147 = zext i8 %64 to i32
  %revision148 = getelementptr i8, ptr %call57, i32 3804
  %65 = ptrtoint ptr %revision148 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv147, ptr %revision148, align 4
  %66 = load i32, ptr @csr0, align 4
  %csr0 = getelementptr i8, ptr %call57, i32 4256
  %67 = ptrtoint ptr %csr0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %csr0, align 8
  %lock = getelementptr i8, ptr %call57, i32 4144
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @tulip_init_one.__key, i16 noundef signext 3) #12
  %mii_lock = getelementptr i8, ptr %call57, i32 4188
  call void @__raw_spin_lock_init(ptr noundef %mii_lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @tulip_init_one.__key.51, i16 noundef signext 3) #12
  %timer = getelementptr i8, ptr %call57, i32 4040
  %68 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip_id, align 8
  %media_timer = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %69, i32 4
  %70 = ptrtoint ptr %media_timer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %media_timer, align 4
  call void @init_timer_key(ptr noundef %timer, ptr noundef %71, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @tulip_init_one.__key.53) #12
  %media_work = getelementptr i8, ptr %call57, i32 4860
  call void @__init_work(ptr noundef %media_work, i32 noundef 0) #12
  %72 = ptrtoint ptr %media_work to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -64, ptr %media_work, align 4
  %lockdep_map = getelementptr i8, ptr %call57, i32 4876
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.56, ptr noundef nonnull @tulip_init_one.__key.55, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry166 = getelementptr i8, ptr %call57, i32 4864
  %73 = ptrtoint ptr %entry166 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %entry166, ptr %entry166, align 4
  %prev.i = getelementptr i8, ptr %call57, i32 4868
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %entry166, ptr %prev.i, align 4
  %75 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chip_id, align 8
  %media_task = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %76, i32 5
  %77 = ptrtoint ptr %media_task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %media_task, align 4
  %func = getelementptr i8, ptr %call57, i32 4872
  %79 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %func, align 4
  br i1 %tobool.not, label %land.lhs.true173, label %if.end145.if.end178_crit_edge

if.end145.if.end178_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

land.lhs.true173:                                 ; preds = %if.end145
  %80 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags126, align 8
  %and175 = and i32 %81, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %land.lhs.true173.if.end178_crit_edge, label %if.then177

land.lhs.true173.if.end178_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178

if.then177:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @tulip_mwi_config(ptr noundef %pdev, ptr noundef nonnull %call57)
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %land.lhs.true173.if.end178_crit_edge, %if.end145.if.end178_crit_edge
  %82 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_addr, align 8
  %add.ptr.i931 = getelementptr i8, ptr %83, i32 48
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i931) #12, !srcloc !281
  %85 = call i32 @llvm.bswap.i32(i32 %84) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %and.i = and i32 %85, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end178.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

if.end178.tulip_stop_rxtx.exit_crit_edge:         ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %if.end178
  %and1.i = and i32 %85, -8195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %86 = call i32 @llvm.bswap.i32(i32 %and1.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i931, i32 %86) #12, !srcloc !284
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %add.ptr4.i = getelementptr i8, ptr %83, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %88 = and i32 %87, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool7.not.i = icmp eq i32 %88, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 2147480) #12
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_init_one, %tulip_stop_rxtx.exit)) #12
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !286

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev115, align 8
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  %93 = call i32 @llvm.bswap.i32(i32 %92) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i931) #12, !srcloc !281
  %95 = call i32 @llvm.bswap.i32(i32 %94) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %91, ptr noundef nonnull @.str.73, i32 noundef %93, i32 noundef %95) #12
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %if.end178.tulip_stop_rxtx.exit_crit_edge
  call void @pci_set_master(ptr noundef %pdev) #12
  %add.ptr179 = getelementptr i8, ptr %call110, i32 64
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %eeprom = getelementptr i8, ptr %call57, i32 4264
  %97 = call ptr @memset(ptr %eeprom, i32 0, i32 512)
  br i1 %cmp37934, label %for.cond.preheader, label %if.else206

for.cond.preheader:                               ; preds = %tulip_stop_rxtx.exit
  %add.ptr187 = getelementptr i8, ptr %call110, i32 152
  %add.ptr189 = getelementptr i8, ptr %call110, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 393216) #12, !srcloc !284
  br label %do.body188

do.body188:                                       ; preds = %do.body188.do.body188_crit_edge, %for.cond.preheader
  %boguscnt.0 = phi i32 [ 100000, %for.cond.preheader ], [ %dec, %do.body188.do.body188_crit_edge ]
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #12, !srcloc !281
  %99 = call i32 @llvm.bswap.i32(i32 %98) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp192 = icmp slt i32 %99, 0
  %dec = add nsw i32 %boguscnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp194 = icmp ne i32 %dec, 0
  %or.cond = select i1 %cmp192, i1 %cmp194, i1 false
  br i1 %or.cond, label %do.body188.do.body188_crit_edge, label %do.end196

do.body188.do.body188_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188

do.end196:                                        ; preds = %do.body188
  %100 = lshr i32 %98, 16
  %101 = trunc i32 %100 to i16
  %102 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 17170432) #12, !srcloc !284
  br label %do.body188.1

do.body188.1:                                     ; preds = %do.body188.1.do.body188.1_crit_edge, %do.end196
  %boguscnt.0.1 = phi i32 [ 100000, %do.end196 ], [ %dec.1, %do.body188.1.do.body188.1_crit_edge ]
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #12, !srcloc !281
  %104 = call i32 @llvm.bswap.i32(i32 %103) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp192.1 = icmp slt i32 %104, 0
  %dec.1 = add nsw i32 %boguscnt.0.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp194.1 = icmp ne i32 %dec.1, 0
  %or.cond.1 = select i1 %cmp192.1, i1 %cmp194.1, i1 false
  br i1 %or.cond.1, label %do.body188.1.do.body188.1_crit_edge, label %do.end196.1

do.body188.1.do.body188.1_crit_edge:              ; preds = %do.body188.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188.1

do.end196.1:                                      ; preds = %do.body188.1
  %conv197 = trunc i32 %99 to i16
  %105 = lshr i32 %103, 16
  %106 = trunc i32 %105 to i16
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %5, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 33947648) #12, !srcloc !284
  br label %do.body188.2

do.body188.2:                                     ; preds = %do.body188.2.do.body188.2_crit_edge, %do.end196.1
  %boguscnt.0.2 = phi i32 [ 100000, %do.end196.1 ], [ %dec.2, %do.body188.2.do.body188.2_crit_edge ]
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #12, !srcloc !281
  %109 = call i32 @llvm.bswap.i32(i32 %108) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp192.2 = icmp slt i32 %109, 0
  %dec.2 = add nsw i32 %boguscnt.0.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp194.2 = icmp ne i32 %dec.2, 0
  %or.cond.2 = select i1 %cmp192.2, i1 %cmp194.2, i1 false
  br i1 %or.cond.2, label %do.body188.2.do.body188.2_crit_edge, label %do.end196.2

do.body188.2.do.body188.2_crit_edge:              ; preds = %do.body188.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body188.2

do.end196.2:                                      ; preds = %do.body188.2
  call void @__sanitizer_cov_trace_pc() #14
  %conv197.1 = trunc i32 %104 to i16
  %conv203.1 = add i16 %conv197, %conv197.1
  %conv197.2 = trunc i32 %109 to i16
  %110 = lshr i32 %108, 16
  %111 = trunc i32 %110 to i16
  %112 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %7, align 4
  %conv203.2 = add i16 %conv203.1, %conv197.2
  call void @dev_addr_mod(ptr noundef %call57, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  br label %if.end325

if.else206:                                       ; preds = %tulip_stop_rxtx.exit
  br i1 %cmp128, label %if.then209, label %if.else231

if.then209:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr210 = getelementptr i8, ptr %call110, i32 164
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %114 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %addr, align 4
  %add.ptr213 = getelementptr i8, ptr %call110, i32 168
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %116 = lshr i32 %115, 16
  %117 = trunc i32 %116 to i16
  %118 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %7, align 4
  call void @dev_addr_mod(ptr noundef %call57, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 86
  %119 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_addr, align 64
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 1
  %conv224 = zext i8 %122 to i16
  %arrayidx223.1 = getelementptr i8, ptr %120, i32 1
  %123 = ptrtoint ptr %arrayidx223.1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx223.1, align 1
  %conv224.1 = zext i8 %124 to i16
  %add226.1 = add nuw nsw i16 %conv224, %conv224.1
  %arrayidx223.2 = getelementptr i8, ptr %120, i32 2
  %125 = ptrtoint ptr %arrayidx223.2 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx223.2, align 1
  %conv224.2 = zext i8 %126 to i16
  %add226.2 = add nuw nsw i16 %add226.1, %conv224.2
  %arrayidx223.3 = getelementptr i8, ptr %120, i32 3
  %127 = ptrtoint ptr %arrayidx223.3 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx223.3, align 1
  %conv224.3 = zext i8 %128 to i16
  %add226.3 = add nuw nsw i16 %add226.2, %conv224.3
  %arrayidx223.4 = getelementptr i8, ptr %120, i32 4
  %129 = ptrtoint ptr %arrayidx223.4 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx223.4, align 1
  %conv224.4 = zext i8 %130 to i16
  %add226.4 = add nuw nsw i16 %add226.3, %conv224.4
  %arrayidx223.5 = getelementptr i8, ptr %120, i32 5
  %131 = ptrtoint ptr %arrayidx223.5 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx223.5, align 1
  %conv224.5 = zext i8 %132 to i16
  %add226.5 = add nuw nsw i16 %add226.4, %conv224.5
  br label %if.end325

if.else231:                                       ; preds = %if.else206
  %call232 = call i32 @tulip_read_eeprom(ptr noundef %call57, i32 noundef 255, i32 noundef 8) #12
  %and233 = and i32 %call232, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  %cond235 = select i1 %tobool234.not, i32 6, i32 8
  %notmask = shl nsw i32 -1, %cond235
  %sub236 = xor i32 %notmask, -1
  %mul = shl nuw nsw i32 %sub236, 1
  br label %for.body244

for.body244:                                      ; preds = %for.body244.for.body244_crit_edge, %if.else231
  %i.2943 = phi i32 [ 0, %if.else231 ], [ %add257, %for.body244.for.body244_crit_edge ]
  %div.udiv959 = lshr exact i32 %i.2943, 1
  %call246 = call i32 @tulip_read_eeprom(ptr noundef %call57, i32 noundef %div.udiv959, i32 noundef %cond235) #12
  %conv250 = trunc i32 %call246 to i8
  %arrayidx251 = getelementptr i8, ptr %eeprom, i32 %i.2943
  %133 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv250, ptr %arrayidx251, align 1
  %conv248 = lshr i32 %call246, 8
  %conv253 = trunc i32 %conv248 to i8
  %add254 = or i32 %i.2943, 1
  %arrayidx255 = getelementptr i8, ptr %eeprom, i32 %add254
  %134 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv253, ptr %arrayidx255, align 1
  %add257 = add nuw nsw i32 %i.2943, 2
  %cmp242 = icmp ult i32 %add257, %mul
  br i1 %cmp242, label %for.body244.for.body244_crit_edge, label %for.body262.preheader

for.body244.for.body244_crit_edge:                ; preds = %for.body244
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body244

for.body262.preheader:                            ; preds = %for.body244
  %135 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %eeprom, align 1
  %arrayidx266 = getelementptr i8, ptr %call57, i32 4280
  %137 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx266, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp268.not = icmp eq i8 %136, %138
  %arrayidx263.1 = getelementptr i8, ptr %call57, i32 4265
  %139 = ptrtoint ptr %arrayidx263.1 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx263.1, align 1
  %arrayidx266.1 = getelementptr i8, ptr %call57, i32 4281
  %141 = ptrtoint ptr %arrayidx266.1 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx266.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp268.not.1 = icmp eq i8 %140, %142
  %arrayidx263.2 = getelementptr i8, ptr %call57, i32 4266
  %143 = ptrtoint ptr %arrayidx263.2 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx263.2, align 1
  %arrayidx266.2 = getelementptr i8, ptr %call57, i32 4282
  %145 = ptrtoint ptr %arrayidx266.2 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx266.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %146)
  %cmp268.not.2 = icmp eq i8 %144, %146
  %arrayidx263.3 = getelementptr i8, ptr %call57, i32 4267
  %147 = ptrtoint ptr %arrayidx263.3 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx263.3, align 1
  %arrayidx266.3 = getelementptr i8, ptr %call57, i32 4283
  %149 = ptrtoint ptr %arrayidx266.3 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx266.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %150)
  %cmp268.not.3 = icmp eq i8 %148, %150
  %arrayidx263.4 = getelementptr i8, ptr %call57, i32 4268
  %151 = ptrtoint ptr %arrayidx263.4 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx263.4, align 1
  %arrayidx266.4 = getelementptr i8, ptr %call57, i32 4284
  %153 = ptrtoint ptr %arrayidx266.4 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx266.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %152, i8 %154)
  %cmp268.not.4 = icmp eq i8 %152, %154
  %arrayidx263.5 = getelementptr i8, ptr %call57, i32 4269
  %155 = ptrtoint ptr %arrayidx263.5 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx263.5, align 1
  %arrayidx266.5 = getelementptr i8, ptr %call57, i32 4285
  %157 = ptrtoint ptr %arrayidx266.5 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx266.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %158)
  %cmp268.not.5 = icmp eq i8 %156, %158
  %arrayidx263.6 = getelementptr i8, ptr %call57, i32 4270
  %159 = ptrtoint ptr %arrayidx263.6 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx263.6, align 1
  %arrayidx266.6 = getelementptr i8, ptr %call57, i32 4286
  %161 = ptrtoint ptr %arrayidx266.6 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx266.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %160, i8 %162)
  %cmp268.not.6 = icmp eq i8 %160, %162
  %arrayidx263.7 = getelementptr i8, ptr %call57, i32 4271
  %163 = ptrtoint ptr %arrayidx263.7 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx263.7, align 1
  %arrayidx266.7 = getelementptr i8, ptr %call57, i32 4287
  %165 = ptrtoint ptr %arrayidx266.7 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx266.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %166)
  %cmp268.not.7 = icmp eq i8 %164, %166
  %167 = select i1 %cmp268.not.7, i1 %cmp268.not.6, i1 false
  %168 = select i1 %167, i1 %cmp268.not.5, i1 false
  %169 = select i1 %168, i1 %cmp268.not.4, i1 false
  %170 = select i1 %169, i1 %cmp268.not.3, i1 false
  %171 = select i1 %170, i1 %cmp268.not.2, i1 false
  %172 = select i1 %171, i1 %cmp268.not.1, i1 false
  %173 = select i1 %172, i1 %cmp268.not, i1 false
  %spec.select.7 = select i1 %173, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp275 = icmp eq i32 %1, 14
  br i1 %cmp275, label %if.then277, label %if.else289

if.then277:                                       ; preds = %for.body262.preheader
  %arrayidx278 = getelementptr i8, ptr %call57, i32 4672
  %174 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx278, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %175)
  %cmp280 = icmp eq i8 %175, 4
  br i1 %cmp280, label %if.then277.if.end306.sink.split_crit_edge, label %if.then277.if.end306_crit_edge

if.then277.if.end306_crit_edge:                   ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306

if.then277.if.end306.sink.split_crit_edge:        ; preds = %if.then277
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306.sink.split

if.else289:                                       ; preds = %for.body262.preheader
  %176 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %eeprom, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %cmp292 = icmp eq i8 %177, -1
  br i1 %cmp292, label %land.lhs.true294, label %if.else289.if.end306_crit_edge

if.else289.if.end306_crit_edge:                   ; preds = %if.else289
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306

land.lhs.true294:                                 ; preds = %if.else289
  %arrayidx295 = getelementptr i8, ptr %call57, i32 4265
  %178 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx295, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %179)
  %cmp297 = icmp eq i8 %179, -1
  br i1 %cmp297, label %land.lhs.true294.if.end306.sink.split_crit_edge, label %land.lhs.true294.if.end306_crit_edge

land.lhs.true294.if.end306_crit_edge:             ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306

land.lhs.true294.if.end306.sink.split_crit_edge:  ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end306.sink.split

if.end306.sink.split:                             ; preds = %land.lhs.true294.if.end306.sink.split_crit_edge, %if.then277.if.end306.sink.split_crit_edge
  %.sink968 = phi i32 [ 4673, %if.then277.if.end306.sink.split_crit_edge ], [ 4266, %land.lhs.true294.if.end306.sink.split_crit_edge ]
  %.sink967 = phi i8 [ 6, %if.then277.if.end306.sink.split_crit_edge ], [ 0, %land.lhs.true294.if.end306.sink.split_crit_edge ]
  %.sink = phi i32 [ 410, %if.then277.if.end306.sink.split_crit_edge ], [ 2, %land.lhs.true294.if.end306.sink.split_crit_edge ]
  %arrayidx300 = getelementptr i8, ptr %call57, i32 %.sink968
  %180 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx300, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %181, i8 %.sink967)
  %cmp302 = icmp eq i8 %181, %.sink967
  %spec.select929 = select i1 %cmp302, i32 %.sink, i32 %spec.select.7
  br label %if.end306

if.end306:                                        ; preds = %if.end306.sink.split, %land.lhs.true294.if.end306_crit_edge, %if.else289.if.end306_crit_edge, %if.then277.if.end306_crit_edge
  %sa_offset.2 = phi i32 [ %spec.select.7, %if.then277.if.end306_crit_edge ], [ %spec.select.7, %land.lhs.true294.if.end306_crit_edge ], [ %spec.select.7, %if.else289.if.end306_crit_edge ], [ %spec.select929, %if.end306.sink.split ]
  %arrayidx312 = getelementptr i8, ptr %eeprom, i32 %sa_offset.2
  %182 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx312, align 1
  %184 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %addr, align 4
  %185 = load i8, ptr %arrayidx312, align 1
  %conv316 = zext i8 %185 to i16
  %add311.1 = add nuw nsw i32 %sa_offset.2, 1
  %arrayidx312.1 = getelementptr i8, ptr %eeprom, i32 %add311.1
  %186 = ptrtoint ptr %arrayidx312.1 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx312.1, align 1
  %188 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %4, align 1
  %189 = load i8, ptr %arrayidx312.1, align 1
  %conv316.1 = zext i8 %189 to i16
  %add318.1 = add nuw nsw i16 %conv316, %conv316.1
  %add311.2 = add nuw nsw i32 %sa_offset.2, 2
  %arrayidx312.2 = getelementptr i8, ptr %eeprom, i32 %add311.2
  %190 = ptrtoint ptr %arrayidx312.2 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx312.2, align 1
  %192 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %5, align 2
  %193 = load i8, ptr %arrayidx312.2, align 1
  %conv316.2 = zext i8 %193 to i16
  %add318.2 = add nuw nsw i16 %add318.1, %conv316.2
  %add311.3 = add nuw nsw i32 %sa_offset.2, 3
  %arrayidx312.3 = getelementptr i8, ptr %eeprom, i32 %add311.3
  %194 = ptrtoint ptr %arrayidx312.3 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx312.3, align 1
  %196 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %6, align 1
  %197 = load i8, ptr %arrayidx312.3, align 1
  %conv316.3 = zext i8 %197 to i16
  %add318.3 = add nuw nsw i16 %add318.2, %conv316.3
  %add311.4 = add nuw nsw i32 %sa_offset.2, 4
  %arrayidx312.4 = getelementptr i8, ptr %eeprom, i32 %add311.4
  %198 = ptrtoint ptr %arrayidx312.4 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx312.4, align 1
  %200 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %7, align 4
  %201 = load i8, ptr %arrayidx312.4, align 1
  %conv316.4 = zext i8 %201 to i16
  %add318.4 = add nuw nsw i16 %add318.3, %conv316.4
  %add311.5 = add nuw nsw i32 %sa_offset.2, 5
  %arrayidx312.5 = getelementptr i8, ptr %eeprom, i32 %add311.5
  %202 = ptrtoint ptr %arrayidx312.5 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx312.5, align 1
  %204 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %8, align 1
  %205 = load i8, ptr %arrayidx312.5, align 1
  %conv316.5 = zext i8 %205 to i16
  %add318.5 = add nuw nsw i16 %add318.4, %conv316.5
  call void @dev_addr_mod(ptr noundef %call57, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  br label %if.end325

if.end325:                                        ; preds = %if.end306, %if.then209, %do.end196.2
  %sum.3 = phi i16 [ %conv203.2, %do.end196.2 ], [ %add318.5, %if.end306 ], [ %add226.5, %if.then209 ]
  %dev_addr326 = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 86
  %206 = ptrtoint ptr %dev_addr326 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_addr326, align 64
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 1
  %210 = zext i8 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %209, label %if.end325.if.end366_crit_edge [
    i8 -96, label %if.end325.land.lhs.true343_crit_edge
    i8 -64, label %if.end325.land.lhs.true343_crit_edge989
    i8 2, label %if.end325.land.lhs.true343_crit_edge990
  ]

if.end325.land.lhs.true343_crit_edge990:          ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true343

if.end325.land.lhs.true343_crit_edge989:          ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true343

if.end325.land.lhs.true343_crit_edge:             ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true343

if.end325.if.end366_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

land.lhs.true343:                                 ; preds = %if.end325.land.lhs.true343_crit_edge, %if.end325.land.lhs.true343_crit_edge989, %if.end325.land.lhs.true343_crit_edge990
  %arrayidx345 = getelementptr i8, ptr %207, i32 1
  %211 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx345, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %cmp347 = icmp eq i8 %212, 0
  br i1 %cmp347, label %for.body353.preheader, label %land.lhs.true343.if.end366_crit_edge

land.lhs.true343.if.end366_crit_edge:             ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end366

for.body353.preheader:                            ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #14
  %213 = ptrtoint ptr %dev_addr326 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev_addr326, align 64
  %arrayidx356 = getelementptr i8, ptr %214, i32 1
  %215 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx356, align 1
  %217 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %addr, align 4
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %214, align 1
  %220 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %4, align 1
  %arrayidx356.1 = getelementptr i8, ptr %214, i32 3
  %221 = ptrtoint ptr %arrayidx356.1 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx356.1, align 1
  %223 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %222, ptr %5, align 2
  %arrayidx359.1 = getelementptr i8, ptr %214, i32 2
  %224 = ptrtoint ptr %arrayidx359.1 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx359.1, align 1
  %226 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %6, align 1
  %arrayidx356.2 = getelementptr i8, ptr %214, i32 5
  %227 = ptrtoint ptr %arrayidx356.2 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx356.2, align 1
  %229 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %7, align 4
  %arrayidx359.2 = getelementptr i8, ptr %214, i32 4
  %230 = ptrtoint ptr %arrayidx359.2 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx359.2, align 1
  %232 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef %call57, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  br label %if.end366

if.end366:                                        ; preds = %for.body353.preheader, %land.lhs.true343.if.end366_crit_edge, %if.end325.if.end366_crit_edge
  %233 = zext i16 %sum.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.110)
  switch i16 %sum.3, label %if.end366.if.end390_crit_edge [
    i16 0, label %if.end366.if.then374_crit_edge
    i16 1530, label %if.end366.if.then374_crit_edge991
  ]

if.end366.if.then374_crit_edge991:                ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then374

if.end366.if.then374_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then374

if.end366.if.end390_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end390

if.then374:                                       ; preds = %if.end366.if.then374_crit_edge, %if.end366.if.then374_crit_edge991
  %234 = call ptr @memcpy(ptr %addr, ptr @tulip_init_one.last_phys_addr, i32 5)
  %235 = load i8, ptr getelementptr inbounds ([6 x i8], ptr @tulip_init_one.last_phys_addr, i32 0, i32 5), align 1
  %add386 = add i8 %235, 1
  %236 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %add386, ptr %8, align 1
  call void @dev_addr_mod(ptr noundef %call57, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  br label %if.end390

if.end390:                                        ; preds = %if.then374, %if.end366.if.end390_crit_edge
  %tobool591.not = phi ptr [ @.str.67, %if.then374 ], [ @.str.20, %if.end366.if.end390_crit_edge ]
  %237 = ptrtoint ptr %dev_addr326 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev_addr326, align 64
  %239 = call ptr @memcpy(ptr @tulip_init_one.last_phys_addr, ptr %238, i32 6)
  %240 = load i32, ptr @tulip_init_one.board_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %240)
  %241 = icmp ult i32 %240, 8
  br i1 %241, label %if.then406, label %if.end390.if.end432_crit_edge

if.end390.if.end432_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end432

if.then406:                                       ; preds = %if.end390
  %arrayidx407 = getelementptr [8 x i32], ptr @options, i32 0, i32 %240
  %242 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx407, align 4
  %and408 = and i32 %243, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %if.then406.if.end413_crit_edge, label %if.then410

if.then406.if.end413_crit_edge:                   ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end413

if.then410:                                       ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #14
  %default_port = getelementptr i8, ptr %call57, i32 4252
  %244 = trunc i32 %243 to i16
  %245 = ptrtoint ptr %default_port to i32
  call void @__asan_load2_noabort(i32 %245)
  %bf.load = load i16, ptr %default_port, align 4
  %bf.value = shl i16 %244, 9
  %bf.shl = and i16 %bf.value, 7680
  %bf.clear = and i16 %bf.load, -7681
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %default_port, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.then410, %if.then406.if.end413_crit_edge
  %246 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx407, align 4
  %and415 = and i32 %247, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and415)
  %tobool416.not = icmp eq i32 %and415, 0
  br i1 %tobool416.not, label %lor.lhs.false417, label %if.end413.if.then421_crit_edge

if.end413.if.then421_crit_edge:                   ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then421

lor.lhs.false417:                                 ; preds = %if.end413
  %arrayidx418 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %240
  %248 = ptrtoint ptr %arrayidx418 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp419 = icmp sgt i32 %249, 0
  br i1 %cmp419, label %lor.lhs.false417.if.then421_crit_edge, label %lor.lhs.false417.if.end432_crit_edge

lor.lhs.false417.if.end432_crit_edge:             ; preds = %lor.lhs.false417
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end432

lor.lhs.false417.if.then421_crit_edge:            ; preds = %lor.lhs.false417
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then421

if.then421:                                       ; preds = %lor.lhs.false417.if.then421_crit_edge, %if.end413.if.then421_crit_edge
  %full_duplex = getelementptr i8, ptr %call57, i32 4252
  %250 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load2_noabort(i32 %250)
  %bf.load422 = load i16, ptr %full_duplex, align 4
  %bf.set424 = or i16 %bf.load422, -32768
  store i16 %bf.set424, ptr %full_duplex, align 4
  br label %if.end432

if.end432:                                        ; preds = %if.then421, %lor.lhs.false417.if.end432_crit_edge, %if.end390.if.end432_crit_edge
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 4
  %251 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %mem_start, align 4
  %and433 = and i32 %252, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and433)
  %tobool434.not = icmp eq i32 %and433, 0
  br i1 %tobool434.not, label %if.end432.if.end445_crit_edge, label %if.then435

if.end432.if.end445_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end445

if.then435:                                       ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #14
  %default_port438 = getelementptr i8, ptr %call57, i32 4252
  %253 = trunc i32 %252 to i16
  %254 = ptrtoint ptr %default_port438 to i32
  call void @__asan_load2_noabort(i32 %254)
  %bf.load439 = load i16, ptr %default_port438, align 4
  %bf.value440 = shl i16 %253, 9
  %bf.shl441 = and i16 %bf.value440, 7680
  %bf.clear442 = and i16 %bf.load439, -7681
  %bf.set443 = or i16 %bf.clear442, %bf.shl441
  store i16 %bf.set443, ptr %default_port438, align 4
  br label %if.end445

if.end445:                                        ; preds = %if.then435, %if.end432.if.end445_crit_edge
  %default_port446 = getelementptr i8, ptr %call57, i32 4252
  %255 = ptrtoint ptr %default_port446 to i32
  call void @__asan_load2_noabort(i32 %255)
  %bf.load447 = load i16, ptr %default_port446, align 4
  %bf.lshr = lshr i16 %bf.load447, 9
  %bf.clear448 = and i16 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear448)
  %tobool449.not = icmp eq i16 %bf.clear448, 0
  br i1 %tobool449.not, label %if.end445.if.end481_crit_edge, label %do.end453

if.end445.if.end481_crit_edge:                    ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end481

do.end453:                                        ; preds = %if.end445
  %bf.cast = zext i16 %bf.clear448 to i32
  %arrayidx461 = getelementptr [32 x ptr], ptr @medianame, i32 0, i32 %bf.cast
  %256 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %arrayidx461, align 4
  %call462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %240, ptr noundef %257) #15
  %258 = ptrtoint ptr %default_port446 to i32
  call void @__asan_load2_noabort(i32 %258)
  %bf.load463 = load i16, ptr %default_port446, align 4
  %bf.set465 = or i16 %bf.load463, 16
  store i16 %bf.set465, ptr %default_port446, align 4
  %bf.lshr468 = lshr i16 %bf.load463, 9
  %bf.clear469 = and i16 %bf.lshr468, 15
  %bf.cast470 = zext i16 %bf.clear469 to i32
  %arrayidx471 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %bf.cast470
  %259 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx471, align 1
  %261 = and i8 %260, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool474.not = icmp eq i8 %261, 0
  br i1 %tobool474.not, label %if.end481thread-pre-split, label %if.end481.thread

if.end481.thread:                                 ; preds = %do.end453
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set479 = or i16 %bf.load463, -32752
  %262 = ptrtoint ptr %default_port446 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %bf.set479, ptr %default_port446, align 4
  br label %if.then487

if.end481thread-pre-split:                        ; preds = %do.end453
  call void @__sanitizer_cov_trace_pc() #14
  %263 = ptrtoint ptr %default_port446 to i32
  call void @__asan_load2_noabort(i32 %263)
  %bf.load483.pr = load i16, ptr %default_port446, align 4
  br label %if.end481

if.end481:                                        ; preds = %if.end481thread-pre-split, %if.end445.if.end481_crit_edge
  %bf.load483 = phi i16 [ %bf.load483.pr, %if.end481thread-pre-split ], [ %bf.load447, %if.end445.if.end481_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load483)
  %tobool486.not = icmp sgt i16 %bf.load483, -1
  br i1 %tobool486.not, label %if.end481.if.end491_crit_edge, label %if.end481.if.then487_crit_edge

if.end481.if.then487_crit_edge:                   ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then487

if.end481.if.end491_crit_edge:                    ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end491

if.then487:                                       ; preds = %if.end481.if.then487_crit_edge, %if.end481.thread
  %bf.load483939 = phi i16 [ %bf.set479, %if.end481.thread ], [ %bf.load483, %if.end481.if.then487_crit_edge ]
  %bf.set490 = or i16 %bf.load483939, 16384
  %264 = ptrtoint ptr %default_port446 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %bf.set490, ptr %default_port446, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then487, %if.end481.if.end491_crit_edge
  %265 = ptrtoint ptr %default_port446 to i32
  call void @__asan_load2_noabort(i32 %265)
  %bf.load493 = load i16, ptr %default_port446, align 4
  %bf.lshr494 = lshr i16 %bf.load493, 9
  %bf.clear495 = and i16 %bf.lshr494, 15
  %bf.cast496 = zext i16 %bf.clear495 to i32
  %arrayidx497 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %bf.cast496
  %266 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx497, align 1
  %268 = and i8 %267, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool500.not = icmp eq i8 %268, 0
  br i1 %tobool500.not, label %if.end491.if.end515_crit_edge, label %if.then501

if.end491.if.end515_crit_edge:                    ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end515

if.then501:                                       ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  %sub507 = add nsw i32 %bf.cast496, -9
  %arrayidx508 = getelementptr [7 x i16], ptr @tulip_init_one.media2advert, i32 0, i32 %sub507
  %269 = ptrtoint ptr %arrayidx508 to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx508, align 2
  %mii_advertise = getelementptr i8, ptr %call57, i32 4802
  %271 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %flags126, align 8
  %273 = trunc i32 %272 to i16
  %274 = and i16 %273, 1024
  %conv514 = or i16 %274, %270
  %275 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %conv514, ptr %mii_advertise, align 2
  br label %if.end515

if.end515:                                        ; preds = %if.then501, %if.end491.if.end515_crit_edge
  %276 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %flags126, align 8
  %and517 = and i32 %277, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and517)
  %tobool518.not = icmp eq i32 %and517, 0
  br i1 %tobool518.not, label %if.end515.if.end525_crit_edge, label %if.then519

if.end515.if.end525_crit_edge:                    ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end525

if.then519:                                       ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #14
  %278 = load i32, ptr @tulip_init_one.board_idx, align 4
  %call521 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call57, ptr noundef nonnull @.str.60, i32 noundef %278)
  call void @tulip_parse_eeprom(ptr noundef %call57) #12
  %279 = call ptr @memcpy(ptr %call57, ptr @.str.61, i32 6)
  br label %if.end525

if.end525:                                        ; preds = %if.then519, %if.end515.if.end525_crit_edge
  %280 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %flags126, align 8
  %and527 = and i32 %281, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and527)
  %tobool528.not = icmp eq i32 %and527, 0
  br i1 %tobool528.not, label %lor.lhs.false529, label %if.end525.if.then544_crit_edge

if.end525.if.then544_crit_edge:                   ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then544

lor.lhs.false529:                                 ; preds = %if.end525
  %mtable = getelementptr i8, ptr %call57, i32 4820
  %282 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mtable, align 4
  %tobool530.not = icmp eq ptr %283, null
  br i1 %tobool530.not, label %land.lhs.true540, label %land.lhs.true531

land.lhs.true531:                                 ; preds = %lor.lhs.false529
  %has_mii = getelementptr inbounds %struct.mediatable, ptr %283, i32 0, i32 3
  %284 = ptrtoint ptr %has_mii to i32
  call void @__asan_load1_noabort(i32 %284)
  %bf.load533 = load i8, ptr %has_mii, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load533)
  %tobool536.not = icmp sgt i8 %bf.load533, -1
  br i1 %tobool536.not, label %land.lhs.true531.if.end576_crit_edge, label %land.lhs.true531.if.then544_crit_edge

land.lhs.true531.if.then544_crit_edge:            ; preds = %land.lhs.true531
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then544

land.lhs.true531.if.end576_crit_edge:             ; preds = %land.lhs.true531
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end576

land.lhs.true540:                                 ; preds = %lor.lhs.false529
  %and542 = and i32 %281, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and542)
  %tobool543.not = icmp eq i32 %and542, 0
  br i1 %tobool543.not, label %land.lhs.true540.if.end576_crit_edge, label %land.lhs.true540.if.then544_crit_edge

land.lhs.true540.if.then544_crit_edge:            ; preds = %land.lhs.true540
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then544

land.lhs.true540.if.end576_crit_edge:             ; preds = %land.lhs.true540
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end576

if.then544:                                       ; preds = %land.lhs.true540.if.then544_crit_edge, %land.lhs.true531.if.then544_crit_edge, %if.end525.if.then544_crit_edge
  %mtable545 = getelementptr i8, ptr %call57, i32 4820
  %285 = ptrtoint ptr %mtable545 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mtable545, align 4
  %tobool546.not = icmp eq ptr %286, null
  br i1 %tobool546.not, label %if.then544.if.end575_crit_edge, label %land.lhs.true547

if.then544.if.end575_crit_edge:                   ; preds = %if.then544
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end575

land.lhs.true547:                                 ; preds = %if.then544
  %has_mii549 = getelementptr inbounds %struct.mediatable, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %has_mii549 to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load550 = load i8, ptr %has_mii549, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load550)
  %tobool553.not = icmp sgt i8 %bf.load550, -1
  br i1 %tobool553.not, label %land.lhs.true547.if.end575_crit_edge, label %for.cond555.preheader

land.lhs.true547.if.end575_crit_edge:             ; preds = %land.lhs.true547
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end575

for.cond555.preheader:                            ; preds = %land.lhs.true547
  %leafcount = getelementptr inbounds %struct.mediatable, ptr %286, i32 0, i32 1
  %288 = ptrtoint ptr %leafcount to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %leafcount, align 2
  %conv557 = zext i8 %289 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %cmp558955.not = icmp eq i8 %289, 0
  br i1 %cmp558955.not, label %for.cond555.preheader.if.end575_crit_edge, label %for.cond555.preheader.for.body560_crit_edge

for.cond555.preheader.for.body560_crit_edge:      ; preds = %for.cond555.preheader
  br label %for.body560

for.cond555.preheader.if.end575_crit_edge:        ; preds = %for.cond555.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end575

for.body560:                                      ; preds = %for.inc572.for.body560_crit_edge, %for.cond555.preheader.for.body560_crit_edge
  %i.8956 = phi i32 [ %inc573, %for.inc572.for.body560_crit_edge ], [ 0, %for.cond555.preheader.for.body560_crit_edge ]
  %media = getelementptr %struct.mediatable, ptr %286, i32 0, i32 6, i32 %i.8956, i32 1
  %290 = ptrtoint ptr %media to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %media, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %291)
  %cmp564 = icmp eq i8 %291, 11
  br i1 %cmp564, label %if.then566, label %for.inc572

if.then566:                                       ; preds = %for.body560
  call void @__sanitizer_cov_trace_pc() #14
  %cur_index = getelementptr i8, ptr %call57, i32 4824
  %292 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %i.8956, ptr %cur_index, align 8
  %if_port = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 52
  %293 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %if_port, align 2
  %conv567 = zext i8 %294 to i32
  %saved_if_port = getelementptr i8, ptr %call57, i32 4828
  %295 = ptrtoint ptr %saved_if_port to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %conv567, ptr %saved_if_port, align 4
  call void @tulip_select_media(ptr noundef %call57, i32 noundef 2) #12
  %296 = ptrtoint ptr %saved_if_port to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %saved_if_port, align 4
  %conv569 = trunc i32 %297 to i8
  %298 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv569, ptr %if_port, align 2
  br label %if.end575

for.inc572:                                       ; preds = %for.body560
  %inc573 = add nuw nsw i32 %i.8956, 1
  %exitcond.not = icmp eq i32 %inc573, %conv557
  br i1 %exitcond.not, label %for.inc572.if.end575_crit_edge, label %for.inc572.for.body560_crit_edge

for.inc572.for.body560_crit_edge:                 ; preds = %for.inc572
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body560

for.inc572.if.end575_crit_edge:                   ; preds = %for.inc572
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end575

if.end575:                                        ; preds = %for.inc572.if.end575_crit_edge, %if.then566, %for.cond555.preheader.if.end575_crit_edge, %land.lhs.true547.if.end575_crit_edge, %if.then544.if.end575_crit_edge
  %299 = load i32, ptr @tulip_init_one.board_idx, align 4
  call void @tulip_find_mii(ptr noundef %call57, i32 noundef %299) #12
  br label %if.end576

if.end576:                                        ; preds = %if.end575, %land.lhs.true540.if.end576_crit_edge, %land.lhs.true531.if.end576_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 16
  %300 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr @tulip_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 115
  %301 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 400, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call57, i32 3816
  call void @netif_napi_add(ptr noundef %call57, ptr noundef %napi, ptr noundef nonnull @tulip_poll, i32 noundef 16) #12
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 44
  %302 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @ops, ptr %ethtool_ops, align 16
  %call577 = call i32 @register_netdev(ptr noundef %call57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call577)
  %tobool578.not = icmp eq i32 %call577, 0
  br i1 %tobool578.not, label %if.end580, label %err_out_free_ring

if.end580:                                        ; preds = %if.end576
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %303 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call57, ptr %driver_data.i.i, align 4
  %304 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %revision, align 4
  %conv586 = zext i8 %305 to i32
  %arrayidx588 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %306 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx588, align 8
  %conv590 = zext i32 %307 to i64
  %308 = ptrtoint ptr %dev_addr326 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev_addr326, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.63, ptr noundef %3, i32 noundef %conv586, i64 noundef %conv590, ptr noundef nonnull %tobool591.not, ptr noundef %309, i32 noundef %27) #15
  %310 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %311)
  %cmp595 = icmp eq i32 %311, 9
  br i1 %cmp595, label %if.end580.if.end612.sink.split_crit_edge, label %if.else598

if.end580.if.end612.sink.split_crit_edge:         ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end612.sink.split

if.else598:                                       ; preds = %if.end580
  %312 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %flags126, align 8
  %and600 = and i32 %313, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and600)
  %tobool601.not = icmp eq i32 %and600, 0
  br i1 %tobool601.not, label %if.else604, label %if.else598.if.end612.sink.split_crit_edge

if.else598.if.end612.sink.split_crit_edge:        ; preds = %if.else598
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end612.sink.split

if.else604:                                       ; preds = %if.else598
  %and606 = and i32 %313, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and606)
  %tobool607.not = icmp eq i32 %and606, 0
  br i1 %tobool607.not, label %if.else604.if.end612_crit_edge, label %if.else604.if.end612.sink.split_crit_edge

if.else604.if.end612.sink.split_crit_edge:        ; preds = %if.else604
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end612.sink.split

if.else604.if.end612_crit_edge:                   ; preds = %if.else604
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end612

if.end612.sink.split:                             ; preds = %if.else604.if.end612.sink.split_crit_edge, %if.else598.if.end612.sink.split_crit_edge, %if.end580.if.end612.sink.split_crit_edge
  %t21142_lnk_change.sink = phi ptr [ @pnic2_lnk_change, %if.end580.if.end612.sink.split_crit_edge ], [ @t21142_lnk_change, %if.else598.if.end612.sink.split_crit_edge ], [ @pnic_lnk_change, %if.else604.if.end612.sink.split_crit_edge ]
  %link_change603 = getelementptr i8, ptr %call57, i32 4776
  %314 = ptrtoint ptr %link_change603 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %t21142_lnk_change.sink, ptr %link_change603, align 8
  br label %if.end612

if.end612:                                        ; preds = %if.end612.sink.split, %if.else604.if.end612_crit_edge
  %315 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %315, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %1, label %sw.default [
    i32 10, label %if.end612.sw.epilog_crit_edge
    i32 7, label %if.end612.sw.bb659_crit_edge
    i32 3, label %sw.bb621
    i32 9, label %sw.bb637
    i32 4, label %sw.bb640
    i32 5, label %if.end612.sw.bb655_crit_edge
    i32 11, label %if.end612.sw.bb655_crit_edge992
    i32 6, label %if.end612.sw.bb659_crit_edge993
  ]

if.end612.sw.bb659_crit_edge993:                  ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb659

if.end612.sw.bb655_crit_edge992:                  ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb655

if.end612.sw.bb655_crit_edge:                     ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb655

if.end612.sw.bb659_crit_edge:                     ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb659

if.end612.sw.epilog_crit_edge:                    ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end612
  %mtable613 = getelementptr i8, ptr %call57, i32 4820
  %316 = ptrtoint ptr %mtable613 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %mtable613, align 4
  %tobool614.not = icmp eq ptr %317, null
  br i1 %tobool614.not, label %sw.default.sw.epilog_crit_edge, label %if.then615

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then615:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %csr12dir = getelementptr inbounds %struct.mediatable, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %csr12dir to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %csr12dir, align 1
  %conv617 = zext i8 %319 to i32
  %or618 = or i32 %conv617, 256
  %add.ptr619 = getelementptr i8, ptr %call110, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %320 = call i32 @llvm.bswap.i32(i32 %or618) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr619, i32 %320) #12, !srcloc !284
  br label %sw.epilog

sw.bb621:                                         ; preds = %if.end612
  %mii_cnt = getelementptr i8, ptr %call57, i32 4818
  %321 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool623.not = icmp eq i8 %322, 0
  br i1 %tobool623.not, label %lor.lhs.false624, label %sw.bb621.if.then630_crit_edge

sw.bb621.if.then630_crit_edge:                    ; preds = %sw.bb621
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then630

lor.lhs.false624:                                 ; preds = %sw.bb621
  %if_port625 = getelementptr inbounds %struct.net_device, ptr %call57, i32 0, i32 52
  %323 = ptrtoint ptr %if_port625 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %if_port625, align 2
  %idxprom = zext i8 %324 to i32
  %arrayidx626 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %325 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx626, align 1
  %327 = and i8 %326, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool629.not = icmp eq i8 %327, 0
  br i1 %tobool629.not, label %if.else635, label %lor.lhs.false624.if.then630_crit_edge

lor.lhs.false624.if.then630_crit_edge:            ; preds = %lor.lhs.false624
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then630

if.then630:                                       ; preds = %lor.lhs.false624.if.then630_crit_edge, %sw.bb621.if.then630_crit_edge
  %add.ptr631 = getelementptr i8, ptr %call110, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr631, i32 642) #12, !srcloc !284
  %add.ptr632 = getelementptr i8, ptr %call110, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr632, i32 0) #12, !srcloc !284
  %add.ptr633 = getelementptr i8, ptr %call110, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr633, i32 0) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr631, i32 3714) #12, !srcloc !284
  br label %sw.epilog

if.else635:                                       ; preds = %lor.lhs.false624
  call void @__sanitizer_cov_trace_pc() #14
  call void @t21142_start_nway(ptr noundef %call57) #12
  br label %sw.epilog

sw.bb637:                                         ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr638 = getelementptr i8, ptr %call110, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr638, i32 0) #12, !srcloc !284
  %add.ptr639 = getelementptr i8, ptr %call110, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr639, i32 0) #12, !srcloc !284
  br label %sw.epilog

sw.bb640:                                         ; preds = %if.end612
  %mii_cnt641 = getelementptr i8, ptr %call57, i32 4818
  %328 = ptrtoint ptr %mii_cnt641 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %mii_cnt641, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool642.not = icmp eq i8 %329, 0
  br i1 %tobool642.not, label %if.then643, label %sw.bb640.sw.epilog_crit_edge

sw.bb640.sw.epilog_crit_edge:                     ; preds = %sw.bb640
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then643:                                       ; preds = %sw.bb640
  call void @__sanitizer_cov_trace_pc() #14
  %330 = ptrtoint ptr %default_port446 to i32
  call void @__asan_load2_noabort(i32 %330)
  %bf.load644 = load i16, ptr %default_port446, align 4
  %bf.set646 = and i16 %bf.load644, -7
  %bf.clear648 = or i16 %bf.set646, 4
  store i16 %bf.clear648, ptr %default_port446, align 4
  %add.ptr650 = getelementptr i8, ptr %call110, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr650, i32 16896) #12, !srcloc !284
  %add.ptr651 = getelementptr i8, ptr %call110, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr651, i32 805306368) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr650, i32 2028994816) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr650, i32 2028994818) #12, !srcloc !284
  br label %sw.epilog

sw.bb655:                                         ; preds = %if.end612.sw.bb655_crit_edge, %if.end612.sw.bb655_crit_edge992
  %add.ptr656 = getelementptr i8, ptr %call110, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr656, i32 0) #12, !srcloc !284
  %add.ptr657 = getelementptr i8, ptr %call110, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr657, i32 -1072625920) #12, !srcloc !284
  %add.ptr658 = getelementptr i8, ptr %call110, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr658, i32 16777216) #12, !srcloc !284
  br label %sw.epilog

sw.bb659:                                         ; preds = %if.end612.sw.bb659_crit_edge, %if.end612.sw.bb659_crit_edge993
  %add.ptr660 = getelementptr i8, ptr %call110, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr660, i32 43009) #12, !srcloc !284
  %add.ptr661 = getelementptr i8, ptr %call110, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr661, i32 -1) #12, !srcloc !284
  %add.ptr662 = getelementptr i8, ptr %call110, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr662, i32 1048576) #12, !srcloc !284
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb659, %sw.bb655, %if.then643, %sw.bb640.sw.epilog_crit_edge, %sw.bb637, %if.else635, %if.then630, %if.then615, %sw.default.sw.epilog_crit_edge, %if.end612.sw.epilog_crit_edge
  call fastcc void @tulip_set_power_state(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %cleanup

err_out_free_ring:                                ; preds = %if.end576
  call void @__sanitizer_cov_trace_pc() #14
  %331 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rx_ring, align 8
  %333 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %rx_ring_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev61, i32 noundef 2560, ptr noundef %332, i32 noundef %334, i32 noundef 0) #12
  br label %err_out_mtable

err_out_mtable:                                   ; preds = %err_out_free_ring, %if.end113.err_out_mtable_crit_edge
  %mtable666 = getelementptr i8, ptr %call57, i32 4820
  %335 = ptrtoint ptr %mtable666 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mtable666, align 4
  call void @kfree(ptr noundef %336) #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %call110) #12
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_mtable, %if.end107.err_out_free_res_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_free_res, %if.end103.err_out_free_netdev_crit_edge, %cond.end95
  call void @free_netdev(ptr noundef %call57) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_netdev, %sw.epilog, %if.end55.cleanup_crit_edge, %do.end52, %do.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end22 ], [ %call47, %do.end52 ], [ -19, %err_out_free_netdev ], [ 0, %sw.epilog ], [ -12, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tulip_remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %rx_ring = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 8
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2320
  %4 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 2560, ptr noundef %3, i32 noundef %5, i32 noundef 0) #12
  %mtable = getelementptr i8, ptr %1, i32 4820
  %6 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtable, align 4
  tail call void @kfree(ptr noundef %7) #12
  %base_addr = getelementptr i8, ptr %1, i32 4848
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %9) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_mwi_config(ptr noundef %pdev, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %cache = alloca i8, align 1
  %pci_command = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cache) #12
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cache, align 1, !annotation !280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_command) #12
  %1 = ptrtoint ptr %pci_command to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pci_command, align 2, !annotation !280
  %2 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.body1, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_mwi_config.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_mwi_config, %if.end9)) #12
          to label %if.then6 [label %if.end9], !srcloc !286

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_mwi_config.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.69) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1, %entry.if.end9_crit_edge
  %csr010 = getelementptr i8, ptr %dev, i32 4256
  %3 = ptrtoint ptr %csr010 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %csr010, align 8
  %call11 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #12
  %call12 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %pci_command) #12
  %4 = ptrtoint ptr %pci_command to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pci_command, align 2
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool15.not = icmp eq i16 %6, 0
  %csr0.0 = select i1 %tobool15.not, i32 2097152, i32 18874368
  %call19 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 12, ptr noundef nonnull %cache) #12
  %and20 = and i32 %csr0.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end9.if.end28thread-pre-split_crit_edge, label %land.lhs.true22

if.end9.if.end28thread-pre-split_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28thread-pre-split

land.lhs.true22:                                  ; preds = %if.end9
  %7 = ptrtoint ptr %cache to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cache, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp24 = icmp eq i8 %8, 0
  br i1 %cmp24, label %if.then26, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_clear_mwi(ptr noundef %pdev) #12
  br label %if.end28thread-pre-split

if.end28thread-pre-split:                         ; preds = %if.then26, %if.end9.if.end28thread-pre-split_crit_edge
  %csr0.1.ph = phi i32 [ %csr0.0, %if.end9.if.end28thread-pre-split_crit_edge ], [ 2097152, %if.then26 ]
  %9 = ptrtoint ptr %cache to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %cache, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %land.lhs.true22.if.end28_crit_edge
  %10 = phi i8 [ %.pr, %if.end28thread-pre-split ], [ %8, %land.lhs.true22.if.end28_crit_edge ]
  %csr0.1 = phi i32 [ %csr0.1.ph, %if.end28thread-pre-split ], [ 18874368, %land.lhs.true22.if.end28_crit_edge ]
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %10, label %sw.epilog.thread [
    i8 8, label %if.end28.sw.epilog_crit_edge
    i8 16, label %sw.bb31
    i8 32, label %sw.bb33
  ]

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %cache to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %cache, align 1
  br label %if.end37

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb31, %if.end28.sw.epilog_crit_edge
  %.sink = phi i32 [ 8445952, %sw.bb33 ], [ 8425472, %sw.bb31 ], [ 8409088, %if.end28.sw.epilog_crit_edge ]
  %or34 = or i32 %csr0.1, %.sink
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr94 = load i8, ptr %cache, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr94)
  %tobool35.not = icmp eq i8 %.pr94, 0
  br i1 %tobool35.not, label %sw.epilog.if.end37_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %sw.epilog.if.end37_crit_edge, %sw.epilog.thread
  %csr0.297 = phi i32 [ %csr0.1, %sw.epilog.thread ], [ %or34, %sw.epilog.if.end37_crit_edge ]
  %and38 = and i32 %csr0.297, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end42_crit_edge, label %if.then40

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_clear_mwi(ptr noundef %pdev) #12
  %and41 = and i32 %csr0.297, -16777217
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %csr0.3 = phi i32 [ %and41, %if.then40 ], [ %csr0.297, %if.end37.if.end42_crit_edge ]
  %or43 = or i32 %csr0.3, 18432
  br label %out

out:                                              ; preds = %if.end42, %sw.epilog.out_crit_edge
  %csr0.4 = phi i32 [ %or34, %sw.epilog.out_crit_edge ], [ %or43, %if.end42 ]
  %14 = ptrtoint ptr %csr010 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %csr0.4, ptr %csr010, align 8
  %15 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp45 = icmp sgt i32 %15, 2
  br i1 %cmp45, label %do.body49, label %out.if.end70_crit_edge

out.if.end70_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body49:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_mwi_config.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_mwi_config, %if.end70)) #12
          to label %if.then63 [label %if.end70], !srcloc !286

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %cache to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cache, align 1
  %conv64 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_mwi_config.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %conv64, i32 noundef %csr0.4) #12
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %do.body49, %out.if.end70_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_command) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_read_eeprom(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_parse_eeprom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_select_media(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_find_mii(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_poll(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic2_lnk_change(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @t21142_lnk_change(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic_lnk_change(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @t21142_start_nway(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_set_power_state(ptr nocapture noundef readonly %tp, i32 noundef %snooze) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #12
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !280
  %pdev = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 38
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %call = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 64, ptr noundef nonnull %tmp) #12
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %and1 = and i32 %6, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %snooze)
  %tobool4.not = icmp eq i32 %snooze, 0
  %or6 = or i32 %and1, 1073741824
  %newtmp.0 = select i1 %tobool4.not, i32 %and1, i32 %or6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %newtmp.0)
  %cmp.not = icmp eq i32 %6, %newtmp.0
  br i1 %cmp.not, label %if.then.if.end11_crit_edge, label %if.then8

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call10 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 64, i32 noundef %newtmp.0) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #12
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %susp_rx.i = getelementptr i8, ptr %dev, i32 4840
  %0 = ptrtoint ptr %susp_rx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %susp_rx.i, align 8
  %ttimer.i = getelementptr i8, ptr %dev, i32 4836
  %1 = ptrtoint ptr %ttimer.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ttimer.i, align 4
  %nir.i = getelementptr i8, ptr %dev, i32 4844
  %2 = ptrtoint ptr %nir.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nir.i, align 4
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2312
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2320
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.0122.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i = getelementptr %struct.tulip_rx_desc, ptr %4, i32 %i.0122.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.i, align 4
  %6 = load ptr, ptr %rx_ring.i, align 8
  %length.i = getelementptr %struct.tulip_rx_desc, ptr %6, i32 %i.0122.i, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67502080, ptr %length.i, align 4
  %8 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_dma.i, align 8
  %add.i = add nuw nsw i32 %i.0122.i, 1
  %mul.i = shl i32 %add.i, 4
  %add3.i = add i32 %9, %mul.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %add3.i) #12
  %11 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_ring.i, align 8
  %buffer2.i = getelementptr %struct.tulip_rx_desc, ptr %12, i32 %i.0122.i, i32 3
  %13 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %buffer2.i, align 4
  %arrayidx6.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.0122.i
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx6.i, align 8
  %mapping.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.0122.i, i32 1
  %15 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mapping.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %16 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring.i, align 8
  %length11.i = getelementptr %struct.tulip_rx_desc, ptr %17, i32 127, i32 1
  %18 = ptrtoint ptr %length11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67502082, ptr %length11.i, align 4
  %19 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_ring_dma.i, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring.i, align 8
  %buffer216.i = getelementptr %struct.tulip_rx_desc, ptr %23, i32 127, i32 3
  %24 = ptrtoint ptr %buffer216.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %buffer216.i, align 4
  %pdev.i = getelementptr i8, ptr %dev, i32 4832
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc38.i.for.body19.i_crit_edge, %for.end.i
  %i.1123.i = phi i32 [ 0, %for.end.i ], [ %inc39.i, %for.inc38.i.for.body19.i_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1540, i32 noundef 2592) #12
  %arrayidx24.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.1123.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %arrayidx24.i, align 8
  %cmp26.i = icmp eq ptr %call.i.i, null
  br i1 %cmp26.i, label %for.body19.i.for.end40.i_crit_edge, label %if.end.i

for.body19.i.for.end40.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40.i

if.end.i:                                         ; preds = %for.body19.i
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 8
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %call.i118.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #12
  br i1 %call.i118.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.for.inc38.i_crit_edge, label %if.then.i.i, !prof !287

land.rhs.i.i.for.inc38.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev27.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44, i32 3
  %30 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev27.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %33, %if.end.i.i.i ], [ %31, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %for.inc38.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev27.i, ptr noundef %29, i32 noundef 1540) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %29 to i32
  %sub.i.i = add i32 %35, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i119.i = getelementptr %struct.page, ptr %34, i32 %shr.i.i
  %and.i.i = and i32 %35, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev27.i, ptr noundef %add.ptr.i119.i, i32 noundef %and.i.i, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #12
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.for.inc38.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.for.inc38.i_crit_edge ]
  %mapping31.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.1123.i, i32 1
  %36 = ptrtoint ptr %mapping31.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i, ptr %mapping31.i, align 4
  %37 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx33.i = getelementptr %struct.tulip_rx_desc, ptr %38, i32 %i.1123.i
  %39 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %arrayidx33.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #12
  %41 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_ring.i, align 8
  %buffer1.i = getelementptr %struct.tulip_rx_desc, ptr %42, i32 %i.1123.i, i32 2
  %43 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %buffer1.i, align 4
  %inc39.i = add nuw nsw i32 %i.1123.i, 1
  %exitcond125.not.i = icmp eq i32 %inc39.i, 128
  br i1 %exitcond125.not.i, label %for.inc38.i.for.end40.i_crit_edge, label %for.inc38.i.for.body19.i_crit_edge

for.inc38.i.for.body19.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19.i

for.inc38.i.for.end40.i_crit_edge:                ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40.i

for.end40.i:                                      ; preds = %for.inc38.i.for.end40.i_crit_edge, %for.body19.i.for.end40.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.1123.i, %for.body19.i.for.end40.i_crit_edge ], [ 128, %for.inc38.i.for.end40.i_crit_edge ]
  %sub41.i = add nsw i32 %i.1.lcssa.i, -128
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 4240
  %44 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub41.i, ptr %dirty_rx.i, align 8
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2316
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.end40.i
  %i.2124.i = phi i32 [ 0, %for.end40.i ], [ %add52.i, %for.body44.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.2124.i
  %45 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx45.i, align 8
  %mapping49.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.2124.i, i32 1
  %46 = ptrtoint ptr %mapping49.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mapping49.i, align 4
  %47 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx50.i = getelementptr %struct.tulip_tx_desc, ptr %48, i32 %i.2124.i
  %49 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx50.i, align 4
  %50 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_ring_dma.i, align 4
  %add52.i = add nuw nsw i32 %i.2124.i, 1
  %mul53.i = shl i32 %add52.i, 4
  %add54.i = add i32 %51, %mul53.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %add54.i) #12
  %53 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring.i, align 4
  %buffer257.i = getelementptr %struct.tulip_tx_desc, ptr %54, i32 %i.2124.i, i32 3
  %55 = ptrtoint ptr %buffer257.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %buffer257.i, align 4
  %exitcond126.not.i = icmp eq i32 %add52.i, 32
  br i1 %exitcond126.not.i, label %tulip_init_ring.exit, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.i

tulip_init_ring.exit:                             ; preds = %for.body44.i
  %56 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_ring_dma.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  %59 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_ring.i, align 4
  %buffer265.i = getelementptr %struct.tulip_tx_desc, ptr %60, i32 31, i32 3
  %61 = ptrtoint ptr %buffer265.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %buffer265.i, align 4
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 46
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %65, ptr noundef nonnull @tulip_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %free_ring

if.end:                                           ; preds = %tulip_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tulip_up(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %66 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %67, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

free_ring:                                        ; preds = %tulip_init_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tulip_free_ring(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %free_ring, %if.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call fastcc void @tulip_down(ptr noundef %dev)
  %4 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_close.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_close, %if.end10)) #12
          to label %if.then6 [label %if.end10], !srcloc !286

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !281
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_close.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %6) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body1, %entry.if.end10_crit_edge
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %dev) #12
  tail call fastcc void @tulip_free_ring(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 4144
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %cur_tx = getelementptr i8, ptr %dev, i32 4236
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %1, 31
  %arrayidx = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %arrayidx, align 8
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !287

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev8) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev8, ptr noundef %6, i32 noundef %8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i73 = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev8, ptr noundef %add.ptr.i73, i32 noundef %and.i, i32 noundef %8, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %mapping12 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem, i32 1
  %15 = ptrtoint ptr %mapping12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %mapping12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %tx_ring = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring, align 4
  %buffer1 = getelementptr %struct.tulip_tx_desc, ptr %18, i32 %rem, i32 2
  %19 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %buffer1, align 4
  %20 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 4244
  %22 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty_tx, align 4
  %sub = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp15 = icmp ult i32 %sub, 16
  br i1 %cmp15, label %dma_map_single_attrs.exit.if.end32_crit_edge, label %if.else

dma_map_single_attrs.exit.if.end32_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp20 = icmp eq i32 %sub, 16
  br i1 %cmp20, label %if.else.if.end32_crit_edge, label %if.else23

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub)
  %cmp27 = icmp ult i32 %sub, 30
  br i1 %cmp27, label %if.else23.if.end32_crit_edge, label %if.else30

if.else23.if.end32_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else30:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.else23.if.end32_crit_edge, %if.else.if.end32_crit_edge, %dma_map_single_attrs.exit.if.end32_crit_edge
  %flag.0 = phi i32 [ -536870912, %if.else30 ], [ 1610612736, %dma_map_single_attrs.exit.if.end32_crit_edge ], [ -536870912, %if.else.if.end32_crit_edge ], [ 1610612736, %if.else23.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem)
  %cmp33 = icmp eq i32 %rem, 31
  %spec.select = select i1 %cmp33, i32 -503316480, i32 %flag.0
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %or = or i32 %27, %spec.select
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ring, align 4
  %length = getelementptr %struct.tulip_tx_desc, ptr %30, i32 %rem, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %length, align 4
  %32 = load ptr, ptr %tx_ring, align 4
  %arrayidx41 = getelementptr %struct.tulip_tx_desc, ptr %32, i32 %rem
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %arrayidx41, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_tx, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %cur_tx, align 4
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %36 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !284
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  %hash_table.i = alloca [32 x i16], align 2
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %3 = and i32 %2, 721420287
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %csr62 = getelementptr i8, ptr %dev, i32 4260
  %5 = ptrtoint ptr %csr62 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %csr62, align 4
  %and3 = and i32 %6, -214
  store i32 %and3, ptr %csr62, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and4 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and3, 192
  %9 = ptrtoint ptr %csr62 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %csr62, align 4
  %or6 = or i32 %4, 192
  br label %if.end245

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %11)
  %cmp = icmp slt i32 %11, 1001
  %and8 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %cmp, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or12 = or i32 %and3, 128
  %12 = ptrtoint ptr %csr62 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or12, ptr %csr62, align 4
  %or13 = or i32 %4, 128
  br label %if.end245

if.else14:                                        ; preds = %if.else
  %flags15 = getelementptr i8, ptr %dev, i32 3808
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags15, align 8
  %and16 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else157, label %if.then18

if.then18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp21 = icmp sgt i32 %11, 64
  br i1 %cmp21, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %or24 = or i32 %and3, 128
  %15 = ptrtoint ptr %csr62 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or24, ptr %csr62, align 4
  %or25 = or i32 %4, 128
  br label %if.end245

if.else26:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #12
  %16 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %mc_filter, align 8
  %17 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0378 = load ptr, ptr %mc, align 4
  %cmp32.not379 = icmp eq ptr %ha.0378, %mc
  br i1 %cmp32.not379, label %if.else26.for.end_crit_edge, label %for.body.lr.ph

if.else26.for.end_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else26
  %dev74 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ha.0380 = phi ptr [ %ha.0378, %for.body.lr.ph ], [ %ha.0, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags15, align 8
  %and34 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %addr39 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0380, i32 0, i32 2
  %call41 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr39, i32 noundef 6) #16
  br i1 %tobool35.not, label %cond.end, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = and i32 %call41, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i, align 1
  %23 = lshr i8 %22, 2
  %shr66 = zext i8 %23 to i32
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body.if.end_crit_edge
  %filterbit.0 = phi i32 [ %shr66, %cond.end ], [ %call41, %for.body.if.end_crit_edge ]
  %and67 = and i32 %filterbit.0, 63
  %and68 = and i32 %filterbit.0, 31
  %shl69 = shl nuw i32 1, %and68
  %24 = lshr i32 %and67, 5
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %or71 = or i32 %shl69, %26
  store i32 %or71, ptr %arrayidx, align 4
  %27 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp72 = icmp sgt i32 %27, 2
  br i1 %cmp72, label %do.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %addr75 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0380, i32 0, i32 2
  %call80 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr75, i32 noundef 6) #16
  %28 = lshr i32 %call80, 8
  %conv4.i.i353 = and i32 %28, 255
  %arrayidx.i10.i.i354 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i353
  %29 = ptrtoint ptr %arrayidx.i10.i.i354 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i10.i.i354, align 1
  %conv6.i.i355 = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %conv6.i.i355, 16
  %32 = and i32 %call80, 255
  %arrayidx.i.i.i351 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i351 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i.i351, align 1
  %conv2.i.i352 = zext i8 %34 to i32
  %35 = shl nuw i32 %conv2.i.i352, 24
  %or.i13.i363 = or i32 %31, %35
  %sum.shift.i360 = lshr i32 %call80, 24
  %arrayidx.i10.i11.i361 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i360
  %36 = ptrtoint ptr %arrayidx.i10.i11.i361 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i10.i11.i361, align 1
  %conv6.i12.i362 = zext i8 %37 to i32
  %shl.i364 = or i32 %or.i13.i363, %conv6.i12.i362
  %shr.i356 = lshr i32 %call80, 16
  %38 = and i32 %shr.i356, 255
  %arrayidx.i.i7.i357 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i7.i357 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i7.i357, align 1
  %conv2.i8.i358 = zext i8 %40 to i32
  %shl.i9.i359 = shl nuw nsw i32 %conv2.i8.i358, 8
  %or.i365 = or i32 %shl.i364, %shl.i9.i359
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.89, ptr noundef %addr75, i32 noundef %or.i365, i32 noundef %and67) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge
  %41 = ptrtoint ptr %ha.0380 to i32
  call void @__asan_load4_noabort(i32 %41)
  %ha.0 = load ptr, ptr %ha.0380, align 4
  %cmp32.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else26.for.end_crit_edge
  %42 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mc_filter, align 8
  %mc_filter119 = getelementptr i8, ptr %dev, i32 4136
  %44 = ptrtoint ptr %mc_filter119 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mc_filter119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp121 = icmp eq i32 %43, %45
  br i1 %cmp121, label %land.lhs.true, label %for.end.if.else127_crit_edge

for.end.if.else127_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else127

land.lhs.true:                                    ; preds = %for.end
  %arrayidx122 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx122, align 4
  %arrayidx124 = getelementptr i8, ptr %dev, i32 4140
  %48 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx124, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp125 = icmp eq i32 %47, %49
  br i1 %cmp125, label %land.lhs.true.if.end149_crit_edge, label %land.lhs.true.if.else127_crit_edge

land.lhs.true.if.else127_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else127

land.lhs.true.if.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.else127:                                       ; preds = %land.lhs.true.if.else127_crit_edge, %for.end.if.else127_crit_edge
  %50 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags15, align 8
  %and129 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else138, label %if.then131

if.then131:                                       ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr132 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 33554432) #12, !srcloc !284
  %add.ptr134 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %52) #12, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 50331648) #12, !srcloc !284
  %arrayidx136 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx136, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %55) #12, !srcloc !284
  br label %if.end149

if.else138:                                       ; preds = %if.else127
  %and140 = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.else138.if.end149_crit_edge, label %if.then142

if.else138.if.end149_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then142:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr144 = getelementptr i8, ptr %1, i32 172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %56 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %56) #12, !srcloc !284
  %arrayidx145 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx145, align 4
  %add.ptr146 = getelementptr i8, ptr %1, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %59) #12, !srcloc !284
  br label %if.end149

if.end149:                                        ; preds = %if.then142, %if.else138.if.end149_crit_edge, %if.then131, %land.lhs.true.if.end149_crit_edge
  %60 = ptrtoint ptr %mc_filter119 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %43, ptr %mc_filter119, align 8
  %arrayidx153 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx153, align 4
  %arrayidx155 = getelementptr i8, ptr %dev, i32 4140
  %63 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx155, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #12
  br label %if.end245

if.else157:                                       ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %11)
  %cmp161 = icmp sgt i32 %11, 14
  %setup_frame = getelementptr i8, ptr %dev, i32 3608
  br i1 %cmp161, label %if.then162, label %if.else164

if.then162:                                       ; preds = %if.else157
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_table.i) #12
  %64 = call ptr @memset(ptr %hash_table.i, i32 0, i32 64)
  %add.ptr.i.i.i = getelementptr inbounds i32, ptr %hash_table.i, i32 7
  %65 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %add.ptr.i.i.i, align 4
  %66 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %66)
  %ha.055.i = load ptr, ptr %mc, align 4
  %cmp.not56.i = icmp eq ptr %ha.055.i, %mc
  br i1 %cmp.not56.i, label %if.then162.for.body15.i.preheader_crit_edge, label %if.then162.for.body.i_crit_edge

if.then162.for.body.i_crit_edge:                  ; preds = %if.then162
  br label %for.body.i

if.then162.for.body15.i.preheader_crit_edge:      ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.preheader

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then162.for.body.i_crit_edge
  %ha.057.i = phi ptr [ %ha.0.i, %for.body.i.for.body.i_crit_edge ], [ %ha.055.i, %if.then162.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.057.i, i32 0, i32 2
  %call6.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #16
  %xor.i.i = and i32 %call6.i, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %and.i = lshr i32 %call6.i, 5
  %div2.i.i.i = and i32 %and.i, 15
  %add.ptr.i.i53.i = getelementptr i32, ptr %hash_table.i, i32 %div2.i.i.i
  %67 = ptrtoint ptr %add.ptr.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i53.i, align 4
  %or.i.i54.i = or i32 %shl.i.i.i, %68
  store i32 %or.i.i54.i, ptr %add.ptr.i.i53.i, align 4
  %69 = ptrtoint ptr %ha.057.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %ha.0.i = load ptr, ptr %ha.057.i, align 4
  %cmp.not.i = icmp eq ptr %ha.0.i, %mc
  br i1 %cmp.not.i, label %for.body.i.for.body15.i.preheader_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.body15.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.preheader

for.body15.i.preheader:                           ; preds = %for.body.i.for.body15.i.preheader_crit_edge, %if.then162.for.body15.i.preheader_crit_edge
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.i.preheader
  %setup_frm.addr.059.i = phi ptr [ %incdec.ptr17.i, %for.body15.i.for.body15.i_crit_edge ], [ %setup_frame, %for.body15.i.preheader ]
  %i.058.i = phi i32 [ %inc.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %for.body15.i.preheader ]
  %arrayidx.i = getelementptr [32 x i16], ptr %hash_table.i, i32 0, i32 %i.058.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i, align 2
  %incdec.ptr.i = getelementptr i16, ptr %setup_frm.addr.059.i, i32 1
  %72 = ptrtoint ptr %setup_frm.addr.059.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %setup_frm.addr.059.i, align 2
  %incdec.ptr17.i = getelementptr i16, ptr %setup_frm.addr.059.i, i32 2
  %73 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %71, ptr %incdec.ptr.i, align 2
  %inc.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %build_setup_frame_hash.exit, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

build_setup_frame_hash.exit:                      ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx20.i = getelementptr i8, ptr %dev, i32 3764
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %74 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_addr.i, align 64
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %75, align 2
  %incdec.ptr22.i = getelementptr i8, ptr %dev, i32 3766
  %78 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx20.i, align 2
  %79 = load i16, ptr %75, align 2
  %incdec.ptr24.i = getelementptr i8, ptr %dev, i32 3768
  %80 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %incdec.ptr22.i, align 2
  %arrayidx25.i = getelementptr i16, ptr %75, i32 1
  %81 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx25.i, align 2
  %incdec.ptr26.i = getelementptr i8, ptr %dev, i32 3770
  %83 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %incdec.ptr24.i, align 2
  %84 = load i16, ptr %arrayidx25.i, align 2
  %incdec.ptr28.i = getelementptr i8, ptr %dev, i32 3772
  %85 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %incdec.ptr26.i, align 2
  %arrayidx29.i = getelementptr i16, ptr %75, i32 2
  %86 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx29.i, align 2
  %incdec.ptr30.i = getelementptr i8, ptr %dev, i32 3774
  %88 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %incdec.ptr28.i, align 2
  %89 = load i16, ptr %arrayidx29.i, align 2
  %90 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %incdec.ptr30.i, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_table.i) #12
  br label %do.body169

if.else164:                                       ; preds = %if.else157
  %91 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %91)
  %ha.059.i = load ptr, ptr %mc, align 4
  %cmp.not60.i = icmp eq ptr %ha.059.i, %mc
  br i1 %cmp.not60.i, label %if.else164.build_setup_frame_perfect.exit_crit_edge, label %if.else164.for.body.i371_crit_edge

if.else164.for.body.i371_crit_edge:               ; preds = %if.else164
  br label %for.body.i371

if.else164.build_setup_frame_perfect.exit_crit_edge: ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_setup_frame_perfect.exit

for.body.i371:                                    ; preds = %for.body.i371.for.body.i371_crit_edge, %if.else164.for.body.i371_crit_edge
  %ha.062.i = phi ptr [ %ha.0.i369, %for.body.i371.for.body.i371_crit_edge ], [ %ha.059.i, %if.else164.for.body.i371_crit_edge ]
  %setup_frm.addr.061.i = phi ptr [ %incdec.ptr11.i, %for.body.i371.for.body.i371_crit_edge ], [ %setup_frame, %if.else164.for.body.i371_crit_edge ]
  %addr.i367 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.062.i, i32 0, i32 2
  %92 = ptrtoint ptr %addr.i367 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %addr.i367, align 2
  %incdec.ptr.i368 = getelementptr i16, ptr %setup_frm.addr.061.i, i32 1
  %94 = ptrtoint ptr %setup_frm.addr.061.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %setup_frm.addr.061.i, align 2
  %incdec.ptr4.i = getelementptr %struct.netdev_hw_addr, ptr %ha.062.i, i32 0, i32 2, i32 2
  %95 = load i16, ptr %addr.i367, align 2
  %incdec.ptr5.i = getelementptr i16, ptr %setup_frm.addr.061.i, i32 2
  %96 = ptrtoint ptr %incdec.ptr.i368 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %incdec.ptr.i368, align 2
  %97 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %incdec.ptr4.i, align 2
  %incdec.ptr6.i = getelementptr i16, ptr %setup_frm.addr.061.i, i32 3
  %99 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %incdec.ptr5.i, align 2
  %incdec.ptr7.i = getelementptr %struct.netdev_hw_addr, ptr %ha.062.i, i32 0, i32 2, i32 4
  %100 = load i16, ptr %incdec.ptr4.i, align 2
  %incdec.ptr8.i = getelementptr i16, ptr %setup_frm.addr.061.i, i32 4
  %101 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %incdec.ptr6.i, align 2
  %102 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %incdec.ptr7.i, align 2
  %incdec.ptr9.i = getelementptr i16, ptr %setup_frm.addr.061.i, i32 5
  %104 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %incdec.ptr8.i, align 2
  %105 = load i16, ptr %incdec.ptr7.i, align 2
  %incdec.ptr11.i = getelementptr i16, ptr %setup_frm.addr.061.i, i32 6
  %106 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %incdec.ptr9.i, align 2
  %107 = ptrtoint ptr %ha.062.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %ha.0.i369 = load ptr, ptr %ha.062.i, align 4
  %cmp.not.i370 = icmp eq ptr %ha.0.i369, %mc
  br i1 %cmp.not.i370, label %for.body.i371.build_setup_frame_perfect.exit_crit_edge, label %for.body.i371.for.body.i371_crit_edge

for.body.i371.for.body.i371_crit_edge:            ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i371

for.body.i371.build_setup_frame_perfect.exit_crit_edge: ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_setup_frame_perfect.exit

build_setup_frame_perfect.exit:                   ; preds = %for.body.i371.build_setup_frame_perfect.exit_crit_edge, %if.else164.build_setup_frame_perfect.exit_crit_edge
  %setup_frm.addr.0.lcssa.i = phi ptr [ %setup_frame, %if.else164.build_setup_frame_perfect.exit_crit_edge ], [ %incdec.ptr11.i, %for.body.i371.build_setup_frame_perfect.exit_crit_edge ]
  %108 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count, align 8
  %sub.i = sub i32 15, %109
  %mul.i = mul i32 %sub.i, 12
  %110 = call ptr @memset(ptr %setup_frm.addr.0.lcssa.i, i32 255, i32 %mul.i)
  %arrayidx.i372 = getelementptr i8, ptr %dev, i32 3788
  %dev_addr.i373 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %111 = ptrtoint ptr %dev_addr.i373 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_addr.i373, align 64
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %112, align 2
  %incdec.ptr19.i = getelementptr i8, ptr %dev, i32 3790
  %115 = ptrtoint ptr %arrayidx.i372 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %arrayidx.i372, align 2
  %116 = load i16, ptr %112, align 2
  %incdec.ptr21.i = getelementptr i8, ptr %dev, i32 3792
  %117 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %incdec.ptr19.i, align 2
  %arrayidx22.i = getelementptr i16, ptr %112, i32 1
  %118 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx22.i, align 2
  %incdec.ptr23.i = getelementptr i8, ptr %dev, i32 3794
  %120 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %incdec.ptr21.i, align 2
  %121 = load i16, ptr %arrayidx22.i, align 2
  %incdec.ptr25.i = getelementptr i8, ptr %dev, i32 3796
  %122 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %incdec.ptr23.i, align 2
  %arrayidx26.i = getelementptr i16, ptr %112, i32 2
  %123 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx26.i, align 2
  %incdec.ptr27.i = getelementptr i8, ptr %dev, i32 3798
  %125 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %incdec.ptr25.i, align 2
  %126 = load i16, ptr %arrayidx26.i, align 2
  %127 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %incdec.ptr27.i, align 2
  br label %do.body169

do.body169:                                       ; preds = %build_setup_frame_perfect.exit, %build_setup_frame_hash.exit
  %tx_flags.0 = phi i32 [ 138412224, %build_setup_frame_hash.exit ], [ 134217920, %build_setup_frame_perfect.exit ]
  %lock = getelementptr i8, ptr %dev, i32 4144
  %call173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %cur_tx = getelementptr i8, ptr %dev, i32 4236
  %128 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 4244
  %130 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dirty_tx, align 4
  %sub = sub i32 %129, %131
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub)
  %cmp178 = icmp ugt i32 %sub, 30
  br i1 %cmp178, label %do.body169.if.end241_crit_edge, label %if.else181

do.body169.if.end241_crit_edge:                   ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.else181:                                       ; preds = %do.body169
  %inc = add i32 %129, 1
  %132 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %inc, ptr %cur_tx, align 4
  %rem = and i32 %129, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp184.not = icmp eq i32 %rem, 0
  br i1 %cmp184.not, label %if.else181.if.end199_crit_edge, label %if.then186

if.else181.if.end199_crit_edge:                   ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then186:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx187 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %133 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %arrayidx187, align 8
  %mapping = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem, i32 1
  %134 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem)
  %cmp190 = icmp eq i32 %rem, 31
  %cond192 = select i1 %cmp190, i32 2, i32 0
  %tx_ring = getelementptr i8, ptr %dev, i32 2316
  %135 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_ring, align 4
  %length = getelementptr %struct.tulip_tx_desc, ptr %136, i32 %rem, i32 1
  %137 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %cond192, ptr %length, align 4
  %138 = load ptr, ptr %tx_ring, align 4
  %buffer1 = getelementptr %struct.tulip_tx_desc, ptr %138, i32 %rem, i32 2
  %139 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %buffer1, align 4
  %140 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cur_tx, align 4
  %inc197 = add i32 %141, 1
  store i32 %inc197, ptr %cur_tx, align 4
  %rem198 = and i32 %141, 31
  br label %if.end199

if.end199:                                        ; preds = %if.then186, %if.else181.if.end199_crit_edge
  %entry182.0 = phi i32 [ %rem198, %if.then186 ], [ 0, %if.else181.if.end199_crit_edge ]
  %dummy.0 = phi i32 [ %rem, %if.then186 ], [ -1, %if.else181.if.end199_crit_edge ]
  %arrayidx201 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %entry182.0
  %142 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %arrayidx201, align 8
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %143 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev, align 8
  %dev203 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %setup_frame204 = getelementptr i8, ptr %dev, i32 3608
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %setup_frame204) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end199
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !287

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev203) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44, i32 3
  %145 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev203, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %148, %if.end.i.i ], [ %146, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev203, ptr noundef %setup_frame204, i32 noundef 192) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %149 = load ptr, ptr @mem_map, align 4
  %150 = ptrtoint ptr %setup_frame204 to i32
  %sub.i374 = add i32 %150, 1073741824
  %shr.i375 = lshr i32 %sub.i374, 12
  %add.ptr.i376 = getelementptr %struct.page, ptr %149, i32 %shr.i375
  %and.i377 = and i32 %150, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev203, ptr noundef %add.ptr.i376, i32 noundef %and.i377, i32 noundef 192, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %mapping209 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %entry182.0, i32 1
  %151 = ptrtoint ptr %mapping209 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %retval.0.i, ptr %mapping209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %entry182.0)
  %cmp210 = icmp eq i32 %entry182.0, 31
  %or213 = or i32 %tx_flags.0, 33554432
  %spec.select = select i1 %cmp210, i32 %or213, i32 %tx_flags.0
  %152 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %tx_ring215 = getelementptr i8, ptr %dev, i32 2316
  %153 = ptrtoint ptr %tx_ring215 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tx_ring215, align 4
  %length217 = getelementptr %struct.tulip_tx_desc, ptr %154, i32 %entry182.0, i32 1
  %155 = ptrtoint ptr %length217 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %length217, align 4
  %156 = ptrtoint ptr %mapping209 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mapping209, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %159 = ptrtoint ptr %tx_ring215 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tx_ring215, align 4
  %buffer1223 = getelementptr %struct.tulip_tx_desc, ptr %160, i32 %entry182.0, i32 2
  %161 = ptrtoint ptr %buffer1223 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %158, ptr %buffer1223, align 4
  %162 = load ptr, ptr %tx_ring215, align 4
  %arrayidx225 = getelementptr %struct.tulip_tx_desc, ptr %162, i32 %entry182.0
  %163 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 128, ptr %arrayidx225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dummy.0)
  %cmp226 = icmp sgt i32 %dummy.0, -1
  br i1 %cmp226, label %if.then228, label %dma_map_single_attrs.exit.if.end232_crit_edge

dma_map_single_attrs.exit.if.end232_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end232

if.then228:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %164 = ptrtoint ptr %tx_ring215 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tx_ring215, align 4
  %arrayidx230 = getelementptr %struct.tulip_tx_desc, ptr %165, i32 %dummy.0
  %166 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 128, ptr %arrayidx230, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then228, %dma_map_single_attrs.exit.if.end232_crit_edge
  %167 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cur_tx, align 4
  %169 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dirty_tx, align 4
  %sub235 = sub i32 %168, %170
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %sub235)
  %cmp236 = icmp ugt i32 %sub235, 29
  br i1 %cmp236, label %if.then238, label %if.end232.if.end239_crit_edge

if.end232.if.end239_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %171 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %172, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end232.if.end239_crit_edge
  %add.ptr240 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 0) #12, !srcloc !284
  br label %if.end241

if.end241:                                        ; preds = %if.end239, %do.body169.if.end241_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call173) #12
  br label %if.end245

if.end245:                                        ; preds = %if.end241, %if.end149, %if.then22, %if.then10, %if.then
  %csr6.1 = phi i32 [ %or6, %if.then ], [ %or13, %if.then10 ], [ %4, %if.end241 ], [ %or25, %if.then22 ], [ %4, %if.end149 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %173 = tail call i32 @llvm.bswap.i32(i32 %csr6.1) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %173) #12, !srcloc !284
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @private_ioctl(ptr noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %phys = getelementptr i8, ptr %dev, i32 4814
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys, align 2
  %4 = and i8 %3, 31
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %5 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg_num, align 2
  %conv2 = zext i16 %6 to i32
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %sw.bb15
    i32 35145, label %sw.bb95
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mii_cnt = getelementptr i8, ptr %dev, i32 4818
  %8 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %conv3 = zext i8 %4 to i16
  br label %if.else87.sink.split

if.else:                                          ; preds = %sw.bb
  %flags = getelementptr i8, ptr %dev, i32 3808
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and4 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %sw.bb15.thread239

sw.bb15.thread239:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 32, ptr %ifr_ifru.i, align 2
  br label %land.lhs.true

if.else8:                                         ; preds = %if.else
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %13 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp = icmp eq i32 %14, 10
  br i1 %cmp, label %if.else8.if.else87.sink.split_crit_edge, label %if.else8.cleanup_crit_edge

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else8.if.else87.sink.split_crit_edge:          ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87.sink.split

sw.bb15:                                          ; preds = %entry
  %15 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %.pr = load i16, ptr %ifr_ifru.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %.pr)
  %cmp18 = icmp eq i16 %.pr, 32
  br i1 %cmp18, label %sw.bb15.land.lhs.true_crit_edge, label %sw.bb15.if.else87_crit_edge

sw.bb15.if.else87_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87

sw.bb15.land.lhs.true_crit_edge:                  ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb15.land.lhs.true_crit_edge, %sw.bb15.thread239
  %flags20 = getelementptr i8, ptr %dev, i32 3808
  %16 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags20, align 8
  %and21 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.else87_crit_edge, label %if.then23

land.lhs.true.if.else87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87

if.then23:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr25 = getelementptr i8, ptr %1, i32 112
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #12, !srcloc !281
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %21 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.114)
  switch i16 %6, label %sw.default [
    i16 0, label %sw.bb27
    i16 1, label %sw.bb52
    i16 4, label %sw.bb68
    i16 5, label %sw.bb84
  ]

sw.bb27:                                          ; preds = %if.then23
  %22 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %sw.bb27.if.then35_crit_edge

sw.bb27.if.then35_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

lor.lhs.false:                                    ; preds = %sw.bb27
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %23 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp31 = icmp eq i8 %24, 5
  br i1 %cmp31, label %land.lhs.true33, label %lor.lhs.false.if.else36_crit_edge

lor.lhs.false.if.else36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %nwayset = getelementptr i8, ptr %dev, i32 4252
  %25 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %nwayset, align 4
  %26 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool34.not = icmp eq i16 %26, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.else36_crit_edge, label %land.lhs.true33.if.then35_crit_edge

land.lhs.true33.if.then35_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.lhs.true33.if.else36_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

if.then35:                                        ; preds = %land.lhs.true33.if.then35_crit_edge, %sw.bb27.if.then35_crit_edge
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %27 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4096, ptr %val_out, align 2
  br label %cleanup

if.else36:                                        ; preds = %land.lhs.true33.if.else36_crit_edge, %lor.lhs.false.if.else36_crit_edge
  %idxprom = zext i8 %24 to i32
  %arrayidx38 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %29 to i32
  %and40 = shl nuw nsw i32 %conv39, 9
  %30 = and i32 %and40, 8192
  %and46 = shl nuw nsw i32 %conv39, 8
  %31 = and i32 %and46, 256
  %or = or i32 %30, %31
  %conv49 = trunc i32 %or to i16
  %val_out50 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %32 = ptrtoint ptr %val_out50 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv49, ptr %val_out50, align 2
  br label %cleanup

sw.bb52:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %and53 = and i32 %33, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 20480
  %add = select i1 %cmp54, i16 6176, i16 6144
  %and57 = and i32 %33, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 6
  %val_out63 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %add61 = select i1 %cmp58, i16 24648, i16 24652
  %or66 = or i16 %add61, %add
  %34 = ptrtoint ptr %val_out63 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %or66, ptr %val_out63, align 2
  br label %cleanup

sw.bb68:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr69 = getelementptr i8, ptr %1, i32 48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #12, !srcloc !281
  %36 = lshr i32 %35, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %and71 = and i32 %36, 64
  %37 = lshr i32 %20, 1
  %and73 = and i32 %37, 32
  %val_out77 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %38 = lshr i32 %20, 9
  %and79 = and i32 %38, 960
  %add74 = or i32 %and79, %and73
  %conv76 = or i32 %add74, %and71
  %39 = trunc i32 %conv76 to i16
  %conv83 = or i16 %39, 1
  %40 = ptrtoint ptr %val_out77 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv83, ptr %val_out77, align 2
  br label %cleanup

sw.bb84:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %lpar = getelementptr i8, ptr %dev, i32 4804
  %41 = ptrtoint ptr %lpar to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %lpar, align 4
  %val_out85 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %43 = ptrtoint ptr %val_out85 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %val_out85, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %val_out86 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %44 = ptrtoint ptr %val_out86 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %val_out86, align 2
  br label %cleanup

if.else87.sink.split:                             ; preds = %if.else8.if.else87.sink.split_crit_edge, %if.then
  %.sink = phi i16 [ %conv3, %if.then ], [ 1, %if.else8.if.else87.sink.split_crit_edge ]
  %45 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %.sink, ptr %ifr_ifru.i, align 2
  br label %if.else87

if.else87:                                        ; preds = %if.else87.sink.split, %land.lhs.true.if.else87_crit_edge, %sw.bb15.if.else87_crit_edge
  %46 = phi i16 [ 32, %land.lhs.true.if.else87_crit_edge ], [ %.pr, %sw.bb15.if.else87_crit_edge ], [ %.sink, %if.else87.sink.split ]
  %47 = and i16 %46, 31
  %and90 = zext i16 %47 to i32
  %call91 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %and90, i32 noundef %conv2) #12
  %conv92 = trunc i32 %call91 to i16
  %val_out93 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %48 = ptrtoint ptr %val_out93 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv92, ptr %val_out93, align 2
  br label %cleanup

sw.bb95:                                          ; preds = %entry
  %and96 = and i32 %conv2, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end99, label %sw.bb95.cleanup_crit_edge

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end99:                                         ; preds = %sw.bb95
  %49 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ifr_ifru.i, align 2
  %51 = zext i8 %4 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %51)
  %cmp102 = icmp eq i16 %50, %51
  br i1 %cmp102, label %if.then104, label %if.end99.if.end134_crit_edge

if.end99.if.end134_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then104:                                       ; preds = %if.end99
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %val_in, align 2
  %54 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %6, label %if.then104.if.end134thread-pre-split_crit_edge [
    i16 0, label %sw.bb105
    i16 4, label %sw.bb130
  ]

if.then104.if.end134thread-pre-split_crit_edge:   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134thread-pre-split

sw.bb105:                                         ; preds = %if.then104
  %55 = and i16 %53, -28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool108.not = icmp eq i16 %55, 0
  %full_duplex_lock = getelementptr i8, ptr %dev, i32 4252
  %56 = ptrtoint ptr %full_duplex_lock to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load110 = load i16, ptr %full_duplex_lock, align 4
  %bf.shl = select i1 %tobool108.not, i16 16384, i16 0
  %bf.clear111 = and i16 %bf.load110, -16385
  %bf.set = or i16 %bf.clear111, %bf.shl
  store i16 %bf.set, ptr %full_duplex_lock, align 4
  br i1 %tobool108.not, label %if.then118, label %sw.bb105.if.end134thread-pre-split_crit_edge

sw.bb105.if.end134thread-pre-split_crit_edge:     ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134thread-pre-split

if.then118:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #14
  %57 = shl i16 %53, 7
  %bf.shl125 = and i16 %57, -32768
  %bf.clear126 = and i16 %bf.set, 32767
  %bf.set127 = or i16 %bf.clear126, %bf.shl125
  %58 = ptrtoint ptr %full_duplex_lock to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %bf.set127, ptr %full_duplex_lock, align 4
  br label %if.end134thread-pre-split

sw.bb130:                                         ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  %mii_advertise = getelementptr i8, ptr %dev, i32 4802
  %59 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %53, ptr %mii_advertise, align 2
  %advertising = getelementptr i8, ptr %dev, i32 4806
  %60 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %53, ptr %advertising, align 2
  br label %if.end134thread-pre-split

if.end134thread-pre-split:                        ; preds = %sw.bb130, %if.then118, %sw.bb105.if.end134thread-pre-split_crit_edge, %if.then104.if.end134thread-pre-split_crit_edge
  %61 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %.pr241 = load i16, ptr %ifr_ifru.i, align 2
  br label %if.end134

if.end134:                                        ; preds = %if.end134thread-pre-split, %if.end99.if.end134_crit_edge
  %62 = phi i16 [ %.pr241, %if.end134thread-pre-split ], [ %50, %if.end99.if.end134_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %62)
  %cmp137 = icmp eq i16 %62, 32
  br i1 %cmp137, label %land.lhs.true139, label %if.end134.if.else167_crit_edge

if.end134.if.else167_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else167

land.lhs.true139:                                 ; preds = %if.end134
  %flags140 = getelementptr i8, ptr %dev, i32 3808
  %63 = ptrtoint ptr %flags140 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags140, align 8
  %and141 = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %land.lhs.true139.if.else167_crit_edge, label %if.then143

land.lhs.true139.if.else167_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else167

if.then143:                                       ; preds = %land.lhs.true139
  %val_in145 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %val_in145 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %val_in145, align 2
  %67 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.116)
  switch i16 %6, label %if.then143.cleanup_crit_edge [
    i16 0, label %if.then148
    i16 4, label %if.then164
  ]

if.then143.cleanup_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then148:                                       ; preds = %if.then143
  %68 = and i16 %66, 4608
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %68)
  %cmp151 = icmp eq i16 %68, 4608
  br i1 %cmp151, label %if.then153, label %if.then148.cleanup_crit_edge

if.then148.cleanup_crit_edge:                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then153:                                       ; preds = %if.then148
  %chip_id154 = getelementptr i8, ptr %dev, i32 3800
  %69 = ptrtoint ptr %chip_id154 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chip_id154, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %70)
  %cmp155 = icmp eq i32 %70, 9
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pnic2_start_nway(ptr noundef %dev) #12
  br label %cleanup

if.else158:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @t21142_start_nway(ptr noundef %dev) #12
  br label %cleanup

if.then164:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %71 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %66, ptr %sym_advertise, align 8
  br label %cleanup

if.else167:                                       ; preds = %land.lhs.true139.if.else167_crit_edge, %if.end134.if.else167_crit_edge
  %72 = and i16 %62, 31
  %and170 = zext i16 %72 to i32
  %val_in171 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %val_in171 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %val_in171, align 2
  %conv172 = zext i16 %74 to i32
  tail call void @tulip_mdio_write(ptr noundef %dev, i32 noundef %and170, i32 noundef %conv2, i32 noundef %conv172) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else167, %if.then164, %if.else158, %if.then157, %if.then148.cleanup_crit_edge, %if.then143.cleanup_crit_edge, %sw.bb95.cleanup_crit_edge, %if.else87, %sw.default, %sw.bb84, %sw.bb68, %sw.bb52, %if.else36, %if.then35, %if.else8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.else8.cleanup_crit_edge ], [ 0, %sw.bb52 ], [ 0, %sw.bb68 ], [ 0, %sw.bb84 ], [ 0, %sw.default ], [ 0, %if.else36 ], [ 0, %if.then35 ], [ 0, %if.else87 ], [ -22, %sw.bb95.cleanup_crit_edge ], [ 0, %if.then157 ], [ 0, %if.else158 ], [ 0, %if.then148.cleanup_crit_edge ], [ 0, %if.then164 ], [ 0, %if.then143.cleanup_crit_edge ], [ 0, %if.else167 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tulip_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %lock = getelementptr i8, ptr %dev, i32 4144
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7 = icmp sgt i32 %7, 1
  br i1 %cmp7, label %do.end12, label %if.then.if.end75_crit_edge

if.then.if.end75_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.91) #15
  br label %if.end75

if.else:                                          ; preds = %entry
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_id, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %9, label %do.end66 [
    i32 2, label %if.else.do.end34_crit_edge
    i32 3, label %if.else.do.end34_crit_edge109
    i32 5, label %if.else.do.end34_crit_edge110
    i32 11, label %if.else.do.end34_crit_edge111
    i32 13, label %if.else.do.end34_crit_edge112
    i32 9, label %do.end53
  ]

if.else.do.end34_crit_edge112:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.else.do.end34_crit_edge111:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.else.do.end34_crit_edge110:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.else.do.end34_crit_edge109:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.else.do.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %if.else.do.end34_crit_edge, %if.else.do.end34_crit_edge109, %if.else.do.end34_crit_edge110, %if.else.do.end34_crit_edge111, %if.else.do.end34_crit_edge112
  %dev35 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !281
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr37 = getelementptr i8, ptr %1, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #12, !srcloc !281
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr39 = getelementptr i8, ptr %1, i32 104
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #12, !srcloc !281
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr41 = getelementptr i8, ptr %1, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #12, !srcloc !281
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr43 = getelementptr i8, ptr %1, i32 120
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #12, !srcloc !281
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35, ptr noundef nonnull @.str.95, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #15
  %timeout_recovery = getelementptr i8, ptr %dev, i32 4252
  %21 = ptrtoint ptr %timeout_recovery to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %timeout_recovery, align 4
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %timeout_recovery, align 4
  %media_work = getelementptr i8, ptr %dev, i32 4860
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %media_work) #12
  br label %out_unlock

do.end53:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev54 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %add.ptr55 = getelementptr i8, ptr %1, i32 40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #12, !srcloc !281
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr57 = getelementptr i8, ptr %1, i32 48
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #12, !srcloc !281
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr59 = getelementptr i8, ptr %1, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #12, !srcloc !281
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr61 = getelementptr i8, ptr %1, i32 96
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #12, !srcloc !281
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev54, ptr noundef nonnull @.str.98, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #15
  br label %if.end75

do.end66:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %dev67 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %add.ptr68 = getelementptr i8, ptr %1, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #12, !srcloc !281
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr70 = getelementptr i8, ptr %1, i32 96
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #12, !srcloc !281
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.101, i32 noundef %32, i32 noundef %34) #15
  %35 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %if_port, align 2
  br label %if.end75

if.end75:                                         ; preds = %do.end66, %do.end53, %do.end12, %if.then.if.end75_crit_edge
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i) #12
  %add.ptr.i107 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #12, !srcloc !284
  %dev.i = getelementptr i8, ptr %dev, i32 4904
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 5
  %38 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end75, %do.end34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 12
  %43 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i.i = icmp eq i32 %44, %42
  br i1 %cmp.not.i.i, label %out_unlock.netif_trans_update.exit_crit_edge, label %do.body5.i.i

out_unlock.netif_trans_update.exit_crit_edge:     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %42, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %out_unlock.netif_trans_update.exit_crit_edge
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %47) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tulip_get_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
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
  %lock = getelementptr i8, ptr %dev, i32 4144
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %7 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %rx_missed_errors, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stats9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_tulip(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #12
  %call2 = tail call i32 @tulip_interrupt(i32 noundef %3, ptr noundef %dev) #12
  tail call void @enable_irq(i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_up(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !280
  %napi = getelementptr i8, ptr %dev, i32 3816
  tail call void @napi_enable(ptr noundef %napi) #12
  %flags.i = getelementptr i8, ptr %dev, i32 3808
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_set_power_state.exit_crit_edge, label %if.then.i

entry.tulip_set_power_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_set_power_state.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp.i, align 4, !annotation !280
  %pdev.i = getelementptr i8, ptr %dev, i32 4832
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 64, ptr noundef nonnull %tmp.i) #12
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %9)
  %10 = icmp ult i32 %9, 1073741824
  br i1 %10, label %if.then.i.if.end11.i_crit_edge, label %if.then8.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i = and i32 %9, 1073741823
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 8
  %call10.i = call i32 @pci_write_config_dword(ptr noundef %12, i32 noundef 64, i32 noundef %and1.i) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then.i.if.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  br label %tulip_set_power_state.exit

tulip_set_power_state.exit:                       ; preds = %if.end11.i, %entry.tulip_set_power_state.exit_crit_edge
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %call1 = call i32 @pci_enable_wake(ptr noundef %14, i32 noundef 3, i1 noundef zeroext false) #12
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call3 = call i32 @pci_enable_wake(ptr noundef %16, i32 noundef 4, i1 noundef zeroext false) #12
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i, align 4
  %flags.i626 = getelementptr i8, ptr %20, i32 3808
  %21 = ptrtoint ptr %flags.i626 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i626, align 8
  %and.i627 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i627)
  %tobool.not.i628 = icmp eq i32 %and.i627, 0
  br i1 %tobool.not.i628, label %tulip_set_power_state.exit.tulip_set_wolopts.exit_crit_edge, label %if.then.i630

tulip_set_power_state.exit.tulip_set_wolopts.exit_crit_edge: ; preds = %tulip_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_set_wolopts.exit

if.then.i630:                                     ; preds = %tulip_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  %base_addr.i = getelementptr i8, ptr %20, i32 4848
  %23 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i629 = getelementptr i8, ptr %24, i32 136
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i629) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %26 = and i32 %25, 2147480574
  %27 = or i32 %26, 2048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i629, i32 %27) #12, !srcloc !284
  %add.ptr5.i = getelementptr i8, ptr %24, i32 104
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %29 = and i32 %28, -117900033
  %30 = or i32 %29, 117440512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %30) #12, !srcloc !284
  br label %tulip_set_wolopts.exit

tulip_set_wolopts.exit:                           ; preds = %if.then.i630, %tulip_set_power_state.exit.tulip_set_wolopts.exit_crit_edge
  %mii_cnt = getelementptr i8, ptr %dev, i32 4818
  %31 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %lor.lhs.false, label %tulip_set_wolopts.exit.if.then_crit_edge

tulip_set_wolopts.exit.if.then_crit_edge:         ; preds = %tulip_set_wolopts.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %tulip_set_wolopts.exit
  %mtable = getelementptr i8, ptr %dev, i32 4820
  %33 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mtable, align 4
  %tobool5.not = icmp eq ptr %34, null
  br i1 %tobool5.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %has_mii = getelementptr inbounds %struct.mediatable, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %has_mii to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %has_mii, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %tulip_set_wolopts.exit.if.then_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1024) #12, !srcloc !284
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #12, !srcloc !284
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call10 = call i32 @pci_read_config_dword(ptr noundef %37, i32 noundef 4, ptr noundef nonnull %reg) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 21474800) #12
  %csr0 = getelementptr i8, ptr %dev, i32 4256
  %39 = ptrtoint ptr %csr0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %csr0, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %41 = call i32 @llvm.bswap.i32(i32 %40) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %41) #12, !srcloc !284
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 8
  %call13 = call i32 @pci_read_config_dword(ptr noundef %43, i32 noundef 4, ptr noundef nonnull %reg) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 21474800) #12
  %45 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp = icmp sgt i32 %45, 1
  br i1 %cmp, label %do.body16, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_up.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_up, %if.end27)) #12
          to label %if.then22 [label %if.end27], !srcloc !286

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 46
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_up.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.77, i32 noundef %49) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.body16, %if.end.if.end27_crit_edge
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2320
  %50 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_ring_dma, align 8
  %add.ptr28 = getelementptr i8, ptr %1, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %52 = call i32 @llvm.bswap.i32(i32 %51) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %52) #12, !srcloc !284
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2324
  %53 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_ring_dma, align 4
  %add.ptr29 = getelementptr i8, ptr %1, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %55 = call i32 @llvm.bswap.i32(i32 %54) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %55) #12, !srcloc !284
  %cur_tx = getelementptr i8, ptr %dev, i32 4236
  %cur_rx = getelementptr i8, ptr %dev, i32 4232
  %56 = call ptr @memset(ptr %cur_rx, i32 0, i32 16)
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 8
  %and = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %dev_addr55 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr55, align 64
  br i1 %tobool30.not, label %if.else54, label %if.then31

if.then31:                                        ; preds = %if.end27
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %60, align 1
  %add.ptr34 = getelementptr i8, ptr %60, i32 4
  %63 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %add.ptr34, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #12
  %conv36 = zext i16 %65 to i32
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %66 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %cmp37 = icmp eq i32 %67, 8
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr40 = getelementptr i8, ptr %1, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #12, !srcloc !284
  %add.ptr41 = getelementptr i8, ptr %1, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %62) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %68 = call i32 @llvm.bswap.i32(i32 %conv36) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %68) #12, !srcloc !284
  br label %if.end88

if.else:                                          ; preds = %if.then31
  %and45 = and i32 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else.if.end88_crit_edge, label %if.then47

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr48 = getelementptr i8, ptr %1, i32 164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %62) #12, !srcloc !284
  %add.ptr49 = getelementptr i8, ptr %1, i32 168
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %69 = call i32 @llvm.bswap.i32(i32 %conv36) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %69) #12, !srcloc !284
  %add.ptr50 = getelementptr i8, ptr %1, i32 172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #12, !srcloc !284
  %add.ptr51 = getelementptr i8, ptr %1, i32 176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #12, !srcloc !284
  br label %if.end88

if.else54:                                        ; preds = %if.end27
  %setup_frame = getelementptr i8, ptr %dev, i32 3608
  %arrayidx = getelementptr i8, ptr %dev, i32 3788
  %70 = call ptr @memset(ptr %setup_frame, i32 255, i32 192)
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %60, align 2
  %incdec.ptr = getelementptr i8, ptr %dev, i32 3790
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx, align 2
  %74 = load i16, ptr %60, align 2
  %incdec.ptr59 = getelementptr i8, ptr %dev, i32 3792
  %75 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %incdec.ptr, align 2
  %arrayidx60 = getelementptr i16, ptr %60, i32 1
  %76 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx60, align 2
  %incdec.ptr61 = getelementptr i8, ptr %dev, i32 3794
  %78 = ptrtoint ptr %incdec.ptr59 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %incdec.ptr59, align 2
  %79 = load i16, ptr %arrayidx60, align 2
  %incdec.ptr63 = getelementptr i8, ptr %dev, i32 3796
  %80 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %incdec.ptr61, align 2
  %arrayidx64 = getelementptr i16, ptr %60, i32 2
  %81 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx64, align 2
  %incdec.ptr65 = getelementptr i8, ptr %dev, i32 3798
  %83 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %incdec.ptr63, align 2
  %84 = load i16, ptr %arrayidx64, align 2
  %85 = ptrtoint ptr %incdec.ptr65 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %incdec.ptr65, align 2
  %86 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %call.i631 = call zeroext i1 @is_vmalloc_addr(ptr noundef %setup_frame) #12
  br i1 %call.i631, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.else54
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i632, !prof !287

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i632:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %dev69) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44, i32 3
  %88 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i632.dev_name.exit.i_crit_edge

if.then.i632.dev_name.exit.i_crit_edge:           ; preds = %if.then.i632
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i632
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev69, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i632.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %91, %if.end.i.i ], [ %89, %if.then.i632.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %dev69, ptr noundef %setup_frame, i32 noundef 192) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %93 = ptrtoint ptr %setup_frame to i32
  %sub.i = add i32 %93, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i633 = getelementptr %struct.page, ptr %92, i32 %shr.i
  %and.i634 = and i32 %93, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %dev69, ptr noundef %add.ptr.i633, i32 noundef %and.i634, i32 noundef 192, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i635 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %94 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cur_tx, align 4
  %arrayidx74 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %95
  %96 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %arrayidx74, align 8
  %mapping78 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %95, i32 1
  %97 = ptrtoint ptr %mapping78 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %retval.0.i635, ptr %mapping78, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2316
  %98 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_ring, align 4
  %100 = load i32, ptr %cur_tx, align 4
  %length = getelementptr %struct.tulip_tx_desc, ptr %99, i32 %100, i32 1
  %101 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1073741816, ptr %length, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %retval.0.i635)
  %103 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_ring, align 4
  %105 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cur_tx, align 4
  %buffer1 = getelementptr %struct.tulip_tx_desc, ptr %104, i32 %106, i32 2
  %107 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %102, ptr %buffer1, align 4
  %108 = load ptr, ptr %tx_ring, align 4
  %109 = load i32, ptr %cur_tx, align 4
  %arrayidx86 = getelementptr %struct.tulip_tx_desc, ptr %108, i32 %109
  %110 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 128, ptr %arrayidx86, align 4
  %111 = load i32, ptr %cur_tx, align 4
  %inc = add i32 %111, 1
  store i32 %inc, ptr %cur_tx, align 4
  br label %if.end88

if.end88:                                         ; preds = %dma_map_single_attrs.exit, %if.then47, %if.else.if.end88_crit_edge, %if.then39
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %112 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %if_port, align 2
  %conv89 = zext i8 %113 to i32
  %saved_if_port = getelementptr i8, ptr %dev, i32 4828
  %114 = ptrtoint ptr %saved_if_port to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv89, ptr %saved_if_port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp92 = icmp eq i8 %113, 0
  br i1 %cmp92, label %if.then94, label %if.end88.if.end100_crit_edge

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %default_port = getelementptr i8, ptr %dev, i32 4252
  %115 = ptrtoint ptr %default_port to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load95 = load i16, ptr %default_port, align 4
  %bf.lshr96 = lshr i16 %bf.load95, 9
  %116 = trunc i16 %bf.lshr96 to i8
  %conv98 = and i8 %116, 15
  %117 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv98, ptr %if_port, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %if.end88.if.end100_crit_edge
  %mtable101 = getelementptr i8, ptr %dev, i32 4820
  %118 = ptrtoint ptr %mtable101 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mtable101, align 4
  %cmp102 = icmp eq ptr %119, null
  br i1 %cmp102, label %if.end100.media_picked_crit_edge, label %if.end105

if.end100.media_picked_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_picked

if.end105:                                        ; preds = %if.end100
  %120 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool107.not = icmp eq i8 %121, 0
  br i1 %tobool107.not, label %if.end105.if.end143_crit_edge, label %if.then108

if.end105.if.end143_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then108:                                       ; preds = %if.end105
  %idxprom = zext i8 %121 to i32
  %arrayidx110 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %122 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx110, align 1
  %124 = and i8 %123, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool113.not = icmp eq i8 %124, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %121)
  %cmp116 = icmp eq i8 %121, 12
  %spec.select = select i1 %cmp116, i32 0, i32 %idxprom
  %cond123 = select i1 %tobool113.not, i32 %spec.select, i32 11
  %leafcount = getelementptr inbounds %struct.mediatable, ptr %119, i32 0, i32 1
  %125 = ptrtoint ptr %leafcount to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %leafcount, align 2
  %conv125 = zext i8 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp126653.not = icmp eq i8 %126, 0
  br i1 %cmp126653.not, label %if.then108.if.end143_crit_edge, label %if.then108.for.body_crit_edge

if.then108.for.body_crit_edge:                    ; preds = %if.then108
  br label %for.body

if.then108.if.end143_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then108.for.body_crit_edge
  %i.0654 = phi i32 [ %inc142, %for.inc.for.body_crit_edge ], [ 0, %if.then108.for.body_crit_edge ]
  %media = getelementptr %struct.mediatable, ptr %119, i32 0, i32 6, i32 %i.0654, i32 1
  %127 = ptrtoint ptr %media to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %media, align 1
  %conv130 = zext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond123, i32 %conv130)
  %cmp131 = icmp eq i32 %cond123, %conv130
  br i1 %cmp131, label %for.body.media_picked.sink.split_crit_edge, label %for.inc

for.body.media_picked.sink.split_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_picked.sink.split

for.inc:                                          ; preds = %for.body
  %inc142 = add nuw nsw i32 %i.0654, 1
  %exitcond.not = icmp eq i32 %inc142, %conv125
  br i1 %exitcond.not, label %for.inc.if.end143_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end143_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.end143:                                        ; preds = %for.inc.if.end143_crit_edge, %if.then108.if.end143_crit_edge, %if.end105.if.end143_crit_edge
  %129 = ptrtoint ptr %mtable101 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mtable101, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %130, align 4
  %conv145 = zext i16 %132 to i32
  %and146 = and i32 %conv145, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %if.then149, label %if.end143.if.end182_crit_edge

if.end143.if.end182_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.then149:                                       ; preds = %if.end143
  %and154 = and i32 %conv145, 31
  %leafcount157 = getelementptr inbounds %struct.mediatable, ptr %130, i32 0, i32 1
  %133 = ptrtoint ptr %leafcount157 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %leafcount157, align 2
  %conv158 = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp159655.not = icmp eq i8 %134, 0
  br i1 %cmp159655.not, label %if.then149.if.end182_crit_edge, label %if.then149.for.body161_crit_edge

if.then149.for.body161_crit_edge:                 ; preds = %if.then149
  br label %for.body161

if.then149.if.end182_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

for.body161:                                      ; preds = %for.inc176.for.body161_crit_edge, %if.then149.for.body161_crit_edge
  %i.1656 = phi i32 [ %inc177, %for.inc176.for.body161_crit_edge ], [ 0, %if.then149.for.body161_crit_edge ]
  %media165 = getelementptr %struct.mediatable, ptr %130, i32 0, i32 6, i32 %i.1656, i32 1
  %135 = ptrtoint ptr %media165 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %media165, align 1
  %conv166 = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and154, i32 %conv166)
  %cmp167 = icmp eq i32 %and154, %conv166
  br i1 %cmp167, label %for.body161.media_picked.sink.split_crit_edge, label %for.inc176

for.body161.media_picked.sink.split_crit_edge:    ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_picked.sink.split

for.inc176:                                       ; preds = %for.body161
  %inc177 = add nuw nsw i32 %i.1656, 1
  %exitcond659.not = icmp eq i32 %inc177, %conv158
  br i1 %exitcond659.not, label %for.inc176.if.end182_crit_edge, label %for.inc176.for.body161_crit_edge

for.inc176.for.body161_crit_edge:                 ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body161

for.inc176.if.end182_crit_edge:                   ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.end182:                                        ; preds = %for.inc176.if.end182_crit_edge, %if.then149.if.end182_crit_edge, %if.end143.if.end182_crit_edge
  %137 = ptrtoint ptr %mtable101 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mtable101, align 4
  %leafcount184 = getelementptr inbounds %struct.mediatable, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %leafcount184 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %leafcount184, align 2
  %conv185 = zext i8 %140 to i32
  br label %for.cond186

for.cond186:                                      ; preds = %for.cond186.for.cond186_crit_edge, %if.end182
  %i.2.in = phi i32 [ %conv185, %if.end182 ], [ %i.2, %for.cond186.for.cond186_crit_edge ]
  %i.2 = add nsw i32 %i.2.in, -1
  %media190 = getelementptr %struct.mediatable, ptr %138, i32 0, i32 6, i32 %i.2, i32 1
  %141 = ptrtoint ptr %media190 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %media190, align 1
  %idxprom191 = zext i8 %142 to i32
  %arrayidx192 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom191
  %143 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx192, align 1
  %145 = and i8 %144, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool195.not = icmp ne i8 %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2.in)
  %cmp196 = icmp ugt i32 %i.2.in, 1
  %or.cond = select i1 %tobool195.not, i1 %cmp196, i1 false
  br i1 %or.cond, label %for.cond186.for.cond186_crit_edge, label %for.cond186.media_picked_crit_edge

for.cond186.media_picked_crit_edge:               ; preds = %for.cond186
  call void @__sanitizer_cov_trace_pc() #14
  br label %media_picked

for.cond186.for.cond186_crit_edge:                ; preds = %for.cond186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond186

media_picked.sink.split:                          ; preds = %for.body161.media_picked.sink.split_crit_edge, %for.body.media_picked.sink.split_crit_edge
  %and154.sink = phi i32 [ %and154, %for.body161.media_picked.sink.split_crit_edge ], [ %idxprom, %for.body.media_picked.sink.split_crit_edge ]
  %.str.80.sink = phi ptr [ @.str.80, %for.body161.media_picked.sink.split_crit_edge ], [ @.str.78, %for.body.media_picked.sink.split_crit_edge ]
  %i.3.ph = phi i32 [ %i.1656, %for.body161.media_picked.sink.split_crit_edge ], [ %i.0654, %for.body.media_picked.sink.split_crit_edge ]
  %dev173 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %arrayidx174 = getelementptr [32 x ptr], ptr @medianame, i32 0, i32 %and154.sink
  %146 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx174, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev173, ptr noundef nonnull %.str.80.sink, ptr noundef %147) #15
  br label %media_picked

media_picked:                                     ; preds = %media_picked.sink.split, %for.cond186.media_picked_crit_edge, %if.end100.media_picked_crit_edge
  %i.3 = phi i32 [ 0, %if.end100.media_picked_crit_edge ], [ %i.3.ph, %media_picked.sink.split ], [ %i.2, %for.cond186.media_picked_crit_edge ]
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %148 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %csr6, align 4
  %cur_index = getelementptr i8, ptr %dev, i32 4824
  %149 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %i.3, ptr %cur_index, align 8
  %nwayset = getelementptr i8, ptr %dev, i32 4252
  %150 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load201 = load i16, ptr %nwayset, align 4
  %bf.clear202 = and i16 %bf.load201, -3
  store i16 %bf.clear202, ptr %nwayset, align 4
  %151 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool204.not = icmp eq i8 %152, 0
  %chip_id222 = getelementptr i8, ptr %dev, i32 3800
  %153 = ptrtoint ptr %chip_id222 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %chip_id222, align 8
  br i1 %tobool204.not, label %if.else221, label %if.then205

if.then205:                                       ; preds = %media_picked
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %154)
  %cmp207 = icmp eq i32 %154, 3
  br i1 %cmp207, label %land.lhs.true209, label %if.then205.if.end220_crit_edge

if.then205.if.end220_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end220

land.lhs.true209:                                 ; preds = %if.then205
  %idxprom211 = zext i8 %152 to i32
  %arrayidx212 = getelementptr [32 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom211
  %155 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx212, align 1
  %157 = and i8 %156, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool215.not = icmp eq i8 %157, 0
  br i1 %tobool215.not, label %land.lhs.true209.if.end220_crit_edge, label %if.then216

land.lhs.true209.if.end220_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end220

if.then216:                                       ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr217 = getelementptr i8, ptr %1, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 0) #12, !srcloc !284
  %add.ptr218 = getelementptr i8, ptr %1, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 0) #12, !srcloc !284
  %add.ptr219 = getelementptr i8, ptr %1, i32 120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 134217728) #12, !srcloc !284
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %land.lhs.true209.if.end220_crit_edge, %if.then205.if.end220_crit_edge
  call void @tulip_select_media(ptr noundef %dev, i32 noundef 1) #12
  br label %if.end387

if.else221:                                       ; preds = %media_picked
  %158 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %154, label %if.else221.if.else379_crit_edge [
    i32 3, label %if.then225
    i32 9, label %if.then254
    i32 4, label %land.lhs.true266
    i32 5, label %if.else221.land.lhs.true306_crit_edge
    i32 11, label %if.else221.land.lhs.true306_crit_edge670
    i32 6, label %if.else221.if.then336_crit_edge
    i32 7, label %if.else221.if.then336_crit_edge671
    i32 10, label %if.else221.if.then357_crit_edge
    i32 14, label %if.else221.if.then357_crit_edge672
    i32 8, label %if.else221.if.then373_crit_edge
  ]

if.else221.if.then373_crit_edge:                  ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then373

if.else221.if.then357_crit_edge672:               ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then357

if.else221.if.then357_crit_edge:                  ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then357

if.else221.if.then336_crit_edge671:               ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then336

if.else221.if.then336_crit_edge:                  ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then336

if.else221.land.lhs.true306_crit_edge670:         ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true306

if.else221.land.lhs.true306_crit_edge:            ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true306

if.else221.if.else379_crit_edge:                  ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else379

if.then225:                                       ; preds = %if.else221
  %159 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool227.not = icmp eq i8 %160, 0
  br i1 %tobool227.not, label %if.else248, label %if.then228

if.then228:                                       ; preds = %if.then225
  call void @tulip_select_media(ptr noundef %dev, i32 noundef 1) #12
  %161 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp229 = icmp sgt i32 %161, 1
  br i1 %cmp229, label %do.end234, label %if.then228.if.end242_crit_edge

if.then228.if.end242_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

do.end234:                                        ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  %dev235 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %phys = getelementptr i8, ptr %dev, i32 4814
  %162 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %phys, align 2
  %conv237 = sext i8 %163 to i32
  %call241 = call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv237, i32 noundef 1) #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev235, ptr noundef nonnull @.str.83, i32 noundef %conv237, i32 noundef %call241) #15
  br label %if.end242

if.end242:                                        ; preds = %do.end234, %if.then228.if.end242_crit_edge
  %add.ptr243 = getelementptr i8, ptr %1, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 642) #12, !srcloc !284
  %164 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -2113011712, ptr %csr6, align 4
  %165 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 11, ptr %if_port, align 2
  %add.ptr246 = getelementptr i8, ptr %1, i32 104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr246, i32 0) #12, !srcloc !284
  %add.ptr247 = getelementptr i8, ptr %1, i32 112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 0) #12, !srcloc !284
  br label %if.end387

if.else248:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #14
  call void @t21142_start_nway(ptr noundef %dev) #12
  br label %if.end387

if.then254:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #14
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %166 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 480, ptr %sym_advertise, align 8
  %add.ptr255 = getelementptr i8, ptr %1, i32 40
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr255) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %168 = or i32 %167, 276824064
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr255, i32 %168) #12, !srcloc !284
  %add.ptr258 = getelementptr i8, ptr %1, i32 56
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr258) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %170 = or i32 %169, 276824064
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %170) #12, !srcloc !284
  call void @pnic2_start_nway(ptr noundef %dev) #12
  br label %if.end387

land.lhs.true266:                                 ; preds = %if.else221
  %171 = and i16 %bf.load201, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool271.not = icmp eq i16 %171, 0
  br i1 %tobool271.not, label %if.then272, label %land.lhs.true266.if.else379_crit_edge

land.lhs.true266.if.else379_crit_edge:            ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else379

if.then272:                                       ; preds = %land.lhs.true266
  %172 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool274.not = icmp eq i8 %173, 0
  br i1 %tobool274.not, label %if.else285, label %if.then275

if.then275:                                       ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 11, ptr %if_port, align 2
  %175 = lshr i16 %bf.load201, 6
  %176 = and i16 %175, 512
  %177 = zext i16 %176 to i32
  %or282 = or i32 %177, -2125725696
  %178 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or282, ptr %csr6, align 4
  %add.ptr284 = getelementptr i8, ptr %1, i32 120
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284, i32 16777216) #12, !srcloc !284
  br label %if.end387

if.else285:                                       ; preds = %if.then272
  %add.ptr286 = getelementptr i8, ptr %1, i32 40
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %180 = and i32 %179, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool289.not = icmp eq i32 %180, 0
  br i1 %tobool289.not, label %if.else291, label %if.then290

if.then290:                                       ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #14
  call void @pnic_do_nway(ptr noundef %dev) #12
  br label %if.end387

if.else291:                                       ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr292 = getelementptr i8, ptr %1, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 838860800) #12, !srcloc !284
  %181 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 4325376, ptr %csr6, align 4
  %add.ptr294 = getelementptr i8, ptr %1, i32 184
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 2024800512) #12, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 2024800514) #12, !srcloc !284
  br label %if.end387

land.lhs.true306:                                 ; preds = %if.else221.land.lhs.true306_crit_edge, %if.else221.land.lhs.true306_crit_edge670
  %182 = and i16 %bf.load201, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool312.not = icmp eq i16 %182, 0
  br i1 %tobool312.not, label %if.then313, label %if.else328

if.then313:                                       ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %if_port, align 2
  %184 = lshr i16 %bf.load201, 6
  %185 = and i16 %184, 512
  %186 = zext i16 %185 to i32
  %or321 = or i32 %186, 25690112
  %187 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or321, ptr %csr6, align 4
  %add.ptr323 = getelementptr i8, ptr %1, i32 128
  %188 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr323) #12, !srcloc !289
  %189 = call i16 @llvm.bswap.i16(i16 %188) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  %conv325 = zext i16 %189 to i32
  %or326 = or i32 %conv325, 255262720
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %190 = call i32 @llvm.bswap.i32(i32 %or326) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr323, i32 %190) #12, !srcloc !284
  br label %if.end387

if.else328:                                       ; preds = %land.lhs.true306
  %191 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %154, label %if.else328.if.else379_crit_edge [
    i32 6, label %if.else328.if.then336_crit_edge
    i32 7, label %if.else328.if.then336_crit_edge673
    i32 10, label %if.else328.if.then357_crit_edge
    i32 8, label %if.else328.if.then373_crit_edge
  ]

if.else328.if.then373_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then373

if.else328.if.then357_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then357

if.else328.if.then336_crit_edge673:               ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then336

if.else328.if.then336_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then336

if.else328.if.else379_crit_edge:                  ; preds = %if.else328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else379

if.then336:                                       ; preds = %if.else328.if.then336_crit_edge, %if.else328.if.then336_crit_edge673, %if.else221.if.then336_crit_edge, %if.else221.if.then336_crit_edge671
  %192 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %if_port, align 2
  %193 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 27787776, ptr %csr6, align 4
  %add.ptr339 = getelementptr i8, ptr %1, i32 128
  %194 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr339) #12, !srcloc !289
  %195 = call i16 @llvm.bswap.i16(i16 %194) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  %conv341 = zext i16 %195 to i32
  %or342 = or i32 %conv341, 255262720
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %196 = call i32 @llvm.bswap.i32(i32 %or342) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 %196) #12, !srcloc !284
  %add.ptr344 = getelementptr i8, ptr %1, i32 160
  %197 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr344) #12, !srcloc !289
  %198 = call i16 @llvm.bswap.i16(i16 %197) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  %conv346 = zext i16 %198 to i32
  %or347 = or i32 %conv346, 69632
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %199 = call i32 @llvm.bswap.i32(i32 %or347) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr344, i32 %199) #12, !srcloc !284
  br label %if.end387

if.then357:                                       ; preds = %if.else328.if.then357_crit_edge, %if.else221.if.then357_crit_edge, %if.else221.if.then357_crit_edge672
  %add.ptr358 = getelementptr i8, ptr %1, i32 136
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr358) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %201 = or i32 %200, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr358, i32 %201) #12, !srcloc !284
  %202 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool364.not = icmp eq i8 %203, 0
  %conv366 = select i1 %tobool364.not, i8 0, i8 11
  %204 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv366, ptr %if_port, align 2
  %205 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 262144, ptr %csr6, align 4
  br label %if.end387

if.then373:                                       ; preds = %if.else328.if.then373_crit_edge, %if.else221.if.then373_crit_edge
  %206 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool376.not = icmp eq i8 %207, 0
  %cond377 = select i1 %tobool376.not, i32 256, i32 262400
  %208 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %cond377, ptr %csr6, align 4
  br label %if.end387

if.else379:                                       ; preds = %if.else328.if.else379_crit_edge, %land.lhs.true266.if.else379_crit_edge, %if.else221.if.else379_crit_edge
  call void @tulip_select_media(ptr noundef %dev, i32 noundef 1) #12
  br label %if.end387

if.end387:                                        ; preds = %if.else379, %if.then373, %if.then357, %if.then336, %if.then313, %if.else291, %if.then290, %if.then275, %if.then254, %if.else248, %if.end242, %if.end220
  %next_tick.0 = phi i32 [ 300, %if.end220 ], [ 300, %if.end242 ], [ 300, %if.else248 ], [ 300, %if.then254 ], [ 300, %if.then336 ], [ 300, %if.then357 ], [ 300, %if.then373 ], [ 300, %if.else379 ], [ 300, %if.then313 ], [ 300, %if.then275 ], [ 300, %if.then290 ], [ 100, %if.else291 ]
  %209 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base_addr, align 8
  %add.ptr.i637 = getelementptr i8, ptr %210, i32 48
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i637) #12, !srcloc !281
  %212 = call i32 @llvm.bswap.i32(i32 %211) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %and.i638 = and i32 %212, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i638)
  %tobool.not.i639 = icmp eq i32 %and.i638, 0
  br i1 %tobool.not.i639, label %if.end387.tulip_stop_rxtx.exit_crit_edge, label %if.then.i641

if.end387.tulip_stop_rxtx.exit_crit_edge:         ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

if.then.i641:                                     ; preds = %if.end387
  %and1.i640 = and i32 %212, -8195
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %213 = call i32 @llvm.bswap.i32(i32 %and1.i640) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i637, i32 %213) #12, !srcloc !284
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %add.ptr4.i = getelementptr i8, ptr %210, i32 40
  br label %land.rhs.i642

land.rhs.i642:                                    ; preds = %while.body.i.land.rhs.i642_crit_edge, %if.then.i641
  %dec33.i = phi i32 [ 129, %if.then.i641 ], [ %dec.i, %while.body.i.land.rhs.i642_crit_edge ]
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %215 = and i32 %214, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool7.not.i = icmp eq i32 %215, 0
  br i1 %tobool7.not.i, label %land.rhs.i642.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i642.tulip_stop_rxtx.exit_crit_edge:     ; preds = %land.rhs.i642
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i642
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %216(i32 noundef 2147480) #12
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i642_crit_edge

while.body.i.land.rhs.i642_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i642

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_up, %tulip_stop_rxtx.exit)) #12
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !286

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr i8, ptr %dev, i32 4904
  %217 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i, align 8
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  %220 = call i32 @llvm.bswap.i32(i32 %219) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i637) #12, !srcloc !281
  %222 = call i32 @llvm.bswap.i32(i32 %221) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %218, ptr noundef nonnull @.str.73, i32 noundef %220, i32 noundef %222) #12
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i642.tulip_stop_rxtx.exit_crit_edge, %if.end387.tulip_stop_rxtx.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !291
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %223(i32 noundef 1073740) #12
  %224 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %csr6, align 4
  %or389 = or i32 %225, 8192
  %add.ptr390 = getelementptr i8, ptr %1, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %226 = call i32 @llvm.bswap.i32(i32 %or389) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr390, i32 %226) #12, !srcloc !284
  %chip_id391 = getelementptr i8, ptr %dev, i32 3800
  %227 = ptrtoint ptr %chip_id391 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %chip_id391, align 8
  %valid_intrs = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %228, i32 2
  %229 = ptrtoint ptr %valid_intrs to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %valid_intrs, align 4
  %add.ptr393 = getelementptr i8, ptr %1, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %231 = call i32 @llvm.bswap.i32(i32 %230) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr393, i32 %231) #12, !srcloc !284
  %232 = ptrtoint ptr %chip_id391 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %chip_id391, align 8
  %valid_intrs396 = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %233, i32 2
  %234 = ptrtoint ptr %valid_intrs396 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %valid_intrs396, align 4
  %add.ptr397 = getelementptr i8, ptr %1, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %236 = call i32 @llvm.bswap.i32(i32 %235) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr397, i32 %236) #12, !srcloc !284
  %237 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %base_addr, align 8
  %239 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %csr6, align 4
  %or.i = or i32 %240, 8194
  %add.ptr.i644 = getelementptr i8, ptr %238, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  %241 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 %241) #12, !srcloc !284
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !292
  %242 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i644) #12, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %add.ptr398 = getelementptr i8, ptr %1, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr398, i32 0) #12, !srcloc !284
  %243 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %243)
  %cmp399 = icmp sgt i32 %243, 2
  br i1 %cmp399, label %do.body403, label %tulip_stop_rxtx.exit.if.end429_crit_edge

tulip_stop_rxtx.exit.if.end429_crit_edge:         ; preds = %tulip_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end429

do.body403:                                       ; preds = %tulip_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_up.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_up, %if.end429)) #12
          to label %if.then417 [label %if.end429], !srcloc !286

if.then417:                                       ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #14
  %244 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !281
  %245 = call i32 @llvm.bswap.i32(i32 %244) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr393) #12, !srcloc !281
  %247 = call i32 @llvm.bswap.i32(i32 %246) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr390) #12, !srcloc !281
  %249 = call i32 @llvm.bswap.i32(i32 %248) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_up.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.85, i32 noundef %245, i32 noundef %247, i32 noundef %249) #12
  br label %if.end429

if.end429:                                        ; preds = %if.then417, %do.body403, %tulip_stop_rxtx.exit.if.end429_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %250 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %250, %next_tick.0
  %timer = getelementptr i8, ptr %dev, i32 4040
  %expires = getelementptr i8, ptr %dev, i32 4048
  %251 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %add, ptr %expires, align 8
  call void @add_timer(ptr noundef %timer) #12
  %oom_timer = getelementptr i8, ptr %dev, i32 4088
  call void @init_timer_key(ptr noundef %oom_timer, ptr noundef nonnull @oom_timer, i32 noundef 0, ptr noundef nonnull @.str.86, ptr noundef nonnull @tulip_up.__key) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_free_ring(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_ring = getelementptr i8, ptr %dev, i32 2312
  %pdev = getelementptr i8, ptr %dev, i32 4832
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.070 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.070
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %mapping4 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.070, i32 1
  %2 = ptrtoint ptr %mapping4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapping4, align 4
  store ptr null, ptr %arrayidx, align 8
  store i32 0, ptr %mapping4, align 4
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 8
  %arrayidx11 = getelementptr %struct.tulip_rx_desc, ptr %5, i32 %i.070
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx11, align 4
  %7 = load ptr, ptr %rx_ring, align 8
  %length = getelementptr %struct.tulip_rx_desc, ptr %7, i32 %i.070, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %length, align 4
  %9 = load ptr, ptr %rx_ring, align 8
  %buffer1 = getelementptr %struct.tulip_rx_desc, ptr %9, i32 %i.070, i32 2
  %10 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -805249094, ptr %buffer1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16, i32 noundef %3, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %if.end.for.body19_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.body19_crit_edge:                      ; preds = %if.end
  br label %for.body19

for.body19:                                       ; preds = %if.end30.for.body19_crit_edge, %if.end.for.body19_crit_edge
  %i.171 = phi i32 [ %inc38, %if.end30.for.body19_crit_edge ], [ 0, %if.end.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.171
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx21, align 8
  %cmp23.not = icmp eq ptr %14, null
  br i1 %cmp23.not, label %for.body19.if.end30_crit_edge, label %if.then24

for.body19.if.end30_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %mapping29 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.171, i32 1
  %17 = ptrtoint ptr %mapping29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mapping29, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26, i32 noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0) #12
  tail call void @consume_skb(ptr noundef nonnull %14) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %for.body19.if.end30_crit_edge
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx21, align 8
  %mapping36 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.171, i32 1
  %22 = ptrtoint ptr %mapping36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mapping36, align 4
  %inc38 = add nuw nsw i32 %i.171, 1
  %exitcond73.not = icmp eq i32 %inc38, 32
  br i1 %exitcond73.not, label %for.end39, label %if.end30.for.body19_crit_edge

if.end30.for.body19_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body19

for.end39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

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
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_mdio_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic2_start_nway(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnic_do_nway(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oom_timer(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_down(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %media_work = getelementptr i8, ptr %dev, i32 4860
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %media_work) #12
  %napi = getelementptr i8, ptr %dev, i32 3816
  tail call void @napi_disable(ptr noundef %napi) #12
  %timer = getelementptr i8, ptr %dev, i32 4040
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer) #12
  %oom_timer = getelementptr i8, ptr %dev, i32 4088
  %call3 = tail call i32 @del_timer_sync(ptr noundef %oom_timer) #12
  %lock = getelementptr i8, ptr %dev, i32 4144
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !284
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 8
  %add.ptr.i39 = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #12, !srcloc !281
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %and.i = and i32 %5, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %5, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %6) #12, !srcloc !284
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %add.ptr4.i = getelementptr i8, ptr %3, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %8 = and i32 %7, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not.i = icmp eq i32 %8, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #12
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_down, %tulip_stop_rxtx.exit)) #12
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !286

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr i8, ptr %dev, i32 4904
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #12, !srcloc !281
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %11, ptr noundef nonnull @.str.73, i32 noundef %13, i32 noundef %15) #12
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %entry.tulip_stop_rxtx.exit_crit_edge
  %call9 = tail call i32 @tulip_refill_rx(ptr noundef %dev) #12
  %dirty_tx1.i = getelementptr i8, ptr %dev, i32 4244
  %16 = ptrtoint ptr %dirty_tx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty_tx1.i, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 4236
  %18 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not65.i = icmp eq i32 %19, %17
  br i1 %cmp.not65.i, label %tulip_stop_rxtx.exit.tulip_clean_tx_ring.exit_crit_edge, label %for.body.lr.ph.i

tulip_stop_rxtx.exit.tulip_clean_tx_ring.exit_crit_edge: ; preds = %tulip_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_clean_tx_ring.exit

for.body.lr.ph.i:                                 ; preds = %tulip_stop_rxtx.exit
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2316
  %dev.i40 = getelementptr i8, ptr %dev, i32 4904
  %pdev20.i = getelementptr i8, ptr %dev, i32 4832
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dirty_tx.066.i = phi i32 [ %17, %for.body.lr.ph.i ], [ %inc38.i, %cleanup.i.for.body.i_crit_edge ]
  %rem.i = and i32 %dirty_tx.066.i, 31
  %20 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx.i = getelementptr %struct.tulip_tx_desc, ptr %21, i32 %rem.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %.mask.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp4.not.i = icmp eq i32 %.mask.i, 0
  br i1 %cmp4.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i41

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i41:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i40, align 8
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 5
  %26 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %28 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx6.i = getelementptr %struct.tulip_tx_desc, ptr %29, i32 %rem.i
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i41, %for.body.i.if.end.i_crit_edge
  %arrayidx8.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem.i
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8.i, align 8
  %cmp9.i = icmp eq ptr %32, null
  br i1 %cmp9.i, label %if.then10.i, label %if.end19.i

if.then10.i:                                      ; preds = %if.end.i
  %mapping.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem.i, i32 1
  %33 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mapping.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i42 = icmp eq i32 %34, 0
  br i1 %tobool.not.i42, label %if.then10.i.cleanup.i_crit_edge, label %if.then13.i

if.then10.i.cleanup.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %pdev20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev20.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev14.i, i32 noundef %34, i32 noundef 192, i32 noundef 1, i32 noundef 0) #12
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %pdev20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev20.i, align 8
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %mapping24.i = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem.i, i32 1
  %39 = ptrtoint ptr %mapping24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapping24.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21.i, i32 noundef %40, i32 noundef %42, i32 noundef 1, i32 noundef 0) #12
  %43 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx8.i, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef %44, i32 noundef 1) #12
  %45 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx8.i, align 8
  %46 = ptrtoint ptr %mapping24.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mapping24.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i, %if.then13.i, %if.then10.i.cleanup.i_crit_edge
  %inc38.i = add i32 %dirty_tx.066.i, 1
  %47 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_tx.i, align 4
  %cmp.not.i = icmp eq i32 %48, %inc38.i
  br i1 %cmp.not.i, label %cleanup.i.tulip_clean_tx_ring.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup.i.tulip_clean_tx_ring.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_clean_tx_ring.exit

tulip_clean_tx_ring.exit:                         ; preds = %cleanup.i.tulip_clean_tx_ring.exit_crit_edge, %tulip_stop_rxtx.exit.tulip_clean_tx_ring.exit_crit_edge
  %add.ptr10 = getelementptr i8, ptr %1, i32 48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp12.not = icmp eq i32 %49, -1
  br i1 %cmp12.not, label %tulip_clean_tx_ring.exit.if.end_crit_edge, label %if.then

tulip_clean_tx_ring.exit.if.end_crit_edge:        ; preds = %tulip_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %tulip_clean_tx_ring.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr14 = getelementptr i8, ptr %1, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %51 = and i32 %50, -65536
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %53 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %54, %52
  store i32 %add, ptr %rx_missed_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tulip_clean_tx_ring.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %55 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chip_id, align 8
  %media_timer = getelementptr [15 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %56, i32 4
  %57 = ptrtoint ptr %media_timer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %media_timer, align 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef %58, i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef nonnull @tulip_down.__key) #12
  %saved_if_port = getelementptr i8, ptr %dev, i32 4828
  %59 = ptrtoint ptr %saved_if_port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %saved_if_port, align 4
  %conv21 = trunc i32 %60 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %61 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv21, ptr %if_port, align 2
  %flags.i = getelementptr i8, ptr %dev, i32 3808
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 8
  %and.i43 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.end.tulip_set_power_state.exit_crit_edge, label %if.then.i47

if.end.tulip_set_power_state.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_set_power_state.exit

if.then.i47:                                      ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %64 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %tmp.i, align 4, !annotation !280
  %pdev.i = getelementptr i8, ptr %dev, i32 4832
  %65 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %66, i32 noundef 64, ptr noundef nonnull %tmp.i) #12
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i, align 4
  %and1.i45 = and i32 %68, 1073741823
  %or6.i = or i32 %and1.i45, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %or6.i)
  %cmp.not.i46 = icmp eq i32 %68, %or6.i
  br i1 %cmp.not.i46, label %if.then.i47.if.end11.i_crit_edge, label %if.then8.i

if.then.i47.if.end11.i_crit_edge:                 ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 8
  %call10.i = call i32 @pci_write_config_dword(ptr noundef %70, i32 noundef 64, i32 noundef %or6.i) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then.i47.if.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  br label %tulip_set_power_state.exit

tulip_set_power_state.exit:                       ; preds = %if.end11.i, %if.end.tulip_set_power_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_refill_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_mdio_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !281
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !284
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %6 = and i32 %5, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #12
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_restart_rxtx, %tulip_stop_rxtx.exit)) #12
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !286

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #12, !srcloc !281
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !281
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.73, i32 noundef %11, i32 noundef %13) #12
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %entry.tulip_stop_rxtx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #12
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 8
  %csr6.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 25
  %17 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %csr6.i, align 4
  %or.i = or i32 %18, 8194
  %add.ptr.i3 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #12, !srcloc !284
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !292
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tulip_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.34, i32 noundef 32) #12
  %pdev = getelementptr i8, ptr %dev, i32 4832
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tulip_ethtool_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wolinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr i8, ptr %dev, i32 4784
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported, align 4
  %supported2 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %2 = ptrtoint ptr %supported2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %supported2, align 4
  %wolopts = getelementptr i8, ptr %dev, i32 4788
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %wolopts4 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wolopts4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_ethtool_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wolinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %supported = getelementptr i8, ptr %dev, i32 4784
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wolopts4 = getelementptr i8, ptr %dev, i32 4788
  %4 = ptrtoint ptr %wolopts4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %wolopts4, align 4
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8 = icmp ne i32 %1, 0
  %call9 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev5, i1 noundef zeroext %tobool8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_suspend(ptr noundef %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.save_state_crit_edge, label %if.end4

if.end.save_state_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %save_state

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tulip_down(ptr noundef nonnull %1)
  tail call void @netif_device_detach(ptr noundef nonnull %1) #12
  %pdev = getelementptr i8, ptr %1, i32 4832
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %7, ptr noundef nonnull %1) #12
  br label %save_state

save_state:                                       ; preds = %if.end4, %if.end.save_state_crit_edge
  %wolopts = getelementptr i8, ptr %1, i32 4788
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr i8, ptr %9, i32 3808
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %save_state.tulip_set_wolopts.exit_crit_edge, label %if.then.i

save_state.tulip_set_wolopts.exit_crit_edge:      ; preds = %save_state
  call void @__sanitizer_cov_trace_pc() #14
  br label %tulip_set_wolopts.exit

if.then.i:                                        ; preds = %save_state
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  %base_addr.i = getelementptr i8, ptr %9, i32 4848
  %14 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %17 = and i32 %16, 2147480574
  %18 = or i32 %17, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %18) #12, !srcloc !284
  %add.ptr5.i = getelementptr i8, ptr %15, i32 104
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %20 = and i32 %19, -459521
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %and8.i = shl i32 %13, 4
  %22 = and i32 %and8.i, 512
  %23 = or i32 %21, %22
  %and12.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or15.i = or i32 %23, 196864
  %tmp.1.i = select i1 %tobool13.not.i, i32 %23, i32 %or15.i
  %or17.i = or i32 %tmp.1.i, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #12, !srcloc !284
  br label %tulip_set_wolopts.exit

tulip_set_wolopts.exit:                           ; preds = %if.then.i, %save_state.tulip_set_wolopts.exit_crit_edge
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8 = icmp ne i32 %26, 0
  %call10 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev_d, i1 noundef zeroext %tobool8) #12
  br label %cleanup

cleanup:                                          ; preds = %tulip_set_wolopts.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tulip_set_wolopts.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tulip_resume(ptr noundef %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base_addr = getelementptr i8, ptr %1, i32 4848
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @tulip_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull %1, ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %flags = getelementptr i8, ptr %1, i32 3808
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev_d, i1 noundef zeroext false) #12
  %add.ptr16 = getelementptr i8, ptr %3, i32 144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %11 = or i32 %10, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %11) #12, !srcloc !284
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr i8, ptr %13, i32 3808
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then14.if.end19_crit_edge, label %if.then.i

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %base_addr.i = getelementptr i8, ptr %13, i32 4848
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %17, i32 136
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %19 = and i32 %18, 2147480574
  %20 = or i32 %19, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %20) #12, !srcloc !284
  %add.ptr5.i = getelementptr i8, ptr %17, i32 104
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  %22 = and i32 %21, -117900033
  %23 = or i32 %22, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %23) #12, !srcloc !284
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then14.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  tail call void @netif_device_attach(ptr noundef nonnull %1) #12
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %and1.i.i44 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i44)
  %tobool.i45.not = icmp eq i32 %and1.i.i44, 0
  br i1 %tobool.i45.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @tulip_up(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !171, !173, !175, !177, !179, !180, !181, !182, !183, !184, !186, !188, !189, !190, !192, !193, !195, !196, !197, !198, !200, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !236, !237, !238, !239, !241, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 46, i32 13}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 46, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 46, i32 31}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 47, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 47, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 47, i32 34}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 47, i32 47}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 48, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 48, i32 19}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 48, i32 34}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 48, i32 53}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 49, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 49, i32 21}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 49, i32 38}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 49, i32 59}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 50, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 50, i32 23}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 50, i32 44}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 50, i32 62}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 51, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 51, i32 38}
!44 = !{ptr @medianame, !45, !"medianame", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 45, i32 20}
!46 = !{ptr @__UNIQUE_ID_author342, !47, !"__UNIQUE_ID_author342", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 99, i32 1}
!48 = !{ptr @__UNIQUE_ID_description343, !49, !"__UNIQUE_ID_description343", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 100, i32 1}
!50 = !{ptr @__UNIQUE_ID_file344, !51, !"__UNIQUE_ID_file344", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 101, i32 1}
!52 = !{ptr @__UNIQUE_ID_license345, !51, !"__UNIQUE_ID_license345", i1 false, i1 false}
!53 = !{ptr @__param_tulip_debug, !54, !"__param_tulip_debug", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 102, i32 1}
!55 = !{ptr @__UNIQUE_ID_tulip_debugtype346, !54, !"__UNIQUE_ID_tulip_debugtype346", i1 false, i1 false}
!56 = !{ptr @__param_max_interrupt_work, !57, !"__param_max_interrupt_work", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 103, i32 1}
!58 = !{ptr @__UNIQUE_ID_max_interrupt_worktype347, !57, !"__UNIQUE_ID_max_interrupt_worktype347", i1 false, i1 false}
!59 = !{ptr @__param_rx_copybreak, !60, !"__param_rx_copybreak", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 104, i32 1}
!61 = !{ptr @__UNIQUE_ID_rx_copybreaktype348, !60, !"__UNIQUE_ID_rx_copybreaktype348", i1 false, i1 false}
!62 = !{ptr @__param_csr0, !63, !"__param_csr0", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 105, i32 1}
!64 = !{ptr @__UNIQUE_ID_csr0type349, !63, !"__UNIQUE_ID_csr0type349", i1 false, i1 false}
!65 = !{ptr @__param_options, !66, !"__param_options", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 106, i32 1}
!67 = !{ptr @__UNIQUE_ID_optionstype350, !66, !"__UNIQUE_ID_optionstype350", i1 false, i1 false}
!68 = !{ptr @__param_full_duplex, !69, !"__param_full_duplex", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 107, i32 1}
!70 = !{ptr @__UNIQUE_ID_full_duplextype351, !69, !"__UNIQUE_ID_full_duplextype351", i1 false, i1 false}
!71 = !{ptr @tulip_debug, !72, !"tulip_debug", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 110, i32 5}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 135, i32 5}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 140, i32 5}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 145, i32 5}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 149, i32 5}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 153, i32 5}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 157, i32 5}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 161, i32 5}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 166, i32 5}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 170, i32 5}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 174, i32 5}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 178, i32 5}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 192, i32 5}
!97 = !{ptr @tulip_tbl, !98, !"tulip_tbl", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 130, i32 31}
!99 = !{ptr @tulip_media_cap, !100, !"tulip_media_cap", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 244, i32 12}
!101 = !{ptr @__initcall__kmod_tulip__357_1962_tulip_init6, !102, !"__initcall__kmod_tulip__357_1962_tulip_init6", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1962, i32 1}
!103 = !{ptr @__exitcall_tulip_cleanup, !104, !"__exitcall_tulip_cleanup", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1963, i32 1}
!105 = !{ptr @__param_str_tulip_debug, !54, !"__param_str_tulip_debug", i1 false, i1 false}
!106 = !{ptr @__param_str_max_interrupt_work, !57, !"__param_str_max_interrupt_work", i1 false, i1 false}
!107 = !{ptr @max_interrupt_work, !108, !"max_interrupt_work", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 36, i32 21}
!109 = !{ptr @__param_str_rx_copybreak, !60, !"__param_str_rx_copybreak", i1 false, i1 false}
!110 = !{ptr @rx_copybreak, !111, !"rx_copybreak", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 58, i32 12}
!112 = !{ptr @__param_str_csr0, !63, !"__param_str_csr0", i1 false, i1 false}
!113 = !{ptr @csr0, !114, !"csr0", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 87, i32 12}
!115 = !{ptr @__param_str_options, !66, !"__param_str_options", i1 false, i1 false}
!116 = !{ptr @__param_arr_options, !66, !"__param_arr_options", i1 false, i1 false}
!117 = !{ptr @options, !118, !"options", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 41, i32 12}
!119 = !{ptr @__param_str_full_duplex, !69, !"__param_str_full_duplex", i1 false, i1 false}
!120 = !{ptr @__param_arr_full_duplex, !69, !"__param_arr_full_duplex", i1 false, i1 false}
!121 = !{ptr @full_duplex, !122, !"full_duplex", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 40, i32 12}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1931, i32 11}
!125 = !{ptr @tulip_driver, !126, !"tulip_driver", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1930, i32 26}
!127 = !{ptr @tulip_pci_tbl, !128, !"tulip_pci_tbl", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 198, i32 35}
!129 = !{ptr @tulip_init_one.last_phys_addr, !130, !"last_phys_addr", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1293, i32 23}
!131 = !{ptr @tulip_init_one.board_idx, !132, !"board_idx", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1304, i32 13}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1319, i32 3}
!135 = !{ptr @.str.36, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tulip_init_one._entry, !134, !"_entry", i1 false, i1 false}
!138 = !{ptr @tulip_init_one._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1325, i32 3}
!141 = !{ptr @tulip_init_one._entry.38, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @tulip_init_one._entry_ptr.40, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.42, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1394, i32 3}
!145 = !{ptr @tulip_init_one._entry.41, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @tulip_init_one._entry_ptr.43, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1407, i32 3}
!149 = !{ptr @tulip_init_one._entry.44, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @tulip_init_one._entry_ptr.46, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1452, i32 4}
!153 = !{ptr @tulip_init_one._entry.47, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @tulip_init_one._entry_ptr.49, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @tulip_init_one.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1460, i32 2}
!157 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tulip_init_one.__key.51, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1461, i32 2}
!160 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @tulip_init_one.__key.53, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1462, i32 2}
!163 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @tulip_init_one.__key.55, !165, !"__key", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1464, i32 2}
!166 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1645, i32 3}
!169 = !{ptr @tulip_init_one._entry.57, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @tulip_init_one._entry_ptr.59, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @tulip_init_one.media2advert, !172, !"media2advert", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1655, i32 20}
!173 = !{ptr @.str.60, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1663, i32 22}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1665, i32 21}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1701, i32 2}
!179 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tulip_init_one._entry.62, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @tulip_init_one._entry_ptr.66, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @early_486_chipsets, !185, !"early_486_chipsets", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1283, i32 35}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1189, i32 3}
!188 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @tulip_mwi_config.__UNIQUE_ID_ddebug355, !187, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!190 = !{ptr @.str.70, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1251, i32 3}
!192 = !{ptr @tulip_mwi_config.__UNIQUE_ID_ddebug356, !191, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!195 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !194, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!198 = distinct !{null, !199, !"mtu", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 42, i32 12}
!200 = !{ptr @tulip_netdev_ops, !201, !"tulip_netdev_ops", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1268, i32 36}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!204 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.75, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 319, i32 3}
!208 = !{ptr @.str.77, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @tulip_up.__UNIQUE_ID_ddebug352, !207, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 380, i32 5}
!212 = !{ptr @tulip_up._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tulip_up._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 390, i32 5}
!216 = !{ptr @tulip_up._entry.79, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tulip_up._entry_ptr.81, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 419, i32 5}
!220 = !{ptr @tulip_up._entry.82, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tulip_up._entry_ptr.84, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 486, i32 3}
!224 = !{ptr @tulip_up.__UNIQUE_ID_ddebug353, !223, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!225 = !{ptr @tulip_up.__key, !226, !"__key", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 497, i32 2}
!227 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.87, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 829, i32 3}
!230 = !{ptr @.str.88, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @tulip_close.__UNIQUE_ID_ddebug354, !229, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!232 = !{ptr @tulip_down.__key, !233, !"__key", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 773, i32 2}
!234 = !{ptr @.str.89, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1092, i32 6}
!236 = !{ptr @.str.90, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @set_rx_mode._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @set_rx_mode._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 537, i32 4}
!241 = !{ptr @.str.92, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.93, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @tulip_tx_timeout._entry, !240, !"_entry", i1 false, i1 false}
!244 = !{ptr @tulip_tx_timeout._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.95, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 542, i32 3}
!247 = !{ptr @tulip_tx_timeout._entry.94, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tulip_tx_timeout._entry_ptr.96, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.98, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 551, i32 3}
!251 = !{ptr @tulip_tx_timeout._entry.97, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @tulip_tx_timeout._entry_ptr.99, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.101, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 558, i32 3}
!255 = !{ptr @tulip_tx_timeout._entry.100, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @tulip_tx_timeout._entry_ptr.102, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @ops, !258, !"ops", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 890, i32 33}
!259 = !{ptr @tulip_pm_ops, !260, !"tulip_pm_ops", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1928, i32 8}
!261 = !{ptr @.str.103, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1862, i32 3}
!263 = !{ptr @.str.104, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @tulip_resume._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @tulip_resume._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.105, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/dec/tulip/tulip_core.c", i32 1942, i32 3}
!268 = !{ptr @.str.106, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @tulip_init._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @tulip_init._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{!"auto-init"}
!281 = !{i64 5036673}
!282 = !{i64 2152577022}
!283 = !{i64 2152578377}
!284 = !{i64 5036255}
!285 = !{i64 2156457306}
!286 = !{i64 2149009755, i64 2149009760, i64 2149009773, i64 2149009817, i64 2149009851, i64 2149009872}
!287 = !{!"branch_weights", i32 2000, i32 1}
!288 = !{i64 2156626081}
!289 = !{i64 5035835}
!290 = !{i64 2152576410}
!291 = !{i64 2156607152}
!292 = !{i64 2156457071}
