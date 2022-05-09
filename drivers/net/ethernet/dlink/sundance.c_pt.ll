; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dlink/sundance.c_pt.bc'
source_filename = "../drivers/net/ethernet/dlink/sundance.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_id_info = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.124 = type { [32 x i8] }
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
%struct.netdev_private = type { ptr, ptr, [64 x ptr], [32 x ptr], i32, i32, %struct.timer_list, ptr, %struct.anon.122, %struct.spinlock, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i32, i8, %struct.tasklet_struct, %struct.tasklet_struct, i32, i32, %struct.spinlock, [4 x i16], %struct.mii_if_info, i32, [4 x i8], ptr, ptr, %struct.spinlock }
%struct.anon.122 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.netdev_desc = type { i32, i32, [1 x %struct.desc_frag] }
%struct.desc_frag = type { i32, i32 }
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
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author341 = internal constant [49 x i8] c"sundance.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [51 x i8] c"sundance.description=Sundance Alta Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [50 x i8] c"sundance.file=drivers/net/ethernet/dlink/sundance\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [21 x i8] c"sundance.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"sundance.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype345 = internal constant [28 x i8] c"sundance.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [22 x i8] c"sundance.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype346 = internal constant [35 x i8] c"sundance.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_media = internal constant [15 x i8] c"sundance.media\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_media = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_charp, ptr @media }, align 4
@__param_media = internal constant %struct.kernel_param { ptr @__param_str_media, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_media } }, section "__param", align 4
@__UNIQUE_ID_mediatype347 = internal constant [39 x i8] c"sundance.parmtype=media:array of charp\00", section ".modinfo", align 1
@__param_str_flowctrl = internal constant [18 x i8] c"sundance.flowctrl\00", align 1
@flowctrl = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_flowctrl = internal constant %struct.kernel_param { ptr @__param_str_flowctrl, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @flowctrl } }, section "__param", align 4
@__UNIQUE_ID_flowctrltype348 = internal constant [31 x i8] c"sundance.parmtype=flowctrl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug349 = internal constant [52 x i8] c"sundance.parm=debug:Sundance Alta debug level (0-5)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak350 = internal constant [83 x i8] c"sundance.parm=rx_copybreak:Sundance Alta copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_flowctrl351 = internal constant [56 x i8] c"sundance.parm=flowctrl:Sundance Alta flow control [0|1]\00", section ".modinfo", align 1
@__initcall__kmod_sundance__352_1987_sundance_driver_init6 = internal global ptr @sundance_driver_init, section ".initcall6.init", align 4
@sundance_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sundance_pci_tbl, ptr @sundance_probe1, ptr @sundance_remove1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sundance_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sundance_driver_exit = internal global ptr @sundance_driver_exit, section ".exitcall.exit", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@media = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sundance\00", [23 x i8] zeroinitializer }, align 32
@sundance_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4486, i32 4098, i32 4486, i32 4098, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4486, i32 4098, i32 4486, i32 4099, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4486, i32 4098, i32 4486, i32 4114, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4486, i32 4098, i32 4486, i32 4160, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4486, i32 4098, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5104, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 5104, i32 512, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sundance_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sundance_suspend, ptr @sundance_resume, ptr @sundance_suspend, ptr @sundance_resume, ptr @sundance_suspend, ptr @sundance_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sundance_probe1.card_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sundance_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@sundance_probe1.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&np->statlock\00", [18 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @sundance_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @change_mtu, ptr null, ptr @tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr @sundance_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @get_drvinfo, ptr null, ptr null, ptr @sundance_get_wol, ptr @sundance_set_wol, ptr @get_msglevel, ptr @set_msglevel, ptr @nway_reset, ptr @get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_strings, ptr null, ptr @get_ethtool_stats, ptr @check_if_running, ptr null, ptr null, ptr null, ptr @get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sundance_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s at %p, %pM, IRQ %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sundance_probe1\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/dlink/sundance.c\00", [58 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr = internal global ptr @sundance_probe1._entry, section ".printk_index", align 4
@pci_id_tbl = internal constant { [8 x %struct.pci_id_info], [32 x i8] } { [8 x %struct.pci_id_info] [%struct.pci_id_info { ptr @.str.126 }, %struct.pci_id_info { ptr @.str.127 }, %struct.pci_id_info { ptr @.str.128 }, %struct.pci_id_info { ptr @.str.129 }, %struct.pci_id_info { ptr @.str.130 }, %struct.pci_id_info { ptr @.str.131 }, %struct.pci_id_info { ptr @.str.132 }, %struct.pci_id_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sundance_probe1._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: MII PHY found at address %d, status 0x%4.4x advertising %4.4x.\0A\00", [58 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr.9 = internal global ptr @sundance_probe1._entry.7, section ".printk_index", align 4
@sundance_probe1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: No MII transceiver found, aborting.  ASIC status %x\0A\00", [37 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr.12 = internal global ptr @sundance_probe1._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"100mbps_fd\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"100mbps_hd\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10mbps_fd\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10mbps_hd\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sundance_probe1._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Override speed=%d, %s duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr.23 = internal global ptr @sundance_probe1._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@sundance_probe1._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ASIC Control is %x.\0A\00", [43 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr.28 = internal global ptr @sundance_probe1._entry.26, section ".printk_index", align 4
@sundance_probe1._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ASIC Control is now %x.\0A\00", [39 x i8] zeroinitializer }, align 32
@sundance_probe1._entry_ptr.31 = internal global ptr @sundance_probe1._entry.29, section ".printk_index", align 4
@rx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017  netdev_rx() status was %8.8x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_poll\00", [24 x i8] zeroinitializer }, align 32
@rx_poll._entry_ptr = internal global ptr @rx_poll._entry, section ".printk_index", align 4
@rx_poll._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017  netdev_rx() Rx error was %8.8x.\0A\00", [59 x i8] zeroinitializer }, align 32
@rx_poll._entry_ptr.36 = internal global ptr @rx_poll._entry.34, section ".printk_index", align 4
@rx_poll._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.6, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Oversized Ethernet frame, status %8.8x.\0A\00", [49 x i8] zeroinitializer }, align 32
@rx_poll._entry_ptr.39 = internal global ptr @rx_poll._entry.37, section ".printk_index", align 4
@rx_poll._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.6, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017  netdev_rx() normal Rx pkt length %d, bogus_cnt %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@rx_poll._entry_ptr.42 = internal global ptr @rx_poll._entry.40, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: netdev_open() irq %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_open\00", [20 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr = internal global ptr @netdev_open._entry, section ".printk_index", align 4
@netdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&np->mcastlock\00", [17 x i8] zeroinitializer }, align 32
@netdev_open._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.6, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s: Done netdev_open(), status: Rx %x Tx %x MAC Control %x, %4.4x %4.4x.\0A\00", [52 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.50 = internal global ptr @netdev_open._entry.48, section ".printk_index", align 4
@netdev_open.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&np->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Interrupt, status %4.4x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@intr_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.6, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Transmit status is %2.2x.\0A\00", [33 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.57 = internal global ptr @intr_handler._entry.55, section ".printk_index", align 4
@intr_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.6, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Transmit error status %4.4x.\0A\00", [62 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.60 = internal global ptr @intr_handler._entry.58, section ".printk_index", align 4
@intr_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.6, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: exiting interrupt, status=%#4.4x.\0A\00", [55 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.63 = internal global ptr @intr_handler._entry.61, section ".printk_index", align 4
@netdev_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: Link up\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_error\00", [19 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr = internal global ptr @netdev_error._entry, section ".printk_index", align 4
@netdev_error._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: Link changed: \00", [43 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.68 = internal global ptr @netdev_error._entry.66, section ".printk_index", align 4
@netdev_error._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.6, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"100Mbps, full duplex\0A\00", [42 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.71 = internal global ptr @netdev_error._entry.69, section ".printk_index", align 4
@netdev_error._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.6, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"100Mbps, half duplex\0A\00", [42 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.74 = internal global ptr @netdev_error._entry.72, section ".printk_index", align 4
@netdev_error._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.6, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"10Mbps, full duplex\0A\00", [43 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.77 = internal global ptr @netdev_error._entry.75, section ".printk_index", align 4
@netdev_error._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.6, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"10Mbps, half duplex\0A\00", [43 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.80 = internal global ptr @netdev_error._entry.78, section ".printk_index", align 4
@netdev_error._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.6, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.83 = internal global ptr @netdev_error._entry.81, section ".printk_index", align 4
@netdev_error._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.65, ptr @.str.6, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Link changed: %dMbps ,\00", [35 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.86 = internal global ptr @netdev_error._entry.84, section ".printk_index", align 4
@netdev_error._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.65, ptr @.str.6, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s duplex.\0A\00", [20 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.89 = internal global ptr @netdev_error._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@netdev_error._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.65, ptr @.str.6, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: Link down\0A\00", [47 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.94 = internal global ptr @netdev_error._entry.92, section ".printk_index", align 4
@netdev_error._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.65, ptr @.str.6, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Something Wicked happened! %4.4x.\0A\00", [55 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.97 = internal global ptr @netdev_error._entry.95, section ".printk_index", align 4
@check_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s: Setting %s-duplex based on MII #%d negotiated capability %4.4x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_duplex\00", [19 x i8] zeroinitializer }, align 32
@check_duplex._entry_ptr = internal global ptr @check_duplex._entry, section ".printk_index", align 4
@netdev_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.6, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: Media selection timer tick, intr status %4.4x, Tx %x Rx %x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_timer\00", [19 x i8] zeroinitializer }, align 32
@netdev_timer._entry_ptr = internal global ptr @netdev_timer._entry, section ".printk_index", align 4
@netdev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.6, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s: Shutting down ethercard, status was Tx %2.2x Rx %4.4x Int %2.2x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_close\00", [19 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr = internal global ptr @netdev_close._entry, section ".printk_index", align 4
@netdev_close._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.6, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Queue pointers were Tx %d / %d,  Rx %d / %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.106 = internal global ptr @netdev_close._entry.104, section ".printk_index", align 4
@start_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.6, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Transmit frame #%d queued in slot %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_tx\00", [23 x i8] zeroinitializer }, align 32
@start_tx._entry_ptr = internal global ptr @start_tx._entry, section ".printk_index", align 4
@tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.6, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: Transmit timed out, TxStatus %2.2x TxFrameId %2.2x, resetting...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr = internal global ptr @tx_timeout._entry, section ".printk_index", align 4
@tx_timeout._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.6, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%02x %08llx %08x %08x(%02x) %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.113 = internal global ptr @tx_timeout._entry.111, section ".printk_index", align 4
@tx_timeout._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.6, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017TxListPtr=%08x netif_queue_stopped=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.116 = internal global ptr @tx_timeout._entry.114, section ".printk_index", align 4
@tx_timeout._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.110, ptr @.str.6, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cur_tx=%d(%02x) dirty_tx=%d(%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.119 = internal global ptr @tx_timeout._entry.117, section ".printk_index", align 4
@tx_timeout._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.110, ptr @.str.6, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017cur_rx=%d dirty_rx=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.122 = internal global ptr @tx_timeout._entry.120, section ".printk_index", align 4
@tx_timeout._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.110, ptr @.str.6, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017cur_task=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.125 = internal global ptr @tx_timeout._entry.123, section ".printk_index", align 4
@sundance_stats = internal constant { [10 x %struct.anon.124], [64 x i8] } { [10 x %struct.anon.124] [%struct.anon.124 { [32 x i8] c"tx_multiple_collisions\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_single_collisions\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_late_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_deferred_excessive\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_aborted\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_bcasts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_bcasts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"tx_mcasts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.124 { [32 x i8] c"rx_mcasts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [64 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"D-Link DFE-550TX FAST Ethernet Adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"D-Link DFE-550FX 100Mbps Fiber-optics Adapter\00", [50 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"D-Link DFE-580TX 4 port Server Adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"D-Link DFE-530TXS FAST Ethernet Adapter\00", [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"D-Link DL10050-based FAST Ethernet Adapter\00", [53 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sundance Technology Alta\00", [39 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"IC Plus Corporation IP100A FAST Ethernet Adapter\00", [47 x i8] zeroinitializer }, align 32
@sundance_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.6, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s : reset not completed !!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sundance_reset\00", [17 x i8] zeroinitializer }, align 32
@sundance_reset._entry_ptr = internal global ptr @sundance_reset._entry, section ".printk_index", align 4
@sundance_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.6, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Can't resume interface!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sundance_resume\00", [16 x i8] zeroinitializer }, align 32
@sundance_resume._entry_ptr = internal global ptr @sundance_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 29, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 38, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"flowctrl\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 39, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"sundance_driver\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1979, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 54, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1987, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"sundance_pci_tbl\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 194, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"sundance_pm_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1977, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 497, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 542, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 543, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 476, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1786, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 582, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"pci_id_tbl\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 213, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 608, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 616, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 628, i32 33 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 629, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 632, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 633, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 636, i32 40 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 637, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 640, i32 40 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 641, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 674, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 682, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 685, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1340, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1345, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1357, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1365, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 326, i32 6 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 852, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 874, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 898, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 905, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1189, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1208, i32 6 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1213, i32 7 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1313, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1456, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1462, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1466, i32 6 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1469, i32 6 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1472, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1475, i32 6 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1477, i32 6 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1483, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1485, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1498, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1506, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 936, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 951, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1835, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1839, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1121, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 970, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 978, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 986, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 989, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 992, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 993, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant [15 x i8] c"sundance_stats\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1624, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 214, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 215, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 216, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 217, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 218, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 219, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 220, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 458, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private constant [41 x i8] c"../drivers/net/ethernet/dlink/sundance.c\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 1966, i32 3 }
@llvm.compiler.used = appending global [193 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_debug349, ptr @__UNIQUE_ID_debugtype345, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_flowctrl351, ptr @__UNIQUE_ID_flowctrltype348, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_mediatype347, ptr @__UNIQUE_ID_rx_copybreak350, ptr @__UNIQUE_ID_rx_copybreaktype346, ptr @__exitcall_sundance_driver_exit, ptr @__initcall__kmod_sundance__352_1987_sundance_driver_init6, ptr @__param_debug, ptr @__param_flowctrl, ptr @__param_media, ptr @__param_rx_copybreak, ptr @check_duplex._entry, ptr @check_duplex._entry_ptr, ptr @intr_handler._entry, ptr @intr_handler._entry.55, ptr @intr_handler._entry.58, ptr @intr_handler._entry.61, ptr @intr_handler._entry_ptr, ptr @intr_handler._entry_ptr.57, ptr @intr_handler._entry_ptr.60, ptr @intr_handler._entry_ptr.63, ptr @netdev_close._entry, ptr @netdev_close._entry.104, ptr @netdev_close._entry_ptr, ptr @netdev_close._entry_ptr.106, ptr @netdev_error._entry, ptr @netdev_error._entry.66, ptr @netdev_error._entry.69, ptr @netdev_error._entry.72, ptr @netdev_error._entry.75, ptr @netdev_error._entry.78, ptr @netdev_error._entry.81, ptr @netdev_error._entry.84, ptr @netdev_error._entry.87, ptr @netdev_error._entry.92, ptr @netdev_error._entry.95, ptr @netdev_error._entry_ptr, ptr @netdev_error._entry_ptr.68, ptr @netdev_error._entry_ptr.71, ptr @netdev_error._entry_ptr.74, ptr @netdev_error._entry_ptr.77, ptr @netdev_error._entry_ptr.80, ptr @netdev_error._entry_ptr.83, ptr @netdev_error._entry_ptr.86, ptr @netdev_error._entry_ptr.89, ptr @netdev_error._entry_ptr.94, ptr @netdev_error._entry_ptr.97, ptr @netdev_open._entry, ptr @netdev_open._entry.48, ptr @netdev_open._entry_ptr, ptr @netdev_open._entry_ptr.50, ptr @netdev_timer._entry, ptr @netdev_timer._entry_ptr, ptr @rx_poll._entry, ptr @rx_poll._entry.34, ptr @rx_poll._entry.37, ptr @rx_poll._entry.40, ptr @rx_poll._entry_ptr, ptr @rx_poll._entry_ptr.36, ptr @rx_poll._entry_ptr.39, ptr @rx_poll._entry_ptr.42, ptr @start_tx._entry, ptr @start_tx._entry_ptr, ptr @sundance_driver_exit, ptr @sundance_probe1._entry, ptr @sundance_probe1._entry.10, ptr @sundance_probe1._entry.21, ptr @sundance_probe1._entry.26, ptr @sundance_probe1._entry.29, ptr @sundance_probe1._entry.7, ptr @sundance_probe1._entry_ptr, ptr @sundance_probe1._entry_ptr.12, ptr @sundance_probe1._entry_ptr.23, ptr @sundance_probe1._entry_ptr.28, ptr @sundance_probe1._entry_ptr.31, ptr @sundance_probe1._entry_ptr.9, ptr @sundance_reset._entry, ptr @sundance_reset._entry_ptr, ptr @sundance_resume._entry, ptr @sundance_resume._entry_ptr, ptr @tx_timeout._entry, ptr @tx_timeout._entry.111, ptr @tx_timeout._entry.114, ptr @tx_timeout._entry.117, ptr @tx_timeout._entry.120, ptr @tx_timeout._entry.123, ptr @tx_timeout._entry_ptr, ptr @tx_timeout._entry_ptr.113, ptr @tx_timeout._entry_ptr.116, ptr @tx_timeout._entry_ptr.119, ptr @tx_timeout._entry_ptr.122, ptr @tx_timeout._entry_ptr.125, ptr @debug, ptr @rx_copybreak, ptr @flowctrl, ptr @sundance_driver, ptr @media, ptr @.str, ptr @sundance_pci_tbl, ptr @sundance_pm_ops, ptr @sundance_probe1.card_idx, ptr @sundance_probe1.__key, ptr @.str.1, ptr @sundance_probe1.__key.2, ptr @.str.3, ptr @netdev_ops, ptr @ethtool_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pci_id_tbl, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @netdev_open.__key, ptr @.str.47, ptr @.str.49, ptr @netdev_open.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @sundance_stats, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1.card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_probe1._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_poll._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_poll._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_poll._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_stats to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sundance_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sundance_driver, ptr noundef null, ptr noundef nonnull @.str) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sundance_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @sundance_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_probe1(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ring_dma = alloca i32, align 4
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #16
  %2 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ring_dma, align 4, !annotation !290
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #16
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %addr, align 2, !annotation !290
  %4 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !290
  %6 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !290
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #16
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1, align 4
  %call2 = tail call ptr @alloc_etherdev_mqs(i32 noundef 824, i32 noundef 1, i32 noundef 1) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev6, ptr %parent, align 8
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.err_out_netdev_crit_edge

if.end5.err_out_netdev_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_netdev

if.end11:                                         ; preds = %if.end5
  %call12 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 128) #16
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.err_out_res_crit_edge, label %for.cond.preheader

if.end11.err_out_res_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_res

for.cond.preheader:                               ; preds = %if.end11
  %add.ptr.i = getelementptr i8, ptr %call12, i32 54
  %add.ptr6.i = getelementptr i8, ptr %call12, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 4098) #16, !srcloc !292
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %for.cond.preheader
  %boguscnt.0.i = phi i32 [ 10000, %for.cond.preheader ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %.mask.i = and i16 %12, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool.not.i = icmp eq i16 %.mask.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #16, !srcloc !295
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  br label %eeprom_read.exit

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %boguscnt.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.eeprom_read.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

do.cond.i.eeprom_read.exit_crit_edge:             ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %eeprom_read.exit

eeprom_read.exit:                                 ; preds = %do.cond.i.eeprom_read.exit_crit_edge, %if.then.i
  %retval.0.i = phi i16 [ %14, %if.then.i ], [ 0, %do.cond.i.eeprom_read.exit_crit_edge ]
  %15 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i)
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %addr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 4354) #16, !srcloc !292
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %do.cond.i.1.do.body.i.1_crit_edge, %eeprom_read.exit
  %boguscnt.0.i.1 = phi i32 [ 10000, %eeprom_read.exit ], [ %dec.i.1, %do.cond.i.1.do.body.i.1_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %.mask.i.1 = and i16 %18, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.1)
  %tobool.not.i.1 = icmp eq i16 %.mask.i.1, 0
  br i1 %tobool.not.i.1, label %if.then.i.1, label %do.cond.i.1

do.cond.i.1:                                      ; preds = %do.body.i.1
  %dec.i.1 = add nsw i32 %boguscnt.0.i.1, -1
  %cmp.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %cmp.not.i.1, label %do.cond.i.1.eeprom_read.exit.1_crit_edge, label %do.cond.i.1.do.body.i.1_crit_edge

do.cond.i.1.do.body.i.1_crit_edge:                ; preds = %do.cond.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.1

do.cond.i.1.eeprom_read.exit.1_crit_edge:         ; preds = %do.cond.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %eeprom_read.exit.1

if.then.i.1:                                      ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #18
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #16, !srcloc !295
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  br label %eeprom_read.exit.1

eeprom_read.exit.1:                               ; preds = %if.then.i.1, %do.cond.i.1.eeprom_read.exit.1_crit_edge
  %retval.0.i.1 = phi i16 [ %20, %if.then.i.1 ], [ 0, %do.cond.i.1.eeprom_read.exit.1_crit_edge ]
  %21 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.1)
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %4, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 4610) #16, !srcloc !292
  br label %do.body.i.2

do.body.i.2:                                      ; preds = %do.cond.i.2.do.body.i.2_crit_edge, %eeprom_read.exit.1
  %boguscnt.0.i.2 = phi i32 [ 10000, %eeprom_read.exit.1 ], [ %dec.i.2, %do.cond.i.2.do.body.i.2_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %.mask.i.2 = and i16 %24, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.2)
  %tobool.not.i.2 = icmp eq i16 %.mask.i.2, 0
  br i1 %tobool.not.i.2, label %if.then.i.2, label %do.cond.i.2

do.cond.i.2:                                      ; preds = %do.body.i.2
  %dec.i.2 = add nsw i32 %boguscnt.0.i.2, -1
  %cmp.not.i.2 = icmp eq i32 %dec.i.2, 0
  br i1 %cmp.not.i.2, label %do.cond.i.2.eeprom_read.exit.2_crit_edge, label %do.cond.i.2.do.body.i.2_crit_edge

do.cond.i.2.do.body.i.2_crit_edge:                ; preds = %do.cond.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.2

do.cond.i.2.eeprom_read.exit.2_crit_edge:         ; preds = %do.cond.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %eeprom_read.exit.2

if.then.i.2:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #18
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #16, !srcloc !295
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  br label %eeprom_read.exit.2

eeprom_read.exit.2:                               ; preds = %if.then.i.2, %do.cond.i.2.eeprom_read.exit.2_crit_edge
  %retval.0.i.2 = phi i16 [ %26, %if.then.i.2 ], [ 0, %do.cond.i.2.eeprom_read.exit.2_crit_edge ]
  %27 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i.2)
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %6, align 2
  call void @dev_addr_mod(ptr noundef %call2, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #16
  %add.ptr.i459 = getelementptr i8, ptr %call2, i32 2304
  %ndev = getelementptr i8, ptr %call2, i32 2752
  %29 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2, ptr %ndev, align 8
  %base = getelementptr i8, ptr %call2, i32 3080
  %30 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12, ptr %base, align 8
  %pci_dev = getelementptr i8, ptr %call2, i32 3076
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pdev, ptr %pci_dev, align 4
  %chip_id = getelementptr i8, ptr %call2, i32 2888
  %32 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %1, ptr %chip_id, align 8
  %33 = load i32, ptr @debug, align 4
  %notmask = shl nsw i32 -1, %33
  %sub = xor i32 %notmask, -1
  %msg_enable = getelementptr i8, ptr %call2, i32 2884
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %msg_enable, align 4
  %lock = getelementptr i8, ptr %call2, i32 2840
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sundance_probe1.__key, i16 noundef signext 3) #16
  %statlock = getelementptr i8, ptr %call2, i32 3084
  call void @__raw_spin_lock_init(ptr noundef %statlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @sundance_probe1.__key.2, i16 noundef signext 3) #16
  %rx_tasklet = getelementptr i8, ptr %call2, i32 2928
  call void @tasklet_setup(ptr noundef %rx_tasklet, ptr noundef nonnull @rx_poll) #16
  %tx_tasklet = getelementptr i8, ptr %call2, i32 2952
  call void @tasklet_setup(ptr noundef %tx_tasklet, ptr noundef nonnull @tx_poll) #16
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #16
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %eeprom_read.exit.2.err_out_cleardev_crit_edge, label %if.end27

eeprom_read.exit.2.err_out_cleardev_crit_edge:    ; preds = %eeprom_read.exit.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_cleardev

if.end27:                                         ; preds = %eeprom_read.exit.2
  %tx_ring = getelementptr i8, ptr %call2, i32 2308
  %35 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %tx_ring, align 4
  %36 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call2, i32 2696
  %38 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tx_ring_dma, align 8
  %call.i460 = call ptr @dma_alloc_attrs(ptr noundef %dev6, i32 noundef 1024, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #16
  %tobool30.not = icmp eq ptr %call.i460, null
  br i1 %tobool30.not, label %if.end27.err_out_unmap_tx_crit_edge, label %if.end32

if.end27.err_out_unmap_tx_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_unmap_tx

if.end32:                                         ; preds = %if.end27
  %39 = ptrtoint ptr %add.ptr.i459 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i460, ptr %add.ptr.i459, align 8
  %40 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call2, i32 2700
  %42 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rx_ring_dma, align 4
  %mii_if = getelementptr i8, ptr %call2, i32 3036
  %dev33 = getelementptr i8, ptr %call2, i32 3056
  %43 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call2, ptr %dev33, align 4
  %mdio_read = getelementptr i8, ptr %call2, i32 3060
  %44 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call2, i32 3064
  %45 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call2, i32 3044
  %46 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call2, i32 3048
  %47 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 31, ptr %reg_num_mask, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 44
  %49 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 115
  %50 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 400, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 30
  %51 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 31
  %52 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8191, ptr %max_mtu, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call38 = call i32 @register_netdev(ptr noundef %call2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end44, label %if.end32.err_out_unmap_rx_crit_edge

if.end32.err_out_unmap_rx_crit_edge:              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_unmap_rx

do.end44:                                         ; preds = %if.end32
  %arrayidx46 = getelementptr [8 x %struct.pci_id_info], ptr @pci_id_tbl, i32 0, i32 %1
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx46, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 86
  %56 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_addr, align 64
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call2, ptr noundef %55, ptr noundef nonnull %call12, ptr noundef %57, i32 noundef %9) #19
  %phys = getelementptr i8, ptr %call2, i32 3072
  %58 = ptrtoint ptr %phys to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %phys, align 8
  %mii_preamble_required = getelementptr i8, ptr %call2, i32 3068
  %59 = ptrtoint ptr %mii_preamble_required to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mii_preamble_required, align 4
  %inc50 = add i32 %60, 1
  store i32 %inc50, ptr %mii_preamble_required, align 4
  %61 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chip_id, align 8
  %63 = and i32 %62, 134217727
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %63)
  %cmp53 = icmp eq i32 %63, 6
  %not.cmp53 = xor i1 %cmp53, true
  %. = zext i1 %not.cmp53 to i32
  %.458 = select i1 %cmp53, i32 31, i32 32
  %advertising = getelementptr i8, ptr %call2, i32 3040
  br label %for.body62

for.body62:                                       ; preds = %if.end91.for.body62_crit_edge, %do.end44
  %phy_idx.0463 = phi i32 [ 0, %do.end44 ], [ %phy_idx.1, %if.end91.for.body62_crit_edge ]
  %phy.1462 = phi i32 [ %., %do.end44 ], [ %inc93, %if.end91.for.body62_crit_edge ]
  %and = and i32 %phy.1462, 31
  %call63 = call i32 @mdio_read(ptr noundef %call2, i32 noundef %and, i32 noundef 1)
  %64 = zext i32 %call63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call63, label %if.then68 [
    i32 65535, label %for.body62.if.end91_crit_edge
    i32 0, label %for.body62.if.end91_crit_edge465
  ]

for.body62.if.end91_crit_edge465:                 ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

for.body62.if.end91_crit_edge:                    ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then68:                                        ; preds = %for.body62
  %conv69 = trunc i32 %and to i8
  %inc71 = add nsw i32 %phy_idx.0463, 1
  %arrayidx72 = getelementptr %struct.netdev_private, ptr %add.ptr.i459, i32 0, i32 29, i32 %phy_idx.0463
  %65 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv69, ptr %arrayidx72, align 1
  %call73 = call i32 @mdio_read(ptr noundef %call2, i32 noundef %and, i32 noundef 4)
  %66 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call73, ptr %advertising, align 4
  %and75 = and i32 %call63, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %if.then68.do.end84_crit_edge

if.then68.do.end84_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end84

if.then78:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %mii_preamble_required to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mii_preamble_required, align 4
  %inc80 = add i32 %68, 1
  store i32 %inc80, ptr %mii_preamble_required, align 4
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %if.then68.do.end84_crit_edge
  %69 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %advertising, align 4
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %call2, i32 noundef %and, i32 noundef %call63, i32 noundef %70) #19
  br label %if.end91

if.end91:                                         ; preds = %do.end84, %for.body62.if.end91_crit_edge, %for.body62.if.end91_crit_edge465
  %phy_idx.1 = phi i32 [ %inc71, %do.end84 ], [ %phy_idx.0463, %for.body62.if.end91_crit_edge ], [ %phy_idx.0463, %for.body62.if.end91_crit_edge465 ]
  %inc93 = add nuw nsw i32 %phy.1462, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %phy.1462, i32 %.458)
  %cmp58.not = icmp ult i32 %phy.1462, %.458
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp60 = icmp slt i32 %phy_idx.1, 4
  %or.cond = select i1 %cmp58.not, i1 %cmp60, i1 false
  br i1 %or.cond, label %if.end91.for.body62_crit_edge, label %for.end94

if.end91.for.body62_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body62

for.end94:                                        ; preds = %if.end91
  %71 = ptrtoint ptr %mii_preamble_required to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mii_preamble_required, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %mii_preamble_required, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp96 = icmp eq i32 %phy_idx.1, 0
  br i1 %cmp96, label %do.end101, label %if.end107

do.end101:                                        ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %call12, i32 48
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  %74 = call i32 @llvm.bswap.i32(i32 %73) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call2, i32 noundef %74) #19
  call void @unregister_netdev(ptr noundef %call2) #16
  br label %err_out_unmap_rx

if.end107:                                        ; preds = %for.end94
  %75 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %phys, align 8
  %conv110 = zext i8 %76 to i32
  %77 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv110, ptr %mii_if, align 4
  %an_enable = getelementptr i8, ptr %call2, i32 2916
  %78 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %an_enable, align 4
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %an_enable, align 4
  %79 = load i32, ptr @sundance_probe1.card_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %cmp112 = icmp slt i32 %79, 8
  br i1 %cmp112, label %if.then114, label %if.end107.if.end204_crit_edge

if.end107.if.end204_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end204

if.then114:                                       ; preds = %if.end107
  %arrayidx115 = getelementptr [8 x ptr], ptr @media, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx115, align 4
  %cmp116.not = icmp eq ptr %81, null
  br i1 %cmp116.not, label %if.then114.if.end196_crit_edge, label %if.then118

if.then114.if.end196_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end196

if.then118:                                       ; preds = %if.then114
  %82 = ptrtoint ptr %an_enable to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %bf.clear, ptr %an_enable, align 4
  %83 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx115, align 4
  %call124 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(11) @.str.13) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then118.if.then131_crit_edge, label %lor.lhs.false

if.then118.if.then131_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131

lor.lhs.false:                                    ; preds = %if.then118
  %call128 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(2) @.str.14) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %lor.lhs.false.if.then131_crit_edge, label %if.else136

lor.lhs.false.if.then131_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false.if.then131_crit_edge, %if.then118.if.then131_crit_edge
  %speed = getelementptr i8, ptr %call2, i32 2920
  %85 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 100, ptr %speed, align 8
  %full_duplex = getelementptr i8, ptr %call2, i32 3052
  %86 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load133 = load i8, ptr %full_duplex, align 4
  %bf.set135 = or i8 %bf.load133, -128
  store i8 %bf.set135, ptr %full_duplex, align 4
  br label %if.end196

if.else136:                                       ; preds = %lor.lhs.false
  %call138 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(11) @.str.15) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.else136.if.then146_crit_edge, label %lor.lhs.false141

if.else136.if.then146_crit_edge:                  ; preds = %if.else136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then146

lor.lhs.false141:                                 ; preds = %if.else136
  %call143 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(2) @.str.16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %lor.lhs.false141.if.then146_crit_edge, label %if.else153

lor.lhs.false141.if.then146_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then146

if.then146:                                       ; preds = %lor.lhs.false141.if.then146_crit_edge, %if.else136.if.then146_crit_edge
  %speed147 = getelementptr i8, ptr %call2, i32 2920
  %87 = ptrtoint ptr %speed147 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 100, ptr %speed147, align 8
  %full_duplex149 = getelementptr i8, ptr %call2, i32 3052
  %88 = ptrtoint ptr %full_duplex149 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load150 = load i8, ptr %full_duplex149, align 4
  %bf.clear151 = and i8 %bf.load150, 127
  store i8 %bf.clear151, ptr %full_duplex149, align 4
  br label %if.end196

if.else153:                                       ; preds = %lor.lhs.false141
  %call155 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(10) @.str.17) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.else153.if.then163_crit_edge, label %lor.lhs.false158

if.else153.if.then163_crit_edge:                  ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then163

lor.lhs.false158:                                 ; preds = %if.else153
  %call160 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(2) @.str.18) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %lor.lhs.false158.if.then163_crit_edge, label %if.else170

lor.lhs.false158.if.then163_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then163

if.then163:                                       ; preds = %lor.lhs.false158.if.then163_crit_edge, %if.else153.if.then163_crit_edge
  %speed164 = getelementptr i8, ptr %call2, i32 2920
  %89 = ptrtoint ptr %speed164 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 10, ptr %speed164, align 8
  %full_duplex166 = getelementptr i8, ptr %call2, i32 3052
  %90 = ptrtoint ptr %full_duplex166 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load167 = load i8, ptr %full_duplex166, align 4
  %bf.set169 = or i8 %bf.load167, -128
  store i8 %bf.set169, ptr %full_duplex166, align 4
  br label %if.end196

if.else170:                                       ; preds = %lor.lhs.false158
  %call172 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(10) @.str.19) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173 = icmp eq i32 %call172, 0
  br i1 %cmp173, label %if.else170.if.then180_crit_edge, label %lor.lhs.false175

if.else170.if.then180_crit_edge:                  ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then180

lor.lhs.false175:                                 ; preds = %if.else170
  %call177 = call i32 @strcmp(ptr noundef %84, ptr noundef nonnull dereferenceable(2) @.str.20) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %lor.lhs.false175.if.then180_crit_edge, label %if.else187

lor.lhs.false175.if.then180_crit_edge:            ; preds = %lor.lhs.false175
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then180

if.then180:                                       ; preds = %lor.lhs.false175.if.then180_crit_edge, %if.else170.if.then180_crit_edge
  %speed181 = getelementptr i8, ptr %call2, i32 2920
  %91 = ptrtoint ptr %speed181 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10, ptr %speed181, align 8
  %full_duplex183 = getelementptr i8, ptr %call2, i32 3052
  %92 = ptrtoint ptr %full_duplex183 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load184 = load i8, ptr %full_duplex183, align 4
  %bf.clear185 = and i8 %bf.load184, 127
  store i8 %bf.clear185, ptr %full_duplex183, align 4
  br label %if.end196

if.else187:                                       ; preds = %lor.lhs.false175
  call void @__sanitizer_cov_trace_pc() #18
  %93 = ptrtoint ptr %an_enable to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %bf.set, ptr %an_enable, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.else187, %if.then180, %if.then163, %if.then146, %if.then131, %if.then114.if.end196_crit_edge
  %94 = load i32, ptr @flowctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp197 = icmp eq i32 %94, 1
  br i1 %cmp197, label %if.then199, label %if.end196.if.end204_crit_edge

if.end196.if.end204_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end204

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load200 = load i8, ptr %an_enable, align 4
  %bf.set202 = or i8 %bf.load200, -128
  store i8 %bf.set202, ptr %an_enable, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then199, %if.end196.if.end204_crit_edge, %if.end107.if.end204_crit_edge
  %add.ptr205 = getelementptr i8, ptr %call12, i32 48
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #16, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %tobool208.not = icmp sgt i32 %96, -1
  br i1 %tobool208.not, label %if.end204.if.end226_crit_edge, label %if.then209

if.end204.if.end226_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end226

if.then209:                                       ; preds = %if.end204
  %97 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %97)
  %bf.load211 = load i8, ptr %an_enable, align 4
  %98 = and i8 %bf.load211, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool213.not = icmp eq i8 %98, 0
  br i1 %tobool213.not, label %if.then209.if.end226_crit_edge, label %if.then214

if.then209.if.end226_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end226

if.then214:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #18
  %speed215 = getelementptr i8, ptr %call2, i32 2920
  %99 = ptrtoint ptr %speed215 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 100, ptr %speed215, align 8
  %full_duplex217 = getelementptr i8, ptr %call2, i32 3052
  %100 = ptrtoint ptr %full_duplex217 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load218 = load i8, ptr %full_duplex217, align 4
  %bf.set220 = or i8 %bf.load218, -128
  store i8 %bf.set220, ptr %full_duplex217, align 4
  %bf.clear223 = and i8 %bf.load211, -5
  %101 = ptrtoint ptr %an_enable to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %bf.clear223, ptr %an_enable, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then214, %if.then209.if.end226_crit_edge, %if.end204.if.end226_crit_edge
  %102 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %phys, align 8
  %conv229 = zext i8 %103 to i32
  call void @mdio_write(ptr noundef %call2, i32 noundef %conv229, i32 noundef 0, i32 noundef 32768)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end226
  %__ms.0464 = phi i32 [ 300, %if.end226 ], [ %dec230, %while.body.while.body_crit_edge ]
  %dec230 = add nsw i32 %__ms.0464, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #16
  %tobool231.not = icmp eq i32 %dec230, 0
  br i1 %tobool231.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.end:                                        ; preds = %while.body
  %105 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load233 = load i8, ptr %an_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load233)
  %tobool236.not = icmp sgt i8 %bf.load233, -1
  br i1 %tobool236.not, label %while.end.if.end243_crit_edge, label %if.then237

while.end.if.end243_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end243

if.then237:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %phys, align 8
  %conv240 = zext i8 %107 to i32
  %108 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %advertising, align 4
  %or = or i32 %109, 1024
  call void @mdio_write(ptr noundef %call2, i32 noundef %conv240, i32 noundef 4, i32 noundef %or)
  br label %if.end243

if.end243:                                        ; preds = %if.then237, %while.end.if.end243_crit_edge
  %110 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %phys, align 8
  %conv246 = zext i8 %111 to i32
  call void @mdio_write(ptr noundef %call2, i32 noundef %conv246, i32 noundef 0, i32 noundef 4608)
  %112 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load248 = load i8, ptr %an_enable, align 4
  %113 = and i8 %bf.load248, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool252.not = icmp eq i8 %113, 0
  br i1 %tobool252.not, label %if.then253, label %if.end243.if.end287_crit_edge

if.end243.if.end287_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end287

if.then253:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #18
  %speed254 = getelementptr i8, ptr %call2, i32 2920
  %114 = ptrtoint ptr %speed254 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %speed254, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %115)
  %cmp255 = icmp eq i32 %115, 100
  %full_duplex261 = getelementptr i8, ptr %call2, i32 3052
  %116 = ptrtoint ptr %full_duplex261 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load262 = load i8, ptr %full_duplex261, align 4
  %117 = and i8 %bf.load262, -128
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 1
  %conv267 = select i1 %cmp255, i32 8192, i32 0
  %or268 = or i32 %119, %conv267
  %120 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %phys, align 8
  %conv272 = zext i8 %121 to i32
  call void @mdio_write(ptr noundef %call2, i32 noundef %conv272, i32 noundef 0, i32 noundef %or268)
  %122 = ptrtoint ptr %speed254 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %speed254, align 8
  %124 = ptrtoint ptr %full_duplex261 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load281 = load i8, ptr %full_duplex261, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load281)
  %tobool284.not = icmp sgt i8 %bf.load281, -1
  %cond285 = select i1 %tobool284.not, ptr @.str.25, ptr @.str.24
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %123, ptr noundef nonnull %cond285) #19
  br label %if.end287

if.end287:                                        ; preds = %if.then253, %if.end243.if.end287_crit_edge
  %125 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %msg_enable, align 4
  %and289 = and i32 %126, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.end287.if.end299_crit_edge, label %do.end294

if.end287.if.end299_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end299

do.end294:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #18
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #16, !srcloc !293
  %128 = call i32 @llvm.bswap.i32(i32 %127) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %call298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %128) #19
  br label %if.end299

if.end299:                                        ; preds = %do.end294, %if.end287.if.end299_crit_edge
  call fastcc void @sundance_reset(ptr noundef %call2, i32 noundef 16711680)
  %129 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %msg_enable, align 4
  %and301 = and i32 %130, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %if.end299.if.end311_crit_edge, label %do.end306

if.end299.if.end311_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end311

do.end306:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #18
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #16, !srcloc !293
  %132 = call i32 @llvm.bswap.i32(i32 %131) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %call310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %132) #19
  br label %if.end311

if.end311:                                        ; preds = %do.end306, %if.end299.if.end311_crit_edge
  %133 = load i32, ptr @sundance_probe1.card_idx, align 4
  %inc312 = add i32 %133, 1
  store i32 %inc312, ptr @sundance_probe1.card_idx, align 4
  br label %cleanup

err_out_unmap_rx:                                 ; preds = %do.end101, %if.end32.err_out_unmap_rx_crit_edge
  %134 = ptrtoint ptr %add.ptr.i459 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i459, align 8
  %136 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 1024, ptr noundef %135, i32 noundef %137, i32 noundef 0) #16
  br label %err_out_unmap_tx

err_out_unmap_tx:                                 ; preds = %err_out_unmap_rx, %if.end27.err_out_unmap_tx_crit_edge
  %138 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tx_ring, align 4
  %140 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tx_ring_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef %139, i32 noundef %141, i32 noundef 0) #16
  br label %err_out_cleardev

err_out_cleardev:                                 ; preds = %err_out_unmap_tx, %eeprom_read.exit.2.err_out_cleardev_crit_edge
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call12) #16
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_cleardev, %if.end11.err_out_res_crit_edge
  call void @pci_release_regions(ptr noundef %pdev) #16
  br label %err_out_netdev

err_out_netdev:                                   ; preds = %err_out_res, %if.end5.err_out_netdev_crit_edge
  call void @free_netdev(ptr noundef %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %err_out_netdev, %if.end311, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_out_netdev ], [ 0, %if.end311 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sundance_remove1(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #16
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2700
  %4 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 1024, ptr noundef %3, i32 noundef %5, i32 noundef 0) #16
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 2696
  %8 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_ring_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 512, ptr noundef %7, i32 noundef %9, i32 noundef 0) #16
  %base = getelementptr i8, ptr %1, i32 3080
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %11) #16
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  tail call void @free_netdev(ptr noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_poll(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -624
  %ndev = getelementptr i8, ptr %t, i32 -176
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %cur_rx = getelementptr i8, ptr %t, i32 -36
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_rx, align 4
  %rem = and i32 %3, 63
  %budget = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %budget, align 8
  %base = getelementptr i8, ptr %t, i32 152
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %dec204 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec204)
  %cmp205 = icmp slt i32 %dec204, 0
  br i1 %cmp205, label %not_done.thread, label %if.end.lr.ph

not_done.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem, ptr %cur_rx, align 4
  tail call fastcc void @refill_rx(ptr noundef %1)
  br label %76

if.end.lr.ph:                                     ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %status203 = getelementptr %struct.netdev_desc, ptr %10, i32 %rem, i32 1
  %11 = ptrtoint ptr %status203 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status203, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %msg_enable = getelementptr i8, ptr %t, i32 -44
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %pci_dev = getelementptr i8, ptr %t, i32 148
  %rx_buf_sz = getelementptr i8, ptr %t, i32 -28
  %rx_skbuff = getelementptr i8, ptr %t, i32 -616
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %dec211 = phi i32 [ %dec204, %if.end.lr.ph ], [ %dec, %cleanup.if.end_crit_edge ]
  %14 = phi i32 [ %13, %if.end.lr.ph ], [ %71, %cleanup.if.end_crit_edge ]
  %15 = phi ptr [ %10, %if.end.lr.ph ], [ %68, %cleanup.if.end_crit_edge ]
  %entry1.0207 = phi i32 [ %rem, %if.end.lr.ph ], [ %rem97, %cleanup.if.end_crit_edge ]
  %received.0206 = phi i32 [ 0, %if.end.lr.ph ], [ %inc98, %cleanup.if.end_crit_edge ]
  %and = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %14, 8191
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end9_crit_edge, label %do.end

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %14) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end3.if.end9_crit_edge
  %and10 = and i32 %14, 2048000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %and14 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.end22_crit_edge, label %do.end19

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %14) #19
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.then12.if.end22_crit_edge
  %20 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and23 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_length_errors, align 8
  %inc27 = add i32 %23, 1
  store i32 %inc27, ptr %rx_length_errors, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge
  %and29 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_errors, align 8
  %inc33 = add i32 %25, 1
  store i32 %inc33, ptr %rx_fifo_errors, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %14, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors, align 4
  %inc39 = add i32 %27, 1
  store i32 %inc39, ptr %rx_frame_errors, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_crc_errors, align 8
  %inc45 = add i32 %29, 1
  store i32 %inc45, ptr %rx_crc_errors, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  br i1 %tobool24.not, label %if.end46.cleanup_crit_edge, label %do.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %1, i32 noundef %14) #19
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %and57 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.else.if.end65_crit_edge, label %do.end62

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %and4, i32 noundef %dec211) #19
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.else.if.end65_crit_edge
  %30 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and4, i32 %30)
  %cmp66 = icmp slt i32 %and4, %30
  br i1 %cmp66, label %land.lhs.true, label %if.end65.if.else80_crit_edge

if.end65.if.else80_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else80

land.lhs.true:                                    ; preds = %if.end65
  %add = add nuw nsw i32 %and4, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add, i32 noundef 2592) #16
  %cmp68.not = icmp eq ptr %call.i, null
  br i1 %cmp68.not, label %land.lhs.true.if.else80_crit_edge, label %if.then69

land.lhs.true.if.else80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else80

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %35 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev, align 4
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %frag = getelementptr %struct.netdev_desc, ptr %15, i32 %entry1.0207, i32 2
  %37 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frag, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev70, i32 noundef %39, i32 noundef %41, i32 noundef 2) #16
  %arrayidx72 = getelementptr [64 x ptr], ptr %rx_skbuff, i32 0, i32 %entry1.0207
  %42 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx72, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %48 = call ptr @memcpy(ptr %47, ptr %45, i32 %and4)
  %49 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci_dev, align 4
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %frag, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev74, i32 noundef %53, i32 noundef %55, i32 noundef 2) #16
  %call79 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %and4) #16
  br label %if.end92

if.else80:                                        ; preds = %land.lhs.true.if.else80_crit_edge, %if.end65.if.else80_crit_edge
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %frag83 = getelementptr %struct.netdev_desc, ptr %15, i32 %entry1.0207, i32 2
  %58 = ptrtoint ptr %frag83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frag83, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev82, i32 noundef %60, i32 noundef %62, i32 noundef 2, i32 noundef 0) #16
  %arrayidx88 = getelementptr [64 x ptr], ptr %rx_skbuff, i32 0, i32 %entry1.0207
  %63 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx88, align 4
  %call89 = tail call ptr @skb_put(ptr noundef %64, i32 noundef %and4) #16
  %65 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx88, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else80, %if.then69
  %skb.0 = phi ptr [ %call.i, %if.then69 ], [ %64, %if.else80 ]
  %call93 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0, ptr noundef %1) #16
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call93, ptr %protocol, align 8
  %call94 = tail call i32 @netif_rx(ptr noundef %skb.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end52, %if.end46.cleanup_crit_edge
  %add96 = add nsw i32 %entry1.0207, 1
  %rem97 = srem i32 %add96, 64
  %inc98 = add nuw i32 %received.0206, 1
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %status = getelementptr %struct.netdev_desc, ptr %68, i32 %rem97, i32 1
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %dec = add i32 %dec211, -1
  %exitcond = icmp eq i32 %inc98, %5
  br i1 %exitcond, label %not_done, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %entry1.0207, ptr %cur_rx, align 4
  tail call fastcc void @refill_rx(ptr noundef %1)
  %73 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %budget, align 8
  %sub = sub i32 %74, %received.0206
  store i32 %sub, ptr %budget, align 8
  %add.ptr103 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr103, i16 -14843) #16, !srcloc !292
  br label %cleanup115

not_done:                                         ; preds = %cleanup
  %75 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rem97, ptr %cur_rx, align 4
  tail call fastcc void @refill_rx(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool105.not = icmp eq i32 %5, 0
  br i1 %tobool105.not, label %not_done._crit_edge, label %not_done._crit_edge226

not_done._crit_edge226:                           ; preds = %not_done
  call void @__sanitizer_cov_trace_pc() #18
  br label %77

not_done._crit_edge:                              ; preds = %not_done
  call void @__sanitizer_cov_trace_pc() #18
  br label %76

76:                                               ; preds = %not_done._crit_edge, %not_done.thread
  br label %77

77:                                               ; preds = %76, %not_done._crit_edge226
  %78 = phi i32 [ 1, %76 ], [ %5, %not_done._crit_edge226 ]
  %79 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %budget, align 8
  %sub109 = sub i32 %80, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub109)
  %cmp111 = icmp slt i32 %sub109, 1
  %spec.select = select i1 %cmp111, i32 32, i32 %sub109
  %81 = ptrtoint ptr %budget to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select, ptr %budget, align 8
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i189 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i, label %if.then.i, label %.cleanup115_crit_edge

.cleanup115_crit_edge:                            ; preds = %77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup115

if.then.i:                                        ; preds = %77
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef %t) #16
  br label %cleanup115

cleanup115:                                       ; preds = %if.then.i, %.cleanup115_crit_edge, %while.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_poll(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_task = getelementptr i8, ptr %t, i32 28
  %0 = ptrtoint ptr %cur_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_task, align 4
  %rem = srem i32 %1, 32
  %tx_ring = getelementptr i8, ptr %t, i32 -644
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %cur_tx = getelementptr i8, ptr %t, i32 -44
  %4 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_tx, align 4
  %sub = add i32 %5, 31
  %rem1 = and i32 %sub, 31
  %arrayidx = getelementptr %struct.netdev_desc, ptr %3, i32 %rem1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp.not38 = icmp eq i32 %5, %1
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %last_tx = getelementptr i8, ptr %t, i32 -48
  %tx_ring_dma = getelementptr i8, ptr %t, i32 -256
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %rem7 = srem i32 %6, 32
  %7 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring, align 4
  %arrayidx9 = getelementptr %struct.netdev_desc, ptr %8, i32 %rem7
  %9 = ptrtoint ptr %last_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %last_tx, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_ring_dma, align 8
  %mul = shl nsw i32 %rem7, 4
  %add = add i32 %12, %mul
  %13 = tail call i32 @llvm.bswap.i32(i32 %add)
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %15 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx9, ptr %last_tx, align 8
  %16 = ptrtoint ptr %cur_task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_task, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %cur_task, align 4
  %18 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_tx, align 4
  %cmp.not = icmp eq i32 %19, %inc
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %txdesc.0.lcssa = phi ptr [ %arrayidx, %entry.for.end_crit_edge ], [ %arrayidx9, %if.end.for.end_crit_edge ]
  %status = getelementptr inbounds %struct.netdev_desc, ptr %txdesc.0.lcssa, i32 0, i32 1
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %or = or i32 %21, 8388608
  store i32 %or, ptr %status, align 4
  %base = getelementptr i8, ptr %t, i32 128
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr13 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp14 = icmp eq i32 %24, 0
  br i1 %cmp14, label %if.then15, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_ring_dma16 = getelementptr i8, ptr %t, i32 -256
  %25 = ptrtoint ptr %tx_ring_dma16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_ring_dma16, align 8
  %mul17 = shl nsw i32 %rem, 4
  %add18 = add i32 %26, %mul17
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 8
  %add.ptr20 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %add18) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %29) #16, !srcloc !298
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.end.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 94
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %location
  %or1 = or i32 %or, 251904
  %mii_preamble_required = getelementptr i8, ptr %dev, i32 3068
  %2 = ptrtoint ptr %mii_preamble_required to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_preamble_required, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %dec5.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 31, %entry.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 6) #16, !srcloc !300
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 7) #16, !srcloc !300
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %dec.i = add nsw i32 %dec5.i, -1
  %cmp.not.i = icmp eq i32 %dec5.i, 0
  br i1 %cmp.not.i, label %while.body.i.for.body.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.for.body.preheader_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.body.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.042 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 15, %for.body.preheader ]
  %shl3 = shl nuw i32 1, %i.042
  %and = and i32 %shl3, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool4.not, i8 4, i8 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #16, !srcloc !300
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv7 = or i8 %conv, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv7) #16, !srcloc !300
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %dec = add nsw i32 %i.042, -1
  %cmp.not = icmp eq i32 %i.042, 0
  br i1 %cmp.not, label %for.body.for.body12_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %retval2.044 = phi i32 [ %or20, %for.body12.for.body12_crit_edge ], [ 0, %for.body.for.body12_crit_edge ]
  %i.143 = phi i32 [ %dec23, %for.body12.for.body12_crit_edge ], [ 19, %for.body.for.body12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !300
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %shl14 = shl i32 %retval2.044, 1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %10 = lshr i8 %9, 1
  %.lobit = and i8 %10, 1
  %11 = zext i8 %.lobit to i32
  %or20 = or i32 %shl14, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #16, !srcloc !300
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %dec23 = add nsw i32 %i.143, -1
  %cmp10 = icmp ugt i32 %i.143, 1
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.end24

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12

for.end24:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #18
  %and25 = and i32 %retval2.044, 65535
  ret i32 %and25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 94
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %location, 18
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %value
  %or3 = or i32 %or2, 1342308352
  %mii_preamble_required = getelementptr i8, ptr %dev, i32 3068
  %2 = ptrtoint ptr %mii_preamble_required to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii_preamble_required, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %dec5.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 31, %entry.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 6) #16, !srcloc !300
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 7) #16, !srcloc !300
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %dec.i = add nsw i32 %dec5.i, -1
  %cmp.not.i = icmp eq i32 %dec5.i, 0
  br i1 %cmp.not.i, label %while.body.i.for.body.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.for.body.preheader_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.body.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.033 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %for.body.preheader ]
  %shl4 = shl nuw i32 1, %i.033
  %and = and i32 %shl4, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool5.not, i8 4, i8 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #16, !srcloc !300
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv8 = or i8 %conv, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv8) #16, !srcloc !300
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %dec = add nsw i32 %i.033, -1
  %cmp.not = icmp eq i32 %i.033, 0
  br i1 %cmp.not, label %for.body13.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body13.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !300
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #16, !srcloc !300
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #16, !srcloc !300
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #16, !srcloc !300
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sundance_reset(ptr noundef %dev, i32 noundef %reset_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %or = or i32 %3, %reset_cmd
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #16, !srcloc !298
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not7 = icmp eq i32 %6, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %while.body.preheader.while.end_crit_edge, label %while.body.1

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

do.end:                                           ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %dev) #19
  br label %while.end

while.body.1:                                     ; preds = %while.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1 = icmp eq i32 %12, 0
  br i1 %tobool.not.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.2 = icmp eq i32 %15, 0
  br i1 %tobool.not.2, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.3 = icmp eq i32 %18, 0
  br i1 %tobool.not.3, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.4 = icmp eq i32 %21, 0
  br i1 %tobool.not.4, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.5 = icmp eq i32 %24, 0
  br i1 %tobool.not.5, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.6 = icmp eq i32 %27, 0
  br i1 %tobool.not.6, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 21474800) #16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.7 = icmp eq i32 %30, 0
  br i1 %tobool.not.7, label %while.body.7.while.end_crit_edge, label %while.body.8

while.body.7.while.end_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 21474800) #16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.8 = icmp eq i32 %33, 0
  br i1 %tobool.not.8, label %while.body.8.while.end_crit_edge, label %while.body.9

while.body.8.while.end_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.9:                                     ; preds = %while.body.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.9 = icmp eq i32 %36, 0
  br i1 %tobool.not.9, label %while.body.9.while.end_crit_edge, label %do.end

while.body.9.while.end_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.9.while.end_crit_edge, %while.body.8.while.end_crit_edge, %while.body.7.while.end_crit_edge, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %do.end, %while.body.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

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
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_rx = getelementptr i8, ptr %dev, i32 2892
  %dirty_rx = getelementptr i8, ptr %dev, i32 2896
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_rx, align 4
  %2 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_rx, align 8
  %sub73 = sub i32 %1, %3
  %rem74 = and i32 %sub73, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem74)
  %cmp.not75 = icmp eq i32 %rem74, 0
  br i1 %cmp.not75, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 2900
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %rem38, %for.inc.for.body_crit_edge ]
  %rem3 = and i32 %4, 63
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %rem3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buf_sz, align 4
  %add5 = add i32 %8, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add5, i32 noundef 2592) #16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %arrayidx, align 4
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr.i67, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz, align 4
  %call.i68 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i67) #16
  br i1 %call.i68, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !303

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev11) #16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev11, ptr noundef %add.ptr.i67, i32 noundef %17) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %add.ptr.i67 to i32
  %sub.i = add i32 %23, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i69 = getelementptr %struct.page, ptr %22, i32 %shr.i
  %and.i = and i32 %23, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev11, ptr noundef %add.ptr.i69, i32 noundef %and.i, i32 noundef %17, i32 noundef 2, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %frag = getelementptr %struct.netdev_desc, ptr %26, i32 %rem3, i32 2
  %27 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %frag, align 4
  %28 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = load ptr, ptr %add.ptr.i, align 8
  %frag20 = getelementptr %struct.netdev_desc, ptr %30, i32 %rem3, i32 2
  %31 = ptrtoint ptr %frag20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frag20, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev17, i32 noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not = icmp eq i32 %32, -1
  br i1 %cmp.i.not, label %if.then24, label %dma_map_single_attrs.exit.for.inc_crit_edge

dma_map_single_attrs.exit.for.inc_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then24:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call.i, i32 noundef 1) #16
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx, align 4
  br label %for.end

for.inc:                                          ; preds = %dma_map_single_attrs.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_buf_sz, align 4
  %or = or i32 %35, -2147483648
  %36 = tail call i32 @llvm.bswap.i32(i32 %or)
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %length = getelementptr %struct.netdev_desc, ptr %38, i32 %rem3, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %length, align 4
  %40 = load ptr, ptr %add.ptr.i, align 8
  %status = getelementptr %struct.netdev_desc, ptr %40, i32 %rem3, i32 1
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %status, align 4
  %42 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dirty_rx, align 8
  %add37 = add i32 %43, 1
  %rem38 = and i32 %add37, 63
  store i32 %rem38, ptr %dirty_rx, align 8
  %44 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur_rx, align 4
  %sub = sub i32 %45, %add37
  %rem = and i32 %sub, 63
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then24, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  tail call fastcc void @sundance_reset(ptr noundef %dev, i32 noundef 16711680)
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %do.end

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %dev, i32 noundef %5) #19
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2908
  %8 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cur_tx.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2892
  %9 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cur_rx.i, align 4
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2912
  %10 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dirty_tx.i, align 8
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 2896
  %11 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dirty_rx.i, align 8
  %cur_task.i = getelementptr i8, ptr %dev, i32 2980
  %12 = ptrtoint ptr %cur_task.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cur_task.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1521, i32 %14)
  %cmp.i = icmp ult i32 %14, 1521
  %add.i = add i32 %14, 16
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 2900
  %15 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %rx_ring_dma.i = getelementptr i8, ptr %dev, i32 2700
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8
  %i.0113.i = phi i32 [ 0, %if.end8 ], [ %add3.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_ring_dma.i, align 4
  %add3.i = add nuw nsw i32 %i.0113.i, 1
  %rem.i = shl i32 %add3.i, 4
  %mul.i = and i32 %rem.i, 1008
  %add4.i = add i32 %mul.i, %17
  %18 = tail call i32 @llvm.bswap.i32(i32 %add4.i) #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx.i = getelementptr %struct.netdev_desc, ptr %20, i32 %i.0113.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %arrayidx.i, align 4
  %22 = load ptr, ptr %add.ptr.i, align 8
  %status.i = getelementptr %struct.netdev_desc, ptr %22, i32 %i.0113.i, i32 1
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status.i, align 4
  %24 = load ptr, ptr %add.ptr.i, align 8
  %length.i = getelementptr %struct.netdev_desc, ptr %24, i32 %i.0113.i, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %length.i, align 4
  %arrayidx10.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.0113.i
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx10.i, align 4
  %exitcond.not.i = icmp eq i32 %add3.i, 64
  br i1 %exitcond.not.i, label %for.body.i.for.body13.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.for.body13.i_crit_edge:                ; preds = %for.body.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc45.i.for.body13.i_crit_edge, %for.body.i.for.body13.i_crit_edge
  %i.1114.i = phi i32 [ %inc46.i, %for.inc45.i.for.body13.i_crit_edge ], [ 0, %for.body.i.for.body13.i_crit_edge ]
  %27 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buf_sz.i, align 4
  %add15.i = add i32 %28, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add15.i, i32 noundef 2592) #16
  %arrayidx18.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.1114.i
  %29 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %arrayidx18.i, align 4
  %cmp19.i = icmp eq ptr %call.i.i, null
  br i1 %cmp19.i, label %for.body13.i.for.end47.i_crit_edge, label %if.end.i

for.body13.i.for.end47.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end47.i

if.end.i:                                         ; preds = %for.body13.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %31, i32 2
  store ptr %add.ptr.i106.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i107.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i106.i) #16
  br i1 %call.i107.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !303

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev20.i) #16
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev20.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %41, %if.end.i.i.i ], [ %39, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #16
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev20.i, ptr noundef %add.ptr.i106.i, i32 noundef %37) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %add.ptr.i106.i to i32
  %sub.i.i = add i32 %43, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i108.i = getelementptr %struct.page, ptr %42, i32 %shr.i.i
  %and.i.i = and i32 %43, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev20.i, ptr noundef %add.ptr.i108.i, i32 noundef %and.i.i, i32 noundef %37, i32 noundef 2, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %44 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #16
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %frag25.i = getelementptr %struct.netdev_desc, ptr %46, i32 %i.1114.i, i32 2
  %47 = ptrtoint ptr %frag25.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %frag25.i, align 4
  %48 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev, align 4
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = load ptr, ptr %add.ptr.i, align 8
  %frag31.i = getelementptr %struct.netdev_desc, ptr %50, i32 %i.1114.i, i32 2
  %51 = ptrtoint ptr %frag31.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %frag31.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev28.i, i32 noundef %52) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.not.i = icmp eq i32 %52, -1
  br i1 %cmp.i.not.i, label %if.then35.i, label %for.inc45.i

if.then35.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #16
  %53 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx18.i, align 4
  br label %for.end47.i

for.inc45.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %54 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_buf_sz.i, align 4
  %or.i = or i32 %55, -2147483648
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %length44.i = getelementptr %struct.netdev_desc, ptr %58, i32 %i.1114.i, i32 2, i32 0, i32 1
  %59 = ptrtoint ptr %length44.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %length44.i, align 4
  %inc46.i = add nuw nsw i32 %i.1114.i, 1
  %exitcond119.not.i = icmp eq i32 %inc46.i, 64
  br i1 %exitcond119.not.i, label %for.inc45.i.for.end47.i_crit_edge, label %for.inc45.i.for.body13.i_crit_edge

for.inc45.i.for.body13.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body13.i

for.inc45.i.for.end47.i_crit_edge:                ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end47.i

for.end47.i:                                      ; preds = %for.inc45.i.for.end47.i_crit_edge, %if.then35.i, %for.body13.i.for.end47.i_crit_edge
  %i.1112.i = phi i32 [ %i.1114.i, %if.then35.i ], [ %i.1114.i, %for.body13.i.for.end47.i_crit_edge ], [ 64, %for.inc45.i.for.end47.i_crit_edge ]
  %sub.i = add nsw i32 %i.1112.i, -64
  %60 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.i, ptr %dirty_rx.i, align 8
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.body51.i.for.body51.i_crit_edge, %for.end47.i
  %i.2115.i = phi i32 [ 0, %for.end47.i ], [ %inc56.i, %for.body51.i.for.body51.i_crit_edge ]
  %arrayidx52.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.2115.i
  %61 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx52.i, align 4
  %62 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_ring.i, align 4
  %status54.i = getelementptr %struct.netdev_desc, ptr %63, i32 %i.2115.i, i32 1
  %64 = ptrtoint ptr %status54.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %status54.i, align 4
  %inc56.i = add nuw nsw i32 %i.2115.i, 1
  %exitcond120.not.i = icmp eq i32 %inc56.i, 32
  br i1 %exitcond120.not.i, label %init_ring.exit, label %for.body51.i.for.body51.i_crit_edge

for.body51.i.for.body51.i_crit_edge:              ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body51.i

init_ring.exit:                                   ; preds = %for.body51.i
  %65 = ptrtoint ptr %rx_ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_ring_dma.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %67) #16, !srcloc !298
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %68 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_addr.i, align 64
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i = zext i8 %71 to i16
  %arrayidx2.i = getelementptr i8, ptr %69, i32 1
  %72 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %73 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i144 = or i16 %shl.i, %conv.i
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 8
  %add.ptr.i145 = getelementptr i8, ptr %75, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %76 = tail call i16 @llvm.bswap.i16(i16 %or.i144) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i145, i16 %76) #16, !srcloc !292
  %77 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx6.i = getelementptr i8, ptr %78, i32 2
  %79 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %80 to i16
  %arrayidx9.i = getelementptr i8, ptr %78, i32 3
  %81 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %82 to i16
  %shl11.i = shl nuw i16 %conv10.i, 8
  %or12.i = or i16 %shl11.i, %conv7.i
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 8
  %add.ptr16.i = getelementptr i8, ptr %84, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %85 = tail call i16 @llvm.bswap.i16(i16 %or12.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i, i16 %85) #16, !srcloc !292
  %86 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx18.i146 = getelementptr i8, ptr %87, i32 4
  %88 = ptrtoint ptr %arrayidx18.i146 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx18.i146, align 1
  %conv19.i = zext i8 %89 to i16
  %arrayidx21.i = getelementptr i8, ptr %87, i32 5
  %90 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %91 to i16
  %shl23.i = shl nuw i16 %conv22.i, 8
  %or24.i = or i16 %shl23.i, %conv19.i
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 8
  %add.ptr28.i = getelementptr i8, ptr %93, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %94 = tail call i16 @llvm.bswap.i16(i16 %or24.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 %94) #16, !srcloc !292
  %95 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mtu.i, align 4
  %97 = trunc i32 %96 to i16
  %conv = add i16 %97, 18
  %add.ptr10 = getelementptr i8, ptr %1, i32 90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %98) #16, !srcloc !292
  %99 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %100)
  %cmp = icmp ugt i32 %100, 2047
  br i1 %cmp, label %if.then13, label %init_ring.exit.if.end17_crit_edge

init_ring.exit.if.end17_crit_edge:                ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then13:                                        ; preds = %init_ring.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr14 = getelementptr i8, ptr %1, i32 48
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %102 = or i32 %101, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %102) #16, !srcloc !298
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %init_ring.exit.if.end17_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %103 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp19 = icmp eq i8 %104, 0
  br i1 %cmp19, label %if.then21, label %if.end17.do.body25_crit_edge

if.end17.do.body25_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %default_port = getelementptr i8, ptr %dev, i32 2916
  %105 = ptrtoint ptr %default_port to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load = load i8, ptr %default_port, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 15
  %106 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.clear, ptr %if_port, align 2
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %if.end17.do.body25_crit_edge
  %mcastlock = getelementptr i8, ptr %dev, i32 2984
  tail call void @__raw_spin_lock_init(ptr noundef %mcastlock, ptr noundef nonnull @.str.47, ptr noundef nonnull @netdev_open.__key, i16 noundef signext 3) #16
  tail call void @set_rx_mode(ptr noundef %dev)
  %add.ptr29 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 0) #16, !srcloc !292
  %add.ptr30 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 0) #16, !srcloc !292
  %add.ptr31 = getelementptr i8, ptr %1, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 100) #16, !srcloc !300
  %add.ptr32 = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 127) #16, !srcloc !300
  %107 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pci_dev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %110)
  %cmp35 = icmp ugt i8 %110, 19
  br i1 %cmp35, label %if.then37, label %do.body25.if.end39_crit_edge

do.body25.if.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr38 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38, i8 1) #16, !srcloc !300
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body25.if.end39_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %111 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %112, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %lock = getelementptr i8, ptr %dev, i32 2840
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  tail call fastcc void @reset_tx(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #16
  %add.ptr53 = getelementptr i8, ptr %1, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53, i16 8201) #16, !srcloc !292
  %add.ptr54 = getelementptr i8, ptr %1, i32 69
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 %113) #16, !srcloc !300
  %wol_enabled = getelementptr i8, ptr %dev, i32 2924
  %114 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load60 = load i8, ptr %wol_enabled, align 4
  %bf.clear61 = and i8 %bf.load60, 127
  store i8 %bf.clear61, ptr %wol_enabled, align 4
  %115 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_enable, align 4
  %and63 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end39.do.body87_crit_edge, label %do.end68

if.end39.do.body87_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body87

do.end68:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr72 = getelementptr i8, ptr %1, i32 12
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #16, !srcloc !293
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %add.ptr74 = getelementptr i8, ptr %1, i32 70
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv76 = zext i8 %119 to i32
  %add.ptr77 = getelementptr i8, ptr %1, i32 80
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #16, !srcloc !293
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr53) #16, !srcloc !295
  %123 = tail call i16 @llvm.bswap.i16(i16 %122) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv81 = zext i16 %123 to i32
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr77) #16, !srcloc !295
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv84 = zext i16 %125 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %dev, i32 noundef %118, i32 noundef %conv76, i32 noundef %121, i32 noundef %conv81, i32 noundef %conv84) #19
  br label %do.body87

do.body87:                                        ; preds = %do.end68, %if.end39.do.body87_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 2704
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @netdev_timer, i32 noundef 0, ptr noundef nonnull @.str.52, ptr noundef nonnull @netdev_open.__key.51) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %add90 = add i32 %126, 300
  %expires = getelementptr i8, ptr %dev, i32 2712
  %127 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add90, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr29, i16 -14843) #16, !srcloc !292
  br label %cleanup

cleanup:                                          ; preds = %do.body87, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body87 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %rx_tasklet = getelementptr i8, ptr %dev, i32 2928
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #16
  %tx_tasklet = getelementptr i8, ptr %dev, i32 2952
  tail call void @tasklet_kill(ptr noundef %tx_tasklet) #16
  %cur_tx = getelementptr i8, ptr %dev, i32 2908
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2912
  %3 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dirty_tx, align 8
  %cur_task = getelementptr i8, ptr %dev, i32 2980
  %4 = ptrtoint ptr %cur_task to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_task, align 4
  %last_tx = getelementptr i8, ptr %dev, i32 2904
  %5 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %last_tx, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %1, i32 70
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv = zext i8 %10 to i32
  %add.ptr2 = getelementptr i8, ptr %1, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #16, !srcloc !293
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %add.ptr4 = getelementptr i8, ptr %1, i32 78
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4) #16, !srcloc !295
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv6 = zext i16 %14 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %dev, i32 noundef %conv, i32 noundef %12, i32 noundef %conv6) #19
  %15 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_tx, align 4
  %17 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_tx, align 8
  %cur_rx = getelementptr i8, ptr %dev, i32 2892
  %19 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 2896
  %21 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dirty_rx, align 8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %dev, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr17 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 0) #16, !srcloc !292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 327680) #16, !srcloc !298
  %add.ptr19 = getelementptr i8, ptr %1, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 16402) #16, !srcloc !292
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %if.end
  %i.0147 = phi i32 [ 2000, %if.end ], [ %dec, %if.end27.for.body_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #16, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %24 = and i32 %23, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24 = icmp eq i32 %24, 0
  br i1 %cmp24, label %for.body.for.end_crit_edge, label %if.end27

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end27:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #16
  %dec = add nsw i32 %i.0147, -1
  %cmp = icmp ugt i32 %i.0147, 1
  br i1 %cmp, label %if.end27.for.body_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %for.body.for.end_crit_edge
  %add.ptr28 = getelementptr i8, ptr %1, i32 50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 14592) #16, !srcloc !292
  br label %for.body32

for.body32:                                       ; preds = %if.end40.for.body32_crit_edge, %for.end
  %i.1148 = phi i32 [ 2000, %for.end ], [ %dec42, %if.end40.for.body32_crit_edge ]
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %27 = and i16 %26, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp37 = icmp eq i16 %27, 0
  br i1 %cmp37, label %for.body32.for.end43_crit_edge, label %if.end40

for.body32.for.end43_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end43

if.end40:                                         ; preds = %for.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #16
  %dec42 = add nsw i32 %i.1148, -1
  %cmp30 = icmp ugt i32 %i.1148, 1
  br i1 %cmp30, label %if.end40.for.body32_crit_edge, label %if.end40.for.end43_crit_edge

if.end40.for.end43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end43

if.end40.for.body32_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body32

for.end43:                                        ; preds = %if.end40.for.end43_crit_edge, %for.body32.for.end43_crit_edge
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call44 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %dev) #16
  %timer = getelementptr i8, ptr %dev, i32 2704
  %call45 = tail call i32 @del_timer_sync(ptr noundef %timer) #16
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 2900
  br label %for.body49

for.cond68.preheader:                             ; preds = %if.end60
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body71

for.body49:                                       ; preds = %if.end60.for.body49_crit_edge, %for.end43
  %i.2149 = phi i32 [ 0, %for.end43 ], [ %inc, %if.end60.for.body49_crit_edge ]
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %status = getelementptr %struct.netdev_desc, ptr %34, i32 %i.2149, i32 1
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status, align 4
  %arrayidx50 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 2, i32 %i.2149
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %37, null
  br i1 %tobool51.not, label %for.body49.if.end60_crit_edge, label %if.then52

for.body49.if.end60_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end60

if.then52:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci_dev, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %frag = getelementptr %struct.netdev_desc, ptr %41, i32 %i.2149, i32 2
  %42 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frag, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev54, i32 noundef %44, i32 noundef %46, i32 noundef 2, i32 noundef 0) #16
  tail call void @consume_skb(ptr noundef nonnull %37) #16
  %47 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx50, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %for.body49.if.end60_crit_edge
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %frag63 = getelementptr %struct.netdev_desc, ptr %49, i32 %i.2149, i32 2
  %50 = ptrtoint ptr %frag63 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -805249094, ptr %frag63, align 4
  %inc = add nuw nsw i32 %i.2149, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond68.preheader, label %if.end60.for.body49_crit_edge

if.end60.for.body49_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body49

for.body71:                                       ; preds = %for.inc86.for.body71_crit_edge, %for.cond68.preheader
  %i.3151 = phi i32 [ 0, %for.cond68.preheader ], [ %inc87, %for.inc86.for.body71_crit_edge ]
  %51 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_ring, align 4
  %arrayidx72 = getelementptr %struct.netdev_desc, ptr %52, i32 %i.3151
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx72, align 4
  %arrayidx73 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.3151
  %54 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq ptr %55, null
  br i1 %tobool74.not, label %for.body71.for.inc86_crit_edge, label %if.then75

for.body71.for.inc86_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc86

if.then75:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pci_dev, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %58 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_ring, align 4
  %frag80 = getelementptr %struct.netdev_desc, ptr %59, i32 %i.3151, i32 2
  %60 = ptrtoint ptr %frag80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frag80, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %len = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev77, i32 noundef %62, i32 noundef %64, i32 noundef 1, i32 noundef 0) #16
  tail call void @consume_skb(ptr noundef nonnull %55) #16
  %65 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx73, align 4
  br label %for.inc86

for.inc86:                                        ; preds = %if.then75, %for.body71.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.3151, 1
  %exitcond153.not = icmp eq i32 %inc87, 32
  br i1 %exitcond153.not, label %for.end88, label %for.inc86.for.body71_crit_edge

for.inc86.for.body71_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body71

for.end88:                                        ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 2908
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %1, 31
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %arrayidx, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_ring, align 4
  %arrayidx2 = getelementptr %struct.netdev_desc, ptr %4, i32 %rem
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  %shl = shl nuw nsw i32 %rem, 26
  %or = or i32 %shl, 16777216
  %status = getelementptr %struct.netdev_desc, ptr %4, i32 %rem, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %status, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %10) #16
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !303

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %10, i32 noundef %12) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %10 to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i61 = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i61, i32 noundef %and.i, i32 noundef %12, i32 noundef 1, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %frag = getelementptr %struct.netdev_desc, ptr %4, i32 %rem, i32 2
  %20 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %frag, align 4
  %21 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i.not = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i.not, label %drop_frame, label %if.end

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %or13 = or i32 %24, -2147483648
  %25 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %length = getelementptr inbounds %struct.desc_frag, ptr %frag, i32 0, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %length, align 4
  %27 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_tx, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %cur_tx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !304
  tail call void @arm_heavy_mb() #16
  %state.i = getelementptr i8, ptr %dev, i32 2956
  %call.i62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i, label %if.then.i63, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %tasklet_schedule.exit

if.then.i63:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_tasklet = getelementptr i8, ptr %dev, i32 2952
  tail call void @__tasklet_schedule(ptr noundef %tx_tasklet) #16
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i63, %if.end.tasklet_schedule.exit_crit_edge
  %29 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2912
  %31 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dirty_tx, align 8
  %sub = sub i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub)
  %cmp = icmp ult i32 %sub, 30
  br i1 %cmp, label %land.lhs.true, label %tasklet_schedule.exit.if.else_crit_edge

tasklet_schedule.exit.if.else_crit_edge:          ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %tasklet_schedule.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %tasklet_schedule.exit.if.else_crit_edge
  %_tx.i.i64 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %37 = ptrtoint ptr %_tx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i64, align 128
  %state.i.i65 = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i65) #16
  br label %if.end20

if.end20:                                         ; preds = %if.else, %land.lhs.true.if.end20_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable, align 4
  %and = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %do.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_tx, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %dev, i32 noundef %42, i32 noundef %rem) #19
  br label %cleanup

drop_frame:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %44 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_dropped, align 4
  %inc31 = add i32 %45, 1
  store i32 %inc31, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop_frame, %do.end25, %if.end20.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  %mc_filter = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #16
  %2 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i16], ptr %mc_filter, i32 0, i32 3
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end40

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %9)
  %cmp = icmp slt i32 %9, 33
  %and2 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end40

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.else36, label %if.then10

if.then10:                                        ; preds = %if.else6
  %11 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %mc_filter, align 8
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.093 = load ptr, ptr %mc, align 4
  %cmp16.not94 = icmp eq ptr %ha.093, %mc
  br i1 %cmp16.not94, label %if.then10.if.end40_crit_edge, label %if.then10.for.body_crit_edge

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

if.then10.if.end40_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then10.for.body_crit_edge
  %ha.095 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.093, %if.then10.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.095, i32 0, i32 2
  %call18 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #21
  %call18.lobit = lshr i32 %call18, 31
  %13 = lshr i32 %call18, 29
  %14 = and i32 %13, 2
  %index.1.1 = or i32 %14, %call18.lobit
  %15 = lshr i32 %call18, 27
  %16 = and i32 %15, 4
  %index.1.2 = or i32 %16, %index.1.1
  %17 = lshr i32 %call18, 25
  %18 = and i32 %17, 8
  %index.1.3 = or i32 %18, %index.1.2
  %19 = lshr i32 %call18, 27
  %20 = and i32 %19, 1
  %shl25.4.mask = lshr i32 %call18, 25
  %21 = and i32 %shl25.4.mask, 2
  %index.1.5 = or i32 %21, %20
  %shl26 = shl nuw nsw i32 1, %index.1.3
  %arrayidx = getelementptr [4 x i16], ptr %mc_filter, i32 0, i32 %index.1.5
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %24 = trunc i32 %shl26 to i16
  %conv28 = or i16 %23, %24
  store i16 %conv28, ptr %arrayidx, align 2
  %25 = ptrtoint ptr %ha.095 to i32
  call void @__asan_load4_noabort(i32 %25)
  %ha.0 = load ptr, ptr %ha.095, align 4
  %cmp16.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp16.not, label %for.body.if.end40_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.else36:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr37 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 5) #16, !srcloc !300
  br label %cleanup

if.end40:                                         ; preds = %for.body.if.end40_crit_edge, %if.then10.if.end40_crit_edge, %if.then4, %if.then
  %rx_mode.0 = phi i8 [ 15, %if.then ], [ 7, %if.then4 ], [ 21, %if.then10.if.end40_crit_edge ], [ 21, %for.body.if.end40_crit_edge ]
  %full_duplex = getelementptr i8, ptr %dev, i32 3052
  %26 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool41.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool41.not, label %if.end40.if.end51_crit_edge, label %land.lhs.true

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end40
  %flowctrl = getelementptr i8, ptr %dev, i32 2916
  %27 = ptrtoint ptr %flowctrl to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load42 = load i8, ptr %flowctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load42)
  %tobool45.not = icmp sgt i8 %bf.load42, -1
  br i1 %tobool45.not, label %land.lhs.true.if.end51_crit_edge, label %if.then46

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %4, align 2
  %30 = or i16 %29, 512
  store i16 %30, ptr %4, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %land.lhs.true.if.end51_crit_edge, %if.end40.if.end51_crit_edge
  %add.ptr57 = getelementptr i8, ptr %1, i32 96
  %31 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mc_filter, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr57, i16 %33) #16, !srcloc !292
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 2
  %add.ptr58.1 = getelementptr i8, ptr %1, i32 98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.1, i16 %36) #16, !srcloc !292
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %3, align 4
  %add.ptr58.2 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.2, i16 %39) #16, !srcloc !292
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %4, align 2
  %add.ptr58.3 = getelementptr i8, ptr %1, i32 102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.3, i16 %42) #16, !srcloc !292
  %add.ptr63 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %rx_mode.0) #16, !srcloc !300
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.else36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_set_mac_addr(ptr noundef %dev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %data, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #16
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr.i, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv.i = zext i8 %8 to i16
  %arrayidx2.i = getelementptr i8, ptr %6, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %base.i = getelementptr i8, ptr %dev, i32 3080
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %13 = tail call i16 @llvm.bswap.i16(i16 %or.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %13) #16, !srcloc !292
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx6.i = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %17 to i16
  %arrayidx9.i = getelementptr i8, ptr %15, i32 3
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %19 to i16
  %shl11.i = shl nuw i16 %conv10.i, 8
  %or12.i = or i16 %shl11.i, %conv7.i
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %21, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %22 = tail call i16 @llvm.bswap.i16(i16 %or12.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i, i16 %22) #16, !srcloc !292
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx18.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %26 to i16
  %arrayidx21.i = getelementptr i8, ptr %24, i32 5
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %28 to i16
  %shl23.i = shl nuw i16 %conv22.i, 8
  %or24.i = or i16 %shl23.i, %conv19.i
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr28.i = getelementptr i8, ptr %30, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %31 = tail call i16 @llvm.bswap.i16(i16 %or24.i) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 %31) #16, !srcloc !292
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %lock = getelementptr i8, ptr %dev, i32 2840
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %mii_if = getelementptr i8, ptr %dev, i32 3036
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %tx_tasklet = getelementptr i8, ptr %dev, i32 2952
  %count.i.i = getelementptr i8, ptr %dev, i32 2960
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #16, !srcloc !305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !306
  tail call void @tasklet_unlock_spin_wait(ptr noundef %tx_tasklet) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !307
  %add.ptr = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #16, !srcloc !292
  %add.ptr1 = getelementptr i8, ptr %1, i32 70
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv = zext i8 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %1, i32 71
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv5 = zext i8 %6 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %dev, i32 noundef %conv, i32 noundef %conv5) #19
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2696
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %do.end10

do.end10:                                         ; preds = %do.end10.do.end10_crit_edge, %entry
  %i.0117 = phi i32 [ 0, %entry ], [ %inc, %do.end10.do.end10_crit_edge ]
  %7 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ring_dma, align 8
  %mul = shl i32 %i.0117, 4
  %add = add i32 %8, %mul
  %conv12 = zext i32 %add to i64
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.netdev_desc, ptr %10, i32 %i.0117
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %status = getelementptr %struct.netdev_desc, ptr %10, i32 %i.0117, i32 1
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shr = lshr i32 %16, 2
  %and = and i32 %shr, 255
  %frag = getelementptr %struct.netdev_desc, ptr %10, i32 %i.0117, i32 2
  %17 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frag, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %length = getelementptr inbounds %struct.desc_frag, ptr %frag, i32 0, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %i.0117, i64 noundef %conv12, i32 noundef %13, i32 noundef %16, i32 noundef %and, i32 noundef %19, i32 noundef %22) #19
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end28, label %do.end10.do.end10_crit_edge

do.end10.do.end10_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.end28:                                         ; preds = %do.end10
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #16, !srcloc !293
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i114 = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %state.i.i114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i114, align 4
  %and1.i.i.i = and i32 %30, 1
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %26, i32 noundef %and1.i.i.i) #19
  %cur_tx = getelementptr i8, ptr %dev, i32 2908
  %31 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %32, 31
  %dirty_tx = getelementptr i8, ptr %dev, i32 2912
  %33 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dirty_tx, align 8
  %rem42 = and i32 %34, 31
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %32, i32 noundef %rem, i32 noundef %34, i32 noundef %rem42) #19
  %cur_rx = getelementptr i8, ptr %dev, i32 2892
  %35 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 2896
  %37 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty_rx, align 8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %36, i32 noundef %38) #19
  %cur_task = getelementptr i8, ptr %dev, i32 2980
  %39 = ptrtoint ptr %cur_task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_task, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %40) #19
  %lock = getelementptr i8, ptr %dev, i32 2840
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  tail call fastcc void @reset_tx(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call60) #16
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %41 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %if_port, align 2
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 12
  %45 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i.i = icmp eq i32 %46, %44
  br i1 %cmp.not.i.i, label %do.end28.netif_trans_update.exit_crit_edge, label %do.body5.i.i

do.end28.netif_trans_update.exit_crit_edge:       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %44, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %do.end28.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %48 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_errors, align 4
  %inc67 = add i32 %49, 1
  store i32 %inc67, ptr %tx_errors, align 4
  %50 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cur_tx, align 4
  %52 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dirty_tx, align 8
  %sub = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %cmp70 = icmp ult i32 %sub, 27
  br i1 %cmp70, label %if.then, label %netif_trans_update.exit.if.end_crit_edge

netif_trans_update.exit.if.end_crit_edge:         ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %55) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %netif_trans_update.exit.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 -14843) #16, !srcloc !292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !308
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #16
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #16, !srcloc !309
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %statlock = getelementptr i8, ptr %dev, i32 3084
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %statlock) #16
  %add.ptr = getelementptr i8, ptr %1, i32 121
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv7 = zext i8 %2 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %3 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %4, %conv7
  store i32 %add, ptr %rx_missed_errors, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 112
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #16, !srcloc !295
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv10 = zext i16 %6 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_packets, align 4
  %add12 = add i32 %8, %conv10
  store i32 %add12, ptr %tx_packets, align 4
  %add.ptr13 = getelementptr i8, ptr %1, i32 114
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13) #16, !srcloc !295
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv15 = zext i16 %10 to i32
  %11 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stats, align 8
  %add17 = add i32 %12, %conv15
  store i32 %add17, ptr %stats, align 8
  %add.ptr18 = getelementptr i8, ptr %1, i32 116
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv20 = zext i8 %13 to i32
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %14 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_carrier_errors, align 4
  %add22 = add i32 %15, %conv20
  store i32 %add22, ptr %tx_carrier_errors, align 4
  %add.ptr23 = getelementptr i8, ptr %1, i32 118
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv25 = zext i8 %16 to i64
  %xstats = getelementptr i8, ptr %dev, i32 2760
  %17 = ptrtoint ptr %xstats to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %xstats, align 8
  %add26 = add i64 %18, %conv25
  store i64 %add26, ptr %xstats, align 8
  %add.ptr27 = getelementptr i8, ptr %1, i32 119
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv29 = zext i8 %19 to i64
  %tx_single_collisions = getelementptr i8, ptr %dev, i32 2768
  %20 = ptrtoint ptr %tx_single_collisions to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tx_single_collisions, align 8
  %add31 = add i64 %21, %conv29
  store i64 %add31, ptr %tx_single_collisions, align 8
  %add.ptr32 = getelementptr i8, ptr %1, i32 117
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv34 = zext i8 %22 to i64
  %tx_late_collisions = getelementptr i8, ptr %dev, i32 2776
  %23 = ptrtoint ptr %tx_late_collisions to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_late_collisions, align 8
  %add36 = add i64 %24, %conv34
  store i64 %add36, ptr %tx_late_collisions, align 8
  %conv37 = zext i8 %16 to i32
  %conv38 = zext i8 %19 to i32
  %add39 = add nuw nsw i32 %conv38, %conv37
  %conv40 = zext i8 %22 to i32
  %add41 = add nuw nsw i32 %add39, %conv40
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %25 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %collisions, align 4
  %add43 = add i32 %add41, %26
  store i32 %add43, ptr %collisions, align 4
  %add.ptr44 = getelementptr i8, ptr %1, i32 120
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv46 = zext i8 %27 to i64
  %tx_deferred = getelementptr i8, ptr %dev, i32 2784
  %28 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_deferred, align 8
  %add48 = add i64 %29, %conv46
  store i64 %add48, ptr %tx_deferred, align 8
  %add.ptr49 = getelementptr i8, ptr %1, i32 122
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr49) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv51 = zext i8 %30 to i64
  %tx_deferred_excessive = getelementptr i8, ptr %dev, i32 2792
  %31 = ptrtoint ptr %tx_deferred_excessive to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_deferred_excessive, align 8
  %add53 = add i64 %32, %conv51
  store i64 %add53, ptr %tx_deferred_excessive, align 8
  %add.ptr54 = getelementptr i8, ptr %1, i32 123
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv56 = zext i8 %33 to i64
  %tx_aborted = getelementptr i8, ptr %dev, i32 2800
  %34 = ptrtoint ptr %tx_aborted to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_aborted, align 8
  %add58 = add i64 %35, %conv56
  store i64 %add58, ptr %tx_aborted, align 8
  %add.ptr59 = getelementptr i8, ptr %1, i32 124
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr59) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv61 = zext i8 %36 to i64
  %tx_bcasts = getelementptr i8, ptr %dev, i32 2808
  %37 = ptrtoint ptr %tx_bcasts to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_bcasts, align 8
  %add63 = add i64 %38, %conv61
  store i64 %add63, ptr %tx_bcasts, align 8
  %add.ptr64 = getelementptr i8, ptr %1, i32 125
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv66 = zext i8 %39 to i64
  %rx_bcasts = getelementptr i8, ptr %dev, i32 2816
  %40 = ptrtoint ptr %rx_bcasts to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_bcasts, align 8
  %add68 = add i64 %41, %conv66
  store i64 %add68, ptr %rx_bcasts, align 8
  %add.ptr69 = getelementptr i8, ptr %1, i32 126
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv71 = zext i8 %42 to i64
  %tx_mcasts = getelementptr i8, ptr %dev, i32 2824
  %43 = ptrtoint ptr %tx_mcasts to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_mcasts, align 8
  %add73 = add i64 %44, %conv71
  store i64 %add73, ptr %tx_mcasts, align 8
  %add.ptr74 = getelementptr i8, ptr %1, i32 127
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv76 = zext i8 %45 to i64
  %rx_mcasts = getelementptr i8, ptr %dev, i32 2832
  %46 = ptrtoint ptr %rx_mcasts to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_mcasts, align 8
  %add78 = add i64 %47, %conv76
  store i64 %add78, ptr %rx_mcasts, align 8
  %add.ptr79 = getelementptr i8, ptr %1, i32 108
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr79) #16, !srcloc !295
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv81 = zext i16 %49 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_bytes, align 4
  %add83 = add i32 %51, %conv81
  store i32 %add83, ptr %tx_bytes, align 4
  %add.ptr84 = getelementptr i8, ptr %1, i32 110
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr84) #16, !srcloc !295
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv86 = zext i16 %53 to i32
  %shl = shl nuw i32 %conv86, 16
  %54 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_bytes, align 4
  %add89 = add i32 %shl, %55
  store i32 %add89, ptr %tx_bytes, align 4
  %add.ptr90 = getelementptr i8, ptr %1, i32 104
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr90) #16, !srcloc !295
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv92 = zext i16 %57 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %58 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_bytes, align 8
  %add94 = add i32 %59, %conv92
  store i32 %add94, ptr %rx_bytes, align 8
  %add.ptr95 = getelementptr i8, ptr %1, i32 106
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr95) #16, !srcloc !295
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv97 = zext i16 %61 to i32
  %shl98 = shl nuw i32 %conv97, 16
  %62 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_bytes, align 8
  %add101 = add i32 %shl98, %63
  store i32 %add101, ptr %rx_bytes, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %statlock, i32 noundef %call3) #16
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sundance_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #16
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %call3 = tail call i32 @intr_handler(i32 noundef %7, ptr noundef %dev)
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %11) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %base = getelementptr i8, ptr %dev_instance, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 78
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #16, !srcloc !295
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #16, !srcloc !292
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 2884
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %dev_instance, i32 noundef %conv) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and6 = and i32 %conv, 1478
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup235_crit_edge, label %if.end9

if.end.cleanup235_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup235

if.end9:                                          ; preds = %if.end
  %and10 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %add.ptr13 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 -14847) #16, !srcloc !292
  %budget = getelementptr i8, ptr %dev_instance, i32 2976
  %6 = ptrtoint ptr %budget to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %budget, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then15, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %budget to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %budget, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then12.if.end17_crit_edge
  %state.i = getelementptr i8, ptr %dev_instance, i32 2932
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end17.if.end18_crit_edge

if.end17.if.end18_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %rx_tasklet = getelementptr i8, ptr %dev_instance, i32 2928
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.end17.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %and19 = and i32 %conv, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %add.ptr22 = getelementptr i8, ptr %1, i32 70
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #16, !srcloc !295
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %tx_status.0370 = zext i16 %10 to i32
  %and25371 = and i32 %tx_status.0370, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25371)
  %tobool26.not372 = icmp eq i32 %and25371, 0
  br i1 %tobool26.not372, label %if.then21.for.end_crit_edge, label %for.body.lr.ph

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then21
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 20
  %add.ptr84 = getelementptr i8, ptr %1, i32 82
  br label %for.body

for.body:                                         ; preds = %if.end105.for.body_crit_edge, %for.body.lr.ph
  %tx_status.0374 = phi i32 [ %tx_status.0370, %for.body.lr.ph ], [ %tx_status.0, %if.end105.for.body_crit_edge ]
  %tx_cnt.0373 = phi i32 [ 32, %for.body.lr.ph ], [ %dec109, %if.end105.for.body_crit_edge ]
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and28 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %for.body.if.end38_crit_edge, label %do.end33

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

do.end33:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %dev_instance, i32 noundef %tx_status.0374) #19
  br label %if.end38

if.end38:                                         ; preds = %do.end33, %for.body.if.end38_crit_edge
  %and39 = and i32 %tx_status.0374, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end99_crit_edge, label %if.then41

if.end38.if.end99_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then41:                                        ; preds = %if.end38
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and43 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then41.if.end53_crit_edge, label %do.end48

if.then41.if.end53_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #18
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %dev_instance, i32 noundef %tx_status.0374) #19
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.then41.if.end53_crit_edge
  %15 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and54 = and i32 %tx_status.0374, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end59_crit_edge, label %if.then56

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_fifo_errors, align 8
  %inc58 = add i32 %18, 1
  store i32 %inc58, ptr %tx_fifo_errors, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge
  %and60 = and i32 %tx_status.0374, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end65_crit_edge, label %if.then62

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %collisions, align 4
  %inc64 = add i32 %20, 1
  store i32 %inc64, ptr %collisions, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59.if.end65_crit_edge
  %and66 = and i32 %tx_status.0374, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end72_crit_edge, label %if.then68

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_fifo_errors, align 8
  %inc71 = add i32 %22, 1
  store i32 %inc71, ptr %tx_fifo_errors, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end65.if.end72_crit_edge
  %and73 = and i32 %tx_status.0374, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_window_errors, align 8
  %inc77 = add i32 %24, 1
  store i32 %inc77, ptr %tx_window_errors, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  br i1 %tobool55.not, label %if.end78.do.body83.preheader_crit_edge, label %if.then81

if.end78.do.body83.preheader_crit_edge:           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83.preheader

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @sundance_reset(ptr noundef %dev_instance, i32 noundef 3407872)
  br label %do.body83.preheader

do.body83.preheader:                              ; preds = %if.then81, %if.end78.do.body83.preheader_crit_edge
  br label %do.body83

do.body83:                                        ; preds = %if.end95.do.body83_crit_edge, %do.body83.preheader
  %i.0 = phi i32 [ %dec, %if.end95.do.body83_crit_edge ], [ 10, %do.body83.preheader ]
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr84) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %26 = or i16 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 %26) #16, !srcloc !292
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr84) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %28 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool93.not = icmp eq i16 %28, 0
  br i1 %tobool93.not, label %if.end95, label %do.body83.if.end99_crit_edge

do.body83.if.end99_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.end95:                                         ; preds = %do.body83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #16
  %dec = add nsw i32 %i.0, -1
  %tobool97.not = icmp eq i32 %dec, 0
  br i1 %tobool97.not, label %if.end95.if.end99_crit_edge, label %if.end95.do.body83_crit_edge

if.end95.do.body83_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body83

if.end95.if.end99_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.end99:                                         ; preds = %if.end95.if.end99_crit_edge, %do.body83.if.end99_crit_edge, %if.end38.if.end99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 0) #16, !srcloc !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_cnt.0373)
  %cmp101 = icmp slt i32 %tx_cnt.0373, 0
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr104 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !297
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 -2012020736) #16, !srcloc !298
  br label %for.end

if.end105:                                        ; preds = %if.end99
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #16, !srcloc !295
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %dec109 = add nsw i32 %tx_cnt.0373, -1
  %tx_status.0 = zext i16 %31 to i32
  %and25 = and i32 %tx_status.0, 128
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end105.for.end_crit_edge, label %if.end105.for.body_crit_edge

if.end105.for.body_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end105.for.end_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end105.for.end_crit_edge, %if.then103, %if.then21.for.end_crit_edge
  %tx_status.0369 = phi i32 [ %tx_status.0374, %if.then103 ], [ %tx_status.0370, %if.then21.for.end_crit_edge ], [ %tx_status.0, %if.end105.for.end_crit_edge ]
  %32 = lshr i32 %tx_status.0369, 8
  br label %if.end114

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr111 = getelementptr i8, ptr %1, i32 71
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr111) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv113 = zext i8 %33 to i32
  br label %if.end114

if.end114:                                        ; preds = %if.else, %for.end
  %hw_frame_id.0 = phi i32 [ %32, %for.end ], [ %conv113, %if.else ]
  %pci_dev = getelementptr i8, ptr %dev_instance, i32 3076
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %37)
  %cmp116 = icmp ugt i8 %37, 19
  %lock = getelementptr i8, ptr %dev_instance, i32 2840
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  br i1 %cmp116, label %if.then118, label %if.else167

if.then118:                                       ; preds = %if.end114
  %add = add nuw nsw i32 %hw_frame_id.0, 1
  %rem136 = and i32 %add, 31
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 2908
  %dirty_tx = getelementptr i8, ptr %dev_instance, i32 2912
  %38 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_tx, align 4
  %40 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dirty_tx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp120.not376 = icmp eq i32 %39, %41
  br i1 %cmp120.not376, label %if.then118.if.end220_crit_edge, label %for.body122.lr.ph

if.then118.if.end220_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

for.body122.lr.ph:                                ; preds = %if.then118
  %tx_ring = getelementptr i8, ptr %dev_instance, i32 2308
  br label %for.body122

for.body122:                                      ; preds = %for.inc162.for.body122_crit_edge, %for.body122.lr.ph
  %42 = phi i32 [ %41, %for.body122.lr.ph ], [ %inc164, %for.inc162.for.body122_crit_edge ]
  %rem = and i32 %42, 31
  %43 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_ring, align 4
  %status = getelementptr %struct.netdev_desc, ptr %44, i32 %rem, i32 1
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %shr125 = lshr i32 %47, 2
  %and126 = and i32 %shr125, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and126, i32 %hw_frame_id.0)
  %cmp127 = icmp eq i32 %and126, %hw_frame_id.0
  %and132 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  %or.cond = select i1 %cmp127, i1 %tobool133.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and126, i32 %rem136)
  %cmp137 = icmp eq i32 %and126, %rem136
  %or.cond367 = select i1 %or.cond, i1 true, i1 %cmp137
  br i1 %or.cond367, label %for.body122.if.end220_crit_edge, label %for.inc162

for.body122.if.end220_crit_edge:                  ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

for.inc162:                                       ; preds = %for.body122
  %arrayidx141 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %48 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx141, align 4
  %50 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev, align 4
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %frag = getelementptr %struct.netdev_desc, ptr %44, i32 %rem, i32 2
  %52 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frag, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %len = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev143, i32 noundef %54, i32 noundef %56, i32 noundef 1, i32 noundef 0) #16
  %57 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx141, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %58, i32 noundef 0) #16
  %59 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx141, align 4
  %60 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring, align 4
  %frag153 = getelementptr %struct.netdev_desc, ptr %61, i32 %rem, i32 2
  %62 = ptrtoint ptr %frag153 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %frag153, align 4
  %63 = load ptr, ptr %tx_ring, align 4
  %length = getelementptr %struct.netdev_desc, ptr %63, i32 %rem, i32 2, i32 0, i32 1
  %64 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %length, align 4
  %65 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dirty_tx, align 8
  %inc164 = add i32 %66, 1
  store i32 %inc164, ptr %dirty_tx, align 8
  %67 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_tx, align 4
  %cmp120.not = icmp eq i32 %68, %inc164
  br i1 %cmp120.not, label %for.inc162.if.end220_crit_edge, label %for.inc162.for.body122_crit_edge

for.inc162.for.body122_crit_edge:                 ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body122

for.inc162.if.end220_crit_edge:                   ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

if.else167:                                       ; preds = %if.end114
  %cur_tx170 = getelementptr i8, ptr %dev_instance, i32 2908
  %dirty_tx171 = getelementptr i8, ptr %dev_instance, i32 2912
  %69 = ptrtoint ptr %cur_tx170 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_tx170, align 4
  %71 = ptrtoint ptr %dirty_tx171 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dirty_tx171, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp173.not375 = icmp eq i32 %70, %72
  br i1 %cmp173.not375, label %if.else167.if.end220_crit_edge, label %for.body175.lr.ph

if.else167.if.end220_crit_edge:                   ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

for.body175.lr.ph:                                ; preds = %if.else167
  %tx_ring180 = getelementptr i8, ptr %dev_instance, i32 2308
  br label %for.body175

for.body175:                                      ; preds = %for.inc215.for.body175_crit_edge, %for.body175.lr.ph
  %73 = phi i32 [ %72, %for.body175.lr.ph ], [ %inc217, %for.inc215.for.body175_crit_edge ]
  %rem178 = and i32 %73, 31
  %74 = ptrtoint ptr %tx_ring180 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_ring180, align 4
  %status182 = getelementptr %struct.netdev_desc, ptr %75, i32 %rem178, i32 1
  %76 = ptrtoint ptr %status182 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %status182, align 4
  %78 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool184.not = icmp eq i32 %78, 0
  br i1 %tobool184.not, label %for.body175.if.end220_crit_edge, label %for.inc215

for.body175.if.end220_crit_edge:                  ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

for.inc215:                                       ; preds = %for.body175
  %arrayidx188 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem178
  %79 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx188, align 4
  %81 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci_dev, align 4
  %dev190 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %frag193 = getelementptr %struct.netdev_desc, ptr %75, i32 %rem178, i32 2
  %83 = ptrtoint ptr %frag193 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frag193, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %len196 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %86 = ptrtoint ptr %len196 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len196, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev190, i32 noundef %85, i32 noundef %87, i32 noundef 1, i32 noundef 0) #16
  %88 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx188, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %89, i32 noundef 0) #16
  %90 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx188, align 4
  %91 = ptrtoint ptr %tx_ring180 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_ring180, align 4
  %frag203 = getelementptr %struct.netdev_desc, ptr %92, i32 %rem178, i32 2
  %93 = ptrtoint ptr %frag203 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %frag203, align 4
  %94 = load ptr, ptr %tx_ring180, align 4
  %length210 = getelementptr %struct.netdev_desc, ptr %94, i32 %rem178, i32 2, i32 0, i32 1
  %95 = ptrtoint ptr %length210 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %length210, align 4
  %96 = ptrtoint ptr %dirty_tx171 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dirty_tx171, align 8
  %inc217 = add i32 %97, 1
  store i32 %inc217, ptr %dirty_tx171, align 8
  %98 = ptrtoint ptr %cur_tx170 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_tx170, align 4
  %cmp173.not = icmp eq i32 %99, %inc217
  br i1 %cmp173.not, label %for.inc215.if.end220_crit_edge, label %for.inc215.for.body175_crit_edge

for.inc215.for.body175_crit_edge:                 ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body175

for.inc215.if.end220_crit_edge:                   ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

if.end220:                                        ; preds = %for.inc215.if.end220_crit_edge, %for.body175.if.end220_crit_edge, %if.else167.if.end220_crit_edge, %for.inc162.if.end220_crit_edge, %for.body122.if.end220_crit_edge, %if.then118.if.end220_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %100 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  %102 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end220.if.end230_crit_edge, label %land.lhs.true223

if.end220.if.end230_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end230

land.lhs.true223:                                 ; preds = %if.end220
  %cur_tx224 = getelementptr i8, ptr %dev_instance, i32 2908
  %104 = ptrtoint ptr %cur_tx224 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cur_tx224, align 4
  %dirty_tx225 = getelementptr i8, ptr %dev_instance, i32 2912
  %106 = ptrtoint ptr %dirty_tx225 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dirty_tx225, align 8
  %sub226 = sub i32 %105, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub226)
  %cmp227 = icmp ult i32 %sub226, 27
  br i1 %cmp227, label %if.then229, label %land.lhs.true223.if.end230_crit_edge

land.lhs.true223.if.end230_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end230

if.then229:                                       ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_tx_wake_queue(ptr noundef %101) #16
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %land.lhs.true223.if.end230_crit_edge, %if.end220.if.end230_crit_edge
  %and231 = and i32 %conv, 386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end230.cleanup235_crit_edge, label %if.then233

if.end230.cleanup235_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup235

if.then233:                                       ; preds = %if.end230
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 8
  %and.i = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i361 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i361, label %if.then233.if.end133.i_crit_edge, label %if.then.i362

if.then233.if.end133.i_crit_edge:                 ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end133.i

if.then.i362:                                     ; preds = %if.then233
  %phys.i.i = getelementptr i8, ptr %dev_instance, i32 3072
  %110 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %phys.i.i, align 8
  %conv.i.i = zext i8 %111 to i32
  %call1.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.i.i = and i32 %call1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i362.do.end.i_crit_edge

if.then.i362.do.end.i_crit_edge:                  ; preds = %if.then.i362
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then.i362
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 214748000) #16
  %call1.1.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.1.i.i = and i32 %call1.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 214748000) #16
  %call1.2.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.2.i.i = and i32 %call1.2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.do.end.i_crit_edge

if.end.1.i.i.do.end.i_crit_edge:                  ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #16
  %call1.3.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.3.i.i = and i32 %call1.3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.do.end.i_crit_edge

if.end.2.i.i.do.end.i_crit_edge:                  ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748000) #16
  %call1.4.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.4.i.i = and i32 %call1.4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %if.end.4.i.i, label %if.end.3.i.i.do.end.i_crit_edge

if.end.3.i.i.do.end.i_crit_edge:                  ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #16
  %call1.5.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.5.i.i = and i32 %call1.5.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %if.end.5.i.i, label %if.end.4.i.i.do.end.i_crit_edge

if.end.4.i.i.do.end.i_crit_edge:                  ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #16
  %call1.6.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.6.i.i = and i32 %call1.6.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %if.end.6.i.i, label %if.end.5.i.i.do.end.i_crit_edge

if.end.5.i.i.do.end.i_crit_edge:                  ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #16
  %call1.7.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.7.i.i = and i32 %call1.7.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %if.end.7.i.i, label %if.end.6.i.i.do.end.i_crit_edge

if.end.6.i.i.do.end.i_crit_edge:                  ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #16
  %call1.8.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.8.i.i = and i32 %call1.8.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %if.end.8.i.i, label %if.end.7.i.i.do.end.i_crit_edge

if.end.7.i.i.do.end.i_crit_edge:                  ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #16
  %call1.9.i.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv.i.i, i32 noundef 1) #16
  %and.9.i.i = and i32 %call1.9.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %and.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %do.end127.i, label %if.end.8.i.i.do.end.i_crit_edge

if.end.8.i.i.do.end.i_crit_edge:                  ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.8.i.i.do.end.i_crit_edge, %if.end.7.i.i.do.end.i_crit_edge, %if.end.6.i.i.do.end.i_crit_edge, %if.end.5.i.i.do.end.i_crit_edge, %if.end.4.i.i.do.end.i_crit_edge, %if.end.3.i.i.do.end.i_crit_edge, %if.end.2.i.i.do.end.i_crit_edge, %if.end.1.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %if.then.i362.do.end.i_crit_edge
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %dev_instance) #19
  %an_enable.i = getelementptr i8, ptr %dev_instance, i32 2916
  %121 = ptrtoint ptr %an_enable.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load.i = load i8, ptr %an_enable.i, align 4
  %122 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool4.not.i = icmp eq i8 %122, 0
  %123 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %phys.i.i, align 8
  %conv78.i = zext i8 %124 to i32
  br i1 %tobool4.not.i, label %if.else75.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i
  %call6.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv78.i, i32 noundef 4) #16
  %125 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %phys.i.i, align 8
  %conv10.i = zext i8 %126 to i32
  %call11.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv10.i, i32 noundef 5) #16
  %and15.i = and i32 %call11.i, %call6.i
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %dev_instance) #19
  %and25.i = and i32 %and15.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  %speed28.i = getelementptr i8, ptr %dev_instance, i32 2920
  %127 = ptrtoint ptr %speed28.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 100, ptr %speed28.i, align 8
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #19
  br label %if.end101.i

if.else.i:                                        ; preds = %if.then5.i
  %and35.i = and i32 %and15.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.else44.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %speed38.i = getelementptr i8, ptr %dev_instance, i32 2920
  %128 = ptrtoint ptr %speed38.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 100, ptr %speed38.i, align 8
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #19
  br label %if.end101.i

if.else44.i:                                      ; preds = %if.else.i
  %and46.i = and i32 %and15.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else55.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #18
  %speed49.i = getelementptr i8, ptr %dev_instance, i32 2920
  %129 = ptrtoint ptr %speed49.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 10, ptr %speed49.i, align 8
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #19
  br label %if.end101.i

if.else55.i:                                      ; preds = %if.else44.i
  %and57.i = and i32 %and15.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.end69.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #18
  %speed60.i = getelementptr i8, ptr %dev_instance, i32 2920
  %130 = ptrtoint ptr %speed60.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 10, ptr %speed60.i, align 8
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #19
  br label %if.end101.i

do.end69.i:                                       ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #18
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #19
  br label %if.end101.i

if.else75.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call79.i = tail call i32 @mdio_read(ptr noundef %dev_instance, i32 noundef %conv78.i, i32 noundef 0) #16
  %and82.i = and i32 %call79.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  %cond.i = select i1 %tobool83.not.i, i32 10, i32 100
  %speed84.i = getelementptr i8, ptr %dev_instance, i32 2920
  %131 = ptrtoint ptr %speed84.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %cond.i, ptr %speed84.i, align 8
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %dev_instance, i32 noundef %cond.i) #19
  %and97.i = and i32 %call79.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %cond99.i = select i1 %tobool98.not.i, ptr @.str.91, ptr @.str.90
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull %cond99.i) #19
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else75.i, %do.end69.i, %if.then59.i, %if.then48.i, %if.then37.i, %if.then27.i
  tail call fastcc void @check_duplex(ptr noundef %dev_instance) #16
  %132 = ptrtoint ptr %an_enable.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load102.i = load i8, ptr %an_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load102.i)
  %tobool105.not.i = icmp sgt i8 %bf.load102.i, -1
  br i1 %tobool105.not.i, label %if.end101.i.if.end123.i_crit_edge, label %land.lhs.true.i

if.end101.i.if.end123.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123.i

land.lhs.true.i:                                  ; preds = %if.end101.i
  %full_duplex.i = getelementptr i8, ptr %dev_instance, i32 3052
  %133 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load106.i = load i8, ptr %full_duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load106.i)
  %tobool109.not.i = icmp sgt i8 %bf.load106.i, -1
  br i1 %tobool109.not.i, label %land.lhs.true.i.if.end123.i_crit_edge, label %if.then110.i

land.lhs.true.i.if.end123.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123.i

if.then110.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr111.i = getelementptr i8, ptr %109, i32 102
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr111.i) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %135 = or i16 %134, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr111.i, i16 %135) #16, !srcloc !292
  %add.ptr117.i = getelementptr i8, ptr %109, i32 80
  %136 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr117.i) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %137 = or i16 %136, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr117.i, i16 %137) #16, !srcloc !292
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then110.i, %land.lhs.true.i.if.end123.i_crit_edge, %if.end101.i.if.end123.i_crit_edge
  tail call void @netif_carrier_on(ptr noundef %dev_instance) #16
  br label %if.end133.i

do.end127.i:                                      ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #16
  %call131.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %dev_instance) #19
  tail call void @netif_carrier_off(ptr noundef %dev_instance) #16
  br label %if.end133.i

if.end133.i:                                      ; preds = %do.end127.i, %if.end123.i, %if.then233.if.end133.i_crit_edge
  %and134.i = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %if.end133.i.if.end138.i_crit_edge, label %if.then136.i

if.end133.i.if.end138.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end138.i

if.then136.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #18
  %call137.i = tail call ptr @get_stats(ptr noundef %dev_instance) #16
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then136.i, %if.end133.i.if.end138.i_crit_edge
  %and139.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %if.end138.i.cleanup235_crit_edge, label %do.end144.i

if.end138.i.cleanup235_crit_edge:                 ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup235

do.end144.i:                                      ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #18
  %call148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %dev_instance, i32 noundef %conv) #19
  br label %cleanup235

cleanup235:                                       ; preds = %do.end144.i, %if.end138.i.cleanup235_crit_edge, %if.end230.cleanup235_crit_edge, %if.end.cleanup235_crit_edge
  %139 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msg_enable, align 4
  %and241 = and i32 %140, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %cleanup235.if.end254_crit_edge, label %do.end246

cleanup235.if.end254_crit_edge:                   ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end254

do.end246:                                        ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #18
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #16, !srcloc !295
  %142 = tail call i16 @llvm.bswap.i16(i16 %141) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv252 = zext i16 %142 to i32
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %dev_instance, i32 noundef %conv252) #19
  br label %if.end254

if.end254:                                        ; preds = %do.end246, %cleanup235.if.end254_crit_edge
  %not.tobool7.not = xor i1 %tobool7.not, true
  %cond = zext i1 %not.tobool7.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_tx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 2) #16, !srcloc !292
  tail call fastcc void @sundance_reset(ptr noundef %dev, i32 noundef 3932160)
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc8, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.netdev_desc, ptr %3, i32 %i.01
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.01
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring, align 4
  %frag = getelementptr %struct.netdev_desc, ptr %10, i32 %i.01, i32 2
  %11 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frag, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %len = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2, i32 noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef 0) #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %6, i32 noundef 1) #16
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx1, align 4
  %17 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc8 = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc8, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %dirty_tx = getelementptr i8, ptr %dev, i32 2912
  %19 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dirty_tx, align 8
  %cur_tx = getelementptr i8, ptr %dev, i32 2908
  %20 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cur_tx, align 4
  %cur_task = getelementptr i8, ptr %dev, i32 2980
  %21 = ptrtoint ptr %cur_task to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cur_task, align 4
  %last_tx = getelementptr i8, ptr %dev, i32 2904
  %22 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %last_tx, align 8
  %add.ptr9 = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 127) #16, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 8201) #16, !srcloc !292
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 352
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %msg_enable = getelementptr i8, ptr %t, i32 180
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %base = getelementptr i8, ptr %t, i32 376
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 76
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #16, !srcloc !295
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %conv = zext i16 %7 to i32
  %add.ptr4 = getelementptr i8, ptr %5, i32 70
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv6 = zext i8 %8 to i32
  %add.ptr7 = getelementptr i8, ptr %5, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #16, !srcloc !293
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !294
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %1, i32 noundef %conv, i32 noundef %conv6, i32 noundef %10) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @check_duplex(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 1000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_duplex(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %phys = getelementptr i8, ptr %dev, i32 3072
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys, align 8
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv, i32 noundef 5)
  %advertising = getelementptr i8, ptr %dev, i32 3040
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %advertising, align 4
  %and = and i32 %5, %call1
  %an_enable = getelementptr i8, ptr %dev, i32 2916
  %6 = ptrtoint ptr %an_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %an_enable, align 4
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call1)
  %cmp = icmp eq i32 %call1, 65535
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %full_duplex = getelementptr i8, ptr %dev, i32 3052
  %8 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load4 = load i8, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %tobool7.not = icmp sgt i8 %bf.load4, -1
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #16, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %10 = or i16 %9, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %10) #16, !srcloc !292
  br label %cleanup

if.end13:                                         ; preds = %entry
  %and14 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  %and16 = and i32 %and, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 64
  %11 = or i1 %tobool15.not, %cmp17
  %full_duplex20 = getelementptr i8, ptr %dev, i32 3052
  %12 = ptrtoint ptr %full_duplex20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load21 = load i8, ptr %full_duplex20, align 4
  %bf.lshr22 = lshr i8 %bf.load21, 7
  %13 = zext i1 %11 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr22, i8 %13)
  %cmp24.not = icmp eq i8 %bf.lshr22, %13
  br i1 %cmp24.not, label %if.end13.cleanup_crit_edge, label %if.then26

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then26:                                        ; preds = %if.end13
  %bf.shl = select i1 %11, i8 -128, i8 0
  %bf.clear30 = and i8 %bf.load21, 127
  %bf.set = or i8 %bf.clear30, %bf.shl
  %14 = ptrtoint ptr %full_duplex20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set, ptr %full_duplex20, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and31 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then26.if.end39_crit_edge, label %do.end

if.then26.if.end39_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %cond = select i1 %11, ptr @.str.90, ptr @.str.91
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phys, align 8
  %conv37 = zext i8 %18 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %dev, ptr noundef nonnull %cond, i32 noundef %conv37, i32 noundef %and) #19
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then26.if.end39_crit_edge
  %add.ptr40 = getelementptr i8, ptr %1, i32 80
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40) #16, !srcloc !295
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !296
  %cond44 = select i1 %11, i16 32, i16 0
  %or45 = or i16 %20, %cond44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  %21 = tail call i16 @llvm.bswap.i16(i16 %or45) #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40, i16 %21) #16, !srcloc !292
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end13.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_spin_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sundance_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 3080
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wolopts, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33, ptr %supported, align 4
  %wol_enabled = getelementptr i8, ptr %dev, i32 2924
  %4 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wol_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 69
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %wolopts, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or11 = or i32 %9, 1
  store i32 %or11, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 3076
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr i8, ptr %dev, i32 3080
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %wol_enabled = getelementptr i8, ptr %dev, i32 2924
  %7 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %wol_enabled, align 4
  %bf.shl = select i1 %tobool.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %wol_enabled, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 69
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #16, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !302
  %9 = and i8 %8, 120
  %10 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load7 = load i8, ptr %wol_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7)
  %tobool8.not = icmp sgt i8 %bf.load7, -1
  br i1 %tobool8.not, label %if.end.if.end25_crit_edge, label %if.then9

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts, align 4
  %and11 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %13 = or i8 %9, -126
  %spec.select = select i1 %tobool12.not, i8 %9, i8 %13
  %and18 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %14 = or i8 %spec.select, -124
  %spec.select48 = select i1 %tobool19.not, i8 %spec.select, i8 %14
  br label %if.end25

if.end25:                                         ; preds = %if.then9, %if.end.if.end25_crit_edge
  %wol_bits.1 = phi i8 [ %9, %if.end.if.end25_crit_edge ], [ %spec.select48, %if.then9 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %wol_bits.1) #16, !srcloc !300
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load30 = load i8, ptr %wol_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load30)
  %tobool33 = icmp slt i8 %bf.load30, 0
  %call34 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev28, i1 noundef zeroext %tobool33) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2884
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3036
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3036
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #16
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp = icmp eq i32 %stringset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = call ptr @memcpy(ptr %data, ptr @sundance_stats, i32 320)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @get_stats(ptr noundef %dev)
  %xstats = getelementptr i8, ptr %dev, i32 2760
  %0 = ptrtoint ptr %xstats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %xstats, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %tx_single_collisions = getelementptr i8, ptr %dev, i32 2768
  %3 = ptrtoint ptr %tx_single_collisions to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tx_single_collisions, align 8
  %arrayidx4 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx4, align 8
  %tx_late_collisions = getelementptr i8, ptr %dev, i32 2776
  %6 = ptrtoint ptr %tx_late_collisions to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_late_collisions, align 8
  %arrayidx7 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx7, align 8
  %tx_deferred = getelementptr i8, ptr %dev, i32 2784
  %9 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_deferred, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx10, align 8
  %tx_deferred_excessive = getelementptr i8, ptr %dev, i32 2792
  %12 = ptrtoint ptr %tx_deferred_excessive to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_deferred_excessive, align 8
  %arrayidx13 = getelementptr i64, ptr %data, i32 4
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx13, align 8
  %tx_aborted = getelementptr i8, ptr %dev, i32 2800
  %15 = ptrtoint ptr %tx_aborted to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tx_aborted, align 8
  %arrayidx16 = getelementptr i64, ptr %data, i32 5
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx16, align 8
  %tx_bcasts = getelementptr i8, ptr %dev, i32 2808
  %18 = ptrtoint ptr %tx_bcasts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_bcasts, align 8
  %arrayidx19 = getelementptr i64, ptr %data, i32 6
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx19, align 8
  %rx_bcasts = getelementptr i8, ptr %dev, i32 2816
  %21 = ptrtoint ptr %rx_bcasts to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_bcasts, align 8
  %arrayidx22 = getelementptr i64, ptr %data, i32 7
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx22, align 8
  %tx_mcasts = getelementptr i8, ptr %dev, i32 2824
  %24 = ptrtoint ptr %tx_mcasts to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tx_mcasts, align 8
  %arrayidx25 = getelementptr i64, ptr %data, i32 8
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx25, align 8
  %rx_mcasts = getelementptr i8, ptr %dev, i32 2832
  %27 = ptrtoint ptr %rx_mcasts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_mcasts, align 8
  %arrayidx28 = getelementptr i64, ptr %data, i32 9
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx28, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @check_if_running(ptr noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 10, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2840
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %mii_if = getelementptr i8, ptr %dev, i32 3036
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2840
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %mii_if = getelementptr i8, ptr %dev, i32 3036
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr i8, ptr %1, i32 3080
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @netdev_close(ptr noundef %1)
  tail call void @netif_device_detach(ptr noundef %1) #16
  %wol_enabled = getelementptr i8, ptr %1, i32 2924
  %6 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %wol_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %3, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !299
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 5) #16, !srcloc !300
  %add.ptr5 = getelementptr i8, ptr %3, i32 82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !291
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 8) #16, !srcloc !292
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %7 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load8 = load i8, ptr %wol_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8)
  %tobool11 = icmp slt i8 %bf.load8, 0
  %call12 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev_d, i1 noundef zeroext %tobool11) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sundance_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @netdev_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %1) #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @netif_device_attach(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5 ], [ %call2, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !273, !274, !276, !278, !279, !280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 101, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 102, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 103, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 105, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype345, !8, !"__UNIQUE_ID_debugtype345", i1 false, i1 false}
!10 = !{ptr @__param_rx_copybreak, !11, !"__param_rx_copybreak", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 106, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_copybreaktype346, !11, !"__UNIQUE_ID_rx_copybreaktype346", i1 false, i1 false}
!13 = !{ptr @__param_media, !14, !"__param_media", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 107, i32 1}
!15 = !{ptr @__UNIQUE_ID_mediatype347, !14, !"__UNIQUE_ID_mediatype347", i1 false, i1 false}
!16 = !{ptr @__param_flowctrl, !17, !"__param_flowctrl", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 108, i32 1}
!18 = !{ptr @__UNIQUE_ID_flowctrltype348, !17, !"__UNIQUE_ID_flowctrltype348", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_debug349, !20, !"__UNIQUE_ID_debug349", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 109, i32 1}
!21 = !{ptr @__UNIQUE_ID_rx_copybreak350, !22, !"__UNIQUE_ID_rx_copybreak350", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 110, i32 1}
!23 = !{ptr @__UNIQUE_ID_flowctrl351, !24, !"__UNIQUE_ID_flowctrl351", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 111, i32 1}
!25 = !{ptr @__initcall__kmod_sundance__352_1987_sundance_driver_init6, !26, !"__initcall__kmod_sundance__352_1987_sundance_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1987, i32 1}
!27 = !{ptr @__exitcall_sundance_driver_exit, !26, !"__exitcall_sundance_driver_exit", i1 false, i1 false}
!28 = !{ptr @rx_copybreak, !29, !"rx_copybreak", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 38, i32 12}
!30 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!31 = !{ptr @debug, !32, !"debug", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 29, i32 12}
!33 = !{ptr @__param_str_rx_copybreak, !11, !"__param_str_rx_copybreak", i1 false, i1 false}
!34 = !{ptr @__param_str_media, !14, !"__param_str_media", i1 false, i1 false}
!35 = !{ptr @__param_arr_media, !14, !"__param_arr_media", i1 false, i1 false}
!36 = !{ptr @media, !37, !"media", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 54, i32 14}
!38 = !{ptr @__param_str_flowctrl, !17, !"__param_str_flowctrl", i1 false, i1 false}
!39 = !{ptr @flowctrl, !40, !"flowctrl", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 39, i32 12}
!41 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sundance_driver, !43, !"sundance_driver", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1979, i32 26}
!44 = !{ptr @sundance_pci_tbl, !45, !"sundance_pci_tbl", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 194, i32 35}
!46 = !{ptr @sundance_probe1.card_idx, !47, !"card_idx", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 497, i32 13}
!48 = !{ptr @sundance_probe1.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 542, i32 2}
!50 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sundance_probe1.__key.2, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 543, i32 2}
!53 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 582, i32 2}
!56 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sundance_probe1._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @sundance_probe1._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 608, i32 4}
!62 = !{ptr @sundance_probe1._entry.7, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sundance_probe1._entry_ptr.9, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 616, i32 3}
!66 = !{ptr @sundance_probe1._entry.10, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sundance_probe1._entry_ptr.12, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 628, i32 33}
!70 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 629, i32 33}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 632, i32 40}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 633, i32 33}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 636, i32 40}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 637, i32 33}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 640, i32 40}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 641, i32 33}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 674, i32 3}
!86 = !{ptr @sundance_probe1._entry.21, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sundance_probe1._entry_ptr.23, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 682, i32 3}
!92 = !{ptr @sundance_probe1._entry.26, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sundance_probe1._entry_ptr.28, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 685, i32 3}
!96 = !{ptr @sundance_probe1._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sundance_probe1._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1340, i32 4}
!100 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rx_poll._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @rx_poll._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1345, i32 5}
!105 = !{ptr @rx_poll._entry.34, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rx_poll._entry_ptr.36, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1357, i32 5}
!109 = !{ptr @rx_poll._entry.37, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rx_poll._entry_ptr.39, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1365, i32 5}
!113 = !{ptr @rx_poll._entry.40, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rx_poll._entry_ptr.42, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!117 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @netdev_ops, !120, !"netdev_ops", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 476, i32 36}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 852, i32 3}
!123 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @netdev_open._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @netdev_open._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @netdev_open.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 874, i32 2}
!128 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 898, i32 3}
!131 = !{ptr @netdev_open._entry.48, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @netdev_open._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @netdev_open.__key.51, !134, !"__key", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 905, i32 2}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1189, i32 4}
!138 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @intr_handler._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @intr_handler._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1208, i32 6}
!143 = !{ptr @intr_handler._entry.55, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @intr_handler._entry_ptr.57, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1213, i32 7}
!147 = !{ptr @intr_handler._entry.58, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @intr_handler._entry_ptr.60, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1313, i32 3}
!151 = !{ptr @intr_handler._entry.61, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @intr_handler._entry_ptr.63, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1456, i32 4}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @netdev_error._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @netdev_error._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1462, i32 5}
!160 = !{ptr @netdev_error._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @netdev_error._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1466, i32 6}
!164 = !{ptr @netdev_error._entry.69, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @netdev_error._entry_ptr.71, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1469, i32 6}
!168 = !{ptr @netdev_error._entry.72, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @netdev_error._entry_ptr.74, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1472, i32 6}
!172 = !{ptr @netdev_error._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @netdev_error._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1475, i32 6}
!176 = !{ptr @netdev_error._entry.78, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @netdev_error._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1477, i32 6}
!180 = !{ptr @netdev_error._entry.81, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @netdev_error._entry_ptr.83, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1483, i32 5}
!184 = !{ptr @netdev_error._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @netdev_error._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1485, i32 5}
!188 = !{ptr @netdev_error._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @netdev_error._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1498, i32 4}
!194 = !{ptr @netdev_error._entry.92, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @netdev_error._entry_ptr.94, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1506, i32 3}
!198 = !{ptr @netdev_error._entry.95, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @netdev_error._entry_ptr.97, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 936, i32 4}
!202 = !{ptr @.str.99, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @check_duplex._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @check_duplex._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 951, i32 3}
!207 = !{ptr @.str.101, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @netdev_timer._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @netdev_timer._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1835, i32 3}
!212 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @netdev_close._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @netdev_close._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1839, i32 3}
!217 = !{ptr @netdev_close._entry.104, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @netdev_close._entry_ptr.106, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1121, i32 3}
!221 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @start_tx._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @start_tx._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 970, i32 2}
!226 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @tx_timeout._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @tx_timeout._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 978, i32 4}
!231 = !{ptr @tx_timeout._entry.111, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @tx_timeout._entry_ptr.113, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 986, i32 3}
!235 = !{ptr @tx_timeout._entry.114, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @tx_timeout._entry_ptr.116, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 989, i32 3}
!239 = !{ptr @tx_timeout._entry.117, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @tx_timeout._entry_ptr.119, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 992, i32 3}
!243 = !{ptr @tx_timeout._entry.120, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @tx_timeout._entry_ptr.122, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 993, i32 3}
!247 = !{ptr @tx_timeout._entry.123, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tx_timeout._entry_ptr.125, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @ethtool_ops, !250, !"ethtool_ops", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1786, i32 33}
!251 = !{ptr @sundance_stats, !252, !"sundance_stats", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1624, i32 3}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 214, i32 3}
!255 = !{ptr @.str.127, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 215, i32 3}
!257 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 216, i32 3}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 217, i32 3}
!261 = !{ptr @.str.130, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 218, i32 3}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 219, i32 3}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 220, i32 3}
!267 = !{ptr @pci_id_tbl, !268, !"pci_id_tbl", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 213, i32 33}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 458, i32 4}
!271 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @sundance_reset._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @sundance_reset._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @sundance_pm_ops, !275, !"sundance_pm_ops", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1977, i32 8}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/dlink/sundance.c", i32 1966, i32 3}
!278 = !{ptr @.str.136, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @sundance_resume._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @sundance_resume._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{!"auto-init"}
!291 = !{i64 2152233509}
!292 = !{i64 4691317}
!293 = !{i64 4692355}
!294 = !{i64 2152232704}
!295 = !{i64 4691517}
!296 = !{i64 2152232092}
!297 = !{i64 2152234059}
!298 = !{i64 4691937}
!299 = !{i64 2152233085}
!300 = !{i64 4691740}
!301 = !{i64 4692135}
!302 = !{i64 2152231480}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 2156614328}
!305 = !{i64 2148396488, i64 2148396514, i64 2148396543, i64 2148396577, i64 2148396608, i64 2148396631}
!306 = !{i64 2152797033}
!307 = !{i64 2152797354}
!308 = !{i64 2152798022}
!309 = !{i64 2148398953, i64 2148398979, i64 2148399008, i64 2148399042, i64 2148399073, i64 2148399096}
