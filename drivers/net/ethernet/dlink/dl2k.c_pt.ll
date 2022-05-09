; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dlink/dl2k.c_pt.bc'
source_filename = "../drivers/net/ethernet/dlink/dl2k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.t_SROM = type { i16, i16, i16, i16, i16, i16, i16, [9 x i16], [6 x i8], [10 x i8], [204 x i8], i32 }
%struct.netdev_desc = type { i64, i64, i64 }
%struct.netdev_private = type { ptr, ptr, [256 x ptr], [256 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, ptr, i32, i32, i32, i32, %struct.timer_list, i32, [256 x i8], i8, [4 x i16], i16, i16, i32, i16 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author341 = internal constant [24 x i8] c"dl2k.author=Edward Peng\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [62 x i8] c"dl2k.description=D-Link DL2000-based Gigabit Ethernet Adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [42 x i8] c"dl2k.file=drivers/net/ethernet/dlink/dl2k\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [17 x i8] c"dl2k.license=GPL\00", section ".modinfo", align 1
@__param_str_mtu = internal constant [9 x i8] c"dl2k.mtu\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_mtu = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @mtu }, align 4
@__param_mtu = internal constant %struct.kernel_param { ptr @__param_str_mtu, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_mtu } }, section "__param", align 4
@__UNIQUE_ID_mtutype345 = internal constant [31 x i8] c"dl2k.parmtype=mtu:array of int\00", section ".modinfo", align 1
@__param_str_media = internal constant [11 x i8] c"dl2k.media\00", align 1
@__param_arr_media = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_charp, ptr @media }, align 4
@__param_media = internal constant %struct.kernel_param { ptr @__param_str_media, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_media } }, section "__param", align 4
@__UNIQUE_ID_mediatype346 = internal constant [35 x i8] c"dl2k.parmtype=media:array of charp\00", section ".modinfo", align 1
@__param_str_vlan = internal constant [10 x i8] c"dl2k.vlan\00", align 1
@__param_arr_vlan = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @vlan }, align 4
@__param_vlan = internal constant %struct.kernel_param { ptr @__param_str_vlan, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_vlan } }, section "__param", align 4
@__UNIQUE_ID_vlantype347 = internal constant [32 x i8] c"dl2k.parmtype=vlan:array of int\00", section ".modinfo", align 1
@__param_str_jumbo = internal constant [11 x i8] c"dl2k.jumbo\00", align 1
@__param_arr_jumbo = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @jumbo }, align 4
@__param_jumbo = internal constant %struct.kernel_param { ptr @__param_str_jumbo, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_jumbo } }, section "__param", align 4
@__UNIQUE_ID_jumbotype348 = internal constant [33 x i8] c"dl2k.parmtype=jumbo:array of int\00", section ".modinfo", align 1
@__param_str_tx_flow = internal constant [13 x i8] c"dl2k.tx_flow\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tx_flow = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tx_flow = internal constant %struct.kernel_param { ptr @__param_str_tx_flow, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tx_flow } }, section "__param", align 4
@__UNIQUE_ID_tx_flowtype349 = internal constant [26 x i8] c"dl2k.parmtype=tx_flow:int\00", section ".modinfo", align 1
@__param_str_rx_flow = internal constant [13 x i8] c"dl2k.rx_flow\00", align 1
@rx_flow = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_rx_flow = internal constant %struct.kernel_param { ptr @__param_str_rx_flow, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_flow } }, section "__param", align 4
@__UNIQUE_ID_rx_flowtype350 = internal constant [26 x i8] c"dl2k.parmtype=rx_flow:int\00", section ".modinfo", align 1
@__param_str_copy_thresh = internal constant [17 x i8] c"dl2k.copy_thresh\00", align 1
@copy_thresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_copy_thresh = internal constant %struct.kernel_param { ptr @__param_str_copy_thresh, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @copy_thresh } }, section "__param", align 4
@__UNIQUE_ID_copy_threshtype351 = internal constant [30 x i8] c"dl2k.parmtype=copy_thresh:int\00", section ".modinfo", align 1
@__param_str_rx_coalesce = internal constant [17 x i8] c"dl2k.rx_coalesce\00", align 1
@rx_coalesce = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_rx_coalesce = internal constant %struct.kernel_param { ptr @__param_str_rx_coalesce, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_coalesce } }, section "__param", align 4
@__UNIQUE_ID_rx_coalescetype352 = internal constant [30 x i8] c"dl2k.parmtype=rx_coalesce:int\00", section ".modinfo", align 1
@__param_str_rx_timeout = internal constant [16 x i8] c"dl2k.rx_timeout\00", align 1
@rx_timeout = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_rx_timeout = internal constant %struct.kernel_param { ptr @__param_str_rx_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_timeout } }, section "__param", align 4
@__UNIQUE_ID_rx_timeouttype353 = internal constant [29 x i8] c"dl2k.parmtype=rx_timeout:int\00", section ".modinfo", align 1
@__param_str_tx_coalesce = internal constant [17 x i8] c"dl2k.tx_coalesce\00", align 1
@tx_coalesce = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_tx_coalesce = internal constant %struct.kernel_param { ptr @__param_str_tx_coalesce, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tx_coalesce } }, section "__param", align 4
@__UNIQUE_ID_tx_coalescetype354 = internal constant [30 x i8] c"dl2k.parmtype=tx_coalesce:int\00", section ".modinfo", align 1
@__initcall__kmod_dl2k__355_1865_rio_driver_init6 = internal global ptr @rio_driver_init, section ".initcall6.init", align 4
@rio_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rio_pci_tbl, ptr @rio_probe1, ptr @rio_remove1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rio_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rio_driver_exit = internal global ptr @rio_driver_exit, section ".exitcall.exit", align 4
@mtu = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@media = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@vlan = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@jumbo = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dl2k\00", [27 x i8] zeroinitializer }, align 32
@rio_pci_tbl = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4486, i32 16384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5104, i32 4129, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5104, i32 4131, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5104, i32 8225, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4486, i32 36897, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4486, i32 16416, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rio_suspend, ptr @rio_resume, ptr @rio_suspend, ptr @rio_resume, ptr @rio_suspend, ptr @rio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rio_probe1.card_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rio_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&np->tx_lock\00", [19 x i8] zeroinitializer }, align 32
@rio_probe1.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&np->rx_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autosense\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"100mbps_fd\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"100mbps_hd\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10mbps_fd\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10mbps_hd\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1000mbps_fd\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1000mbps_hd\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rio_open, ptr @rio_close, ptr @start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @rio_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rio_tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @rio_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rio_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rio_get_link_ksettings, ptr @rio_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rio_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: %s, %pM, IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rio_probe1\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/dlink/dl2k.c\00", [62 x i8] zeroinitializer }, align 32
@rio_probe1._entry_ptr = internal global ptr @rio_probe1._entry, section ".printk_index", align 4
@rio_probe1._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.21, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016tx_coalesce:\09%d packets\0A\00", [37 x i8] zeroinitializer }, align 32
@rio_probe1._entry_ptr.24 = internal global ptr @rio_probe1._entry.22, section ".printk_index", align 4
@rio_probe1._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.21, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016rx_coalesce:\09%d packets\0Arx_timeout: \09%d ns\0A\00", [50 x i8] zeroinitializer }, align 32
@rio_probe1._entry_ptr.27 = internal global ptr @rio_probe1._entry.25, section ".printk_index", align 4
@rio_probe1._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.21, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016vlan(id):\09%d\0A\00", [16 x i8] zeroinitializer }, align 32
@rio_probe1._entry_ptr.30 = internal global ptr @rio_probe1._entry.28, section ".printk_index", align 4
@rio_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&np->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mii_set_media_pcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.21, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Manual full duplex\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mii_set_media_pcs\00", [46 x i8] zeroinitializer }, align 32
@mii_set_media_pcs._entry_ptr = internal global ptr @mii_set_media_pcs._entry, section ".printk_index", align 4
@mii_set_media_pcs._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.21, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016Manual half duplex\0A\00", [42 x i8] zeroinitializer }, align 32
@mii_set_media_pcs._entry_ptr.38 = internal global ptr @mii_set_media_pcs._entry.36, section ".printk_index", align 4
@mii_set_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.21, i32 1642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016Manual 100 Mbps, \00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mii_set_media\00", [18 x i8] zeroinitializer }, align 32
@mii_set_media._entry_ptr = internal global ptr @mii_set_media._entry, section ".printk_index", align 4
@mii_set_media._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.21, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016Manual 10 Mbps, \00", [45 x i8] zeroinitializer }, align 32
@mii_set_media._entry_ptr.43 = internal global ptr @mii_set_media._entry.41, section ".printk_index", align 4
@mii_set_media._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.21, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cFull duplex\0A\00", [17 x i8] zeroinitializer }, align 32
@mii_set_media._entry_ptr.46 = internal global ptr @mii_set_media._entry.44, section ".printk_index", align 4
@mii_set_media._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.21, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cHalf duplex\0A\00", [17 x i8] zeroinitializer }, align 32
@mii_set_media._entry_ptr.49 = internal global ptr @mii_set_media._entry.47, section ".printk_index", align 4
@receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.21, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: receive_packet: Unable to re-allocate Rx skbuff.#%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"receive_packet\00", [17 x i8] zeroinitializer }, align 32
@receive_packet._entry_ptr = internal global ptr @receive_packet._entry, section ".printk_index", align 4
@tx_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.21, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Transmit error, TxStatus %4.4x, FrameId %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_error\00", [23 x i8] zeroinitializer }, align 32
@tx_error._entry_ptr = internal global ptr @tx_error._entry, section ".printk_index", align 4
@rio_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.21, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: Link up\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rio_error\00", [22 x i8] zeroinitializer }, align 32
@rio_error._entry_ptr = internal global ptr @rio_error._entry, section ".printk_index", align 4
@rio_error._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.21, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: Link off\0A\00", [16 x i8] zeroinitializer }, align 32
@rio_error._entry_ptr.58 = internal global ptr @rio_error._entry.56, section ".printk_index", align 4
@rio_error._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.21, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: HostError! IntStatus %4.4x.\0A\00", [61 x i8] zeroinitializer }, align 32
@rio_error._entry_ptr.61 = internal global ptr @rio_error._entry.59, section ".printk_index", align 4
@mii_get_media_pcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.21, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Auto 1000 Mbps, Full duplex\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mii_get_media_pcs\00", [46 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr = internal global ptr @mii_get_media_pcs._entry, section ".printk_index", align 4
@mii_get_media_pcs._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.21, i32 1688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Auto 1000 Mbps, half duplex\0A\00", [33 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.66 = internal global ptr @mii_get_media_pcs._entry.64, section ".printk_index", align 4
@mii_get_media_pcs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.21, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Operating at 1000 Mbps, \00", [37 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.69 = internal global ptr @mii_get_media_pcs._entry.67, section ".printk_index", align 4
@mii_get_media_pcs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.63, ptr @.str.21, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.71 = internal global ptr @mii_get_media_pcs._entry.70, section ".printk_index", align 4
@mii_get_media_pcs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.63, ptr @.str.21, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.73 = internal global ptr @mii_get_media_pcs._entry.72, section ".printk_index", align 4
@mii_get_media_pcs._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.21, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Enable Tx Flow Control\0A\00", [38 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.76 = internal global ptr @mii_get_media_pcs._entry.74, section ".printk_index", align 4
@mii_get_media_pcs._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.63, ptr @.str.21, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Disable Tx Flow Control\0A\00", [37 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.79 = internal global ptr @mii_get_media_pcs._entry.77, section ".printk_index", align 4
@mii_get_media_pcs._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.63, ptr @.str.21, i32 1713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Enable Rx Flow Control\0A\00", [38 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.82 = internal global ptr @mii_get_media_pcs._entry.80, section ".printk_index", align 4
@mii_get_media_pcs._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.63, ptr @.str.21, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Disable Rx Flow Control\0A\00", [37 x i8] zeroinitializer }, align 32
@mii_get_media_pcs._entry_ptr.85 = internal global ptr @mii_get_media_pcs._entry.83, section ".printk_index", align 4
@mii_get_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.86, ptr @.str.21, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mii_get_media\00", [18 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr = internal global ptr @mii_get_media._entry, section ".printk_index", align 4
@mii_get_media._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.21, i32 1519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Auto 1000 Mbps, Half duplex\0A\00", [33 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.89 = internal global ptr @mii_get_media._entry.87, section ".printk_index", align 4
@mii_get_media._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.21, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Auto 100 Mbps, Full duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.92 = internal global ptr @mii_get_media._entry.90, section ".printk_index", align 4
@mii_get_media._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.21, i32 1527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Auto 100 Mbps, Half duplex\0A\00", [34 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.95 = internal global ptr @mii_get_media._entry.93, section ".printk_index", align 4
@mii_get_media._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.21, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Auto 10 Mbps, Full duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.98 = internal global ptr @mii_get_media._entry.96, section ".printk_index", align 4
@mii_get_media._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.86, ptr @.str.21, i32 1535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Auto 10 Mbps, Half duplex\0A\00", [35 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.101 = internal global ptr @mii_get_media._entry.99, section ".printk_index", align 4
@mii_get_media._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.86, ptr @.str.21, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.103 = internal global ptr @mii_get_media._entry.102, section ".printk_index", align 4
@mii_get_media._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.86, ptr @.str.21, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016Operating at 100 Mbps, \00", [38 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.106 = internal global ptr @mii_get_media._entry.104, section ".printk_index", align 4
@mii_get_media._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.86, ptr @.str.21, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016Operating at 10 Mbps, \00", [39 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.109 = internal global ptr @mii_get_media._entry.107, section ".printk_index", align 4
@mii_get_media._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.86, ptr @.str.21, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.111 = internal global ptr @mii_get_media._entry.110, section ".printk_index", align 4
@mii_get_media._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.86, ptr @.str.21, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.113 = internal global ptr @mii_get_media._entry.112, section ".printk_index", align 4
@mii_get_media._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.86, ptr @.str.21, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.115 = internal global ptr @mii_get_media._entry.114, section ".printk_index", align 4
@mii_get_media._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.86, ptr @.str.21, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.117 = internal global ptr @mii_get_media._entry.116, section ".printk_index", align 4
@mii_get_media._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.86, ptr @.str.21, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.119 = internal global ptr @mii_get_media._entry.118, section ".printk_index", align 4
@mii_get_media._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.86, ptr @.str.21, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mii_get_media._entry_ptr.121 = internal global ptr @mii_get_media._entry.120, section ".printk_index", align 4
@rio_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.21, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Try to recover rx ring exhausted...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rio_timer\00", [22 x i8] zeroinitializer }, align 32
@rio_timer._entry_ptr = internal global ptr @rio_timer._entry, section ".printk_index", align 4
@rio_timer._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.21, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: Still unable to re-allocate Rx skbuff.#%d\0A\00", [47 x i8] zeroinitializer }, align 32
@rio_timer._entry_ptr.126 = internal global ptr @rio_timer._entry.124, section ".printk_index", align 4
@rio_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.21, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: Tx timed out (%4.4x), is buffer full?\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_tx_timeout\00", [17 x i8] zeroinitializer }, align 32
@rio_tx_timeout._entry_ptr = internal global ptr @rio_tx_timeout._entry, section ".printk_index", align 4
@rio_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.21, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Warning!! Can't disable Auto negotiation in 1000Mbps, change to Manual 100Mbps, Full duplex.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rio_set_link_ksettings\00", [41 x i8] zeroinitializer }, align 32
@rio_set_link_ksettings._entry_ptr = internal global ptr @rio_set_link_ksettings._entry, section ".printk_index", align 4
@parse_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.21, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: EEPROM data CRC error.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parse_eeprom\00", [19 x i8] zeroinitializer }, align 32
@parse_eeprom._entry_ptr = internal global ptr @parse_eeprom._entry, section ".printk_index", align 4
@parse_eeprom._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.21, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Cell data error\0A\00", [45 x i8] zeroinitializer }, align 32
@parse_eeprom._entry_ptr.135 = internal global ptr @parse_eeprom._entry.133, section ".printk_index", align 4
@find_miiphy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.21, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: No MII PHY found!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"find_miiphy\00", [20 x i8] zeroinitializer }, align 32
@find_miiphy._entry_ptr = internal global ptr @find_miiphy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 64, i64 8192]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"tx_flow\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 25, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"rx_flow\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 26, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"copy_thresh\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 27, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"rx_coalesce\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 28, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"rx_timeout\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 29, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"tx_coalesce\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 30, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"rio_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1857, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 21, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 24, i32 14 }
@___asan_gen_.170 = private unnamed_addr constant [5 x i8] c"vlan\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 22, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"jumbo\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 23, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1865, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"rio_pci_tbl\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [37 x i8] c"../drivers/net/ethernet/dlink/dl2k.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 416, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"rio_pm_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1848, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 107, i32 13 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 149, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 150, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 158, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 159, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 160, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 162, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 163, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 166, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 167, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 170, i32 40 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 171, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 174, i32 40 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 175, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 178, i32 40 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 179, i32 31 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 182, i32 40 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 183, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 90, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1334, i32 33 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 269, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 272, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 275, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 280, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 639, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 326, i32 6 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1758, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1761, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1642, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1644, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1648, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1650, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 997, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 869, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1028, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1048, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1062, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1685, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1688, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1701, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1703, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1705, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1709, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1711, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1713, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1715, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1515, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1519, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1523, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1527, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1531, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1535, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1549, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1552, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1555, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1558, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1560, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1564, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1566, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1568, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1570, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 661, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 672, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 698, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1308, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 345, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 370, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.549 = private constant [37 x i8] c"../drivers/net/ethernet/dlink/dl2k.c\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 319, i32 3 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_copy_threshtype351, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_jumbotype348, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_mediatype346, ptr @__UNIQUE_ID_mtutype345, ptr @__UNIQUE_ID_rx_coalescetype352, ptr @__UNIQUE_ID_rx_flowtype350, ptr @__UNIQUE_ID_rx_timeouttype353, ptr @__UNIQUE_ID_tx_coalescetype354, ptr @__UNIQUE_ID_tx_flowtype349, ptr @__UNIQUE_ID_vlantype347, ptr @__exitcall_rio_driver_exit, ptr @__initcall__kmod_dl2k__355_1865_rio_driver_init6, ptr @__param_copy_thresh, ptr @__param_jumbo, ptr @__param_media, ptr @__param_mtu, ptr @__param_rx_coalesce, ptr @__param_rx_flow, ptr @__param_rx_timeout, ptr @__param_tx_coalesce, ptr @__param_tx_flow, ptr @__param_vlan, ptr @find_miiphy._entry, ptr @find_miiphy._entry_ptr, ptr @mii_get_media._entry, ptr @mii_get_media._entry.102, ptr @mii_get_media._entry.104, ptr @mii_get_media._entry.107, ptr @mii_get_media._entry.110, ptr @mii_get_media._entry.112, ptr @mii_get_media._entry.114, ptr @mii_get_media._entry.116, ptr @mii_get_media._entry.118, ptr @mii_get_media._entry.120, ptr @mii_get_media._entry.87, ptr @mii_get_media._entry.90, ptr @mii_get_media._entry.93, ptr @mii_get_media._entry.96, ptr @mii_get_media._entry.99, ptr @mii_get_media._entry_ptr, ptr @mii_get_media._entry_ptr.101, ptr @mii_get_media._entry_ptr.103, ptr @mii_get_media._entry_ptr.106, ptr @mii_get_media._entry_ptr.109, ptr @mii_get_media._entry_ptr.111, ptr @mii_get_media._entry_ptr.113, ptr @mii_get_media._entry_ptr.115, ptr @mii_get_media._entry_ptr.117, ptr @mii_get_media._entry_ptr.119, ptr @mii_get_media._entry_ptr.121, ptr @mii_get_media._entry_ptr.89, ptr @mii_get_media._entry_ptr.92, ptr @mii_get_media._entry_ptr.95, ptr @mii_get_media._entry_ptr.98, ptr @mii_get_media_pcs._entry, ptr @mii_get_media_pcs._entry.64, ptr @mii_get_media_pcs._entry.67, ptr @mii_get_media_pcs._entry.70, ptr @mii_get_media_pcs._entry.72, ptr @mii_get_media_pcs._entry.74, ptr @mii_get_media_pcs._entry.77, ptr @mii_get_media_pcs._entry.80, ptr @mii_get_media_pcs._entry.83, ptr @mii_get_media_pcs._entry_ptr, ptr @mii_get_media_pcs._entry_ptr.66, ptr @mii_get_media_pcs._entry_ptr.69, ptr @mii_get_media_pcs._entry_ptr.71, ptr @mii_get_media_pcs._entry_ptr.73, ptr @mii_get_media_pcs._entry_ptr.76, ptr @mii_get_media_pcs._entry_ptr.79, ptr @mii_get_media_pcs._entry_ptr.82, ptr @mii_get_media_pcs._entry_ptr.85, ptr @mii_set_media._entry, ptr @mii_set_media._entry.41, ptr @mii_set_media._entry.44, ptr @mii_set_media._entry.47, ptr @mii_set_media._entry_ptr, ptr @mii_set_media._entry_ptr.43, ptr @mii_set_media._entry_ptr.46, ptr @mii_set_media._entry_ptr.49, ptr @mii_set_media_pcs._entry, ptr @mii_set_media_pcs._entry.36, ptr @mii_set_media_pcs._entry_ptr, ptr @mii_set_media_pcs._entry_ptr.38, ptr @parse_eeprom._entry, ptr @parse_eeprom._entry.133, ptr @parse_eeprom._entry_ptr, ptr @parse_eeprom._entry_ptr.135, ptr @receive_packet._entry, ptr @receive_packet._entry_ptr, ptr @rio_driver_exit, ptr @rio_error._entry, ptr @rio_error._entry.56, ptr @rio_error._entry.59, ptr @rio_error._entry_ptr, ptr @rio_error._entry_ptr.58, ptr @rio_error._entry_ptr.61, ptr @rio_probe1._entry, ptr @rio_probe1._entry.22, ptr @rio_probe1._entry.25, ptr @rio_probe1._entry.28, ptr @rio_probe1._entry_ptr, ptr @rio_probe1._entry_ptr.24, ptr @rio_probe1._entry_ptr.27, ptr @rio_probe1._entry_ptr.30, ptr @rio_set_link_ksettings._entry, ptr @rio_set_link_ksettings._entry_ptr, ptr @rio_timer._entry, ptr @rio_timer._entry.124, ptr @rio_timer._entry_ptr, ptr @rio_timer._entry_ptr.126, ptr @rio_tx_timeout._entry, ptr @rio_tx_timeout._entry_ptr, ptr @tx_error._entry, ptr @tx_error._entry_ptr, ptr @tx_flow, ptr @rx_flow, ptr @copy_thresh, ptr @rx_coalesce, ptr @rx_timeout, ptr @tx_coalesce, ptr @rio_driver, ptr @mtu, ptr @media, ptr @vlan, ptr @jumbo, ptr @.str, ptr @rio_pci_tbl, ptr @rio_pm_ops, ptr @rio_probe1.card_idx, ptr @rio_probe1.__key, ptr @.str.1, ptr @rio_probe1.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @netdev_ops, ptr @ethtool_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @rio_open.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.105, ptr @.str.108, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_flow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_flow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_coalesce to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_coalesce to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jumbo to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_pci_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_probe1._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media_pcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media_pcs._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_set_media._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_error._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_error._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media_pcs._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_get_media._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_timer._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_eeprom._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_miiphy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rio_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @rio_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_probe1(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %sromdata.i = alloca [256 x i8], align 1
  %ring_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #11
  %2 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ring_dma, align 4, !annotation !327
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq1, align 4
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_out_disable_crit_edge

if.end.err_out_disable_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_disable

if.end5:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call6 = tail call ptr @alloc_etherdev_mqs(i32 noundef 2548, i32 noundef 1, i32 noundef 1) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_out_res_crit_edge, label %if.end9

if.end5.err_out_res_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_res

if.end9:                                          ; preds = %if.end5
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev10, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call6, i32 2304
  %call13 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end9.err_out_dev_crit_edge, label %if.end16

if.end9.err_out_dev_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_dev

if.end16:                                         ; preds = %if.end9
  %eeprom_addr = getelementptr i8, ptr %call6, i32 4376
  %6 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %eeprom_addr, align 4
  %ioaddr17 = getelementptr i8, ptr %call6, i32 4372
  %7 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %ioaddr17, align 4
  %chip_id = getelementptr i8, ptr %call6, i32 4480
  %8 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %chip_id, align 4
  %pdev18 = getelementptr i8, ptr %call6, i32 4368
  %9 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev18, align 4
  %tx_lock = getelementptr i8, ptr %call6, i32 4380
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rio_probe1.__key, i16 noundef signext 3) #11
  %rx_lock = getelementptr i8, ptr %call6, i32 4424
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @rio_probe1.__key.2, i16 noundef signext 3) #11
  %an_enable = getelementptr i8, ptr %call6, i32 4496
  %10 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %an_enable, align 4
  %bf.clear = and i16 %bf.load, -24577
  %bf.set = or i16 %bf.clear, 8192
  store i16 %bf.set, ptr %an_enable, align 4
  %tx_coalesce = getelementptr i8, ptr %call6, i32 4492
  %11 = ptrtoint ptr %tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tx_coalesce, align 4
  %12 = load i32, ptr @rio_probe1.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp slt i32 %12, 8
  br i1 %cmp, label %if.then24, label %if.end16.if.end194_crit_edge

if.end16.if.end194_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then24:                                        ; preds = %if.end16
  %arrayidx = getelementptr [8 x ptr], ptr @media, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp25.not = icmp eq ptr %14, null
  br i1 %cmp25.not, label %if.then24.if.end139_crit_edge, label %if.then26

if.then24.if.end139_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

if.then26:                                        ; preds = %if.then24
  %15 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.clear, ptr %an_enable, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then26.if.then41_crit_edge, label %lor.lhs.false

if.then26.if.then41_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.then26
  %call35 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(10) @.str.5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false37

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %call39 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %lor.lhs.false37.if.then41_crit_edge, label %if.else

lor.lhs.false37.if.then41_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false37.if.then41_crit_edge, %lor.lhs.false.if.then41_crit_edge, %if.then26.if.then41_crit_edge
  %bf.set45 = or i16 %bf.clear, 16384
  br label %if.end139.sink.split

if.else:                                          ; preds = %lor.lhs.false37
  %call47 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(11) @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.else.if.then53_crit_edge, label %lor.lhs.false49

if.else.if.then53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

lor.lhs.false49:                                  ; preds = %if.else
  %call51 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %lor.lhs.false49.if.then53_crit_edge, label %if.else57

lor.lhs.false49.if.then53_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %lor.lhs.false49.if.then53_crit_edge, %if.else.if.then53_crit_edge
  %speed = getelementptr i8, ptr %call6, i32 4472
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %speed, align 4
  %bf.set56 = or i16 %bf.clear, -32768
  br label %if.end139.sink.split

if.else57:                                        ; preds = %lor.lhs.false49
  %call59 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(11) @.str.9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.else57.if.then65_crit_edge, label %lor.lhs.false61

if.else57.if.then65_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

lor.lhs.false61:                                  ; preds = %if.else57
  %call63 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %lor.lhs.false61.if.then65_crit_edge, label %if.else71

lor.lhs.false61.if.then65_crit_edge:              ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false61.if.then65_crit_edge, %if.else57.if.then65_crit_edge
  %speed66 = getelementptr i8, ptr %call6, i32 4472
  %19 = ptrtoint ptr %speed66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %speed66, align 4
  %bf.clear69 = and i16 %bf.load, 8191
  br label %if.end139.sink.split

if.else71:                                        ; preds = %lor.lhs.false61
  %call73 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(10) @.str.11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.else71.if.then79_crit_edge, label %lor.lhs.false75

if.else71.if.then79_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

lor.lhs.false75:                                  ; preds = %if.else71
  %call77 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %lor.lhs.false75.if.then79_crit_edge, label %if.else85

lor.lhs.false75.if.then79_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false75.if.then79_crit_edge, %if.else71.if.then79_crit_edge
  %speed80 = getelementptr i8, ptr %call6, i32 4472
  %20 = ptrtoint ptr %speed80 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %speed80, align 4
  %bf.set84 = or i16 %bf.clear, -32768
  br label %if.end139.sink.split

if.else85:                                        ; preds = %lor.lhs.false75
  %call87 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(10) @.str.13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.else85.if.then93_crit_edge, label %lor.lhs.false89

if.else85.if.then93_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

lor.lhs.false89:                                  ; preds = %if.else85
  %call91 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %lor.lhs.false89.if.then93_crit_edge, label %if.else99

lor.lhs.false89.if.then93_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false89.if.then93_crit_edge, %if.else85.if.then93_crit_edge
  %speed94 = getelementptr i8, ptr %call6, i32 4472
  %21 = ptrtoint ptr %speed94 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %speed94, align 4
  %bf.clear97 = and i16 %bf.load, 8191
  br label %if.end139.sink.split

if.else99:                                        ; preds = %lor.lhs.false89
  %call101 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(12) @.str.15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.else99.if.then107_crit_edge, label %lor.lhs.false103

if.else99.if.then107_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

lor.lhs.false103:                                 ; preds = %if.else99
  %call105 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %lor.lhs.false103.if.then107_crit_edge, label %if.else113

lor.lhs.false103.if.then107_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

if.then107:                                       ; preds = %lor.lhs.false103.if.then107_crit_edge, %if.else99.if.then107_crit_edge
  %speed108 = getelementptr i8, ptr %call6, i32 4472
  %22 = ptrtoint ptr %speed108 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000, ptr %speed108, align 4
  %bf.set112 = or i16 %bf.clear, -32768
  br label %if.end139.sink.split

if.else113:                                       ; preds = %lor.lhs.false103
  %call115 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(12) @.str.17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.else113.if.then121_crit_edge, label %lor.lhs.false117

if.else113.if.then121_crit_edge:                  ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

lor.lhs.false117:                                 ; preds = %if.else113
  %call119 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(2) @.str.18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %lor.lhs.false117.if.then121_crit_edge, label %lor.lhs.false117.if.end139.sink.split_crit_edge

lor.lhs.false117.if.end139.sink.split_crit_edge:  ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139.sink.split

lor.lhs.false117.if.then121_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.then121:                                       ; preds = %lor.lhs.false117.if.then121_crit_edge, %if.else113.if.then121_crit_edge
  %speed122 = getelementptr i8, ptr %call6, i32 4472
  %23 = ptrtoint ptr %speed122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %speed122, align 4
  %bf.clear125 = and i16 %bf.load, 8191
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.then121, %lor.lhs.false117.if.end139.sink.split_crit_edge, %if.then107, %if.then93, %if.then79, %if.then65, %if.then53, %if.then41
  %bf.set45.sink = phi i16 [ %bf.set45, %if.then41 ], [ %bf.clear69, %if.then65 ], [ %bf.clear97, %if.then93 ], [ %bf.clear125, %if.then121 ], [ %bf.set112, %if.then107 ], [ %bf.set84, %if.then79 ], [ %bf.set56, %if.then53 ], [ %bf.set, %lor.lhs.false117.if.end139.sink.split_crit_edge ]
  %24 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %bf.set45.sink, ptr %an_enable, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.then24.if.end139_crit_edge
  %arrayidx140 = getelementptr [8 x i32], ptr @jumbo, i32 0, i32 %12
  %25 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp141.not = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load148 = load i16, ptr %an_enable, align 4
  br i1 %cmp141.not, label %if.else146, label %if.then142

if.then142:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set145 = or i16 %bf.load148, 4096
  %28 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %bf.set145, ptr %an_enable, align 4
  br label %if.end159.sink.split

if.else146:                                       ; preds = %if.end139
  %bf.clear149 = and i16 %bf.load148, -4097
  %29 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %bf.clear149, ptr %an_enable, align 4
  %arrayidx151 = getelementptr [8 x i32], ptr @mtu, i32 0, i32 %12
  %30 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx151, align 4
  %32 = add i32 %31, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %32)
  %33 = icmp ult i32 %32, 1535
  br i1 %33, label %if.else146.if.end159.sink.split_crit_edge, label %if.else146.if.end159_crit_edge

if.else146.if.end159_crit_edge:                   ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.else146.if.end159.sink.split_crit_edge:        ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159.sink.split

if.end159.sink.split:                             ; preds = %if.else146.if.end159.sink.split_crit_edge, %if.then142
  %.sink = phi i32 [ 8000, %if.then142 ], [ %31, %if.else146.if.end159.sink.split_crit_edge ]
  %mtu157 = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 20
  %34 = ptrtoint ptr %mtu157 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %mtu157, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.end159.sink.split, %if.else146.if.end159_crit_edge
  %arrayidx160 = getelementptr [8 x i32], ptr @vlan, i32 0, i32 %12
  %35 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx160, align 4
  %37 = add i32 %36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %37)
  %38 = icmp ult i32 %37, 4095
  %cond = select i1 %38, i32 %36, i32 0
  %vlan = getelementptr i8, ptr %call6, i32 4476
  %39 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %vlan, align 4
  %40 = load i32, ptr @rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp166 = icmp sgt i32 %40, 0
  br i1 %cmp166, label %land.lhs.true167, label %if.end159.if.end173_crit_edge

if.end159.if.end173_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

land.lhs.true167:                                 ; preds = %if.end159
  %41 = load i32, ptr @rx_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp168 = icmp sgt i32 %41, 0
  br i1 %cmp168, label %if.then169, label %land.lhs.true167.if.end173_crit_edge

land.lhs.true167.if.end173_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then169:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  %rx_coalesce = getelementptr i8, ptr %call6, i32 4484
  %42 = ptrtoint ptr %rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %rx_coalesce, align 4
  %43 = load i32, ptr @rx_timeout, align 4
  %rx_timeout = getelementptr i8, ptr %call6, i32 4488
  %44 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %rx_timeout, align 4
  %45 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load170 = load i16, ptr %an_enable, align 4
  %bf.set172 = or i16 %bf.load170, 2048
  store i16 %bf.set172, ptr %an_enable, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %land.lhs.true167.if.end173_crit_edge, %if.end159.if.end173_crit_edge
  %46 = load i32, ptr @tx_flow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp174.not = icmp eq i32 %46, 0
  %47 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load176 = load i16, ptr %an_enable, align 4
  %bf.shl = select i1 %cmp174.not, i16 0, i16 1024
  %bf.clear177 = and i16 %bf.load176, -1025
  %bf.set178 = or i16 %bf.clear177, %bf.shl
  store i16 %bf.set178, ptr %an_enable, align 4
  %48 = load i32, ptr @rx_flow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp179.not = icmp eq i32 %48, 0
  %bf.shl183 = select i1 %cmp179.not, i16 0, i16 512
  %bf.clear184 = and i16 %bf.set178, -513
  %bf.set185 = or i16 %bf.shl183, %bf.clear184
  %49 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %bf.set185, ptr %an_enable, align 4
  %50 = load i32, ptr @tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp187 = icmp slt i32 %50, 1
  br i1 %cmp187, label %if.end173.if.end194.sink.split_crit_edge, label %if.else189

if.end173.if.end194.sink.split_crit_edge:         ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194.sink.split

if.else189:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %50)
  %cmp190 = icmp ugt i32 %50, 255
  br i1 %cmp190, label %if.else189.if.end194.sink.split_crit_edge, label %if.else189.if.end194_crit_edge

if.else189.if.end194_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.else189.if.end194.sink.split_crit_edge:        ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194.sink.split

if.end194.sink.split:                             ; preds = %if.else189.if.end194.sink.split_crit_edge, %if.end173.if.end194.sink.split_crit_edge
  %.sink426 = phi i32 [ 1, %if.end173.if.end194.sink.split_crit_edge ], [ 255, %if.else189.if.end194.sink.split_crit_edge ]
  store i32 %.sink426, ptr @tx_coalesce, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.end194.sink.split, %if.else189.if.end194_crit_edge, %if.end16.if.end194_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 16
  %51 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 115
  %52 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 400, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 44
  %53 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 30
  %54 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 68, ptr %min_mtu, align 8
  %55 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load196 = load i16, ptr %an_enable, align 4
  %56 = and i16 %bf.load196, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool198.not = icmp eq i16 %56, 0
  %cond199 = select i1 %tobool198.not, i32 1536, i32 8000
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 31
  %57 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond199, ptr %max_mtu, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef 6144, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool202.not = icmp eq ptr %call.i, null
  br i1 %tobool202.not, label %if.end194.err_out_iounmap_crit_edge, label %if.end204

if.end194.err_out_iounmap_crit_edge:              ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_iounmap

if.end204:                                        ; preds = %if.end194
  %tx_ring = getelementptr i8, ptr %call6, i32 2308
  %59 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %tx_ring, align 4
  %60 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call6, i32 4360
  %62 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tx_ring_dma, align 4
  %call.i417 = call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef 6144, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #11
  %tobool207.not = icmp eq ptr %call.i417, null
  br i1 %tobool207.not, label %if.end204.err_out_unmap_tx_crit_edge, label %if.end209

if.end204.err_out_unmap_tx_crit_edge:             ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_unmap_tx

if.end209:                                        ; preds = %if.end204
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i417, ptr %add.ptr.i, align 4
  %64 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call6, i32 4364
  %66 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %rx_ring_dma, align 4
  %67 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr17, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sromdata.i) #11
  %69 = call ptr @memset(ptr %sromdata.i, i32 255, i32 256)
  br label %for.body.i

for.body.i:                                       ; preds = %read_eeprom.exit.i.for.body.i_crit_edge, %if.end209
  %i.04.i = phi i32 [ 0, %if.end209 ], [ %inc.i, %read_eeprom.exit.i.for.body.i_crit_edge ]
  %70 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom_addr, align 4
  %72 = trunc i32 %i.04.i to i16
  %73 = and i16 %72, 255
  %conv.i.i = or i16 %73, 512
  %add.ptr.i3.i = getelementptr i8, ptr %71, i32 74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  call void @arm_heavy_mb() #11
  %74 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i3.i, i16 %74) #11, !srcloc !329
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %for.body.i
  %i.0.i.i = phi i32 [ 1000, %for.body.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %cmp.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp.not.i.i, label %while.cond.i.i.read_eeprom.exit.i_crit_edge, label %while.body.i.i

while.cond.i.i.read_eeprom.exit.i_crit_edge:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_eeprom.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %dec.i.i = add nsw i32 %i.0.i.i, -1
  %75 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i3.i) #11, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %.mask.i.i = and i16 %75, 128
  %tobool.not.i.i = icmp eq i16 %.mask.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr5.i.i = getelementptr i8, ptr %71, i32 72
  %76 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #11, !srcloc !330
  %77 = call i16 @llvm.bswap.i16(i16 %76) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  br label %read_eeprom.exit.i

read_eeprom.exit.i:                               ; preds = %if.then.i.i, %while.cond.i.i.read_eeprom.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %77, %if.then.i.i ], [ 0, %while.cond.i.i.read_eeprom.exit.i_crit_edge ]
  %78 = call i16 @llvm.bswap.i16(i16 %retval.0.i.i) #11
  %arrayidx.i = getelementptr i16, ptr %sromdata.i, i32 %i.04.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %read_eeprom.exit.i.for.body.i_crit_edge

read_eeprom.exit.i.for.body.i_crit_edge:          ; preds = %read_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %read_eeprom.exit.i
  %80 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev18, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4486, i16 %83)
  %cmp5.i = icmp eq i16 %83, 4486
  br i1 %cmp5.i, label %if.then.i, label %for.end.i.if.end15.i_crit_edge

for.end.i.if.end15.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then.i:                                        ; preds = %for.end.i
  %call8.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %sromdata.i, i32 noundef 252) #15
  %neg.i = xor i32 %call8.i, -1
  %crc9.i = getelementptr inbounds %struct.t_SROM, ptr %sromdata.i, i32 0, i32 11
  %84 = ptrtoint ptr %crc9.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %crc9.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %neg.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %86)
  %cmp10.not.i = icmp eq i32 %85, %86
  br i1 %cmp10.not.i, label %if.then.i.if.end15.i_crit_edge, label %do.end.i

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %call6) #16
  br label %parse_eeprom.exit

if.end15.i:                                       ; preds = %if.then.i.if.end15.i_crit_edge, %for.end.i.if.end15.i_crit_edge
  %mac_addr.i = getelementptr inbounds %struct.t_SROM, ptr %sromdata.i, i32 0, i32 8
  call void @dev_addr_mod(ptr noundef %call6, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #11
  %87 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp17.i = icmp eq i32 %88, 1
  br i1 %cmp17.i, label %if.then19.i, label %if.end21.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %led_mode.i = getelementptr inbounds %struct.t_SROM, ptr %sromdata.i, i32 0, i32 6
  %89 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %led_mode.i, align 4
  %led_mode20.i = getelementptr i8, ptr %call6, i32 4848
  %91 = ptrtoint ptr %led_mode20.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %led_mode20.i, align 4
  br label %parse_eeprom.exit

if.end21.i:                                       ; preds = %if.end15.i
  %92 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev18, align 4
  %vendor23.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %vendor23.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vendor23.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4486, i16 %95)
  %cmp25.not.i = icmp eq i16 %95, 4486
  br i1 %cmp25.not.i, label %do.body30.preheader.i, label %if.end21.i.parse_eeprom.exit_crit_edge

if.end21.i.parse_eeprom.exit_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_eeprom.exit

do.body30.preheader.i:                            ; preds = %if.end21.i
  %arrayidx325.i = getelementptr inbounds i8, ptr %sromdata.i, i32 48
  %96 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx325.i, align 1
  %arrayidx356.i = getelementptr inbounds i8, ptr %sromdata.i, i32 49
  %98 = ptrtoint ptr %arrayidx356.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx356.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp378.i = icmp eq i8 %97, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp399.i = icmp eq i8 %99, 0
  %or.cond10.i = select i1 %cmp378.i, i1 %cmp399.i, i1 false
  br i1 %or.cond10.i, label %do.body30.preheader.i.do.end49.i_crit_edge, label %lor.lhs.false.lr.ph.i

do.body30.preheader.i.do.end49.i_crit_edge:       ; preds = %do.body30.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

lor.lhs.false.lr.ph.i:                            ; preds = %do.body30.preheader.i
  %name68.i = getelementptr i8, ptr %call6, i32 4572
  %wake_polarity.i = getelementptr i8, ptr %call6, i32 4568
  %duplex_polarity.i = getelementptr i8, ptr %call6, i32 4828
  %add.ptr.i418 = getelementptr i8, ptr %68, i32 118
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %100 = phi i8 [ %99, %lor.lhs.false.lr.ph.i ], [ %116, %sw.epilog.i.lor.lhs.false.i_crit_edge ]
  %inc3411.i = phi i32 [ 50, %lor.lhs.false.lr.ph.i ], [ %inc34.i, %sw.epilog.i.lor.lhs.false.i_crit_edge ]
  %101 = phi i8 [ %97, %lor.lhs.false.lr.ph.i ], [ %114, %sw.epilog.i.lor.lhs.false.i_crit_edge ]
  %conv3612.i = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %cmp41.i = icmp eq i8 %101, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %cmp44.i = icmp eq i8 %100, -1
  %or.cond2.i = select i1 %cmp41.i, i1 %cmp44.i, i1 false
  br i1 %or.cond2.i, label %lor.lhs.false.i.do.end49.i_crit_edge, label %if.end52.i

lor.lhs.false.i.do.end49.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

do.end49.i:                                       ; preds = %sw.epilog.i.do.end49.i_crit_edge, %lor.lhs.false.i.do.end49.i_crit_edge, %do.body30.preheader.i.do.end49.i_crit_edge
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #16
  br label %parse_eeprom.exit

if.end52.i:                                       ; preds = %lor.lhs.false.i
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i8 %101, label %if.end52.i.parse_eeprom.exit_crit_edge [
    i8 0, label %if.end52.i.sw.epilog.i_crit_edge
    i8 8, label %if.end52.i.sw.epilog.i_crit_edge427
    i8 2, label %sw.bb53.i
    i8 3, label %sw.bb61.i
    i8 9, label %sw.bb64.i
    i8 4, label %if.end52.i.sw.epilog.i_crit_edge428
    i8 5, label %if.end52.i.sw.epilog.i_crit_edge429
    i8 6, label %if.end52.i.sw.epilog.i_crit_edge430
    i8 7, label %if.end52.i.sw.epilog.i_crit_edge431
  ]

if.end52.i.sw.epilog.i_crit_edge431:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.sw.epilog.i_crit_edge430:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.sw.epilog.i_crit_edge429:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.sw.epilog.i_crit_edge428:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.sw.epilog.i_crit_edge427:              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.sw.epilog.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end52.i.parse_eeprom.exit_crit_edge:           ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parse_eeprom.exit

sw.bb53.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx54.i = getelementptr i8, ptr %sromdata.i, i32 %inc3411.i
  %103 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx54.i, align 1
  %105 = ptrtoint ptr %duplex_polarity.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %duplex_polarity.i, align 4
  %106 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i418) #11, !srcloc !332
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %107 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx54.i, align 1
  %or1.i = or i8 %108, %106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i418, i8 %or1.i) #11, !srcloc !335
  br label %sw.epilog.i

sw.bb61.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx62.i = getelementptr i8, ptr %sromdata.i, i32 %inc3411.i
  %109 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %110 to i32
  %111 = ptrtoint ptr %wake_polarity.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv63.i, ptr %wake_polarity.i, align 4
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub nsw i32 %conv3612.i, %inc3411.i
  %arrayidx70.i = getelementptr i8, ptr %sromdata.i, i32 %inc3411.i
  %112 = call ptr @memcpy(ptr %name68.i, ptr %arrayidx70.i, i32 %sub.i)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb64.i, %sw.bb61.i, %sw.bb53.i, %if.end52.i.sw.epilog.i_crit_edge, %if.end52.i.sw.epilog.i_crit_edge427, %if.end52.i.sw.epilog.i_crit_edge428, %if.end52.i.sw.epilog.i_crit_edge429, %if.end52.i.sw.epilog.i_crit_edge430, %if.end52.i.sw.epilog.i_crit_edge431
  %inc31.i = add nuw nsw i32 %conv3612.i, 1
  %arrayidx32.i = getelementptr i8, ptr %sromdata.i, i32 %conv3612.i
  %113 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx32.i, align 1
  %inc34.i = add nuw nsw i32 %conv3612.i, 2
  %arrayidx35.i = getelementptr i8, ptr %sromdata.i, i32 %inc31.i
  %115 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp37.i = icmp eq i8 %114, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp39.i = icmp eq i8 %116, 0
  %or.cond.i = select i1 %cmp37.i, i1 %cmp39.i, i1 false
  br i1 %or.cond.i, label %sw.epilog.i.do.end49.i_crit_edge, label %sw.epilog.i.lor.lhs.false.i_crit_edge

sw.epilog.i.lor.lhs.false.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

sw.epilog.i.do.end49.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

parse_eeprom.exit:                                ; preds = %if.end52.i.parse_eeprom.exit_crit_edge, %do.end49.i, %if.end21.i.parse_eeprom.exit_crit_edge, %if.then19.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sromdata.i) #11
  %phy_addr.i = getelementptr i8, ptr %call6, i32 4844
  %117 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %phy_addr.i, align 4
  br label %for.body.i419

for.body.i419:                                    ; preds = %if.end.i.for.body.i419_crit_edge, %parse_eeprom.exit
  %phy_found.020.i = phi i32 [ 0, %parse_eeprom.exit ], [ %phy_found.1.i, %if.end.i.for.body.i419_crit_edge ]
  %i.018.i = phi i32 [ 31, %parse_eeprom.exit ], [ %dec.i, %if.end.i.for.body.i419_crit_edge ]
  %call1.i = call fastcc i32 @mii_read(ptr noundef %call6, i32 noundef %i.018.i, i32 noundef 1) #11
  %118 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call1.i, label %if.then.i421 [
    i32 65535, label %for.body.i419.if.end.i_crit_edge
    i32 0, label %for.body.i419.if.end.i_crit_edge432
  ]

for.body.i419.if.end.i_crit_edge432:              ; preds = %for.body.i419
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i419.if.end.i_crit_edge:                 ; preds = %for.body.i419
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i421:                                     ; preds = %for.body.i419
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %i.018.i, ptr %phy_addr.i, align 4
  %inc.i420 = add i32 %phy_found.020.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i421, %for.body.i419.if.end.i_crit_edge, %for.body.i419.if.end.i_crit_edge432
  %phy_found.1.i = phi i32 [ %inc.i420, %if.then.i421 ], [ %phy_found.020.i, %for.body.i419.if.end.i_crit_edge ], [ %phy_found.020.i, %for.body.i419.if.end.i_crit_edge432 ]
  %dec.i = add nsw i32 %i.018.i, -1
  %cmp.not.i = icmp eq i32 %i.018.i, 0
  br i1 %cmp.not.i, label %for.end.i422, label %if.end.i.for.body.i419_crit_edge

if.end.i.for.body.i419_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i419

for.end.i422:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_found.1.i)
  %tobool.not.i = icmp eq i32 %phy_found.1.i, 0
  br i1 %tobool.not.i, label %find_miiphy.exit, label %if.end214

find_miiphy.exit:                                 ; preds = %for.end.i422
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %call6) #16
  br label %err_out_unmap_rx

if.end214:                                        ; preds = %for.end.i422
  %add.ptr = getelementptr i8, ptr %call13, i32 48
  %120 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #11, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %121 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %121)
  %bf.load218 = load i16, ptr %an_enable, align 4
  %122 = lshr i16 %120, 7
  %bf.shl220 = and i16 %122, 256
  %bf.clear221 = and i16 %bf.load218, -385
  %bf.set222 = or i16 %bf.clear221, %bf.shl220
  store i16 %bf.set222, ptr %an_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.shl220)
  %tobool232.not = icmp eq i16 %bf.shl220, 0
  br i1 %tobool232.not, label %if.else247, label %if.then233

if.then233:                                       ; preds = %if.end214
  %123 = and i16 %bf.load218, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %123)
  %cmp239 = icmp eq i16 %123, 16384
  br i1 %cmp239, label %if.then233.if.end257.sink.split_crit_edge, label %if.then233.if.end257_crit_edge

if.then233.if.end257_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257

if.then233.if.end257.sink.split_crit_edge:        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.sink.split

if.else247:                                       ; preds = %if.end214
  %speed248 = getelementptr i8, ptr %call6, i32 4472
  %124 = ptrtoint ptr %speed248 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %speed248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %125)
  %cmp249 = icmp eq i32 %125, 1000
  br i1 %cmp249, label %if.else247.if.end257.sink.split_crit_edge, label %if.else247.if.end257_crit_edge

if.else247.if.end257_crit_edge:                   ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257

if.else247.if.end257.sink.split_crit_edge:        ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end257.sink.split

if.end257.sink.split:                             ; preds = %if.else247.if.end257.sink.split_crit_edge, %if.then233.if.end257.sink.split_crit_edge
  %bf.clear254 = and i16 %bf.set222, -24705
  %bf.set255 = or i16 %bf.clear254, 8192
  %126 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %bf.set255, ptr %an_enable, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.end257.sink.split, %if.else247.if.end257_crit_edge, %if.then233.if.end257_crit_edge
  %call258 = call i32 @register_netdev(ptr noundef nonnull %call6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %if.end261, label %if.end257.err_out_unmap_rx_crit_edge

if.end257.err_out_unmap_rx_crit_edge:             ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out_unmap_rx

if.end261:                                        ; preds = %if.end257
  %127 = load i32, ptr @rio_probe1.card_idx, align 4
  %inc = add i32 %127, 1
  store i32 %inc, ptr @rio_probe1.card_idx, align 4
  %name265 = getelementptr i8, ptr %call6, i32 4572
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 86
  %128 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev_addr, align 64
  %call267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call6, ptr noundef %name265, ptr noundef %129, i32 noundef %4) #16
  %130 = load i32, ptr @tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp268 = icmp sgt i32 %130, 1
  br i1 %cmp268, label %do.end273, label %if.end261.if.end276_crit_edge

if.end261.if.end276_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end276

do.end273:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #13
  %call275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %130) #16
  br label %if.end276

if.end276:                                        ; preds = %do.end273, %if.end261.if.end276_crit_edge
  %131 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load278 = load i16, ptr %an_enable, align 4
  %132 = and i16 %bf.load278, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool282.not = icmp eq i16 %132, 0
  br i1 %tobool282.not, label %if.end276.if.end291_crit_edge, label %do.end286

if.end276.if.end291_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end291

do.end286:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #13
  %rx_coalesce288 = getelementptr i8, ptr %call6, i32 4484
  %133 = ptrtoint ptr %rx_coalesce288 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_coalesce288, align 4
  %rx_timeout289 = getelementptr i8, ptr %call6, i32 4488
  %135 = ptrtoint ptr %rx_timeout289 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_timeout289, align 4
  %mul = mul i32 %136, 640
  %call290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %134, i32 noundef %mul) #16
  br label %if.end291

if.end291:                                        ; preds = %do.end286, %if.end276.if.end291_crit_edge
  %vlan292 = getelementptr i8, ptr %call6, i32 4476
  %137 = ptrtoint ptr %vlan292 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vlan292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool293.not = icmp eq i32 %138, 0
  br i1 %tobool293.not, label %if.end291.cleanup_crit_edge, label %do.end297

if.end291.cleanup_crit_edge:                      ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end297:                                        ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  %call300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %138) #16
  br label %cleanup

err_out_unmap_rx:                                 ; preds = %if.end257.err_out_unmap_rx_crit_edge, %find_miiphy.exit
  %err.0 = phi i32 [ -19, %find_miiphy.exit ], [ %call258, %if.end257.err_out_unmap_rx_crit_edge ]
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 4
  %141 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 6144, ptr noundef %140, i32 noundef %142, i32 noundef 0) #11
  br label %err_out_unmap_tx

err_out_unmap_tx:                                 ; preds = %err_out_unmap_rx, %if.end204.err_out_unmap_tx_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_unmap_rx ], [ -12, %if.end204.err_out_unmap_tx_crit_edge ]
  %143 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_ring, align 4
  %145 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 6144, ptr noundef %144, i32 noundef %146, i32 noundef 0) #11
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_unmap_tx, %if.end194.err_out_iounmap_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out_unmap_tx ], [ -12, %if.end194.err_out_iounmap_crit_edge ]
  %147 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %eeprom_addr, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %148) #11
  br label %err_out_dev

err_out_dev:                                      ; preds = %err_out_iounmap, %if.end9.err_out_dev_crit_edge
  %err.3 = phi i32 [ %err.2, %err_out_iounmap ], [ -12, %if.end9.err_out_dev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call6) #11
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_dev, %if.end5.err_out_res_crit_edge
  %err.4 = phi i32 [ %err.3, %err_out_dev ], [ -12, %if.end5.err_out_res_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_res, %if.end.err_out_disable_crit_edge
  %err.5 = phi i32 [ %call2, %if.end.err_out_disable_crit_edge ], [ %err.4, %err_out_res ]
  call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable, %do.end297, %if.end291.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %err_out_disable ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end297 ], [ 0, %if.end291.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_remove1(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #11
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 4364
  %4 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 6144, ptr noundef %3, i32 noundef %5, i32 noundef 0) #11
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 4360
  %8 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 6144, ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  %eeprom_addr = getelementptr i8, ptr %1, i32 4376
  %10 = ptrtoint ptr %eeprom_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eeprom_addr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %11) #11
  tail call void @free_netdev(ptr noundef nonnull %1) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 4368
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %cur_rx.i.i = getelementptr i8, ptr %dev, i32 4504
  %tx_ring.i.i = getelementptr i8, ptr %dev, i32 2308
  %4 = call ptr @memset(ptr %cur_rx.i.i, i32 0, i32 16)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.019.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring.i.i, align 4
  %status.i.i = getelementptr %struct.netdev_desc, ptr %6, i32 %i.019.i.i, i32 1
  %7 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 549755813888, ptr %status.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %for.body3.i.i.preheader, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body3.i.i.preheader:                          ; preds = %for.body.i.i
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body3.i.i.preheader
  %i.120.i.i = phi i32 [ %inc7.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ 0, %for.body3.i.i.preheader ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %status5.i.i = getelementptr %struct.netdev_desc, ptr %9, i32 %i.120.i.i, i32 1
  %10 = ptrtoint ptr %status5.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %status5.i.i, align 8
  %inc7.i.i = add nuw nsw i32 %i.120.i.i, 1
  %exitcond21.not.i.i = icmp eq i32 %inc7.i.i, 256
  br i1 %exitcond21.not.i.i, label %rio_reset_ring.exit.i, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i.i

rio_reset_ring.exit.i:                            ; preds = %for.body3.i.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %12)
  %cmp.i = icmp ult i32 %12, 1501
  %add.i = add i32 %12, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 4468
  %13 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %tx_ring_dma.i = getelementptr i8, ptr %dev, i32 4360
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.body.i
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 4364
  br label %for.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %rio_reset_ring.exit.i
  %i.071.i = phi i32 [ 0, %rio_reset_ring.exit.i ], [ %add3.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.071.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_ring_dma.i, align 4
  %add3.i = add nuw nsw i32 %i.071.i, 1
  %rem.i = and i32 %add3.i, 255
  %mul.i = mul nuw nsw i32 %rem.i, 24
  %add4.i = add i32 %mul.i, %16
  %conv.i = zext i32 %add4.i to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #11
  %18 = ptrtoint ptr %tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_ring.i.i, align 4
  %arrayidx5.i = getelementptr %struct.netdev_desc, ptr %19, i32 %i.071.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %arrayidx5.i, align 8
  %exitcond.not.i = icmp eq i32 %add3.i, 256
  br i1 %exitcond.not.i, label %for.cond6.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body9.i:                                      ; preds = %dma_map_single_attrs.exit.i.for.body9.i_crit_edge, %for.cond6.preheader.i
  %i.172.i = phi i32 [ 0, %for.cond6.preheader.i ], [ %add13.i, %dma_map_single_attrs.exit.i.for.body9.i_crit_edge ]
  %21 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buf_sz.i, align 4
  %add.i.i.i = add i32 %22, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i.i.i, i32 noundef 2592) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %alloc_list.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body9.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %arrayidx12.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.172.i
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i.i, ptr %arrayidx12.i, align 4
  %28 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_ring_dma.i, align 4
  %add13.i = add nuw nsw i32 %i.172.i, 1
  %rem14.i = and i32 %add13.i, 255
  %mul15.i = mul nuw nsw i32 %rem14.i, 24
  %add16.i = add i32 %29, %mul15.i
  %conv17.i = zext i32 %add16.i to i64
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv17.i) #11
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx18.i = getelementptr %struct.netdev_desc, ptr %32, i32 %i.172.i
  %33 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %arrayidx18.i, align 8
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i.i, align 4
  %38 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !336

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev20.i) #11
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %40 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i67.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i67.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev20.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %43, %if.end.i.i.i ], [ %41, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev20.i, ptr noundef %37, i32 noundef %39) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %37 to i32
  %sub.i.i = add i32 %45, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i68.i = getelementptr %struct.page, ptr %44, i32 %shr.i.i
  %and.i.i = and i32 %45, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev20.i, ptr noundef %add.ptr.i68.i, i32 noundef %and.i.i, i32 noundef %39, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %conv23.i = zext i32 %retval.0.i.i to i64
  %46 = tail call i64 @llvm.bswap.i64(i64 %conv23.i) #11
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo.i = getelementptr %struct.netdev_desc, ptr %48, i32 %i.172.i, i32 2
  %49 = ptrtoint ptr %fraginfo.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %46, ptr %fraginfo.i, align 8
  %50 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_buf_sz.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  %53 = lshr i32 %52, 16
  %54 = zext i32 %53 to i64
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo30.i = getelementptr %struct.netdev_desc, ptr %56, i32 %i.172.i, i32 2
  %57 = ptrtoint ptr %fraginfo30.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %fraginfo30.i, align 8
  %or.i = or i64 %58, %54
  store i64 %or.i, ptr %fraginfo30.i, align 8
  %exitcond75.not.i = icmp eq i32 %add13.i, 256
  br i1 %exitcond75.not.i, label %if.end, label %dma_map_single_attrs.exit.i.for.body9.i_crit_edge

dma_map_single_attrs.exit.i.for.body9.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i

alloc_list.exit:                                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1269.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.172.i
  %59 = ptrtoint ptr %arrayidx1269.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx1269.i, align 4
  tail call fastcc void @free_list(ptr noundef %dev) #11
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit.i
  tail call fastcc void @rio_hw_init(ptr noundef %dev)
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @rio_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 4372
  %60 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %61, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 0) #11, !srcloc !329
  %add.ptr2.i = getelementptr i8, ptr %61, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16402) #11, !srcloc !338
  tail call fastcc void @free_list(ptr noundef %dev)
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %timer = getelementptr i8, ptr %dev, i32 4520
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rio_timer, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @rio_open.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %62, 100
  %expires = getelementptr i8, ptr %dev, i32 4528
  %63 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %64 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %ioaddr1.i26 = getelementptr i8, ptr %dev, i32 4372
  %66 = ptrtoint ptr %ioaddr1.i26 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr1.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %67, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27, i16 -15865) #11, !srcloc !329
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then5, %alloc_list.exit
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %do.body ], [ -12, %alloc_list.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %dev, i32 4368
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 4372
  %4 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i9, i16 0) #11, !srcloc !329
  %add.ptr2.i = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16402) #11, !srcloc !338
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %dev) #11
  %timer = getelementptr i8, ptr %dev, i32 4520
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  tail call fastcc void @free_list(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %link_status = getelementptr i8, ptr %dev, i32 4496
  %2 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link_status, align 4
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 4512
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %5, 255
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %arrayidx, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring, align 4
  %vlan = getelementptr i8, ptr %dev, i32 4476
  %9 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %10 to i64
  %shl = shl nuw i64 %conv, 32
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority, align 4
  %conv6 = zext i32 %12 to i64
  %shl7 = shl i64 %conv6, 45
  %or = or i64 %shl, %shl7
  %or8 = or i64 %or, 268435456
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %tfc_vlan_tag.0 = phi i64 [ %or8, %if.then4 ], [ 0, %if.end.if.end9_crit_edge ]
  %pdev = getelementptr i8, ptr %dev, i32 4368
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %16) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end9
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !336

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev10) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev10, ptr noundef %16, i32 noundef %18) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %16 to i32
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i104 = getelementptr %struct.page, ptr %23, i32 %shr.i
  %and.i = and i32 %24, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev10, ptr noundef %add.ptr.i104, i32 noundef %and.i, i32 noundef %18, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv12 = zext i32 %retval.0.i to i64
  %25 = tail call i64 @llvm.bswap.i64(i64 %conv12)
  %fraginfo = getelementptr %struct.netdev_desc, ptr %8, i32 %rem, i32 2
  %26 = ptrtoint ptr %fraginfo to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %fraginfo, align 8
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = lshr i32 %29, 16
  %31 = zext i32 %30 to i64
  %or17 = or i64 %25, %31
  %32 = ptrtoint ptr %fraginfo to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or17, ptr %fraginfo, align 8
  %tx_coalesce = getelementptr i8, ptr %dev, i32 4492
  %33 = ptrtoint ptr %tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_coalesce, align 4
  %rem18 = urem i32 %rem, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %cmp19 = icmp eq i32 %rem18, 0
  br i1 %cmp19, label %dma_map_single_attrs.exit.if.end34_crit_edge, label %lor.lhs.false

dma_map_single_attrs.exit.if.end34_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

lor.lhs.false:                                    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %speed = getelementptr i8, ptr %dev, i32 4472
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %36)
  %cmp21 = icmp eq i32 %36, 10
  %spec.select = select i1 %cmp21, i32 25362432, i32 16973824
  br label %if.end34

if.end34:                                         ; preds = %lor.lhs.false, %dma_map_single_attrs.exit.if.end34_crit_edge
  %.sink107 = phi i32 [ 25362432, %dma_map_single_attrs.exit.if.end34_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %37 = or i32 %rem, %.sink107
  %or30 = zext i32 %37 to i64
  %or32 = or i64 %tfc_vlan_tag.0, %or30
  %38 = tail call i64 @llvm.bswap.i64(i64 %or32)
  %status33 = getelementptr %struct.netdev_desc, ptr %8, i32 %rem, i32 1
  %39 = ptrtoint ptr %status33 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %status33, align 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %41 = or i32 %40, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %41) #11, !srcloc !338
  %add.ptr38 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 270991360) #11, !srcloc !338
  %42 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_tx, align 4
  %add = add i32 %43, 1
  %rem40 = and i32 %add, 255
  store i32 %rem40, ptr %cur_tx, align 4
  %old_tx = getelementptr i8, ptr %dev, i32 4516
  %44 = ptrtoint ptr %old_tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old_tx, align 4
  %sub = sub i32 %add, %45
  %rem44 = and i32 %sub, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %rem44)
  %cmp45.not = icmp eq i32 %rem44, 254
  br i1 %cmp45.not, label %if.end34.if.else51_crit_edge, label %land.lhs.true

if.end34.if.else51_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else51

land.lhs.true:                                    ; preds = %if.end34
  %speed47 = getelementptr i8, ptr %dev, i32 4472
  %46 = ptrtoint ptr %speed47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %47)
  %cmp48.not = icmp eq i32 %47, 10
  br i1 %cmp48.not, label %land.lhs.true.if.else51_crit_edge, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true.if.else51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true.if.else51_crit_edge, %if.end34.if.else51_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then53, label %if.else51.if.end55_crit_edge

if.else51.if.end55_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.else51.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge
  %add.ptr56 = getelementptr i8, ptr %1, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool58.not = icmp eq i32 %52, 0
  br i1 %tobool58.not, label %if.then59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 4360
  %53 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_ring_dma, align 4
  %mul = mul nuw nsw i32 %rem, 24
  %add60 = add i32 %54, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %add60) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %55) #11, !srcloc !338
  %add.ptr62 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #11, !srcloc !338
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end55.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast(ptr noundef readonly %dev) #2 align 64 {
entry:
  %hash_table = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #11
  %2 = getelementptr inbounds [2 x i32], ptr %hash_table, i32 0, i32 1
  %3 = ptrtoint ptr %hash_table to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hash_table, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 33554432, ptr %2, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else:                                          ; preds = %entry
  %and5 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp = icmp sgt i32 %8, 64
  br i1 %cmp, label %lor.lhs.false.if.end40_crit_edge, label %if.else8

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.else8.if.end40_crit_edge, label %for.cond.preheader

if.else8.if.end40_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

for.cond.preheader:                               ; preds = %if.else8
  %9 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.071 = load ptr, ptr %mc, align 4
  %cmp17.not72 = icmp eq ptr %ha.071, %mc
  br i1 %cmp17.not72, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.073 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.071, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.073, i32 0, i32 2
  %call18 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #15
  %call18.lobit = lshr i32 %call18, 31
  %and22.1 = lshr i32 %call18, 29
  %10 = and i32 %and22.1, 2
  %index.1.1 = or i32 %10, %call18.lobit
  %and22.2 = lshr i32 %call18, 27
  %11 = and i32 %and22.2, 4
  %index.1.2 = or i32 %11, %index.1.1
  %and22.3 = lshr i32 %call18, 25
  %12 = and i32 %and22.3, 8
  %index.1.3 = or i32 %12, %index.1.2
  %and22.4 = lshr i32 %call18, 23
  %13 = and i32 %and22.4, 16
  %index.1.4 = or i32 %13, %index.1.3
  %and22.5 = lshr i32 %call18, 26
  %14 = and i32 %and22.5, 1
  %shl27 = shl nuw i32 1, %index.1.4
  %arrayidx28 = getelementptr [2 x i32], ptr %hash_table, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx28, align 4
  %or29 = or i32 %16, %shl27
  store i32 %or29, ptr %arrayidx28, align 4
  %17 = ptrtoint ptr %ha.073 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0 = load ptr, ptr %ha.073, align 4
  %cmp17.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp17.not, label %for.body.if.end40_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %for.body.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge, %if.else8.if.end40_crit_edge, %lor.lhs.false.if.end40_crit_edge, %if.else.if.end40_crit_edge, %entry.if.end40_crit_edge
  %rx_mode.0 = phi i16 [ 8, %entry.if.end40_crit_edge ], [ 7, %lor.lhs.false.if.end40_crit_edge ], [ 7, %if.else.if.end40_crit_edge ], [ 5, %if.else8.if.end40_crit_edge ], [ 21, %for.cond.preheader.if.end40_crit_edge ], [ 21, %for.body.if.end40_crit_edge ]
  %vlan = getelementptr i8, ptr %dev, i32 4476
  %18 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not = icmp eq i32 %19, 0
  %20 = or i16 %rx_mode.0, 256
  %spec.select = select i1 %tobool41.not, i16 %rx_mode.0, i16 %20
  %21 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash_table, align 4
  %add.ptr47 = getelementptr i8, ptr %1, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %23) #11, !srcloc !338
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 4
  %add.ptr49 = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %26) #11, !srcloc !338
  %add.ptr50 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %27 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 %27) #11, !srcloc !329
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %phy_addr2 = getelementptr i8, ptr %dev, i32 4844
  %0 = ptrtoint ptr %phy_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_addr2, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %sw.bb3
    i32 35145, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %1 to i16
  %3 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %4 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_num, align 2
  %conv4 = zext i16 %5 to i32
  %call5 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef %conv4)
  %conv6 = trunc i32 %call5 to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %6 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv6, ptr %val_out, align 2
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call8, label %if.end, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %reg_num9 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %7 = ptrtoint ptr %reg_num9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_num9, align 2
  %conv10 = zext i16 %8 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val_in, align 2
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef %conv10, i16 noundef zeroext %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb7.cleanup_crit_edge, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb7.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !339
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %dev, i32 noundef %3) #16
  tail call fastcc void @rio_free_tx(ptr noundef %dev, i32 noundef 0)
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %if_port, align 2
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %7, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !339
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 8
  %add = add i32 %5, %3
  store i32 %add, ptr %stats, align 8
  %add.ptr3 = getelementptr i8, ptr %1, i32 220
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #11, !srcloc !339
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %add6 = add i32 %9, %7
  store i32 %add6, ptr %tx_packets, align 4
  %add.ptr7 = getelementptr i8, ptr %1, i32 168
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !339
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_bytes, align 8
  %add10 = add i32 %13, %11
  store i32 %add10, ptr %rx_bytes, align 8
  %add.ptr11 = getelementptr i8, ptr %1, i32 208
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !339
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %16 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_bytes, align 4
  %add14 = add i32 %17, %15
  store i32 %add14, ptr %tx_bytes, align 4
  %add.ptr15 = getelementptr i8, ptr %1, i32 184
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #11, !srcloc !339
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %20 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %multicast, align 8
  %add.ptr18 = getelementptr i8, ptr %1, i32 240
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !339
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr20 = getelementptr i8, ptr %1, i32 236
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !339
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add22 = add i32 %24, %22
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %25 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %collisions, align 4
  %add24 = add i32 %add22, %26
  store i32 %add24, ptr %collisions, align 4
  %add.ptr25 = getelementptr i8, ptr %1, i32 252
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #11, !srcloc !330
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %conv = zext i16 %28 to i32
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %29 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_aborted_errors, align 8
  %add28 = add i32 %30, %conv
  store i32 %add28, ptr %tx_aborted_errors, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %31 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_errors, align 4
  %add30 = add i32 %32, %conv
  store i32 %add30, ptr %tx_errors, align 4
  %add.ptr31 = getelementptr i8, ptr %1, i32 248
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31) #11, !srcloc !330
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %conv33 = zext i16 %34 to i32
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %35 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_carrier_errors, align 4
  %add35 = add i32 %36, %conv33
  store i32 %add35, ptr %tx_carrier_errors, align 4
  %37 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_errors, align 4
  %add38 = add i32 %38, %conv33
  store i32 %add38, ptr %tx_errors, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 212
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr41 = getelementptr i8, ptr %1, i32 246
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr43 = getelementptr i8, ptr %1, i32 224
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr45 = getelementptr i8, ptr %1, i32 190
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr47 = getelementptr i8, ptr %1, i32 198
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr47) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr49 = getelementptr i8, ptr %1, i32 200
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr51 = getelementptr i8, ptr %1, i32 202
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr51) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr53 = getelementptr i8, ptr %1, i32 204
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr55 = getelementptr i8, ptr %1, i32 206
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr59 = getelementptr i8, ptr %1, i32 216
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr63 = getelementptr i8, ptr %1, i32 228
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr65 = getelementptr i8, ptr %1, i32 232
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr69 = getelementptr i8, ptr %1, i32 250
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr69) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr71 = getelementptr i8, ptr %1, i32 254
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr73 = getelementptr i8, ptr %1, i32 244
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr73) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr75 = getelementptr i8, ptr %1, i32 188
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr75) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr77 = getelementptr i8, ptr %1, i32 192
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr77) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr79 = getelementptr i8, ptr %1, i32 196
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr79) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr81 = getelementptr i8, ptr %1, i32 194
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr81) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_hw_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 30976) #11, !srcloc !329
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #11
  %chip_id.i = getelementptr i8, ptr %dev, i32 4480
  %12 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.rio_set_led_mode.exit_crit_edge

entry.rio_set_led_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_set_led_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i180 = getelementptr i8, ptr %15, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %17 = and i32 %16, -4194345
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %led_mode.i = getelementptr i8, ptr %dev, i32 4848
  %19 = ptrtoint ptr %led_mode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %led_mode.i, align 4
  %21 = shl i16 %20, 14
  %22 = and i16 %21, 16384
  %23 = zext i16 %22 to i32
  %24 = or i32 %18, %23
  %25 = and i16 %20, 2
  %26 = zext i16 %25 to i32
  %27 = shl nuw nsw i32 %26, 28
  %28 = or i32 %24, %27
  %29 = and i16 %20, 8
  %30 = zext i16 %29 to i32
  %31 = shl nuw nsw i32 %30, 24
  %32 = or i32 %28, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %33) #11, !srcloc !338
  br label %rio_set_led_mode.exit

rio_set_led_mode.exit:                            ; preds = %if.end.i, %entry.rio_set_led_mode.exit_crit_edge
  %add.ptr2 = getelementptr i8, ptr %1, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %35 = or i32 %34, 805437440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %35) #11, !srcloc !338
  %36 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp = icmp eq i32 %37, 1
  br i1 %cmp, label %land.lhs.true, label %rio_set_led_mode.exit.if.end_crit_edge

rio_set_led_mode.exit.if.end_crit_edge:           ; preds = %rio_set_led_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %rio_set_led_mode.exit
  %pdev = getelementptr i8, ptr %dev, i32 4368
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision, align 4
  %42 = and i8 %41, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %switch = icmp eq i8 %42, 64
  br i1 %switch, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %phy_addr = getelementptr i8, ptr %dev, i32 4844
  %43 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %44, i32 noundef 31, i16 noundef zeroext 1)
  %45 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %46, i32 noundef 27, i16 noundef zeroext 480)
  %47 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %48, i32 noundef 31, i16 noundef zeroext 2)
  %49 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %50, i32 noundef 27, i16 noundef zeroext -5234)
  %51 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %52, i32 noundef 31, i16 noundef zeroext 0)
  %53 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %54, i32 noundef 30, i16 noundef zeroext 94)
  %55 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy_addr, align 4
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %56, i32 noundef 9, i16 noundef zeroext 1792)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %rio_set_led_mode.exit.if.end_crit_edge
  %phy_media = getelementptr i8, ptr %dev, i32 4496
  %57 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load = load i16, ptr %phy_media, align 4
  %58 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool25.not = icmp eq i16 %58, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %phy_addr1.i = getelementptr i8, ptr %dev, i32 4844
  %59 = ptrtoint ptr %phy_addr1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phy_addr1.i, align 4
  %61 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i = load i16, ptr %phy_media, align 4
  %62 = and i16 %bf.load.i, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i = icmp eq i16 %62, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %60, i32 noundef 15) #11
  %call3.i = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %60, i32 noundef 4) #11
  %63 = trunc i32 %call3.i to i16
  %conv5.i = and i16 %63, -97
  %and7.i = and i32 %call2.i, 20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %64 = or i16 %conv5.i, 64
  %spec.select.i = select i1 %tobool8.not.i, i16 %conv5.i, i16 %64
  %and13.i = and i32 %call2.i, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %65 = or i16 %spec.select.i, 32
  %anar.1.i = select i1 %tobool14.not.i, i16 %spec.select.i, i16 %65
  %66 = or i16 %anar.1.i, 384
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 4, i16 noundef zeroext %66) #11
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 0, i16 noundef zeroext -32768) #11
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 0, i16 noundef zeroext -28160) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #11
  br label %if.end29

if.else.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 0, i16 noundef zeroext -32768) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #11
  %78 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load28.i = load i16, ptr %phy_media, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load28.i)
  %tobool31.not.i = icmp sgt i16 %bf.load28.i, -1
  %.str.37..str.34.i = select i1 %tobool31.not.i, ptr @.str.37, ptr @.str.34
  %79 = lshr i16 %bf.load28.i, 7
  %80 = and i16 %79, 256
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.37..str.34.i) #16
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 0, i16 noundef zeroext %80) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #11
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %60, i32 noundef 4, i16 noundef zeroext 0) #11
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mii_set_media(ptr noundef %dev)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.else.i, %if.then.i
  %91 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load30 = load i16, ptr %phy_media, align 4
  %92 = and i16 %bf.load30, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp34.not = icmp eq i16 %92, 0
  br i1 %cmp34.not, label %if.end29.if.end38_crit_edge, label %if.then36

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr37 = getelementptr i8, ptr %1, i32 134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37, i16 19999) #11, !srcloc !329
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end29.if.end38_crit_edge
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 4364
  %93 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_ring_dma, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %95) #11, !srcloc !338
  %add.ptr40 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #11, !srcloc !338
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %96 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_addr, align 64
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %97, align 2
  %add.ptr43 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43, i16 %99) #11, !srcloc !329
  %100 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i16, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx.1, align 2
  %add.ptr43.1 = getelementptr i8, ptr %1, i32 122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43.1, i16 %103) #11, !srcloc !329
  %104 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i16, ptr %105, i32 2
  %106 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.2, align 2
  %add.ptr43.2 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43.2, i16 %107) #11, !srcloc !329
  tail call void @set_multicast(ptr noundef %dev)
  %108 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load44 = load i16, ptr %phy_media, align 4
  %109 = and i16 %bf.load44, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool48.not = icmp eq i16 %109, 0
  br i1 %tobool48.not, label %if.end38.if.end52_crit_edge, label %if.then49

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %rx_coalesce = getelementptr i8, ptr %dev, i32 4484
  %110 = ptrtoint ptr %rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_coalesce, align 4
  %rx_timeout = getelementptr i8, ptr %dev, i32 4488
  %112 = ptrtoint ptr %rx_timeout to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_timeout, align 4
  %shl = shl i32 %113, 16
  %or50 = or i32 %shl, %111
  %add.ptr51 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %114 = tail call i32 @llvm.bswap.i32(i32 %or50) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %114) #11, !srcloc !338
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38.if.end52_crit_edge
  %add.ptr53 = getelementptr i8, ptr %1, i32 38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 32) #11, !srcloc !335
  %add.ptr54 = getelementptr i8, ptr %1, i32 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 -1) #11, !srcloc !335
  %add.ptr55 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 48) #11, !srcloc !335
  %add.ptr56 = getelementptr i8, ptr %1, i32 37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 48) #11, !srcloc !335
  %add.ptr57 = getelementptr i8, ptr %1, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 -63744) #11, !srcloc !338
  %115 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i182 = getelementptr i8, ptr %116, i32 180
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr3.i = getelementptr i8, ptr %116, i32 220
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr5.i = getelementptr i8, ptr %116, i32 168
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr7.i = getelementptr i8, ptr %116, i32 208
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr9.i = getelementptr i8, ptr %116, i32 184
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr11.i = getelementptr i8, ptr %116, i32 240
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr13.i = getelementptr i8, ptr %116, i32 236
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr15.i = getelementptr i8, ptr %116, i32 232
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr17.i = getelementptr i8, ptr %116, i32 200
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr19.i = getelementptr i8, ptr %116, i32 202
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr21.i = getelementptr i8, ptr %116, i32 204
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr23.i = getelementptr i8, ptr %116, i32 206
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr25.i = getelementptr i8, ptr %116, i32 252
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr27.i = getelementptr i8, ptr %116, i32 248
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr29.i = getelementptr i8, ptr %116, i32 212
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr31.i = getelementptr i8, ptr %116, i32 246
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr33.i = getelementptr i8, ptr %116, i32 224
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr35.i = getelementptr i8, ptr %116, i32 190
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr37.i = getelementptr i8, ptr %116, i32 198
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr41.i = getelementptr i8, ptr %116, i32 216
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %add.ptr45.i = getelementptr i8, ptr %116, i32 228
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %140 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr49.i = getelementptr i8, ptr %116, i32 250
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr51.i = getelementptr i8, ptr %116, i32 254
  %142 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr51.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr53.i = getelementptr i8, ptr %116, i32 244
  %143 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr55.i = getelementptr i8, ptr %116, i32 188
  %144 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr57.i = getelementptr i8, ptr %116, i32 192
  %145 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr57.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr59.i = getelementptr i8, ptr %116, i32 196
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr59.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.ptr61.i = getelementptr i8, ptr %116, i32 194
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr61.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %vlan = getelementptr i8, ptr %dev, i32 4476
  %148 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool59.not = icmp eq i32 %149, 0
  br i1 %tobool59.not, label %if.end52.if.end75_crit_edge, label %if.then60

if.end52.if.end75_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr61 = getelementptr i8, ptr %1, i32 40
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %151 = or i32 %150, 1835008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %151) #11, !srcloc !338
  %152 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vlan, align 4
  %conv66 = trunc i32 %153 to i16
  %add.ptr67 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %154 = tail call i16 @llvm.bswap.i16(i16 %conv66) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr67, i16 %154) #11, !srcloc !329
  %155 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %vlan, align 4
  %or69 = or i32 %156, -2130706432
  %add.ptr70 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %157 = tail call i32 @llvm.bswap.i32(i32 %or69) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %157) #11, !srcloc !338
  %add.ptr71 = getelementptr i8, ptr %1, i32 108
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %159 = or i32 %158, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %159) #11, !srcloc !338
  br label %if.end75

if.end75:                                         ; preds = %if.then60, %if.end52.if.end75_crit_edge
  %add.ptr76 = getelementptr i8, ptr %1, i32 108
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %161 = or i32 %160, 8201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %161) #11, !srcloc !338
  %162 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %vlan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool83.not = icmp eq i32 %163, 0
  %164 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load87 = load i16, ptr %phy_media, align 4
  %165 = lshr i16 %bf.load87, 10
  %166 = and i16 %165, 32
  %conv92 = select i1 %tobool83.not, i16 0, i16 8192
  %or93 = or i16 %166, %conv92
  %167 = lshr i16 %bf.load87, 3
  %168 = and i16 %167, 128
  %or102178 = or i16 %or93, %168
  %169 = lshr i16 %bf.load87, 1
  %170 = and i16 %169, 256
  %or111179 = or i16 %or102178, %170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %171 = tail call i16 @llvm.bswap.i16(i16 %or111179) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr76, i16 %171) #11, !srcloc !329
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev_instance, i32 4372
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 94
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #11, !srcloc !329
  %3 = and i16 %2, -15865
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp107 = icmp eq i16 %3, 0
  br i1 %cmp107, label %entry.while.end_crit_edge, label %lor.lhs.false.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %cur_rx.i = getelementptr i8, ptr %dev_instance, i32 4504
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 10
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %speed.i = getelementptr i8, ptr %dev_instance, i32 4472
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 14
  %pdev56.i = getelementptr i8, ptr %dev_instance, i32 4368
  %rx_buf_sz59.i = getelementptr i8, ptr %dev_instance, i32 4468
  %rx_lock.i = getelementptr i8, ptr %dev_instance, i32 4424
  %old_rx.i = getelementptr i8, ptr %dev_instance, i32 4508
  %add.ptr15 = getelementptr i8, ptr %1, i32 96
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %chip_id.i.i = getelementptr i8, ptr %dev_instance, i32 4480
  %led_mode.i.i = getelementptr i8, ptr %dev_instance, i32 4848
  %tx_ring_dma.i = getelementptr i8, ptr %dev_instance, i32 4360
  %old_tx.i = getelementptr i8, ptr %dev_instance, i32 4516
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %phy_addr1.i.i = getelementptr i8, ptr %dev_instance, i32 4844
  %phy_media.i = getelementptr i8, ptr %dev_instance, i32 4496
  %5 = getelementptr i8, ptr %dev_instance, i32 4492
  %vlan.i = getelementptr i8, ptr %dev_instance, i32 4476
  br label %if.end

lor.lhs.false:                                    ; preds = %if.end25
  %6 = tail call i16 @llvm.bswap.i16(i16 %278)
  %dec = add nsw i32 %dec117, -1
  %cmp6 = icmp slt i32 %dec117, 1
  br i1 %cmp6, label %lor.lhs.false.while.end_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.lr.ph
  %dec117 = phi i32 [ 49, %lor.lhs.false.lr.ph ], [ %dec, %lor.lhs.false.if.end_crit_edge ]
  %and110116.in = phi i16 [ %4, %lor.lhs.false.lr.ph ], [ %6, %lor.lhs.false.if.end_crit_edge ]
  %and110116 = zext i16 %and110116.in to i32
  %and8 = and i32 %and110116, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end
  %7 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_rx.i, align 4
  %rem.i = and i32 %8, 255
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %status28.i = getelementptr %struct.netdev_desc, ptr %10, i32 %rem.i, i32 1
  %11 = ptrtoint ptr %status28.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %status28.i, align 8
  %13 = and i64 %12, 962072674304
  call void @__sanitizer_cov_trace_const_cmp8(i64 962072674304, i64 %13)
  %.not29.i = icmp eq i64 %13, 962072674304
  br i1 %.not29.i, label %if.then9.if.end.i_crit_edge, label %if.then9.while.end.i_crit_edge

if.then9.while.end.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then9.if.end.i_crit_edge
  %14 = phi i64 [ %73, %cleanup.i.if.end.i_crit_edge ], [ %12, %if.then9.if.end.i_crit_edge ]
  %15 = phi ptr [ %71, %cleanup.i.if.end.i_crit_edge ], [ %10, %if.then9.if.end.i_crit_edge ]
  %cnt.033.i = phi i32 [ %dec.i, %cleanup.i.if.end.i_crit_edge ], [ 30, %if.then9.if.end.i_crit_edge ]
  %entry1.030.i = phi i32 [ %rem72.i, %cleanup.i.if.end.i_crit_edge ], [ %rem.i, %if.then9.if.end.i_crit_edge ]
  %16 = tail call i64 @llvm.bswap.i64(i64 %14) #11
  %17 = trunc i64 %16 to i32
  %conv.i = and i32 %17, 65535
  %dec.i = add nsw i32 %cnt.033.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.033.i)
  %cmp.i = icmp eq i32 %cnt.033.i, 0
  br i1 %cmp.i, label %if.end.i.while.end.i_crit_edge, label %if.end13.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end13.i:                                       ; preds = %if.end.i
  %and14.i = and i64 %16, 4128768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14.i)
  %tobool15.not.i = icmp eq i64 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %18 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and17.i = and i64 %16, 2228224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end22.i_crit_edge, label %if.then19.i

if.then16.i.if.end22.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_length_errors.i, align 8
  %inc21.i = add i32 %21, 1
  store i32 %inc21.i, ptr %rx_length_errors.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.then16.i.if.end22.i_crit_edge
  %and23.i = and i64 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %tobool24.not.i = icmp eq i64 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_crc_errors.i, align 8
  %inc27.i = add i32 %23, 1
  store i32 %inc27.i, ptr %rx_crc_errors.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %and29.i = and i64 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29.i)
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %25)
  %cmp31.not.i = icmp eq i32 %25, 1000
  br i1 %cmp31.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then33.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors.i, align 4
  %inc35.i = add i32 %27, 1
  store i32 %inc35.i, ptr %rx_frame_errors.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end28.i.if.end36.i_crit_edge
  %and37.i = and i64 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37.i)
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.cleanup.i_crit_edge, label %if.then39.i

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc41.i = add i32 %29, 1
  store i32 %inc41.i, ptr %rx_fifo_errors.i, align 8
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end13.i
  %30 = load i32, ptr @copy_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %30)
  %cmp43.i = icmp sgt i32 %conv.i, %30
  br i1 %cmp43.i, label %if.then45.i, label %if.else52.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev56.i, align 4
  %dev46.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %fraginfo.i.i = getelementptr %struct.netdev_desc, ptr %15, i32 %entry1.030.i, i32 2
  %33 = ptrtoint ptr %fraginfo.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %fraginfo.i.i, align 8
  %35 = and i64 %34, -65536
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #11
  %conv.i.i = trunc i64 %36 to i32
  %37 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buf_sz59.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev46.i, i32 noundef %conv.i.i, i32 noundef %38, i32 noundef 2, i32 noundef 0) #11
  %arrayidx48.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %entry1.030.i
  %39 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx48.i, align 4
  %call49.i = tail call ptr @skb_put(ptr noundef %40, i32 noundef %conv.i) #11
  %41 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx48.i, align 4
  br label %if.end68.i

if.else52.i:                                      ; preds = %if.else.i
  %add.i.i.i = add nuw nsw i32 %conv.i, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add.i.i.i, i32 noundef 2592) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.else52.i.if.end68.i_crit_edge, label %if.then55.i

if.else52.i.if.end68.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.i

if.then55.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %45, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %46 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev56.i, align 4
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %fraginfo.i3.i = getelementptr %struct.netdev_desc, ptr %15, i32 %entry1.030.i, i32 2
  %48 = ptrtoint ptr %fraginfo.i3.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %fraginfo.i3.i, align 8
  %50 = and i64 %49, -65536
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #11
  %conv.i4.i = trunc i64 %51 to i32
  %52 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_buf_sz59.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev57.i, i32 noundef %conv.i4.i, i32 noundef %53, i32 noundef 2) #11
  %arrayidx61.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %entry1.030.i
  %54 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx61.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i.i, align 4
  %60 = call ptr @memcpy(ptr %59, ptr %57, i32 %conv.i)
  %call62.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv.i) #11
  %61 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev56.i, align 4
  %dev64.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %fraginfo.i3.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %fraginfo.i3.i, align 8
  %65 = and i64 %64, -65536
  %66 = tail call i64 @llvm.bswap.i64(i64 %65) #11
  %conv.i6.i = trunc i64 %66 to i32
  %67 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_buf_sz59.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev64.i, i32 noundef %conv.i6.i, i32 noundef %68, i32 noundef 2) #11
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then55.i, %if.else52.i.if.end68.i_crit_edge, %if.then45.i
  %skb.0.i = phi ptr [ %40, %if.then45.i ], [ %call.i.i.i, %if.then55.i ], [ null, %if.else52.i.if.end68.i_crit_edge ]
  %call69.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_instance) #11
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %69 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %call69.i, ptr %protocol.i, align 8
  %call70.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end68.i, %if.then39.i, %if.end36.i.cleanup.i_crit_edge
  %add.i = add nsw i32 %entry1.030.i, 1
  %rem72.i = srem i32 %add.i, 256
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  %status.i = getelementptr %struct.netdev_desc, ptr %71, i32 %rem72.i, i32 1
  %72 = ptrtoint ptr %status.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %status.i, align 8
  %74 = and i64 %73, 962072674304
  %.not.i = icmp eq i64 %74, 962072674304
  br i1 %.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %if.then9.while.end.i_crit_edge
  %entry1.0.lcssa.i = phi i32 [ %rem.i, %if.then9.while.end.i_crit_edge ], [ %entry1.030.i, %if.end.i.while.end.i_crit_edge ], [ %rem72.i, %cleanup.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %rx_lock.i) #11
  %75 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %entry1.0.lcssa.i, ptr %cur_rx.i, align 4
  %76 = ptrtoint ptr %old_rx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old_rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %entry1.0.lcssa.i)
  %cmp78.not35.i = icmp eq i32 %77, %entry1.0.lcssa.i
  br i1 %cmp78.not35.i, label %while.end.i.receive_packet.exit_crit_edge, label %while.end.i.while.body80.i_crit_edge

while.end.i.while.body80.i_crit_edge:             ; preds = %while.end.i
  br label %while.body80.i

while.end.i.receive_packet.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %receive_packet.exit

while.body80.i:                                   ; preds = %cleanup118.i.while.body80.i_crit_edge, %while.end.i.while.body80.i_crit_edge
  %entry1.236.i = phi i32 [ %rem117.i, %cleanup118.i.while.body80.i_crit_edge ], [ %77, %while.end.i.while.body80.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %entry1.236.i
  %78 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx83.i, align 4
  %cmp84.i = icmp eq ptr %79, null
  br i1 %cmp84.i, label %if.then86.i, label %while.body80.i.cleanup118.i_crit_edge

while.body80.i.cleanup118.i_crit_edge:            ; preds = %while.body80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup118.i

if.then86.i:                                      ; preds = %while.body80.i
  %80 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_buf_sz59.i, align 4
  %add.i.i7.i = add i32 %81, 2
  %call.i.i8.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef %add.i.i7.i, i32 noundef 2592) #11
  %tobool.not.i.i9.i = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool.not.i.i9.i, label %cleanup118.thread.i, label %if.end95.i

cleanup118.thread.i:                              ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo.i = getelementptr %struct.netdev_desc, ptr %83, i32 %entry1.236.i, i32 2
  %84 = ptrtoint ptr %fraginfo.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %fraginfo.i, align 8
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %dev_instance, i32 noundef %entry1.236.i) #16
  br label %receive_packet.exit

if.end95.i:                                       ; preds = %if.then86.i
  %data.i.i.i10.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i8.i, i32 0, i32 19
  %85 = ptrtoint ptr %data.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i.i10.i, align 4
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %86, i32 2
  store ptr %add.ptr.i.i.i11.i, ptr %data.i.i.i10.i, align 4
  %tail.i.i.i12.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i8.i, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i12.i, align 8
  %add.ptr1.i.i.i13.i = getelementptr i8, ptr %88, i32 2
  store ptr %add.ptr1.i.i.i13.i, ptr %tail.i.i.i12.i, align 8
  %89 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i8.i, ptr %arrayidx83.i, align 4
  %90 = ptrtoint ptr %pdev56.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev56.i, align 4
  %dev99.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %92 = load ptr, ptr %data.i.i.i10.i, align 4
  %93 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_buf_sz59.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %92) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end95.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !336

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev99.i) #11
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44, i32 3
  %95 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i16.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i16.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %dev99.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev99.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %98, %if.end.i.i.i ], [ %96, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev99.i, ptr noundef %92, i32 noundef %94) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %99 = load ptr, ptr @mem_map, align 4
  %100 = ptrtoint ptr %92 to i32
  %sub.i.i = add i32 %100, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i17.i = getelementptr %struct.page, ptr %99, i32 %shr.i.i
  %and.i.i = and i32 %100, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev99.i, ptr noundef %add.ptr.i17.i, i32 noundef %and.i.i, i32 noundef %94, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %conv103.i = zext i32 %retval.0.i.i to i64
  %101 = tail call i64 @llvm.bswap.i64(i64 %conv103.i) #11
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo106.i = getelementptr %struct.netdev_desc, ptr %103, i32 %entry1.236.i, i32 2
  %104 = ptrtoint ptr %fraginfo106.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %101, ptr %fraginfo106.i, align 8
  br label %cleanup118.i

cleanup118.i:                                     ; preds = %dma_map_single_attrs.exit.i, %while.body80.i.cleanup118.i_crit_edge
  %105 = ptrtoint ptr %rx_buf_sz59.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_buf_sz59.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #11
  %108 = lshr i32 %107, 16
  %109 = zext i32 %108 to i64
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo112.i = getelementptr %struct.netdev_desc, ptr %111, i32 %entry1.236.i, i32 2
  %112 = ptrtoint ptr %fraginfo112.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %fraginfo112.i, align 8
  %or.i = or i64 %113, %109
  store i64 %or.i, ptr %fraginfo112.i, align 8
  %114 = load ptr, ptr %add.ptr.i, align 4
  %status115.i = getelementptr %struct.netdev_desc, ptr %114, i32 %entry1.236.i, i32 1
  %115 = ptrtoint ptr %status115.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %status115.i, align 8
  %add116.i = add i32 %entry1.236.i, 1
  %rem117.i = srem i32 %add116.i, 256
  %116 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_rx.i, align 4
  %cmp78.not.i = icmp eq i32 %rem117.i, %117
  br i1 %cmp78.not.i, label %cleanup118.i.receive_packet.exit_crit_edge, label %cleanup118.i.while.body80.i_crit_edge

cleanup118.i.while.body80.i_crit_edge:            ; preds = %cleanup118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body80.i

cleanup118.i.receive_packet.exit_crit_edge:       ; preds = %cleanup118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %receive_packet.exit

receive_packet.exit:                              ; preds = %cleanup118.i.receive_packet.exit_crit_edge, %cleanup118.thread.i, %while.end.i.receive_packet.exit_crit_edge
  %entry1.227.i = phi i32 [ %entry1.236.i, %cleanup118.thread.i ], [ %entry1.0.lcssa.i, %while.end.i.receive_packet.exit_crit_edge ], [ %rem117.i, %cleanup118.i.receive_packet.exit_crit_edge ]
  %118 = ptrtoint ptr %old_rx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %entry1.227.i, ptr %old_rx.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock.i) #11
  br label %if.end11

if.end11:                                         ; preds = %receive_packet.exit, %if.end.if.end11_crit_edge
  %and12 = and i32 %and110116, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end21_crit_edge, label %if.then14

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %if.end11
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #11, !srcloc !339
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %and17 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then14.if.end20_crit_edge, label %if.then19

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.then14
  %121 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ioaddr1, align 4
  %and.i = and i32 %120, -65536
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %dev_instance, i32 noundef %120, i32 noundef %and.i) #16
  %123 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tx_errors.i, align 4
  %inc.i48 = add i32 %124, 1
  store i32 %inc.i48, ptr %tx_errors.i, align 4
  %and3.i = and i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then19.if.end20.i_crit_edge, label %if.then.i

if.then19.if.end20.i_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then.i:                                        ; preds = %if.then19
  %125 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc5.i = add i32 %126, 1
  store i32 %inc5.i, ptr %tx_fifo_errors.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %122, i32 68
  %127 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i49) #11, !srcloc !330
  %128 = tail call i16 @llvm.bswap.i16(i16 %127) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %add.i50 = add i16 %128, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %129 = tail call i16 @llvm.bswap.i16(i16 %add.i50) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49, i16 %129) #11, !srcloc !329
  %add.ptr9.i = getelementptr i8, ptr %122, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 15360) #11, !srcloc !329
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i54.for.body.i_crit_edge, %if.then.i
  %i.087.i = phi i32 [ 50, %if.then.i ], [ %dec.i52, %if.end.i54.for.body.i_crit_edge ]
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %131 = and i16 %130, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool15.not.i51 = icmp eq i16 %131, 0
  br i1 %tobool15.not.i51, label %for.body.i.for.end.i_crit_edge, label %if.end.i54

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i54:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #11
  %dec.i52 = add nsw i32 %i.087.i, -1
  %cmp.i53 = icmp ugt i32 %i.087.i, 1
  br i1 %cmp.i53, label %if.end.i54.for.body.i_crit_edge, label %if.end.i54.for.end.i_crit_edge

if.end.i54.for.end.i_crit_edge:                   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end.i54.for.body.i_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i54.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %133 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.not.i.i = icmp eq i32 %134, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.end.i.rio_set_led_mode.exit.i_crit_edge

for.end.i.rio_set_led_mode.exit.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rio_set_led_mode.exit.i

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %136, i32 48
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %138 = and i32 %137, -4194345
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #11
  %140 = ptrtoint ptr %led_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %led_mode.i.i, align 4
  %142 = shl i16 %141, 14
  %143 = and i16 %142, 16384
  %144 = zext i16 %143 to i32
  %145 = or i32 %139, %144
  %146 = and i16 %141, 2
  %147 = zext i16 %146 to i32
  %148 = shl nuw nsw i32 %147, 28
  %149 = or i32 %145, %148
  %150 = and i16 %141, 8
  %151 = zext i16 %150 to i32
  %152 = shl nuw nsw i32 %151, 24
  %153 = or i32 %149, %152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %154) #11, !srcloc !338
  br label %rio_set_led_mode.exit.i

rio_set_led_mode.exit.i:                          ; preds = %if.end.i.i, %for.end.i.rio_set_led_mode.exit.i_crit_edge
  tail call fastcc void @rio_free_tx(ptr noundef %dev_instance, i32 noundef 1) #11
  %155 = ptrtoint ptr %tx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %tx_ring_dma.i, align 4
  %157 = ptrtoint ptr %old_tx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %old_tx.i, align 4
  %mul.i = mul i32 %158, 24
  %add17.i = add i32 %mul.i, %156
  %add.ptr18.i = getelementptr i8, ptr %122, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %159 = tail call i32 @llvm.bswap.i32(i32 %add17.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %159) #11, !srcloc !338
  %add.ptr19.i = getelementptr i8, ptr %122, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 0) #11, !srcloc !338
  br label %if.end20.i

if.end20.i:                                       ; preds = %rio_set_led_mode.exit.i, %if.then19.if.end20.i_crit_edge
  %and21.i = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end42.i_crit_edge, label %if.then23.i

if.end20.i.if.end42.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then23.i:                                      ; preds = %if.end20.i
  %160 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc26.i = add i32 %161, 1
  store i32 %inc26.i, ptr %tx_fifo_errors.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %122, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i, i16 5120) #11, !srcloc !329
  br label %for.body31.i

for.body31.i:                                     ; preds = %if.end38.i.for.body31.i_crit_edge, %if.then23.i
  %i.188.i = phi i32 [ 50, %if.then23.i ], [ %dec40.i, %if.end38.i.for.body31.i_crit_edge ]
  %162 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27.i) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %163 = and i16 %162, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool36.not.i = icmp eq i16 %163, 0
  br i1 %tobool36.not.i, label %for.body31.i.for.end41.i_crit_edge, label %if.end38.i

for.body31.i.for.end41.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41.i

if.end38.i:                                       ; preds = %for.body31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #11
  %dec40.i = add nsw i32 %i.188.i, -1
  %cmp29.i = icmp ugt i32 %i.188.i, 1
  br i1 %cmp29.i, label %if.end38.i.for.body31.i_crit_edge, label %if.end38.i.for.end41.i_crit_edge

if.end38.i.for.end41.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end41.i

if.end38.i.for.body31.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31.i

for.end41.i:                                      ; preds = %if.end38.i.for.end41.i_crit_edge, %for.body31.i.for.end41.i_crit_edge
  %165 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp.not.i81.i = icmp eq i32 %166, 1
  br i1 %cmp.not.i81.i, label %if.end.i85.i, label %for.end41.i.if.end42.i_crit_edge

for.end41.i.if.end42.i_crit_edge:                 ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end.i85.i:                                     ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %168, i32 48
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %170 = and i32 %169, -4194345
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #11
  %172 = ptrtoint ptr %led_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %led_mode.i.i, align 4
  %174 = shl i16 %173, 14
  %175 = and i16 %174, 16384
  %176 = zext i16 %175 to i32
  %177 = or i32 %171, %176
  %178 = and i16 %173, 2
  %179 = zext i16 %178 to i32
  %180 = shl nuw nsw i32 %179, 28
  %181 = or i32 %177, %180
  %182 = and i16 %173, 8
  %183 = zext i16 %182 to i32
  %184 = shl nuw nsw i32 %183, 24
  %185 = or i32 %181, %184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %186) #11, !srcloc !338
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end.i85.i, %for.end41.i.if.end42.i_crit_edge, %if.end20.i.if.end42.i_crit_edge
  %and43.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.tx_error.exit_crit_edge, label %if.then45.i55

if.end42.i.tx_error.exit_crit_edge:               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tx_error.exit

if.then45.i55:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %collisions.i, align 4
  %inc47.i = add i32 %188, 1
  store i32 %inc47.i, ptr %collisions.i, align 4
  br label %tx_error.exit

tx_error.exit:                                    ; preds = %if.then45.i55, %if.end42.i.tx_error.exit_crit_edge
  %add.ptr49.i = getelementptr i8, ptr %122, i32 108
  %189 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49.i) #11, !srcloc !330
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  %conv51.i = zext i16 %190 to i32
  %or.i56 = or i32 %conv51.i, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %191 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %191) #11, !srcloc !338
  br label %if.end20

if.end20:                                         ; preds = %tx_error.exit, %if.then14.if.end20_crit_edge
  tail call fastcc void @rio_free_tx(ptr noundef %dev_instance, i32 noundef 1)
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end11.if.end21_crit_edge
  %and22 = and i32 %and110116, 386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  %192 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioaddr1, align 4
  %and.i58 = and i32 %and110116, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %if.then24.if.end57.i_crit_edge, label %if.then.i61

if.then24.if.end57.i_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then.i61:                                      ; preds = %if.then24
  %194 = ptrtoint ptr %phy_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %phy_addr1.i.i, align 4
  %call2.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.i.i60 = and i32 %call2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool.not.i.i = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.not.i.i, label %if.end.i.i62, label %if.then.i61.do.end.i_crit_edge

if.then.i61.do.end.i_crit_edge:                   ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i.i62:                                     ; preds = %if.then.i61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748000) #11
  %call2.1.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.1.i.i = and i32 %call2.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i62.do.end.i_crit_edge

if.end.i.i62.do.end.i_crit_edge:                  ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.1.i.i:                                     ; preds = %if.end.i.i62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 214748000) #11
  %call2.2.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.2.i.i = and i32 %call2.2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.do.end.i_crit_edge

if.end.1.i.i.do.end.i_crit_edge:                  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %198(i32 noundef 214748000) #11
  %call2.3.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.3.i.i = and i32 %call2.3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.do.end.i_crit_edge

if.end.2.i.i.do.end.i_crit_edge:                  ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %199(i32 noundef 214748000) #11
  %call2.4.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.4.i.i = and i32 %call2.4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %if.end.4.i.i, label %if.end.3.i.i.do.end.i_crit_edge

if.end.3.i.i.do.end.i_crit_edge:                  ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %200(i32 noundef 214748000) #11
  %call2.5.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.5.i.i = and i32 %call2.5.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %if.end.5.i.i, label %if.end.4.i.i.do.end.i_crit_edge

if.end.4.i.i.do.end.i_crit_edge:                  ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 214748000) #11
  %call2.6.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.6.i.i = and i32 %call2.6.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %if.end.6.i.i, label %if.end.5.i.i.do.end.i_crit_edge

if.end.5.i.i.do.end.i_crit_edge:                  ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %202(i32 noundef 214748000) #11
  %call2.7.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.7.i.i = and i32 %call2.7.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %if.end.7.i.i, label %if.end.6.i.i.do.end.i_crit_edge

if.end.6.i.i.do.end.i_crit_edge:                  ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748000) #11
  %call2.8.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.8.i.i = and i32 %call2.8.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %if.end.8.i.i, label %if.end.7.i.i.do.end.i_crit_edge

if.end.7.i.i.do.end.i_crit_edge:                  ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748000) #11
  %call2.9.i.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %195, i32 noundef 1) #11
  %and.9.i.i = and i32 %call2.9.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %and.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %do.end47.i, label %if.end.8.i.i.do.end.i_crit_edge

if.end.8.i.i.do.end.i_crit_edge:                  ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.8.i.i.do.end.i_crit_edge, %if.end.7.i.i.do.end.i_crit_edge, %if.end.6.i.i.do.end.i_crit_edge, %if.end.5.i.i.do.end.i_crit_edge, %if.end.4.i.i.do.end.i_crit_edge, %if.end.3.i.i.do.end.i_crit_edge, %if.end.2.i.i.do.end.i_crit_edge, %if.end.1.i.i.do.end.i_crit_edge, %if.end.i.i62.do.end.i_crit_edge, %if.then.i61.do.end.i_crit_edge
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %dev_instance) #16
  %205 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %bf.load.i = load i16, ptr %phy_media.i, align 4
  %206 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %tobool5.not.i = icmp eq i16 %206, 0
  %207 = ptrtoint ptr %phy_addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %phy_addr1.i.i, align 4
  %call2.i73 = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 1) #11
  %209 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %bf.load.i74 = load i16, ptr %phy_media.i, align 4
  %210 = and i16 %bf.load.i74, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool.not.i75 = icmp eq i16 %210, 0
  br i1 %tobool5.not.i, label %if.else.i63, label %if.then6.i

if.then6.i:                                       ; preds = %do.end.i
  br i1 %tobool.not.i75, label %if.else73.i, label %if.then.i93

if.then.i93:                                      ; preds = %if.then6.i
  %and.i91 = and i32 %call2.i73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool4.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool4.not.i92, label %if.then.i93.if.end.i65_crit_edge, label %if.end.i98

if.then.i93.if.end.i65_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

if.end.i98:                                       ; preds = %if.then.i93
  %call6.i94 = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 4) #11
  %call7.i95 = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 5) #11
  %and8.i96 = and i32 %call7.i95, %call6.i94
  %211 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1000, ptr %speed.i, align 4
  %and11.i = and i32 %and8.i96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.end19.i, label %do.end.i100

do.end.i100:                                      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #16
  %212 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %bf.load15.i = load i16, ptr %phy_media.i, align 4
  %bf.set.i99 = or i16 %bf.load15.i, -32768
  br label %if.end26.i

do.end19.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #16
  %213 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %bf.load23.i = load i16, ptr %phy_media.i, align 4
  %bf.clear24.i = and i16 %bf.load23.i, 32767
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end19.i, %do.end.i100
  %storemerge.i = phi i16 [ %bf.clear24.i, %do.end19.i ], [ %bf.set.i99, %do.end.i100 ]
  %214 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %storemerge.i, ptr %phy_media.i, align 4
  %215 = and i32 %and8.i96, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %215)
  %.not.i101 = icmp eq i32 %215, 256
  br i1 %.not.i101, label %if.then54.i, label %if.end26.i.if.end.i65.sink.split_crit_edge

if.end26.i.if.end.i65.sink.split_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65.sink.split

if.then54.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set69.i = and i16 %storemerge.i, -1025
  %216 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %bf.set69.i, ptr %phy_media.i, align 4
  br label %if.end.i65.sink.split

if.else73.i:                                      ; preds = %if.then6.i
  %call74.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 0) #11
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #16
  %and82.i = and i32 %call74.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.end93.i, label %do.end87.i

do.end87.i:                                       ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #13
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #16
  br label %if.end.i65.sink.split

do.end93.i:                                       ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #13
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #16
  br label %if.end.i65.sink.split

if.else.i63:                                      ; preds = %do.end.i
  br i1 %tobool.not.i75, label %if.else154.i, label %if.then.i77

if.then.i77:                                      ; preds = %if.else.i63
  %and.i76 = and i32 %call2.i73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool4.not.i = icmp eq i32 %and.i76, 0
  br i1 %tobool4.not.i, label %if.then.i77.if.end.i65_crit_edge, label %if.end.i78

if.then.i77.if.end.i65_crit_edge:                 ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

if.end.i78:                                       ; preds = %if.then.i77
  %call6.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 4) #11
  %call7.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 5) #11
  %and8.i = and i32 %call7.i, %call6.i
  %call10.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 9) #11
  %call12.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 10) #11
  %and15.i = and i32 %call10.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %and18.i = and i32 %call12.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %tobool19.not.i
  br i1 %or.cond.i, label %if.else.i83, label %if.then20.i

if.then20.i:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  %217 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1000, ptr %speed.i, align 4
  %218 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %bf.load21.i = load i16, ptr %phy_media.i, align 4
  %bf.set.i80 = or i16 %bf.load21.i, -32768
  br label %if.end107.sink.split.i

if.else.i83:                                      ; preds = %if.end.i78
  %and25.i = and i32 %call10.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %and29.i81 = and i32 %call12.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i81)
  %tobool30.not.i82 = icmp eq i32 %and29.i81, 0
  %or.cond1.i = select i1 %tobool26.not.i, i1 true, i1 %tobool30.not.i82
  br i1 %or.cond1.i, label %if.else42.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #13
  %219 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1000, ptr %speed.i, align 4
  %220 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %bf.load34.i = load i16, ptr %phy_media.i, align 4
  %bf.clear35.i = and i16 %bf.load34.i, 32767
  br label %if.end107.sink.split.i

if.else42.i:                                      ; preds = %if.else.i83
  %and44.i = and i32 %and8.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.else57.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 100, ptr %speed.i, align 4
  %222 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %bf.load49.i = load i16, ptr %phy_media.i, align 4
  %bf.set51.i = or i16 %bf.load49.i, -32768
  br label %if.end107.sink.split.i

if.else57.i:                                      ; preds = %if.else42.i
  %and59.i = and i32 %and8.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.else72.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #13
  %223 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 100, ptr %speed.i, align 4
  %224 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %bf.load64.i = load i16, ptr %phy_media.i, align 4
  %bf.clear65.i = and i16 %bf.load64.i, 32767
  br label %if.end107.sink.split.i

if.else72.i:                                      ; preds = %if.else57.i
  %and74.i = and i32 %and8.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.else87.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #13
  %225 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 10, ptr %speed.i, align 4
  %226 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %bf.load79.i = load i16, ptr %phy_media.i, align 4
  %bf.set81.i = or i16 %bf.load79.i, -32768
  br label %if.end107.sink.split.i

if.else87.i:                                      ; preds = %if.else72.i
  %and89.i = and i32 %and8.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.else87.i.if.end107.i_crit_edge, label %if.then91.i

if.else87.i.if.end107.i_crit_edge:                ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.i

if.then91.i:                                      ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #13
  %227 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 10, ptr %speed.i, align 4
  %228 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %bf.load94.i = load i16, ptr %phy_media.i, align 4
  %bf.clear95.i = and i16 %bf.load94.i, 32767
  br label %if.end107.sink.split.i

if.end107.sink.split.i:                           ; preds = %if.then91.i, %if.then76.i, %if.then61.i, %if.then46.i, %if.then31.i, %if.then20.i
  %bf.clear35.sink.i = phi i16 [ %bf.clear35.i, %if.then31.i ], [ %bf.clear65.i, %if.then61.i ], [ %bf.clear95.i, %if.then91.i ], [ %bf.set81.i, %if.then76.i ], [ %bf.set51.i, %if.then46.i ], [ %bf.set.i80, %if.then20.i ]
  %.str.88.sink.i = phi ptr [ @.str.88, %if.then31.i ], [ @.str.94, %if.then61.i ], [ @.str.100, %if.then91.i ], [ @.str.97, %if.then76.i ], [ @.str.91, %if.then46.i ], [ @.str.62, %if.then20.i ]
  %229 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %bf.clear35.sink.i, ptr %phy_media.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.88.sink.i) #16
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end107.sink.split.i, %if.else87.i.if.end107.i_crit_edge
  %230 = and i32 %and8.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %230)
  %.not.i84 = icmp eq i32 %230, 2048
  br i1 %.not.i84, label %if.then135.i, label %if.end107.i.if.end.i65.sink.split_crit_edge

if.end107.i.if.end.i65.sink.split_crit_edge:      ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65.sink.split

if.then135.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  %231 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %bf.load137.i = load i16, ptr %phy_media.i, align 4
  %bf.set150.i = and i16 %bf.load137.i, -1025
  store i16 %bf.set150.i, ptr %phy_media.i, align 4
  br label %if.end.i65.sink.split

if.else154.i:                                     ; preds = %if.else.i63
  %call155.i = tail call fastcc i32 @mii_read(ptr noundef %dev_instance, i32 noundef %208, i32 noundef 0) #11
  %and158.i = and i32 %call155.i, 8256
  %232 = zext i32 %and158.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and158.i, label %if.else154.i.sw.epilog.i_crit_edge [
    i32 64, label %if.else154.i.sw.epilog.sink.split.i_crit_edge
    i32 8192, label %do.end167.i
    i32 0, label %do.end173.i
  ]

if.else154.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.else154.i.sw.epilog.i_crit_edge:               ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end167.i:                                      ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

do.end173.i:                                      ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end173.i, %do.end167.i, %if.else154.i.sw.epilog.sink.split.i_crit_edge
  %.str.108.sink.i = phi ptr [ @.str.108, %do.end173.i ], [ @.str.105, %do.end167.i ], [ @.str.68, %if.else154.i.sw.epilog.sink.split.i_crit_edge ]
  %call175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.108.sink.i) #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.else154.i.sw.epilog.i_crit_edge
  %and177.i = and i32 %call155.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177.i)
  %tobool178.not.i = icmp eq i32 %and177.i, 0
  br i1 %tobool178.not.i, label %do.end188.i, label %do.end182.i

do.end182.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call184.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #16
  br label %if.end.i65.sink.split

do.end188.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call190.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #16
  br label %if.end.i65.sink.split

if.end.i65.sink.split:                            ; preds = %do.end188.i, %do.end182.i, %if.then135.i, %if.end107.i.if.end.i65.sink.split_crit_edge, %do.end93.i, %do.end87.i, %if.then54.i, %if.end26.i.if.end.i65.sink.split_crit_edge
  %233 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %bf.load194.i = load i16, ptr %phy_media.i, align 4
  %234 = and i16 %bf.load194.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %tobool198.not.i = icmp eq i16 %234, 0
  %.str.78..str.75.i = select i1 %tobool198.not.i, ptr @.str.78, ptr @.str.75
  %call210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.78..str.75.i) #16
  %235 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %bf.load213.i = load i16, ptr %phy_media.i, align 4
  %236 = and i16 %bf.load213.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %tobool217.not.i = icmp eq i16 %236, 0
  %.str.81.sink.i = select i1 %tobool217.not.i, ptr @.str.84, ptr @.str.81
  %call223.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.81.sink.i) #16
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.end.i65.sink.split, %if.then.i77.if.end.i65_crit_edge, %if.then.i93.if.end.i65_crit_edge
  %237 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %238)
  %cmp9.i = icmp eq i32 %238, 1000
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i65.if.end13.i67_crit_edge

if.end.i65.if.end13.i67_crit_edge:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i67

if.then10.i:                                      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  %239 = load i32, ptr @tx_coalesce, align 4
  br label %if.end13.i67

if.end13.i67:                                     ; preds = %if.then10.i, %if.end.i65.if.end13.i67_crit_edge
  %.sink.i = phi i32 [ %239, %if.then10.i ], [ 1, %if.end.i65.if.end13.i67_crit_edge ]
  %240 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %.sink.i, ptr %5, align 4
  %241 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool14.not.i = icmp eq i32 %242, 0
  %243 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %bf.load16.i = load i16, ptr %phy_media.i, align 4
  %244 = lshr i16 %bf.load16.i, 10
  %245 = and i16 %244, 32
  %conv21.i = select i1 %tobool14.not.i, i16 0, i16 8192
  %or22.i = or i16 %245, %conv21.i
  %246 = lshr i16 %bf.load16.i, 3
  %247 = and i16 %246, 128
  %or31104.i = or i16 %or22.i, %247
  %248 = lshr i16 %bf.load16.i, 1
  %249 = and i16 %248, 256
  %or40105.i = or i16 %or31104.i, %249
  %add.ptr.i66 = getelementptr i8, ptr %193, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %250 = tail call i16 @llvm.bswap.i16(i16 %or40105.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i66, i16 %250) #11, !srcloc !329
  %251 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %bf.load42.i = load i16, ptr %phy_media.i, align 4
  %bf.set.i = or i16 %bf.load42.i, 128
  store i16 %bf.set.i, ptr %phy_media.i, align 4
  tail call void @netif_carrier_on(ptr noundef %dev_instance) #11
  br label %if.end57.i

do.end47.i:                                       ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %252(i32 noundef 214748000) #11
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %dev_instance) #16
  %253 = ptrtoint ptr %phy_media.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %bf.load53.i = load i16, ptr %phy_media.i, align 4
  %bf.clear54.i = and i16 %bf.load53.i, -129
  store i16 %bf.clear54.i, ptr %phy_media.i, align 4
  tail call void @netif_carrier_off(ptr noundef %dev_instance) #11
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end47.i, %if.end13.i67, %if.then24.if.end57.i_crit_edge
  %and58.i = and i32 %and110116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end57.i.if.end62.i_crit_edge, label %if.then60.i

if.end57.i.if.end62.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  %call61.i = tail call ptr @get_stats(ptr noundef %dev_instance) #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %if.end57.i.if.end62.i_crit_edge
  %and63.i = and i32 %and110116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.end62.i.if.end25_crit_edge, label %do.end68.i

if.end62.i.if.end25_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.end68.i:                                       ; preds = %if.end62.i
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %dev_instance, i32 noundef %and110116) #16
  %add.ptr73.i = getelementptr i8, ptr %193, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr73.i, i16 16640) #11, !srcloc !329
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end68.i
  %__ms.0110.i = phi i32 [ 500, %do.end68.i ], [ %dec.i68, %while.body.i.while.body.i_crit_edge ]
  %dec.i68 = add nsw i32 %__ms.0110.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %254 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %254(i32 noundef 214748000) #11
  %tobool74.not.i = icmp eq i32 %dec.i68, 0
  br i1 %tobool74.not.i, label %while.end.i71, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i71:                                    ; preds = %while.body.i
  %255 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %256)
  %cmp.not.i.i70 = icmp eq i32 %256, 1
  br i1 %cmp.not.i.i70, label %if.end.i107.i, label %while.end.i71.if.end25_crit_edge

while.end.i71.if.end25_crit_edge:                 ; preds = %while.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i107.i:                                    ; preds = %while.end.i71
  call void @__sanitizer_cov_trace_pc() #13
  %257 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %258, i32 48
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i) #11, !srcloc !339
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  %260 = and i32 %259, -4194345
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #11
  %262 = ptrtoint ptr %led_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %led_mode.i.i, align 4
  %264 = shl i16 %263, 14
  %265 = and i16 %264, 16384
  %266 = zext i16 %265 to i32
  %267 = or i32 %261, %266
  %268 = and i16 %263, 2
  %269 = zext i16 %268 to i32
  %270 = shl nuw nsw i32 %269, 28
  %271 = or i32 %267, %270
  %272 = and i16 %263, 8
  %273 = zext i16 %272 to i32
  %274 = shl nuw nsw i32 %273, 24
  %275 = or i32 %271, %274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %276) #11, !srcloc !338
  br label %if.end25

if.end25:                                         ; preds = %if.end.i107.i, %while.end.i71.if.end25_crit_edge, %if.end62.i.if.end25_crit_edge, %if.end21.if.end25_crit_edge
  %277 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #11, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %277) #11, !srcloc !329
  %278 = and i16 %277, -15865
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %278)
  %cmp = icmp eq i16 %278, 0
  br i1 %cmp, label %if.end25.while.end_crit_edge, label %lor.lhs.false

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool31.not.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %if.end25.while.end_crit_edge ], [ 1, %lor.lhs.false.while.end_crit_edge ]
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 4512
  %279 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cur_tx, align 4
  %old_tx = getelementptr i8, ptr %dev_instance, i32 4516
  %281 = ptrtoint ptr %old_tx to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %old_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %282)
  %cmp26.not = icmp eq i32 %280, %282
  br i1 %cmp26.not, label %while.end.if.end30_crit_edge, label %if.then28

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr29 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 1677721600) #11, !srcloc !338
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %while.end.if.end30_crit_edge
  ret i32 %tobool31.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_list(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 4368
  br label %for.body

for.cond10.preheader:                             ; preds = %if.end
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body12

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.055
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo.i = getelementptr %struct.netdev_desc, ptr %5, i32 %i.055, i32 2
  %6 = ptrtoint ptr %fraginfo.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %fraginfo.i, align 8
  %8 = and i64 %7, -65536
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #11
  %conv.i = trunc i64 %9 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %conv.i, i32 noundef %11, i32 noundef 2, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef nonnull %1) #11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %status = getelementptr %struct.netdev_desc, ptr %14, i32 %i.055, i32 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %status, align 8
  %16 = load ptr, ptr %add.ptr.i, align 4
  %fraginfo = getelementptr %struct.netdev_desc, ptr %16, i32 %i.055, i32 2
  %17 = ptrtoint ptr %fraginfo to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %fraginfo, align 8
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond10.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body12:                                       ; preds = %for.inc24.for.body12_crit_edge, %for.cond10.preheader
  %i.157 = phi i32 [ 0, %for.cond10.preheader ], [ %inc25, %for.inc24.for.body12_crit_edge ]
  %arrayidx13 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.157
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %for.body12.for.inc24_crit_edge, label %if.then15

for.body12.for.inc24_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

if.then15:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_ring, align 4
  %fraginfo.i53 = getelementptr %struct.netdev_desc, ptr %23, i32 %i.157, i32 2
  %24 = ptrtoint ptr %fraginfo.i53 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fraginfo.i53, align 8
  %26 = and i64 %25, -65536
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #11
  %conv.i54 = trunc i64 %27 to i32
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %28 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len20, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17, i32 noundef %conv.i54, i32 noundef %29, i32 noundef 1, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef nonnull %19) #11
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx13, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %if.then15, %for.body12.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.157, 1
  %exitcond59.not = icmp eq i32 %inc25, 256
  br i1 %exitcond59.not, label %for.end26, label %for.inc24.for.body12_crit_edge

for.inc24.for.body12_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.end26:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2216
  %pdev = getelementptr i8, ptr %t, i32 -152
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rx_lock = getelementptr i8, ptr %t, i32 -96
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #11
  %cur_rx = getelementptr i8, ptr %t, i32 -16
  %4 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_rx, align 4
  %old_rx = getelementptr i8, ptr %t, i32 -12
  %6 = ptrtoint ptr %old_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_rx, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub)
  %cmp8 = icmp ugt i32 %sub, 255
  br i1 %cmp8, label %do.end12, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.end12:                                         ; preds = %entry
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #16
  %8 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_rx, align 4
  %10 = ptrtoint ptr %old_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp18.not88 = icmp eq i32 %9, %11
  br i1 %cmp18.not88, label %do.end12.if.end53_crit_edge, label %for.body.lr.ph

do.end12.if.end53_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

for.body.lr.ph:                                   ; preds = %do.end12
  %rx_skbuff = getelementptr i8, ptr %t, i32 -2208
  %rx_buf_sz = getelementptr i8, ptr %t, i32 -52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %11, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %12, 255
  %arrayidx = getelementptr [256 x ptr], ptr %rx_skbuff, i32 0, i32 %rem
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp21 = icmp eq ptr %14, null
  br i1 %cmp21, label %if.then23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %15 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buf_sz, align 4
  %add.i.i = add i32 %16, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef %add.i.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then23
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = load ptr, ptr %data.i.i.i, align 4
  %25 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_sz, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !336

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev37) #11
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i85 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i85, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev37, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev37, ptr noundef %24, i32 noundef %26) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %24 to i32
  %sub.i = add i32 %32, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %31, i32 %shr.i
  %and.i = and i32 %32, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev37, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %26, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %conv40 = zext i32 %retval.0.i to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv40)
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %fraginfo43 = getelementptr %struct.netdev_desc, ptr %35, i32 %rem, i32 2
  %36 = ptrtoint ptr %fraginfo43 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %fraginfo43, align 8
  br label %for.inc

cleanup:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %fraginfo = getelementptr %struct.netdev_desc, ptr %38, i32 %rem, i32 2
  %39 = ptrtoint ptr %fraginfo to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %fraginfo, align 8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %3, i32 noundef %rem) #16
  br label %if.end53

for.inc:                                          ; preds = %dma_map_single_attrs.exit, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_buf_sz, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = lshr i32 %42, 16
  %44 = zext i32 %43 to i64
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %fraginfo49 = getelementptr %struct.netdev_desc, ptr %46, i32 %rem, i32 2
  %47 = ptrtoint ptr %fraginfo49 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %fraginfo49, align 8
  %or = or i64 %48, %44
  store i64 %or, ptr %fraginfo49, align 8
  %49 = load ptr, ptr %add.ptr, align 4
  %status = getelementptr %struct.netdev_desc, ptr %49, i32 %rem, i32 1
  %50 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %status, align 8
  %51 = ptrtoint ptr %old_rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %old_rx, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %old_rx, align 4
  %53 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_rx, align 4
  %cmp18.not = icmp eq i32 %54, %inc
  br i1 %cmp18.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.end53:                                         ; preds = %for.inc.if.end53_crit_edge, %cleanup, %do.end12.if.end53_crit_edge, %entry.if.end53_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call5) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %55, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %56 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %reg_num, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1.i.i = getelementptr i8, ptr %dev, i32 4372
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 31, %entry ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 118
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %3 = and i8 %2, -8
  %conv4.i.i = or i8 %3, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv4.i.i) #11, !srcloc !335
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %conv9.i.i = or i8 %2, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv9.i.i) #11, !srcloc !335
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %i.0.i = add nsw i32 %i.05.i, -1
  %cmp.i.not = icmp eq i32 %i.05.i, 0
  br i1 %cmp.i.not, label %mii_send_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mii_send_bits.exit:                               ; preds = %for.body.i
  %shl = shl i32 %phy_addr, 23
  %shl1 = shl i32 %reg_num, 18
  %conv = zext i16 %data to i32
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %conv
  %or3 = or i32 %or2, 1342308352
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %mii_send_bits.exit
  %i.05.i2 = phi i32 [ 31, %mii_send_bits.exit ], [ %i.0.i8, %for.body.i10.for.body.i10_crit_edge ]
  %shl.i3 = shl nuw i32 1, %i.05.i2
  %and.i = and i32 %shl.i3, %or3
  %6 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %add.ptr.i.i4 = getelementptr i8, ptr %7, i32 118
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i4) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %9 = and i8 %8, -8
  %or.i.i5 = or i8 %cond.i.i, %9
  %conv4.i.i6 = or i8 %or.i.i5, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4, i8 %conv4.i.i6) #11, !srcloc !335
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i4) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %conv9.i.i7 = or i8 %or.i.i5, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4, i8 %conv9.i.i7) #11, !srcloc !335
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i4) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %i.0.i8 = add nsw i32 %i.05.i2, -1
  %cmp.i9.not = icmp eq i32 %i.05.i2, 0
  br i1 %cmp.i9.not, label %mii_send_bits.exit11, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i10

mii_send_bits.exit11:                             ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 118
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %15 = and i8 %14, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %15) #11, !srcloc !335
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %17 = or i8 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %17) #11, !srcloc !335
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_set_media(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_addr1 = getelementptr i8, ptr %dev, i32 4844
  %0 = ptrtoint ptr %phy_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_addr1, align 4
  %an_enable = getelementptr i8, ptr %dev, i32 4496
  %2 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %an_enable, align 4
  %3 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef 1)
  %call3 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef 4)
  %4 = trunc i32 %call3 to i16
  %conv4 = and i16 %4, -4065
  %5 = trunc i32 %call2 to i16
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 256
  %8 = and i16 %6, 128
  %9 = and i16 %6, 512
  %10 = and i16 %6, 64
  %11 = and i16 %6, 32
  %12 = or i16 %conv4, %7
  %13 = or i16 %12, %8
  %14 = or i16 %13, %9
  %15 = or i16 %14, %10
  %16 = or i16 %15, %11
  %17 = or i16 %16, 3072
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 4, i16 noundef zeroext %17)
  %call47 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef 16)
  %18 = trunc i32 %call47 to i16
  %conv51 = or i16 %18, 96
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 16, i16 noundef zeroext %conv51)
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i16 noundef zeroext -32768)
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i16 noundef zeroext -28160)
  br label %if.end115

if.else:                                          ; preds = %entry
  %call55 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef 16)
  %19 = trunc i32 %call55 to i16
  %conv59 = and i16 %19, -97
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 16, i16 noundef zeroext %conv59)
  %call61 = tail call fastcc i32 @mii_read(ptr noundef %dev, i32 noundef %1, i32 noundef 0)
  %20 = trunc i32 %call61 to i16
  %conv65 = or i16 %20, -32768
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i16 noundef zeroext %conv65)
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i16 noundef zeroext 6464)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else
  %__ms.01 = phi i32 [ 100, %if.else ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #11
  %tobool68.not = icmp eq i32 %dec, 0
  br i1 %tobool68.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 4, i16 noundef zeroext 0)
  %speed = getelementptr i8, ptr %dev, i32 4472
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %23, label %while.end.if.end87_crit_edge [
    i32 100, label %while.end.if.end87.sink.split_crit_edge
    i32 10, label %do.end83
  ]

while.end.if.end87.sink.split_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.sink.split

while.end.if.end87_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.end83:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.sink.split

if.end87.sink.split:                              ; preds = %do.end83, %while.end.if.end87.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %do.end83 ], [ @.str.39, %while.end.if.end87.sink.split_crit_edge ]
  %bmcr.0.ph = phi i16 [ 2048, %do.end83 ], [ 10240, %while.end.if.end87.sink.split_crit_edge ]
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink) #16
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %while.end.if.end87_crit_edge
  %bmcr.0 = phi i16 [ 2048, %while.end.if.end87_crit_edge ], [ %bmcr.0.ph, %if.end87.sink.split ]
  %25 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load88 = load i16, ptr %an_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load88)
  %tobool91.not = icmp sgt i16 %bf.load88, -1
  %26 = or i16 %bmcr.0, 256
  %.str.48.sink = select i1 %tobool91.not, ptr @.str.48, ptr @.str.45
  %bmcr.1 = select i1 %tobool91.not, i16 %bmcr.0, i16 %26
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.48.sink) #16
  tail call fastcc void @mii_write(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i16 noundef zeroext %bmcr.1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #11
  br label %if.end115

if.end115:                                        ; preds = %if.end87, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mii_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_addr, i32 noundef %reg_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1.i.i = getelementptr i8, ptr %dev, i32 4372
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 31, %entry ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 118
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %3 = and i8 %2, -8
  %conv4.i.i = or i8 %3, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv4.i.i) #11, !srcloc !335
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %conv9.i.i = or i8 %2, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv9.i.i) #11, !srcloc !335
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %i.0.i = add nsw i32 %i.05.i, -1
  %cmp.i.not = icmp eq i32 %i.05.i, 0
  br i1 %cmp.i.not, label %mii_send_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mii_send_bits.exit:                               ; preds = %for.body.i
  %shl = shl i32 %phy_addr, 5
  %or = or i32 %shl, %reg_num
  %or2 = or i32 %or, 6144
  br label %for.body.i25

for.body.i25:                                     ; preds = %for.body.i25.for.body.i25_crit_edge, %mii_send_bits.exit
  %i.05.i17 = phi i32 [ 13, %mii_send_bits.exit ], [ %i.0.i23, %for.body.i25.for.body.i25_crit_edge ]
  %shl.i18 = shl nuw i32 1, %i.05.i17
  %and.i = and i32 %shl.i18, %or2
  %6 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.i = icmp eq i32 %and.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i8 0, i8 2
  %add.ptr.i.i19 = getelementptr i8, ptr %7, i32 118
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %9 = and i8 %8, -8
  %or.i.i20 = or i8 %cond.i.i, %9
  %conv4.i.i21 = or i8 %or.i.i20, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19, i8 %conv4.i.i21) #11, !srcloc !335
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %conv9.i.i22 = or i8 %or.i.i20, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i19, i8 %conv9.i.i22) #11, !srcloc !335
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %i.0.i23 = add nsw i32 %i.05.i17, -1
  %cmp.i24.not = icmp eq i32 %i.05.i17, 0
  br i1 %cmp.i24.not, label %mii_send_bits.exit26, label %for.body.i25.for.body.i25_crit_edge

for.body.i25.for.body.i25_crit_edge:              ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i25

mii_send_bits.exit26:                             ; preds = %for.body.i25
  %12 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 118
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %15 = and i8 %14, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %15) #11, !srcloc !335
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %17 = or i8 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %17) #11, !srcloc !335
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %mii_send_bits.exit26.for.body_crit_edge, label %mii_send_bits.exit26.cleanup_crit_edge

mii_send_bits.exit26.cleanup_crit_edge:           ; preds = %mii_send_bits.exit26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mii_send_bits.exit26.for.body_crit_edge:          ; preds = %mii_send_bits.exit26
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mii_send_bits.exit26.for.body_crit_edge
  %retval1.034 = phi i32 [ %shl5, %for.body.for.body_crit_edge ], [ 0, %mii_send_bits.exit26.for.body_crit_edge ]
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mii_send_bits.exit26.for.body_crit_edge ]
  %21 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %22, i32 118
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i28) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %24 = and i8 %23, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 %24) #11, !srcloc !335
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i28) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %26 = or i8 %24, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 %26) #11, !srcloc !335
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i28) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i28) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %29 = lshr i8 %28, 1
  %30 = and i8 %29, 1
  %and16.i29 = zext i8 %30 to i32
  %or4 = or i32 %retval1.034, %and16.i29
  %shl5 = shl i32 %or4, 1
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %32, i32 118
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %34 = and i8 %33, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %34) #11, !srcloc !335
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %36 = or i8 %34, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %36) #11, !srcloc !335
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i31) #11, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  %and = and i32 %or4, 65535
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mii_send_bits.exit26.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %for.end ], [ 0, %mii_send_bits.exit26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_free_tx(ptr noundef %dev, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %old_tx = getelementptr i8, ptr %dev, i32 4516
  %0 = ptrtoint ptr %old_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_tx, align 4
  %rem = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool.not = icmp eq i32 %irq, 0
  %tx_lock3 = getelementptr i8, ptr %dev, i32 4380
  br i1 %tobool.not, label %do.body2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock(ptr noundef %tx_lock3) #11
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock3) #11
  br label %if.end

if.end:                                           ; preds = %do.body2, %if.then
  %flag.0 = phi i32 [ 0, %if.then ], [ %call5, %do.body2 ]
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %cur_tx = getelementptr i8, ptr %dev, i32 4512
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %3)
  %cmp8.not75 = icmp eq i32 %rem, %3
  br i1 %cmp8.not75, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %pdev = getelementptr i8, ptr %dev, i32 4368
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %entry1.076 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem24, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %status = getelementptr %struct.netdev_desc, ptr %5, i32 %entry1.076, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %status, align 8
  %and = and i64 %7, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %if.end12

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end12:                                         ; preds = %while.body
  %arrayidx13 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %entry1.076
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx13, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %fraginfo.i = getelementptr %struct.netdev_desc, ptr %5, i32 %entry1.076, i32 2
  %12 = ptrtoint ptr %fraginfo.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fraginfo.i, align 8
  %14 = and i64 %13, -65536
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #11
  %conv.i = trunc i64 %15 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev14, i32 noundef %conv.i, i32 noundef %17, i32 noundef 1, i32 noundef 0) #11
  br i1 %tobool.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_irq(ptr noundef %9, i32 noundef 0) #11
  br label %cleanup

if.else20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then19
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx13, align 4
  %add = add nsw i32 %entry1.076, 1
  %rem24 = srem i32 %add, 256
  %19 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_tx, align 4
  %cmp8.not = icmp eq i32 %rem24, %20
  br i1 %cmp8.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %entry1.0.lcssa = phi i32 [ %rem, %if.end.while.end_crit_edge ], [ %entry1.076, %while.body.while.end_crit_edge ], [ %rem24, %cleanup.while.end_crit_edge ]
  %tx_lock29 = getelementptr i8, ptr %dev, i32 4380
  br i1 %tobool.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock29) #11
  br label %if.end30

if.else28:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock29, i32 noundef %flag.0) #11
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %21 = ptrtoint ptr %old_tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %entry1.0.lcssa, ptr %old_tx, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end30.if.end43_crit_edge, label %land.lhs.true

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end30
  %26 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_tx, align 4
  %sub = sub i32 %27, %entry1.0.lcssa
  %rem37 = and i32 %sub, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %rem37)
  %cmp38.not = icmp eq i32 %rem37, 254
  br i1 %cmp38.not, label %lor.lhs.false, label %land.lhs.true.if.then42_crit_edge

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

lor.lhs.false:                                    ; preds = %land.lhs.true
  %speed = getelementptr i8, ptr %dev, i32 4472
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %cmp40 = icmp eq i32 %29, 10
  br i1 %cmp40, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false.if.end43_crit_edge

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge
  tail call void @netif_tx_wake_queue(ptr noundef %23) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %lor.lhs.false.if.end43_crit_edge, %if.end30.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %pdev = getelementptr i8, ptr %dev, i32 4368
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rio_get_link(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link_status = getelementptr i8, ptr %dev, i32 4496
  %0 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %link_status, align 4
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_media = getelementptr i8, ptr %dev, i32 4496
  %0 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %phy_media, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %spec.select = select i1 %tobool.not, i8 2, i8 3
  %2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 1
  %4 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load3 = load i16, ptr %phy_media, align 4
  %5 = and i16 %bf.load3, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool7.not = icmp eq i16 %5, 0
  br i1 %tobool7.not, label %if.else16, label %if.then8

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %speed = getelementptr i8, ptr %dev, i32 4472
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  %speed10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %speed10, align 4
  %9 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load11 = load i16, ptr %phy_media, align 4
  %bf.load11.lobit = lshr i16 %bf.load11, 15
  %10 = trunc i16 %bf.load11.lobit to i8
  br label %if.end21

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %speed18 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %speed18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %speed18, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then8
  %.sink54 = phi i8 [ -1, %if.else16 ], [ %10, %if.then8 ]
  %spec.select56 = select i1 %tobool.not, i32 623, i32 1088
  %12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink54, ptr %12, align 4
  %14 = ptrtoint ptr %phy_media to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load22 = load i16, ptr %phy_media, align 4
  %15 = and i16 %bf.load22, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool26.not = icmp ne i16 %15, 0
  %spec.select57 = zext i1 %tobool26.not to i8
  %16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select57, ptr %16, align 1
  %phy_addr = getelementptr i8, ptr %dev, i32 4844
  %18 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_addr, align 4
  %conv33 = trunc i32 %19 to i8
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv33, ptr %phy_address, align 2
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %spec.select56) #11
  %advertising37 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising37, i32 noundef %spec.select56) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  %duplex3 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %duplex3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %duplex3, align 4
  tail call void @netif_carrier_off(ptr noundef %dev) #11
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %an_enable = getelementptr i8, ptr %dev, i32 4496
  %6 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %an_enable, align 4
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %7 = and i16 %bf.load, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear9 = and i16 %bf.load, -24577
  %bf.set = or i16 %bf.clear9, 8192
  br label %cleanup.sink.split

if.else11:                                        ; preds = %entry
  %bf.clear14 = and i16 %bf.load, -24577
  %8 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.clear14, ptr %an_enable, align 4
  %speed16 = getelementptr i8, ptr %dev, i32 4472
  %9 = ptrtoint ptr %speed16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %10)
  %cmp17 = icmp eq i32 %10, 1000
  br i1 %cmp17, label %sw.bb28.thread, label %if.end

sw.bb28.thread:                                   ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #16
  %11 = ptrtoint ptr %speed16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 100, ptr %speed16, align 4
  %12 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load3463 = load i16, ptr %an_enable, align 4
  br label %18

if.end:                                           ; preds = %if.else11
  %13 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 100, label %sw.bb28
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %speed16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %speed16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp23 = icmp eq i8 %3, 1
  %15 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load25 = load i16, ptr %an_enable, align 4
  %bf.shl = select i1 %cmp23, i16 -32768, i16 0
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %16 = ptrtoint ptr %speed16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %speed16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp31 = icmp eq i8 %3, 1
  %17 = ptrtoint ptr %an_enable to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load34 = load i16, ptr %an_enable, align 4
  br i1 %cmp31, label %sw.bb28._crit_edge, label %sw.bb28.sw.epilog_crit_edge

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb28._crit_edge:                               ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %18

18:                                               ; preds = %sw.bb28._crit_edge, %sw.bb28.thread
  %bf.load3465 = phi i16 [ %bf.load3463, %sw.bb28.thread ], [ %bf.load34, %sw.bb28._crit_edge ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %18, %sw.bb28.sw.epilog_crit_edge, %sw.bb
  %bf.load3464.sink = phi i16 [ %bf.load25, %sw.bb ], [ %bf.load3465, %18 ], [ %bf.load34, %sw.bb28.sw.epilog_crit_edge ]
  %.sink = phi i16 [ %bf.shl, %sw.bb ], [ -32768, %18 ], [ 0, %sw.bb28.sw.epilog_crit_edge ]
  %bf.clear37 = and i16 %bf.load3464.sink, 32767
  %bf.set38 = or i16 %bf.clear37, %.sink
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %if.else
  %bf.set38.sink = phi i16 [ %bf.set38, %sw.epilog ], [ %bf.set, %if.else ]
  %19 = ptrtoint ptr %an_enable to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.set38.sink, ptr %an_enable, align 4
  tail call fastcc void @mii_set_media(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_device_detach(ptr noundef %1) #11
  %timer = getelementptr i8, ptr %1, i32 4520
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #11
  %ioaddr1.i = getelementptr i8, ptr %1, i32 4372
  %4 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 0) #11, !srcloc !329
  %add.ptr2.i = getelementptr i8, ptr %5, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16402) #11, !srcloc !338
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_rx.i = getelementptr i8, ptr %1, i32 4504
  %tx_ring.i = getelementptr i8, ptr %1, i32 2308
  %4 = call ptr @memset(ptr %cur_rx.i, i32 0, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.019.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring.i, align 4
  %status.i = getelementptr %struct.netdev_desc, ptr %6, i32 %i.019.i, i32 1
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 549755813888, ptr %status.i, align 8
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.120.i = phi i32 [ %inc7.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %status5.i = getelementptr %struct.netdev_desc, ptr %9, i32 %i.120.i, i32 1
  %10 = ptrtoint ptr %status5.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %status5.i, align 8
  %inc7.i = add nuw nsw i32 %i.120.i, 1
  %exitcond21.not.i = icmp eq i32 %inc7.i, 256
  br i1 %exitcond21.not.i, label %rio_reset_ring.exit, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

rio_reset_ring.exit:                              ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rio_hw_init(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 100
  %timer = getelementptr i8, ptr %1, i32 4520
  %expires = getelementptr i8, ptr %1, i32 4528
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #11
  tail call void @netif_device_attach(ptr noundef %1) #11
  %ioaddr1.i = getelementptr i8, ptr %1, i32 4372
  %13 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %14, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 -15865) #11, !srcloc !329
  br label %cleanup

cleanup:                                          ; preds = %rio_reset_ring.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !285, !286, !288, !289, !290, !292, !293, !294, !295, !297, !299, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !316}
!llvm.module.flags = !{!318, !319, !320, !321, !322, !323, !324, !325}
!llvm.ident = !{!326}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_mtu, !8, !"__param_mtu", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 36, i32 1}
!9 = !{ptr @__UNIQUE_ID_mtutype345, !8, !"__UNIQUE_ID_mtutype345", i1 false, i1 false}
!10 = !{ptr @__param_media, !11, !"__param_media", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 37, i32 1}
!12 = !{ptr @__UNIQUE_ID_mediatype346, !11, !"__UNIQUE_ID_mediatype346", i1 false, i1 false}
!13 = !{ptr @__param_vlan, !14, !"__param_vlan", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 38, i32 1}
!15 = !{ptr @__UNIQUE_ID_vlantype347, !14, !"__UNIQUE_ID_vlantype347", i1 false, i1 false}
!16 = !{ptr @__param_jumbo, !17, !"__param_jumbo", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 39, i32 1}
!18 = !{ptr @__UNIQUE_ID_jumbotype348, !17, !"__UNIQUE_ID_jumbotype348", i1 false, i1 false}
!19 = !{ptr @__param_tx_flow, !20, !"__param_tx_flow", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 40, i32 1}
!21 = !{ptr @__UNIQUE_ID_tx_flowtype349, !20, !"__UNIQUE_ID_tx_flowtype349", i1 false, i1 false}
!22 = !{ptr @__param_rx_flow, !23, !"__param_rx_flow", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 41, i32 1}
!24 = !{ptr @__UNIQUE_ID_rx_flowtype350, !23, !"__UNIQUE_ID_rx_flowtype350", i1 false, i1 false}
!25 = !{ptr @__param_copy_thresh, !26, !"__param_copy_thresh", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 42, i32 1}
!27 = !{ptr @__UNIQUE_ID_copy_threshtype351, !26, !"__UNIQUE_ID_copy_threshtype351", i1 false, i1 false}
!28 = !{ptr @__param_rx_coalesce, !29, !"__param_rx_coalesce", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 43, i32 1}
!30 = !{ptr @__UNIQUE_ID_rx_coalescetype352, !29, !"__UNIQUE_ID_rx_coalescetype352", i1 false, i1 false}
!31 = !{ptr @__param_rx_timeout, !32, !"__param_rx_timeout", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 44, i32 1}
!33 = !{ptr @__UNIQUE_ID_rx_timeouttype353, !32, !"__UNIQUE_ID_rx_timeouttype353", i1 false, i1 false}
!34 = !{ptr @__param_tx_coalesce, !35, !"__param_tx_coalesce", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 45, i32 1}
!36 = !{ptr @__UNIQUE_ID_tx_coalescetype354, !35, !"__UNIQUE_ID_tx_coalescetype354", i1 false, i1 false}
!37 = !{ptr @__initcall__kmod_dl2k__355_1865_rio_driver_init6, !38, !"__initcall__kmod_dl2k__355_1865_rio_driver_init6", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1865, i32 1}
!39 = !{ptr @__exitcall_rio_driver_exit, !38, !"__exitcall_rio_driver_exit", i1 false, i1 false}
!40 = !{ptr @copy_thresh, !41, !"copy_thresh", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 27, i32 12}
!42 = !{ptr @__param_str_mtu, !8, !"__param_str_mtu", i1 false, i1 false}
!43 = !{ptr @__param_arr_mtu, !8, !"__param_arr_mtu", i1 false, i1 false}
!44 = !{ptr @mtu, !45, !"mtu", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 21, i32 12}
!46 = !{ptr @__param_str_media, !11, !"__param_str_media", i1 false, i1 false}
!47 = !{ptr @__param_arr_media, !11, !"__param_arr_media", i1 false, i1 false}
!48 = !{ptr @media, !49, !"media", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 24, i32 14}
!50 = !{ptr @__param_str_vlan, !14, !"__param_str_vlan", i1 false, i1 false}
!51 = !{ptr @__param_arr_vlan, !14, !"__param_arr_vlan", i1 false, i1 false}
!52 = !{ptr @vlan, !53, !"vlan", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 22, i32 12}
!54 = !{ptr @__param_str_jumbo, !17, !"__param_str_jumbo", i1 false, i1 false}
!55 = !{ptr @__param_arr_jumbo, !17, !"__param_arr_jumbo", i1 false, i1 false}
!56 = !{ptr @jumbo, !57, !"jumbo", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 23, i32 12}
!58 = !{ptr @__param_str_tx_flow, !20, !"__param_str_tx_flow", i1 false, i1 false}
!59 = !{ptr @tx_flow, !60, !"tx_flow", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 25, i32 12}
!61 = !{ptr @__param_str_rx_flow, !23, !"__param_str_rx_flow", i1 false, i1 false}
!62 = !{ptr @rx_flow, !63, !"rx_flow", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 26, i32 12}
!64 = !{ptr @__param_str_copy_thresh, !26, !"__param_str_copy_thresh", i1 false, i1 false}
!65 = !{ptr @__param_str_rx_coalesce, !29, !"__param_str_rx_coalesce", i1 false, i1 false}
!66 = !{ptr @rx_coalesce, !67, !"rx_coalesce", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 28, i32 12}
!68 = !{ptr @__param_str_rx_timeout, !32, !"__param_str_rx_timeout", i1 false, i1 false}
!69 = !{ptr @rx_timeout, !70, !"rx_timeout", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 29, i32 12}
!71 = !{ptr @__param_str_tx_coalesce, !35, !"__param_str_tx_coalesce", i1 false, i1 false}
!72 = !{ptr @tx_coalesce, !73, !"tx_coalesce", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 30, i32 12}
!74 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @rio_driver, !76, !"rio_driver", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1857, i32 26}
!77 = !{ptr @rio_pci_tbl, !78, !"rio_pci_tbl", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/dlink/dl2k.h", i32 416, i32 35}
!79 = !{ptr @rio_probe1.card_idx, !80, !"card_idx", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 107, i32 13}
!81 = !{ptr @rio_probe1.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 149, i32 2}
!83 = !{ptr @.str.1, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rio_probe1.__key.2, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 150, i32 2}
!86 = !{ptr @.str.3, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 158, i32 33}
!89 = !{ptr @.str.5, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 159, i32 33}
!91 = !{ptr @.str.6, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 160, i32 33}
!93 = !{ptr @.str.7, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 162, i32 40}
!95 = !{ptr @.str.8, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 163, i32 33}
!97 = !{ptr @.str.9, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 166, i32 40}
!99 = !{ptr @.str.10, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 167, i32 33}
!101 = !{ptr @.str.11, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 170, i32 40}
!103 = !{ptr @.str.12, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 171, i32 33}
!105 = !{ptr @.str.13, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 174, i32 40}
!107 = !{ptr @.str.14, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 175, i32 33}
!109 = !{ptr @.str.15, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 178, i32 40}
!111 = !{ptr @.str.16, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 179, i32 31}
!113 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 182, i32 40}
!115 = !{ptr @.str.18, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 183, i32 31}
!117 = !{ptr @.str.19, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 269, i32 2}
!119 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.21, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rio_probe1._entry, !118, !"_entry", i1 false, i1 false}
!122 = !{ptr @rio_probe1._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.23, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 272, i32 3}
!125 = !{ptr @rio_probe1._entry.22, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @rio_probe1._entry_ptr.24, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.26, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 275, i32 3}
!129 = !{ptr @rio_probe1._entry.25, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rio_probe1._entry_ptr.27, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 280, i32 3}
!133 = !{ptr @rio_probe1._entry.28, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rio_probe1._entry_ptr.30, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @netdev_ops, !136, !"netdev_ops", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 90, i32 36}
!137 = !{ptr @rio_open.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 639, i32 2}
!139 = !{ptr @.str.31, !138, !"<string literal>", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!142 = !{ptr @.str.32, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.33, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.34, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1758, i32 4}
!146 = !{ptr @.str.35, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mii_set_media_pcs._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mii_set_media_pcs._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.37, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1761, i32 4}
!151 = !{ptr @mii_set_media_pcs._entry.36, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mii_set_media_pcs._entry_ptr.38, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.39, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1642, i32 4}
!155 = !{ptr @.str.40, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @mii_set_media._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @mii_set_media._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.42, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1644, i32 4}
!160 = !{ptr @mii_set_media._entry.41, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mii_set_media._entry_ptr.43, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.45, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1648, i32 4}
!164 = !{ptr @mii_set_media._entry.44, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @mii_set_media._entry_ptr.46, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.48, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1650, i32 4}
!168 = !{ptr @mii_set_media._entry.47, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @mii_set_media._entry_ptr.49, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.50, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 997, i32 5}
!172 = !{ptr @.str.51, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @receive_packet._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @receive_packet._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.52, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 869, i32 2}
!177 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tx_error._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @tx_error._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.54, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1028, i32 4}
!182 = !{ptr @.str.55, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @rio_error._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @rio_error._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.57, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1048, i32 4}
!187 = !{ptr @rio_error._entry.56, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @rio_error._entry_ptr.58, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1062, i32 3}
!191 = !{ptr @rio_error._entry.59, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rio_error._entry_ptr.61, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1685, i32 4}
!195 = !{ptr @.str.63, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mii_get_media_pcs._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @mii_get_media_pcs._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1688, i32 4}
!200 = !{ptr @mii_get_media_pcs._entry.64, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @mii_get_media_pcs._entry_ptr.66, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.68, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1701, i32 3}
!204 = !{ptr @mii_get_media_pcs._entry.67, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @mii_get_media_pcs._entry_ptr.69, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @mii_get_media_pcs._entry.70, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1703, i32 4}
!208 = !{ptr @mii_get_media_pcs._entry_ptr.71, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @mii_get_media_pcs._entry.72, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1705, i32 4}
!211 = !{ptr @mii_get_media_pcs._entry_ptr.73, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1709, i32 3}
!214 = !{ptr @mii_get_media_pcs._entry.74, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @mii_get_media_pcs._entry_ptr.76, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1711, i32 3}
!218 = !{ptr @mii_get_media_pcs._entry.77, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @mii_get_media_pcs._entry_ptr.79, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.81, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1713, i32 3}
!222 = !{ptr @mii_get_media_pcs._entry.80, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @mii_get_media_pcs._entry_ptr.82, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1715, i32 3}
!226 = !{ptr @mii_get_media_pcs._entry.83, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @mii_get_media_pcs._entry_ptr.85, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1515, i32 4}
!230 = !{ptr @mii_get_media._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @mii_get_media._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.88, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1519, i32 4}
!234 = !{ptr @mii_get_media._entry.87, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @mii_get_media._entry_ptr.89, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.91, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1523, i32 4}
!238 = !{ptr @mii_get_media._entry.90, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @mii_get_media._entry_ptr.92, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1527, i32 4}
!242 = !{ptr @mii_get_media._entry.93, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @mii_get_media._entry_ptr.95, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1531, i32 4}
!246 = !{ptr @mii_get_media._entry.96, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @mii_get_media._entry_ptr.98, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1535, i32 4}
!250 = !{ptr @mii_get_media._entry.99, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @mii_get_media._entry_ptr.101, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @mii_get_media._entry.102, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1549, i32 4}
!254 = !{ptr @mii_get_media._entry_ptr.103, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1552, i32 4}
!257 = !{ptr @mii_get_media._entry.104, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @mii_get_media._entry_ptr.106, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.108, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1555, i32 4}
!261 = !{ptr @mii_get_media._entry.107, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @mii_get_media._entry_ptr.109, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @mii_get_media._entry.110, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1558, i32 4}
!265 = !{ptr @mii_get_media._entry_ptr.111, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @mii_get_media._entry.112, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1560, i32 4}
!268 = !{ptr @mii_get_media._entry_ptr.113, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @mii_get_media._entry.114, !270, !"_entry", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1564, i32 3}
!271 = !{ptr @mii_get_media._entry_ptr.115, !270, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @mii_get_media._entry.116, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1566, i32 3}
!274 = !{ptr @mii_get_media._entry_ptr.117, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @mii_get_media._entry.118, !276, !"_entry", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1568, i32 3}
!277 = !{ptr @mii_get_media._entry_ptr.119, !276, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @mii_get_media._entry.120, !279, !"_entry", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1570, i32 3}
!280 = !{ptr @mii_get_media._entry_ptr.121, !279, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.122, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 661, i32 3}
!283 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @rio_timer._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @rio_timer._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 672, i32 6}
!288 = !{ptr @rio_timer._entry.124, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @rio_timer._entry_ptr.126, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.127, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 698, i32 2}
!292 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @rio_tx_timeout._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @rio_tx_timeout._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @ethtool_ops, !296, !"ethtool_ops", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1334, i32 33}
!297 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1308, i32 4}
!299 = !{ptr @.str.130, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @rio_set_link_ksettings._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @rio_set_link_ksettings._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.131, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 345, i32 4}
!304 = !{ptr @.str.132, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @parse_eeprom._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @parse_eeprom._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.134, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 370, i32 4}
!309 = !{ptr @parse_eeprom._entry.133, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @parse_eeprom._entry_ptr.135, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.136, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 319, i32 3}
!313 = !{ptr @.str.137, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @find_miiphy._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @find_miiphy._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @rio_pm_ops, !317, !"rio_pm_ops", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/dlink/dl2k.c", i32 1848, i32 8}
!318 = !{i32 1, !"wchar_size", i32 2}
!319 = !{i32 1, !"min_enum_size", i32 4}
!320 = !{i32 8, !"branch-target-enforcement", i32 0}
!321 = !{i32 8, !"sign-return-address", i32 0}
!322 = !{i32 8, !"sign-return-address-all", i32 0}
!323 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!324 = !{i32 7, !"uwtable", i32 1}
!325 = !{i32 7, !"frame-pointer", i32 2}
!326 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!327 = !{!"auto-init"}
!328 = !{i64 2152640407}
!329 = !{i64 5098215}
!330 = !{i64 5098415}
!331 = !{i64 2152638990}
!332 = !{i64 5099033}
!333 = !{i64 2152638378}
!334 = !{i64 2152639983}
!335 = !{i64 5098638}
!336 = !{!"branch_weights", i32 2000, i32 1}
!337 = !{i64 2152640957}
!338 = !{i64 5098835}
!339 = !{i64 5099253}
!340 = !{i64 2152639602}
