; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/winbond-840.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/winbond-840.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_id_info = type { ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_private = type { ptr, [128 x i32], ptr, [32 x i32], i32, [128 x ptr], [32 x ptr], %struct.net_device_stats, %struct.timer_list, %struct.spinlock, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i8], i32, %struct.mii_if_info, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.w840_tx_desc = type { i32, i32, i32, i32 }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.w840_rx_desc = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author344 = internal constant [52 x i8] c"winbond_840.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [56 x i8] c"winbond_840.description=Winbond W89c840 Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [60 x i8] c"winbond_840.file=drivers/net/ethernet/dec/tulip/winbond-840\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [24 x i8] c"winbond_840.license=GPL\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [31 x i8] c"winbond_840.max_interrupt_work\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype348 = internal constant [44 x i8] c"winbond_840.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [18 x i8] c"winbond_840.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype349 = internal constant [31 x i8] c"winbond_840.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [25 x i8] c"winbond_840.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype350 = internal constant [38 x i8] c"winbond_840.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_multicast_filter_limit = internal constant [35 x i8] c"winbond_840.multicast_filter_limit\00", align 1
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype351 = internal constant [48 x i8] c"winbond_840.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [20 x i8] c"winbond_840.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype352 = internal constant [42 x i8] c"winbond_840.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [24 x i8] c"winbond_840.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype353 = internal constant [46 x i8] c"winbond_840.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work354 = internal constant [85 x i8] c"winbond_840.parm=max_interrupt_work:winbond-840 maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_debug355 = internal constant [53 x i8] c"winbond_840.parm=debug:winbond-840 debug level (0-6)\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak356 = internal constant [84 x i8] c"winbond_840.parm=rx_copybreak:winbond-840 copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit357 = internal constant [99 x i8] c"winbond_840.parm=multicast_filter_limit:winbond-840 maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__UNIQUE_ID_options358 = internal constant [80 x i8] c"winbond_840.parm=options:winbond-840: Bits 0-3: media type, bit 17: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex359 = internal constant [68 x i8] c"winbond_840.parm=full_duplex:winbond-840 full duplex setting(s) (1)\00", section ".modinfo", align 1
@__initcall__kmod_winbond_840__377_1631_w840_driver_init6 = internal global ptr @w840_driver_init, section ".initcall6.init", align 4
@w840_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @w840_pci_tbl, ptr @w840_probe1, ptr @w840_remove1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w840_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_w840_driver_exit = internal global ptr @w840_driver_exit, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"winbond_840\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"winbond-840\00", [20 x i8] zeroinitializer }, align 32
@w840_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4176, i32 2112, i32 -1, i32 33107, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4176, i32 2112, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4598, i32 8209, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@w840_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @w840_suspend, ptr @w840_resume, ptr @w840_suspend, ptr @w840_resume, ptr @w840_suspend, ptr @w840_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@w840_probe1.find_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@w840_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014winbond_840: Device %s disabled due to DMA limitations\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"w840_probe1\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/dec/tulip/winbond-840.c\00", [51 x i8] zeroinitializer }, align 32
@w840_probe1._entry_ptr = internal global ptr @w840_probe1._entry, section ".printk_index", align 4
@pci_id_tbl = internal constant { [4 x %struct.pci_id_info], [32 x i8] } { [4 x %struct.pci_id_info] [%struct.pci_id_info { ptr @.str.21, i32 11 }, %struct.pci_id_info { ptr @.str.21, i32 3 }, %struct.pci_id_info { ptr @.str.22, i32 3 }, %struct.pci_id_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@w840_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@w840_probe1._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 415, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ignoring user supplied media type %d\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w840_probe1._entry_ptr.10 = internal global ptr @w840_probe1._entry.6, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_msglevel, ptr @netdev_set_msglevel, ptr @netdev_nway_reset, ptr @netdev_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netdev_get_link_ksettings, ptr @netdev_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@w840_probe1._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 433, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s at %p, %pM, IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@w840_probe1._entry_ptr.13 = internal global ptr @w840_probe1._entry.11, section ".printk_index", align 4
@w840_probe1._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"MII PHY %08xh found at address %d, status 0x%04x advertising %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@w840_probe1._entry_ptr.16 = internal global ptr @w840_probe1._entry.14, section ".printk_index", align 4
@w840_probe1._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MII PHY not found -- this device may not operate correctly\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@w840_probe1._entry_ptr.20 = internal global ptr @w840_probe1._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Winbond W89c840\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Compex RL100-ATX\00", [47 x i8] zeroinitializer }, align 32
@netdev_open.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 -98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_open\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() irq %d\0A\00", [19 x i8] zeroinitializer }, align 32
@netdev_open.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.4, ptr @.str.25, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Done %s()\0A\00", [21 x i8] zeroinitializer }, align 32
@netdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&np->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@intr_handler.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 1, i8 22, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interrupt, status %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 1142, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Too much work at interrupt, status=0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@intr_handler.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.30, i8 1, i8 33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"exiting interrupt, status=%#4.4x\0A\00", [62 x i8] zeroinitializer }, align 32
@netdev_rx.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 1, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdev_rx\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" In netdev_rx(), entry %d status %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@netdev_rx.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.33, i8 1, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  netdev_rx() status was %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@netdev_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.4, i32 1190, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Oversized Ethernet frame spanned multiple buffers, entry %#x status %04x!\0A\00", [53 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr = internal global ptr @netdev_rx._entry, section ".printk_index", align 4
@netdev_rx.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.35, i8 1, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Receive error, Rx status %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@netdev_rx.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.36, i8 1, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"  netdev_rx() normal Rx pkt length %d status %x\0A\00", [47 x i8] zeroinitializer }, align 32
@netdev_rx.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.37, i8 1, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  Rx data %pM %pM %02x%02x %pI4\0A\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@netdev_tx_done.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 1, i8 9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netdev_tx_done\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transmit error, Tx status %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@netdev_tx_done.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 1, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Transmit slot %d ok, Tx status %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@netdev_error.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 1, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_error\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Abnormal event, %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@netdev_error.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 1, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tx underflow, new csr6 %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@update_csr6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 754, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't stop rxtx, IntrStatus %xh\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"update_csr6\00", [20 x i8] zeroinitializer }, align 32
@update_csr6._entry_ptr = internal global ptr @update_csr6._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@update_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 677, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MII #%d reports no link. Disabling watchdog\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"update_link\00", [20 x i8] zeroinitializer }, align 32
@update_link._entry_ptr = internal global ptr @update_link._entry, section ".printk_index", align 4
@update_link._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 686, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MII #%d link is back. Enabling watchdog\0A\00", [55 x i8] zeroinitializer }, align 32
@update_link._entry_ptr.52 = internal global ptr @update_link._entry.50, section ".printk_index", align 4
@update_link._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.4, i32 721, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Setting %dMBit-%s-duplex based on MII#%d\0A\00", [54 x i8] zeroinitializer }, align 32
@update_link._entry_ptr.55 = internal global ptr @update_link._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@netdev_timer.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 -63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_timer\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Media selection timer tick, status %08x config %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@netdev_close.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 1, i8 113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_close\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Shutting down ethercard, status was %08x Config %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@netdev_close.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.62, i8 1, i8 113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Queue pointers were Tx %d / %d,  Rx %d / %d\0A\00", [51 x i8] zeroinitializer }, align 32
@start_tx.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.4, ptr @.str.64, i8 1, i8 4, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transmit frame #%d queued in slot %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 920, ptr @.str.19, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Transmit timed out, status %08x, resetting...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_timeout\00", [21 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr = internal global ptr @tx_timeout._entry, section ".printk_index", align 4
@tx_timeout._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Rx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.69 = internal global ptr @tx_timeout._entry.67, section ".printk_index", align 4
@tx_timeout._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.4, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %08x\00", [24 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.72 = internal global ptr @tx_timeout._entry.70, section ".printk_index", align 4
@tx_timeout._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.4, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.75 = internal global ptr @tx_timeout._entry.73, section ".printk_index", align 4
@tx_timeout._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.4, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Tx ring %p: \00", [47 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.78 = internal global ptr @tx_timeout._entry.76, section ".printk_index", align 4
@tx_timeout._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.4, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.80 = internal global ptr @tx_timeout._entry.79, section ".printk_index", align 4
@tx_timeout._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.4, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.82 = internal global ptr @tx_timeout._entry.81, section ".printk_index", align 4
@tx_timeout._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.66, ptr @.str.4, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017Tx cur %d Tx dirty %d Tx Full %d, q bytes %d\0A\00", [48 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.85 = internal global ptr @tx_timeout._entry.83, section ".printk_index", align 4
@tx_timeout._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.66, ptr @.str.4, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017Tx Descriptor addr %xh\0A\00", [38 x i8] zeroinitializer }, align 32
@tx_timeout._entry_ptr.88 = internal global ptr @tx_timeout._entry.86, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 67, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 66, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 74, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 70, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"w840_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1623, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 82, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 83, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1631, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1624, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"w840_pci_tbl\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 212, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"w840_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1621, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"find_cnt\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 354, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 369, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"pci_id_tbl\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 229, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 397, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 413, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 338, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1430, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 432, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 444, i32 5 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 453, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 231, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 233, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 633, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 646, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 649, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1115, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1140, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1156, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1170, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1180, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1188, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1196, i32 6 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1210, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1239, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 326, i32 6 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1059, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1072, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1281, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1301, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 753, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 675, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 684, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 718, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 773, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1474, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1477, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1041, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 919, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 924, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 926, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 927, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 928, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 930, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 931, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 933, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [48 x i8] c"../drivers/net/ethernet/dec/tulip/winbond-840.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 935, i32 2 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_debug355, ptr @__UNIQUE_ID_debugtype349, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_full_duplex359, ptr @__UNIQUE_ID_full_duplextype353, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_max_interrupt_work354, ptr @__UNIQUE_ID_max_interrupt_worktype348, ptr @__UNIQUE_ID_multicast_filter_limit357, ptr @__UNIQUE_ID_multicast_filter_limittype351, ptr @__UNIQUE_ID_options358, ptr @__UNIQUE_ID_optionstype352, ptr @__UNIQUE_ID_rx_copybreak356, ptr @__UNIQUE_ID_rx_copybreaktype350, ptr @__exitcall_w840_driver_exit, ptr @__initcall__kmod_winbond_840__377_1631_w840_driver_init6, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_max_interrupt_work, ptr @__param_multicast_filter_limit, ptr @__param_options, ptr @__param_rx_copybreak, ptr @intr_handler._entry, ptr @intr_handler._entry_ptr, ptr @netdev_rx._entry, ptr @netdev_rx._entry_ptr, ptr @tx_timeout._entry, ptr @tx_timeout._entry.67, ptr @tx_timeout._entry.70, ptr @tx_timeout._entry.73, ptr @tx_timeout._entry.76, ptr @tx_timeout._entry.79, ptr @tx_timeout._entry.81, ptr @tx_timeout._entry.83, ptr @tx_timeout._entry.86, ptr @tx_timeout._entry_ptr, ptr @tx_timeout._entry_ptr.69, ptr @tx_timeout._entry_ptr.72, ptr @tx_timeout._entry_ptr.75, ptr @tx_timeout._entry_ptr.78, ptr @tx_timeout._entry_ptr.80, ptr @tx_timeout._entry_ptr.82, ptr @tx_timeout._entry_ptr.85, ptr @tx_timeout._entry_ptr.88, ptr @update_csr6._entry, ptr @update_csr6._entry_ptr, ptr @update_link._entry, ptr @update_link._entry.50, ptr @update_link._entry.53, ptr @update_link._entry_ptr, ptr @update_link._entry_ptr.52, ptr @update_link._entry_ptr.55, ptr @w840_driver_exit, ptr @w840_probe1._entry, ptr @w840_probe1._entry.11, ptr @w840_probe1._entry.14, ptr @w840_probe1._entry.17, ptr @w840_probe1._entry.6, ptr @w840_probe1._entry_ptr, ptr @w840_probe1._entry_ptr.10, ptr @w840_probe1._entry_ptr.13, ptr @w840_probe1._entry_ptr.16, ptr @w840_probe1._entry_ptr.20, ptr @max_interrupt_work, ptr @debug, ptr @rx_copybreak, ptr @multicast_filter_limit, ptr @w840_driver, ptr @options, ptr @full_duplex, ptr @.str, ptr @.str.1, ptr @w840_pci_tbl, ptr @w840_pm_ops, ptr @w840_probe1.find_cnt, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pci_id_tbl, ptr @w840_probe1.__key, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @netdev_open.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.84, ptr @.str.87], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1.find_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w840_probe1._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_csr6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_link._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_link._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_timeout._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w840_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @w840_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w840_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @w840_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w840_probe1(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = load i32, ptr @w840_probe1.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [8 x i32], ptr @options, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %addr, align 2, !annotation !250
  %6 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !250
  %8 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %8, align 2, !annotation !250
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %10 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call3 = tail call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end.pci_name.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1572, i32 noundef 1, i32 noundef 1) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %dev14 = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev2, ptr %parent, align 8
  %call15 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.err_out_netdev_crit_edge

if.end12.err_out_netdev_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_netdev

if.end18:                                         ; preds = %if.end12
  %call19 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 128) #13
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.err_out_netdev_crit_edge, label %for.cond.preheader

if.end18.err_out_netdev_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_netdev

for.cond.preheader:                               ; preds = %if.end18
  %add.ptr.i = getelementptr i8, ptr %call19, i32 36
  br label %for.body

for.body:                                         ; preds = %eeprom_read.exit.for.body_crit_edge, %for.cond.preheader
  %i.0226 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %eeprom_read.exit.for.body_crit_edge ]
  %or.i = or i32 %i.0226, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17301504) #13, !srcloc !252
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.040.i = phi i32 [ 10, %for.body ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.040.i
  %and.i = and i32 %shl.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %17 = select i1 %tobool.not.i, i32 2049, i32 2053
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #13, !srcloc !252
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %or4.i = or i32 %17, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #13, !srcloc !252
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec.i = add nsw i32 %i.040.i, -1
  %cmp.not.i = icmp eq i32 %i.040.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17301504) #13, !srcloc !252
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.end.i
  %i.142.i = phi i32 [ 16, %for.end.i ], [ %dec20.i, %for.body10.i.for.body10.i_crit_edge ]
  %retval1.041.i = phi i32 [ 0, %for.end.i ], [ %or17.i, %for.body10.i.for.body10.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50855936) #13, !srcloc !252
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %shl12.i = shl i32 %retval1.041.i, 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  %25 = lshr i32 %24, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %and14.lobit.i = and i32 %25, 1
  %or17.i = or i32 %and14.lobit.i, %shl12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 17301504) #13, !srcloc !252
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec20.i = add nsw i32 %i.142.i, -1
  %cmp8.i = icmp ugt i32 %i.142.i, 1
  br i1 %cmp8.i, label %for.body10.i.for.body10.i_crit_edge, label %eeprom_read.exit

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i

eeprom_read.exit:                                 ; preds = %for.body10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !252
  %conv = trunc i32 %or17.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx25 = getelementptr [3 x i16], ptr %addr, i32 0, i32 %i.0226
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx25, align 2
  %inc = add nuw nsw i32 %i.0226, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %eeprom_read.exit.for.body_crit_edge

eeprom_read.exit.for.body_crit_edge:              ; preds = %eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %eeprom_read.exit
  call void @dev_addr_mod(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call19, i32 16777216) #13, !srcloc !252
  %pci_dev = getelementptr i8, ptr %call9, i32 3788
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pdev, ptr %pci_dev, align 4
  %chip_id = getelementptr i8, ptr %call9, i32 3780
  %30 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %1, ptr %chip_id, align 4
  %arrayidx27 = getelementptr [4 x %struct.pci_id_info], ptr @pci_id_tbl, i32 0, i32 %1
  %drv_flags = getelementptr [4 x %struct.pci_id_info], ptr @pci_id_tbl, i32 0, i32 %1, i32 1
  %31 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %drv_flags, align 4
  %drv_flags28 = getelementptr i8, ptr %call9, i32 3784
  %33 = ptrtoint ptr %drv_flags28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %drv_flags28, align 4
  %lock = getelementptr i8, ptr %call9, i32 3736
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @w840_probe1.__key, i16 noundef signext 3) #13
  %mii_if = getelementptr i8, ptr %call9, i32 3840
  %dev33 = getelementptr i8, ptr %call9, i32 3860
  %34 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9, ptr %dev33, align 4
  %mdio_read = getelementptr i8, ptr %call9, i32 3864
  %35 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call9, i32 3868
  %36 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %base_addr = getelementptr i8, ptr %call9, i32 3872
  %37 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call19, ptr %base_addr, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 4
  %39 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool36.not = icmp eq i32 %40, 0
  %spec.select = select i1 %tobool36.not, i32 %cond, i32 %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp40 = icmp sgt i32 %spec.select, 0
  br i1 %cmp40, label %if.then42, label %for.end.if.end56_crit_edge

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then42:                                        ; preds = %for.end
  %and = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %if.then42.if.end46_crit_edge, label %if.then44

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex = getelementptr i8, ptr %call9, i32 3856
  %41 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %full_duplex, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %full_duplex, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42.if.end46_crit_edge
  %and47 = and i32 %spec.select, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %do.end52

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.7, i32 noundef %and47) #16
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %if.end46.if.end56_crit_edge, %for.end.if.end56_crit_edge
  %42 = load i32, ptr @w840_probe1.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp57 = icmp slt i32 %42, 8
  br i1 %cmp57, label %land.lhs.true, label %if.end56.if.end68_crit_edge

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end56
  %arrayidx59 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp60 = icmp sgt i32 %44, 0
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex64 = getelementptr i8, ptr %call9, i32 3856
  %45 = ptrtoint ptr %full_duplex64 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load65 = load i8, ptr %full_duplex64, align 4
  %bf.set67 = or i8 %bf.load65, -128
  store i8 %bf.set67, ptr %full_duplex64, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %land.lhs.true.if.end68_crit_edge, %if.end56.if.end68_crit_edge
  %full_duplex70 = getelementptr i8, ptr %call9, i32 3856
  %46 = ptrtoint ptr %full_duplex70 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load71 = load i8, ptr %full_duplex70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load71)
  %tobool72.not = icmp sgt i8 %bf.load71, -1
  br i1 %tobool72.not, label %if.end68.if.end78_crit_edge, label %if.then73

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set77 = or i8 %bf.load71, 64
  %47 = ptrtoint ptr %full_duplex70 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.set77, ptr %full_duplex70, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end68.if.end78_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 44
  %49 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 115
  %50 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 200, ptr %watchdog_timeo, align 4
  %call79 = call i32 @register_netdev(ptr noundef nonnull %call9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.end85, label %err_out_cleardev

do.end85:                                         ; preds = %if.end78
  %51 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx27, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 86
  %53 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.12, ptr noundef %52, ptr noundef nonnull %call19, ptr noundef %54, i32 noundef %11) #16
  %55 = ptrtoint ptr %drv_flags28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %drv_flags28, align 4
  %and89 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.end85.if.end135_crit_edge, label %for.cond92.preheader

do.end85.if.end135_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

for.cond92.preheader:                             ; preds = %do.end85
  %phys = getelementptr i8, ptr %call9, i32 3832
  %advertising = getelementptr i8, ptr %call9, i32 3844
  %mii = getelementptr i8, ptr %call9, i32 3836
  br label %for.body97

for.body97:                                       ; preds = %if.end119.for.body97_crit_edge, %for.cond92.preheader
  %phy.0227 = phi i32 [ 1, %for.cond92.preheader ], [ %inc121, %if.end119.for.body97_crit_edge ]
  %call98 = call i32 @mdio_read(ptr noundef nonnull %call9, i32 noundef %phy.0227, i32 noundef 1)
  %57 = zext i32 %call98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call98, label %for.end122 [
    i32 65535, label %for.body97.if.end119_crit_edge
    i32 0, label %for.body97.if.end119_crit_edge248
  ]

for.body97.if.end119_crit_edge248:                ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

for.body97.if.end119_crit_edge:                   ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.end119:                                        ; preds = %for.body97.if.end119_crit_edge, %for.body97.if.end119_crit_edge248
  %inc121 = add nuw nsw i32 %phy.0227, 1
  %cmp93 = icmp ult i32 %phy.0227, 31
  br i1 %cmp93, label %if.end119.for.body97_crit_edge, label %do.end132

if.end119.for.body97_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body97

for.end122:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  %conv105 = trunc i32 %phy.0227 to i8
  %58 = ptrtoint ptr %phys to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv105, ptr %phys, align 1
  %call108 = call i32 @mdio_read(ptr noundef nonnull %call9, i32 noundef %phy.0227, i32 noundef 4)
  %59 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call108, ptr %advertising, align 4
  %call110 = call i32 @mdio_read(ptr noundef nonnull %call9, i32 noundef %phy.0227, i32 noundef 2)
  %shl = shl i32 %call110, 16
  %call111 = call i32 @mdio_read(ptr noundef nonnull %call9, i32 noundef %phy.0227, i32 noundef 3)
  %add = add i32 %shl, %call111
  %60 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %mii, align 4
  %61 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %advertising, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.15, i32 noundef %add, i32 noundef %phy.0227, i32 noundef %call98, i32 noundef %62) #16
  %mii_cnt = getelementptr i8, ptr %call9, i32 3828
  %63 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %mii_cnt, align 4
  %64 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %phys, align 4
  %conv125 = zext i8 %65 to i32
  %66 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv125, ptr %mii_if, align 4
  br label %if.end135

do.end132:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  %mii_cnt238 = getelementptr i8, ptr %call9, i32 3828
  %67 = ptrtoint ptr %mii_cnt238 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %mii_cnt238, align 4
  %68 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %phys, align 4
  %conv125239 = zext i8 %69 to i32
  %70 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv125239, ptr %mii_if, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.18) #16
  br label %if.end135

if.end135:                                        ; preds = %do.end132, %for.end122, %do.end85.if.end135_crit_edge
  %71 = load i32, ptr @w840_probe1.find_cnt, align 4
  %inc136 = add i32 %71, 1
  store i32 %inc136, ptr @w840_probe1.find_cnt, align 4
  br label %cleanup

err_out_cleardev:                                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call19) #13
  br label %err_out_netdev

err_out_netdev:                                   ; preds = %err_out_cleardev, %if.end18.err_out_netdev_crit_edge, %if.end12.err_out_netdev_crit_edge
  call void @free_netdev(ptr noundef nonnull %call9) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out_netdev, %if.end135, %if.end8.cleanup_crit_edge, %pci_name.exit, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %pci_name.exit ], [ -19, %err_out_netdev ], [ 0, %if.end135 ], [ %call, %cond.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w840_remove1(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_netdev(ptr noundef nonnull %1) #13
  %base_addr = getelementptr i8, ptr %1, i32 3872
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #13
  tail call void @free_netdev(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %location
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %dec5.i = phi i32 [ 31, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1536) #13, !srcloc !252
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1792) #13, !srcloc !252
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec.i = add nsw i32 %dec5.i, -1
  %cmp.not.i = icmp eq i32 %dec5.i, 0
  br i1 %cmp.not.i, label %for.body.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

for.body.preheader:                               ; preds = %while.body.i
  %or1 = or i32 %or, 251904
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.038 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 15, %for.body.preheader ]
  %shl3 = shl nuw i32 1, %i.038
  %and = and i32 %shl3, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool4.not, i32 1024, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #13, !srcloc !252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %5 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #13, !srcloc !252
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec = add nsw i32 %i.038, -1
  %cmp.not = icmp eq i32 %i.038, 0
  br i1 %cmp.not, label %for.body.for.body10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %retval2.040 = phi i32 [ %or17, %for.body10.for.body10_crit_edge ], [ 0, %for.body.for.body10_crit_edge ]
  %i.139 = phi i32 [ %dec20, %for.body10.for.body10_crit_edge ], [ 20, %for.body.for.body10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %shl12 = shl i32 %retval2.040, 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %9 = lshr i32 %8, 11
  %and14.lobit = and i32 %9, 1
  %or17 = or i32 %and14.lobit, %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #13, !srcloc !252
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec20 = add nsw i32 %i.139, -1
  %cmp9 = icmp ugt i32 %i.139, 1
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.end21

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10

for.end21:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  %and22 = and i32 %retval2.040, 65535
  ret i32 %and22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %location, 18
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %value
  %or3 = or i32 %or2, 1342308352
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %location)
  %cmp = icmp eq i32 %location, 4
  br i1 %cmp, label %land.lhs.true, label %entry.while.body.i.preheader_crit_edge

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.preheader

land.lhs.true:                                    ; preds = %entry
  %phys = getelementptr i8, ptr %dev, i32 3832
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %phy_id)
  %cmp4 = icmp eq i32 %conv, %phy_id
  br i1 %cmp4, label %if.then, label %land.lhs.true.while.body.i.preheader_crit_edge

land.lhs.true.while.body.i.preheader_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %advertising = getelementptr i8, ptr %dev, i32 3844
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %value, ptr %advertising, align 4
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then, %land.lhs.true.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %dec5.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 31, %while.body.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1536) #13, !srcloc !252
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1792) #13, !srcloc !252
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec.i = add nsw i32 %dec5.i, -1
  %cmp.not.i = icmp eq i32 %dec5.i, 0
  br i1 %cmp.not.i, label %while.body.i.for.body_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.for.body_crit_edge:                  ; preds = %while.body.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.i.for.body_crit_edge
  %i.042 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %while.body.i.for.body_crit_edge ]
  %shl10 = shl nuw i32 1, %i.042
  %and = and i32 %shl10, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, i32 1024, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #13, !srcloc !252
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %8 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #13, !srcloc !252
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %dec = add nsw i32 %i.042, -1
  %cmp8.not = icmp eq i32 %i.042, 0
  br i1 %cmp8.not, label %for.body18.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body18.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !252
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #13, !srcloc !252
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !252
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #13, !srcloc !252
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #13, !srcloc !252
  tail call void @netif_device_detach(ptr noundef %dev) #13
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_err_crit_edge

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end:                                           ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.body4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_open.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_open, %if.end14)) #13
          to label %if.then10 [label %if.end14], !srcloc !255

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_open.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %5) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body4, %if.end.if.end14_crit_edge
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %8)
  %cmp.i = icmp ult i32 %8, 1501
  %add.i = add i32 %8, 32
  %spec.select.i = select i1 %cmp.i, i32 1536, i32 %add.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 3808
  %9 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 4
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2952
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 2560, ptr noundef %ring_dma_addr.i, i32 noundef 3264, i32 noundef 0) #13
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end14.out_err_crit_edge, label %if.end18

if.end14.out_err_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end18:                                         ; preds = %if.end14
  tail call fastcc void @init_rxtx_rings(ptr noundef %dev) #13
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call void @netif_device_attach(ptr noundef %dev) #13
  tail call fastcc void @init_registers(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %14, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp20 = icmp sgt i32 %15, 2
  br i1 %cmp20, label %do.body23, label %if.end18.do.body44_crit_edge

if.end18.do.body44_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body44

do.body23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_open.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_open, %do.body44)) #13
          to label %if.then37 [label %do.body44], !srcloc !255

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_open.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #13
  br label %do.body44

do.body44:                                        ; preds = %if.then37, %do.body23, %if.end18.do.body44_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 3688
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @netdev_timer, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @netdev_open.__key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 100
  %expires = getelementptr i8, ptr %dev, i32 3696
  %17 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #13
  br label %cleanup

out_err:                                          ; preds = %if.end14.out_err_crit_edge, %entry.out_err_crit_edge
  %i.0 = phi i32 [ %call.i, %entry.out_err_crit_edge ], [ -12, %if.end14.out_err_crit_edge ]
  tail call void @netif_device_attach(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.body44
  %retval.0 = phi i32 [ %i.0, %out_err ], [ 0, %do.body44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_close.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_close, %do.body13)) #13
          to label %if.then6 [label %do.body13], !srcloc !255

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %add.ptr8 = getelementptr i8, ptr %1, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #13, !srcloc !253
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_close.__UNIQUE_ID_ddebug375, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %6, i32 noundef %8) #13
  br label %do.body13

do.body13:                                        ; preds = %if.then6, %do.body1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_close.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_close, %if.end33)) #13
          to label %if.then27 [label %if.end33], !srcloc !255

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %cur_tx = getelementptr i8, ptr %dev, i32 3812
  %9 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 3816
  %11 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dirty_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 3800
  %13 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 3804
  %15 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dirty_rx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_close.__UNIQUE_ID_ddebug376, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body13, %entry.if.end33_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call void @netif_device_detach(ptr noundef %dev) #13
  %17 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr, align 4
  %state.i.i73 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %state.i.i73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i73, align 4
  %csr6.i = getelementptr i8, ptr %dev, i32 3792
  %21 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %csr6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end33.update_csr6.exit_crit_edge, label %if.end3.i

if.end33.update_csr6.exit_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.end3.i:                                        ; preds = %if.end33
  %and.i = and i32 %22, -8195
  %add.ptr.i74 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %23) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %18, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %25 = and i32 %24, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i78, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %29) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i78 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #13
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %30 = and i32 %29, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %csr6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %csr6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 0) #13, !srcloc !252
  br label %update_csr6.exit

update_csr6.exit:                                 ; preds = %for.end.i, %if.end33.update_csr6.exit_crit_edge
  %add.ptr34 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 0) #13, !srcloc !252
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %36, ptr noundef %dev) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !256
  tail call void @arm_heavy_mb() #13
  tail call void @netif_device_attach(ptr noundef %dev) #13
  %add.ptr40 = getelementptr i8, ptr %1, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp42.not = icmp eq i32 %37, -1
  br i1 %cmp42.not, label %update_csr6.exit.if.end46_crit_edge, label %if.then43

update_csr6.exit.if.end46_crit_edge:              ; preds = %update_csr6.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %update_csr6.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr44 = getelementptr i8, ptr %1, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %39 = and i32 %38, -65536
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %rx_missed_errors = getelementptr i8, ptr %dev, i32 3656
  %41 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %42, %40
  store i32 %add, ptr %rx_missed_errors, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %update_csr6.exit.if.end46_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %timer = getelementptr i8, ptr %dev, i32 3688
  %call47 = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  tail call fastcc void @free_rxtx_rings(ptr noundef %add.ptr.i)
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  %ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2952
  %47 = ptrtoint ptr %ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 2560, ptr noundef %46, i32 noundef %48, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 3812
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %1, 31
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %5) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !257

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev2) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef %5, i32 noundef %7) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %5 to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i107 = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i107, i32 noundef %and.i, i32 noundef %7, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i108 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i108, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %arrayidx4, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2820
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring, align 4
  %buffer1 = getelementptr %struct.w840_tx_desc, ptr %17, i32 %rem, i32 2
  %18 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i108, ptr %buffer1, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %20)
  %cmp = icmp ult i32 %20, 896
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %20, 1610612736
  br label %if.end

if.else:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add = add i32 %22, 896
  %23 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_ring, align 4
  %buffer2 = getelementptr %struct.w840_tx_desc, ptr %24, i32 %rem, i32 3
  %25 = ptrtoint ptr %buffer2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %buffer2, align 4
  %sub = shl i32 %20, 11
  %shl = add i32 %sub, -1835008
  %or19 = or i32 %shl, 1610613632
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %or19.sink = phi i32 [ %or19, %if.else ], [ %or, %if.then ]
  %26 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring, align 4
  %length22 = getelementptr %struct.w840_tx_desc, ptr %27, i32 %rem, i32 1
  %28 = ptrtoint ptr %length22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or19.sink, ptr %length22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %rem)
  %cmp23 = icmp eq i32 %rem, 31
  br i1 %cmp23, label %if.then24, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ring, align 4
  %length27 = getelementptr %struct.w840_tx_desc, ptr %30, i32 31, i32 1
  %31 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length27, align 4
  %or28 = or i32 %32, 33554432
  store i32 %or28, ptr %length27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end.if.end29_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %33 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_tx, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %cur_tx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !258
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_ring, align 4
  %arrayidx32 = getelementptr %struct.w840_tx_desc, ptr %36, i32 %rem
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2147483648, ptr %arrayidx32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !259
  tail call void @arm_heavy_mb() #13
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !252
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %tx_q_bytes = getelementptr i8, ptr %dev, i32 3820
  %42 = ptrtoint ptr %tx_q_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_q_bytes, align 4
  %add37 = add i32 %43, %41
  store i32 %add37, ptr %tx_q_bytes, align 4
  %44 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 3816
  %46 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dirty_tx, align 4
  %sub39 = sub i32 %45, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub39)
  %cmp40 = icmp ugt i32 %sub39, 10
  br i1 %cmp40, label %if.end29.if.then43_crit_edge, label %lor.lhs.false

if.end29.if.then43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end29
  %drv_flags = getelementptr i8, ptr %dev, i32 3784
  %48 = ptrtoint ptr %drv_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %drv_flags, align 4
  %and = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %add37)
  %cmp42 = icmp ugt i32 %add37, 518
  %or.cond = select i1 %tobool.not, i1 %cmp42, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.end47_crit_edge

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end29.if.then43_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !260
  tail call void @arm_heavy_mb() #13
  %tx_full = getelementptr i8, ptr %dev, i32 3824
  %52 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %tx_full, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %lor.lhs.false.if.end47_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %53)
  %cmp49 = icmp sgt i32 %53, 4
  br i1 %cmp49, label %do.body52, label %if.end47.if.end65_crit_edge

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

do.body52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_tx.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_tx, %if.end65)) #13
          to label %if.then58 [label %if.end65], !srcloc !255

if.then58:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @start_tx.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %55, i32 noundef %rem) #13
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %do.body52, %if.end47.if.end65_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @__set_rx_mode(ptr noundef %dev)
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %csr6 = getelementptr i8, ptr %dev, i32 3792
  %0 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csr6, align 4
  %and = and i32 %1, -249
  %or = or i32 %and, %call1
  %base_addr.i = getelementptr i8, ptr %dev, i32 3872
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 0, i32 %or
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %1)
  %cmp.i = icmp eq i32 %spec.select.i, %1
  br i1 %cmp.i, label %entry.update_csr6.exit_crit_edge, label %if.end3.i

entry.update_csr6.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.end3.i:                                        ; preds = %entry
  %and.i = and i32 %1, -8195
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %7) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %3, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %9 = and i32 %8, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i9, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %13) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i9 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #13
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %14 = and i32 %13, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %16 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select.i, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %17) #13, !srcloc !252
  %and26.i = and i32 %spec.select.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.end.i.update_csr6.exit_crit_edge, label %if.then28.i

for.end.i.update_csr6.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex.i = getelementptr i8, ptr %dev, i32 3856
  %18 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %full_duplex.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %full_duplex.i, align 4
  br label %update_csr6.exit

update_csr6.exit:                                 ; preds = %if.then28.i, %for.end.i.update_csr6.exit_crit_edge, %entry.update_csr6.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb4_crit_edge
    i32 35145, label %sw.bb13
  ]

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phys = getelementptr i8, ptr %dev, i32 3832
  %1 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %phys, align 4
  %3 = and i8 %2, 31
  %conv3 = zext i8 %3 to i16
  %4 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv3, ptr %ifr_ifru.i, align 2
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %entry.sw.bb4_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ifr_ifru.i, align 2
  %7 = and i16 %6, 31
  %and7 = zext i16 %7 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_num, align 2
  %10 = and i16 %9, 31
  %and9 = zext i16 %10 to i32
  %call10 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %and7, i32 noundef %and9)
  %conv11 = trunc i32 %call10 to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %11 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv11, ptr %val_out, align 2
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock14 = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock14) #13
  %12 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ifr_ifru.i, align 2
  %14 = and i16 %13, 31
  %and17 = zext i16 %14 to i32
  %reg_num18 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %15 = ptrtoint ptr %reg_num18 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg_num18, align 2
  %17 = and i16 %16, 31
  %and20 = zext i16 %17 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val_in, align 2
  %conv21 = zext i16 %19 to i32
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %and17, i32 noundef %and20, i32 noundef %conv21)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb13, %sw.bb4
  %lock14.sink = phi ptr [ %lock14, %sw.bb13 ], [ %lock, %sw.bb4 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock14.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  %dev2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.65, i32 noundef %7) #16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %9) #16
  br label %do.end10

do.end10:                                         ; preds = %do.end10.do.end10_crit_edge, %entry
  %i.086 = phi i32 [ 0, %entry ], [ %inc, %do.end10.do.end10_crit_edge ]
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.w840_rx_desc, ptr %11, i32 %i.086
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %13) #16
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.end16, label %do.end10.do.end10_crit_edge

do.end10.do.end10_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.end16:                                         ; preds = %do.end10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #16
  %tx_ring = getelementptr i8, ptr %dev, i32 2820
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %15) #16
  br label %do.end29

do.end29:                                         ; preds = %do.end29.do.end29_crit_edge, %do.end16
  %i.187 = phi i32 [ 0, %do.end16 ], [ %inc36, %do.end29.do.end29_crit_edge ]
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring, align 4
  %arrayidx32 = getelementptr %struct.w840_tx_desc, ptr %17, i32 %i.187
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %19) #16
  %inc36 = add nuw nsw i32 %i.187, 1
  %exitcond88.not = icmp eq i32 %inc36, 32
  br i1 %exitcond88.not, label %do.end40, label %do.end29.do.end29_crit_edge

do.end29.do.end29_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end40:                                         ; preds = %do.end29
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #16
  %cur_tx = getelementptr i8, ptr %dev, i32 3812
  %20 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 3816
  %22 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dirty_tx, align 4
  %tx_full = getelementptr i8, ptr %dev, i32 3824
  %24 = ptrtoint ptr %tx_full to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_full, align 4
  %tx_q_bytes = getelementptr i8, ptr %dev, i32 3820
  %26 = ptrtoint ptr %tx_q_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_q_bytes, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #16
  %add.ptr52 = getelementptr i8, ptr %1, i32 76
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #13, !srcloc !253
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %29) #16
  tail call void @disable_irq(i32 noundef %5) #13
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 16777216) #13, !srcloc !252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #13
  tail call fastcc void @free_rxtx_rings(ptr noundef %add.ptr.i)
  tail call fastcc void @init_rxtx_rings(ptr noundef %dev)
  tail call fastcc void @init_registers(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @enable_irq(i32 noundef %5) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %34) #13
  %35 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 12
  %38 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i.i = icmp eq i32 %39, %37
  br i1 %cmp.not.i.i, label %do.end40.netif_trans_update.exit_crit_edge, label %do.body5.i.i

do.end40.netif_trans_update.exit_crit_edge:       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %37, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %do.end40.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr i8, ptr %dev, i32 3616
  %41 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors, align 4
  %inc58 = add i32 %42, 1
  store i32 %inc58, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i13.not = icmp eq i32 %6, 0
  br i1 %tobool.i13.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %rx_missed_errors = getelementptr i8, ptr %dev, i32 3656
  %10 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %rx_missed_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %stats5 = getelementptr i8, ptr %dev, i32 3596
  ret ptr %stats5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev_instance, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %2 = load i32, ptr @max_interrupt_work, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.cleanup83_crit_edge, label %do.body.preheader

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

do.body.preheader:                                ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %add.ptr28 = getelementptr i8, ptr %1, i32 8
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 3812
  %dirty_tx = getelementptr i8, ptr %dev_instance, i32 3816
  %lock = getelementptr i8, ptr %dev_instance, i32 3736
  br label %do.body

do.body:                                          ; preds = %if.end39.do.body_crit_edge, %do.body.preheader
  %work_limit.0 = phi i32 [ %dec, %if.end39.do.body_crit_edge ], [ %2, %do.body.preheader ]
  %handled.0 = phi i32 [ 1, %if.end39.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %and = and i32 %7, 131071
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #13, !srcloc !252
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp sgt i32 %9, 4
  br i1 %cmp, label %do.body6, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intr_handler.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@intr_handler, %if.end15)) #13
          to label %if.then11 [label %if.end15], !srcloc !255

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @intr_handler.__UNIQUE_ID_ddebug366, ptr noundef %dev_instance, ptr noundef nonnull @.str.28, i32 noundef %7) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.body6, %do.body.if.end15_crit_edge
  %and16 = and i32 %7, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %if.end15.do.end55_crit_edge, label %if.end19

if.end15.do.end55_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

if.end19:                                         ; preds = %if.end15
  %and20 = and i32 %7, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.then22

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @netdev_rx(ptr noundef %dev_instance)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %and25 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #13, !srcloc !252
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %and30 = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %land.lhs.true

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end29
  %10 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_tx, align 4
  %12 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp32.not = icmp eq i32 %11, %13
  br i1 %cmp32.not, label %land.lhs.true.if.end35_crit_edge, label %if.then33

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  tail call fastcc void @netdev_tx_done(ptr noundef %dev_instance)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true.if.end35_crit_edge, %if.end29.if.end35_crit_edge
  %and36 = and i32 %7, 43042
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end39_crit_edge, label %if.then38

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @netdev_error(ptr noundef %dev_instance, i32 noundef %7)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %dec = add i32 %work_limit.0, -1
  %cmp40 = icmp slt i32 %dec, 0
  br i1 %cmp40, label %do.end44, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end44:                                         ; preds = %if.end39
  %dev45 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str.29, i32 noundef %7) #16
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i119.not = icmp eq i32 %16, 0
  br i1 %tobool.i119.not, label %do.end44.if.end51_crit_edge, label %if.then48

do.end44.if.end51_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then48:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr49 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 8912896) #13, !srcloc !252
  %add.ptr50 = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 167772160) #13, !srcloc !252
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.end44.if.end51_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %do.end55

do.end55:                                         ; preds = %if.end51, %if.end15.do.end55_crit_edge
  %handled.1.ph = phi i32 [ 1, %if.end51 ], [ %handled.0, %if.end15.do.end55_crit_edge ]
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp56 = icmp sgt i32 %17, 3
  br i1 %cmp56, label %do.body59, label %do.end55.if.end81_crit_edge

do.end55.if.end81_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

do.body59:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intr_handler.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@intr_handler, %if.end81)) #13
          to label %if.then73 [label %if.end81], !srcloc !255

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @intr_handler.__UNIQUE_ID_ddebug367, ptr noundef %dev_instance, ptr noundef nonnull @.str.30, i32 noundef %19) #13
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %do.body59, %do.end55.if.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1.ph)
  %tobool82.not = icmp ne i32 %handled.1.ph, 0
  %cond = zext i1 %tobool82.not to i32
  br label %cleanup83

cleanup83:                                        ; preds = %if.end81, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end81 ], [ 0, %entry.cleanup83_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_registers(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #13, !srcloc !262
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  %add.ptr1.1 = getelementptr i8, ptr %1, i32 65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1, i8 %9) #13, !srcloc !262
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %add.ptr1.2 = getelementptr i8, ptr %1, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2, i8 %13) #13, !srcloc !262
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %add.ptr1.3 = getelementptr i8, ptr %1, i32 67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.3, i8 %17) #13, !srcloc !262
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %add.ptr1.4 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.4, i8 %21) #13, !srcloc !262
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %23, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.5, align 1
  %add.ptr1.5 = getelementptr i8, ptr %1, i32 69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !261
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.5, i8 %25) #13, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 306712576) #13, !srcloc !252
  %csr6 = getelementptr i8, ptr %dev, i32 3792
  %26 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %csr6, align 4
  %call5 = tail call fastcc i32 @update_link(ptr noundef %dev)
  %call7 = tail call fastcc i32 @__set_rx_mode(ptr noundef %dev)
  %or6 = or i32 %call5, %call7
  %or8 = or i32 %or6, 139266
  %27 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base_addr, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 0, i32 %or8
  %32 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %csr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %33)
  %cmp.i = icmp eq i32 %spec.select.i, %33
  br i1 %cmp.i, label %entry.update_csr6.exit_crit_edge, label %if.end3.i

entry.update_csr6.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.end3.i:                                        ; preds = %entry
  %and.i = and i32 %33, -8195
  %add.ptr.i28 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %34) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %28, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %36 = and i32 %35, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i31, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %40) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i31 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #13
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %41 = and i32 %40, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %43 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select.i, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %44 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %44) #13, !srcloc !252
  %and26.i = and i32 %spec.select.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.end.i.update_csr6.exit_crit_edge, label %if.then28.i

for.end.i.update_csr6.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex.i = getelementptr i8, ptr %dev, i32 3856
  %45 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %full_duplex.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %full_duplex.i, align 4
  br label %update_csr6.exit

update_csr6.exit:                                 ; preds = %if.then28.i, %for.end.i.update_csr6.exit_crit_edge, %entry.update_csr6.exit_crit_edge
  %add.ptr9 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 -174063360) #13, !srcloc !252
  %add.ptr10 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -174063360) #13, !srcloc !252
  %add.ptr11 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #13, !srcloc !252
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %t, i32 100
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base_addr = getelementptr i8, ptr %t, i32 184
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %do.body1, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_timer.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_timer, %if.end14)) #13
          to label %if.then7 [label %if.end14], !srcloc !255

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr8 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #13, !srcloc !253
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %add.ptr10 = getelementptr i8, ptr %5, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #13, !srcloc !253
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_timer.__UNIQUE_ID_ddebug362, ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %8, i32 noundef %10) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %do.body1, %entry.if.end14_crit_edge
  %lock = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %call15 = tail call fastcc i32 @update_link(ptr noundef %3)
  %base_addr.i = getelementptr i8, ptr %3, i32 3872
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 0, i32 %call15
  %csr6.i = getelementptr i8, ptr %3, i32 3792
  %16 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %csr6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %17)
  %cmp.i = icmp eq i32 %spec.select.i, %17
  br i1 %cmp.i, label %if.end14.update_csr6.exit_crit_edge, label %if.end3.i

if.end14.update_csr6.exit_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.end3.i:                                        ; preds = %if.end14
  %and.i = and i32 %17, -8195
  %add.ptr.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %12, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %20 = and i32 %19, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i28, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %24) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i28 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #13
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %25 = and i32 %24, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %27 = ptrtoint ptr %csr6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.i, ptr %csr6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %28 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #13, !srcloc !252
  %and26.i = and i32 %spec.select.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.end.i.update_csr6.exit_crit_edge, label %if.then28.i

for.end.i.update_csr6.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex.i = getelementptr i8, ptr %3, i32 3856
  %29 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %full_duplex.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %full_duplex.i, align 4
  br label %update_csr6.exit

update_csr6.exit:                                 ; preds = %if.then28.i, %for.end.i.update_csr6.exit_crit_edge, %if.end14.update_csr6.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %30, 1000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_rx = getelementptr i8, ptr %dev, i32 3800
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_rx, align 4
  %rem = and i32 %1, 127
  %dirty_rx = getelementptr i8, ptr %dev, i32 3804
  %2 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_rx, align 4
  %add = sub i32 128, %1
  %sub = add i32 %add, %3
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %do.body3, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_rx.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_rx, %if.end11)) #13
          to label %if.then8 [label %if.end11], !srcloc !255

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx = getelementptr %struct.w840_rx_desc, ptr %6, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_rx.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %rem, i32 noundef %8) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.body3, %entry.if.end11_crit_edge
  %dec30 = add i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec30)
  %cmp1231 = icmp sgt i32 %dec30, -1
  br i1 %cmp1231, label %while.body.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end11
  %rx_head_desc = getelementptr i8, ptr %dev, i32 3796
  %dev53 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %rx_length_errors = getelementptr i8, ptr %dev, i32 3636
  %rx_errors = getelementptr i8, ptr %dev, i32 3612
  %rx_frame_errors = getelementptr i8, ptr %dev, i32 3648
  %rx_crc_errors = getelementptr i8, ptr %dev, i32 3644
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %stats202 = getelementptr i8, ptr %dev, i32 3596
  %rx_bytes = getelementptr i8, ptr %dev, i32 3604
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec34 = phi i32 [ %dec30, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %entry1.032 = phi i32 [ %rem, %while.body.lr.ph ], [ %rem209, %cleanup.while.body_crit_edge ]
  %9 = ptrtoint ptr %rx_head_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_head_desc, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp15 = icmp sgt i32 %13, 4
  br i1 %cmp15, label %do.body18, label %while.body.if.end38_crit_edge

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_rx.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_rx, %if.end38)) #13
          to label %if.then32 [label %if.end38], !srcloc !255

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_rx.__UNIQUE_ID_ddebug369, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %12) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %do.body18, %while.body.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp39 = icmp slt i32 %12, 0
  br i1 %cmp39, label %if.end38.while.end_crit_edge, label %if.end41

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end41:                                         ; preds = %if.end38
  %and = and i32 %12, 939557632
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and)
  %cmp42.not = icmp eq i32 %and, 768
  br i1 %cmp42.not, label %if.else106, label %if.then43

if.then43:                                        ; preds = %if.end41
  %and44 = and i32 %12, 939524864
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and44)
  %cmp45.not = icmp eq i32 %and44, 768
  br i1 %cmp45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.then43
  %and47 = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and47)
  %cmp48.not = icmp eq i32 %and47, 32767
  br i1 %cmp48.not, label %if.then46.cleanup_crit_edge, label %do.end52

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_rx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53, ptr noundef nonnull @.str.34, i32 noundef %15, i32 noundef %12) #16
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then43
  %and56 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else.cleanup_crit_edge, label %if.then58

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then58:                                        ; preds = %if.else
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp59 = icmp sgt i32 %16, 2
  br i1 %cmp59, label %do.body62, label %if.then58.if.end82_crit_edge

if.then58.if.end82_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

do.body62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_rx.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_rx, %if.end82)) #13
          to label %if.then76 [label %if.end82], !srcloc !255

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_rx.__UNIQUE_ID_ddebug370, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %12) #13
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %do.body62, %if.then58.if.end82_crit_edge
  %17 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_errors, align 4
  %inc84 = add i32 %18, 1
  store i32 %inc84, ptr %rx_errors, align 4
  %and85 = and i32 %12, 2192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end82.if.end91_crit_edge, label %if.then87

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_length_errors, align 4
  %inc90 = add i32 %20, 1
  store i32 %inc90, ptr %rx_length_errors, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end82.if.end91_crit_edge
  %and92 = and i32 %12, 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end97_crit_edge, label %if.then94

if.end91.if.end97_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_frame_errors, align 4
  %inc96 = add i32 %22, 1
  store i32 %inc96, ptr %rx_frame_errors, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end91.if.end97_crit_edge
  %and98 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.end97.cleanup.sink.split_crit_edge

if.end97.cleanup.sink.split_crit_edge:            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else106:                                       ; preds = %if.end41
  %23 = lshr i32 %12, 16
  %and107 = and i32 %23, 2047
  %sub108 = add nsw i32 %and107, -4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp109 = icmp sgt i32 %24, 4
  br i1 %cmp109, label %do.body112, label %if.else106.if.end132_crit_edge

if.else106.if.end132_crit_edge:                   ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

do.body112:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_rx.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_rx, %if.end132)) #13
          to label %if.then126 [label %if.end132], !srcloc !255

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_rx.__UNIQUE_ID_ddebug371, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %sub108, i32 noundef %12) #13
  br label %if.end132

if.end132:                                        ; preds = %if.then126, %do.body112, %if.else106.if.end132_crit_edge
  %25 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub108, i32 %25)
  %cmp133 = icmp slt i32 %sub108, %25
  br i1 %cmp133, label %land.lhs.true, label %if.end132.if.else151_crit_edge

if.end132.if.else151_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else151

land.lhs.true:                                    ; preds = %if.end132
  %add134 = add nsw i32 %and107, -2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add134, i32 noundef 2592) #13
  %cmp136.not = icmp eq ptr %call.i, null
  br i1 %cmp136.not, label %land.lhs.true.if.else151_crit_edge, label %if.then137

land.lhs.true.if.else151_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else151

if.then137:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %27, i32 2
  store ptr %add.ptr.i14, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %30 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci_dev, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %arrayidx139 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 1, i32 %entry1.032
  %32 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx139, align 4
  %arrayidx140 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.032
  %34 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx140, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev138, i32 noundef %33, i32 noundef %37, i32 noundef 2) #13
  %38 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx140, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %41, i32 %sub108)
  %call143 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub108) #13
  %45 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pci_dev, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx139, align 4
  %49 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx140, align 4
  %len150 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %len150 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len150, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev145, i32 noundef %48, i32 noundef %52, i32 noundef 2) #13
  br label %if.end164

if.else151:                                       ; preds = %land.lhs.true.if.else151_crit_edge, %if.end132.if.else151_crit_edge
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 4
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %arrayidx155 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 1, i32 %entry1.032
  %55 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx155, align 4
  %arrayidx157 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %entry1.032
  %57 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx157, align 4
  %len158 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %len158 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len158, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev153, i32 noundef %56, i32 noundef %60, i32 noundef 2, i32 noundef 0) #13
  %61 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx157, align 4
  %call161 = tail call ptr @skb_put(ptr noundef %62, i32 noundef %sub108) #13
  %63 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx157, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.else151, %if.then137
  %skb.0 = phi ptr [ %call.i, %if.then137 ], [ %62, %if.else151 ]
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp165 = icmp sgt i32 %64, 5
  br i1 %cmp165, label %do.body168, label %if.end164.if.end199_crit_edge

if.end164.if.end199_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

do.body168:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_rx.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_rx, %if.end199)) #13
          to label %if.then182 [label %if.end199], !srcloc !255

if.then182:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #15
  %data183 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %65 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data183, align 4
  %arrayidx186 = getelementptr i8, ptr %66, i32 6
  %arrayidx188 = getelementptr i8, ptr %66, i32 12
  %67 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx188, align 1
  %conv = zext i8 %68 to i32
  %arrayidx190 = getelementptr i8, ptr %66, i32 13
  %69 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx190, align 1
  %conv191 = zext i8 %70 to i32
  %arrayidx193 = getelementptr i8, ptr %66, i32 14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_rx.__UNIQUE_ID_ddebug372, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %66, ptr noundef %arrayidx186, i32 noundef %conv, i32 noundef %conv191, ptr noundef %arrayidx193) #13
  br label %if.end199

if.end199:                                        ; preds = %if.then182, %do.body168, %if.end164.if.end199_crit_edge
  %call200 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0, ptr noundef %dev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %71 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %call200, ptr %protocol, align 8
  %call201 = tail call i32 @netif_rx(ptr noundef %skb.0) #13
  %72 = ptrtoint ptr %stats202 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stats202, align 4
  %inc203 = add i32 %73, 1
  store i32 %inc203, ptr %stats202, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end199, %if.end97.cleanup.sink.split_crit_edge, %do.end52
  %rx_bytes.sink36 = phi ptr [ %rx_bytes, %if.end199 ], [ %rx_length_errors, %do.end52 ], [ %rx_crc_errors, %if.end97.cleanup.sink.split_crit_edge ]
  %sub108.sink = phi i32 [ %sub108, %if.end199 ], [ 1, %do.end52 ], [ 1, %if.end97.cleanup.sink.split_crit_edge ]
  %74 = ptrtoint ptr %rx_bytes.sink36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_bytes.sink36, align 4
  %add205 = add i32 %75, %sub108.sink
  store i32 %add205, ptr %rx_bytes.sink36, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end97.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then46.cleanup_crit_edge
  %76 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_rx, align 4
  %inc208 = add i32 %77, 1
  store i32 %inc208, ptr %cur_rx, align 4
  %rem209 = and i32 %inc208, 127
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx211 = getelementptr %struct.w840_rx_desc, ptr %79, i32 %rem209
  %80 = ptrtoint ptr %rx_head_desc to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx211, ptr %rx_head_desc, align 4
  %dec = add i32 %dec34, -1
  %cmp12 = icmp sgt i32 %dec, -1
  br i1 %cmp12, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end38.while.end_crit_edge, %if.end11.while.end_crit_edge
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 3808
  %81 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cur_rx, align 4
  %83 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dirty_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp217.not35 = icmp eq i32 %82, %84
  br i1 %cmp217.not35, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %pci_dev234 = getelementptr i8, ptr %dev, i32 3788
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %85 = phi i32 [ %84, %for.body.lr.ph ], [ %inc256, %for.inc.for.body_crit_edge ]
  %rem221 = and i32 %85, 127
  %arrayidx223 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem221
  %86 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx223, align 4
  %cmp224 = icmp eq ptr %87, null
  br i1 %cmp224, label %if.then226, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then226:                                       ; preds = %for.body
  %88 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_buf_sz, align 4
  %call.i16 = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %89, i32 noundef 2592) #13
  %90 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i16, ptr %arrayidx223, align 4
  %cmp230 = icmp eq ptr %call.i16, null
  br i1 %cmp230, label %if.then226.for.end_crit_edge, label %if.end233

if.then226.for.end_crit_edge:                     ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end233:                                        ; preds = %if.then226
  %91 = ptrtoint ptr %pci_dev234 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci_dev234, align 4
  %dev235 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %data236 = getelementptr inbounds %struct.sk_buff, ptr %call.i16, i32 0, i32 19
  %93 = ptrtoint ptr %data236 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data236, align 4
  %95 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_buf_sz, align 4
  %call.i17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %94) #13
  br i1 %call.i17, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end233
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !257

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev235) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44, i32 3
  %97 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %dev235 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev235, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %100, %if.end.i.i ], [ %98, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev235, ptr noundef %94, i32 noundef %96) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %101 = load ptr, ptr @mem_map, align 4
  %102 = ptrtoint ptr %94 to i32
  %sub.i = add i32 %102, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i18 = getelementptr %struct.page, ptr %101, i32 %shr.i
  %and.i = and i32 %102, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev235, ptr noundef %add.ptr.i18, i32 noundef %and.i, i32 noundef %96, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i19 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx240 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 1, i32 %rem221
  %103 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %retval.0.i19, ptr %arrayidx240, align 4
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  %buffer1 = getelementptr %struct.w840_rx_desc, ptr %105, i32 %rem221, i32 2
  %106 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i19, ptr %buffer1, align 4
  br label %for.inc

for.inc:                                          ; preds = %dma_map_single_attrs.exit, %for.body.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !263
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx250 = getelementptr %struct.w840_rx_desc, ptr %108, i32 %rem221
  %109 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -2147483648, ptr %arrayidx250, align 4
  %110 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dirty_rx, align 4
  %inc256 = add i32 %111, 1
  store i32 %inc256, ptr %dirty_rx, align 4
  %112 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cur_rx, align 4
  %cmp217.not = icmp eq i32 %113, %inc256
  br i1 %cmp217.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then226.for.end_crit_edge, %while.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_tx_done(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 3812
  %dirty_tx = getelementptr i8, ptr %dev, i32 3816
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 4
  %2 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not165 = icmp eq i32 %1, %3
  br i1 %cmp.not165, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2820
  %tx_errors = getelementptr i8, ptr %dev, i32 3616
  %tx_aborted_errors = getelementptr i8, ptr %dev, i32 3660
  %tx_carrier_errors = getelementptr i8, ptr %dev, i32 3664
  %tx_window_errors = getelementptr i8, ptr %dev, i32 3676
  %tx_fifo_errors = getelementptr i8, ptr %dev, i32 3668
  %full_duplex = getelementptr i8, ptr %dev, i32 3856
  %tx_heartbeat_errors = getelementptr i8, ptr %dev, i32 3672
  %tx_bytes = getelementptr i8, ptr %dev, i32 3608
  %collisions = getelementptr i8, ptr %dev, i32 3632
  %tx_packets = getelementptr i8, ptr %dev, i32 3600
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  %tx_q_bytes = getelementptr i8, ptr %dev, i32 3820
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %inc96, %for.inc.for.body_crit_edge ]
  %rem = and i32 %4, 31
  %5 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.w840_tx_desc, ptr %6, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = load i32, ptr @debug, align 4
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1
  br i1 %cmp5, label %do.body7, label %if.then4.if.end17_crit_edge

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_tx_done.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_tx_done, %if.end17)) #13
          to label %if.then13 [label %if.end17], !srcloc !255

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_tx_done.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %8) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body7, %if.then4.if.end17_crit_edge
  %10 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and18 = and i32 %8, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_aborted_errors, align 4
  %inc22 = add i32 %13, 1
  store i32 %inc22, ptr %tx_aborted_errors, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %and24 = and i32 %8, 3200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_carrier_errors, align 4
  %inc28 = add i32 %15, 1
  store i32 %inc28, ptr %tx_carrier_errors, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %and30 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_window_errors, align 4
  %inc34 = add i32 %17, 1
  store i32 %inc34, ptr %tx_window_errors, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %and36 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_fifo_errors, align 4
  %inc40 = add i32 %19, 1
  store i32 %inc40, ptr %tx_fifo_errors, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %and42 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.for.inc_crit_edge, label %land.lhs.true

if.end41.for.inc_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end41
  %20 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp44 = icmp sgt i8 %bf.load, -1
  br i1 %cmp44, label %land.lhs.true.for.inc.sink.split_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.for.inc.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp49 = icmp sgt i32 %9, 3
  br i1 %cmp49, label %do.body52, label %if.else.if.end72_crit_edge

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

do.body52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_tx_done.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_tx_done, %if.end72)) #13
          to label %if.then66 [label %if.end72], !srcloc !255

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_tx_done.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %rem, i32 noundef %8) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %do.body52, %if.else.if.end72_crit_edge
  %arrayidx73 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %21 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx73, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %tx_bytes, align 4
  %27 = lshr i32 %8, 3
  %and75 = and i32 %27, 15
  %28 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %collisions, align 4
  %add77 = add i32 %29, %and75
  store i32 %add77, ptr %collisions, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end72, %land.lhs.true.for.inc.sink.split_crit_edge
  %tx_packets.sink167 = phi ptr [ %tx_packets, %if.end72 ], [ %tx_heartbeat_errors, %land.lhs.true.for.inc.sink.split_crit_edge ]
  %30 = ptrtoint ptr %tx_packets.sink167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_packets.sink167, align 4
  %inc79 = add i32 %31, 1
  store i32 %inc79, ptr %tx_packets.sink167, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true.for.inc_crit_edge, %if.end41.for.inc_crit_edge
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %arrayidx82 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %34 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx82, align 4
  %arrayidx84 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx84, align 4
  %len85 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len85, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev81, i32 noundef %35, i32 noundef %39, i32 noundef 1, i32 noundef 0) #13
  %40 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx84, align 4
  %len88 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %len88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len88, align 4
  %44 = ptrtoint ptr %tx_q_bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_q_bytes, align 4
  %sub89 = sub i32 %45, %43
  store i32 %sub89, ptr %tx_q_bytes, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %41, i32 noundef 1) #13
  %46 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx84, align 4
  %47 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty_tx, align 4
  %inc96 = add i32 %48, 1
  store i32 %inc96, ptr %dirty_tx, align 4
  %49 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur_tx, align 4
  %cmp.not = icmp eq i32 %50, %inc96
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_full = getelementptr i8, ptr %dev, i32 3824
  %51 = ptrtoint ptr %tx_full to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool97.not = icmp eq i32 %52, 0
  br i1 %tobool97.not, label %for.end.if.end111_crit_edge, label %land.lhs.true98

for.end.if.end111_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

land.lhs.true98:                                  ; preds = %for.end
  %53 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_tx, align 4
  %55 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dirty_tx, align 4
  %sub101 = sub i32 %54, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub101)
  %cmp102 = icmp ult i32 %sub101, 5
  br i1 %cmp102, label %land.lhs.true103, label %land.lhs.true98.if.end111_crit_edge

land.lhs.true98.if.end111_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

land.lhs.true103:                                 ; preds = %land.lhs.true98
  %tx_q_bytes104 = getelementptr i8, ptr %dev, i32 3820
  %57 = ptrtoint ptr %tx_q_bytes104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_q_bytes104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %58)
  %cmp105 = icmp ult i32 %58, 518
  br i1 %cmp105, label %if.then106, label %land.lhs.true103.if.end111_crit_edge

land.lhs.true103.if.end111_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then106:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tx_full, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !264
  tail call void @arm_heavy_mb() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %60 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %61) #13
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %land.lhs.true103.if.end111_crit_edge, %land.lhs.true98.if.end111_crit_edge, %for.end.if.end111_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_error(ptr noundef %dev, i32 noundef %intr_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.body1, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_error.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_error, %if.end9)) #13
          to label %if.then6 [label %if.end9], !srcloc !255

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_error.__UNIQUE_ID_ddebug373, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %intr_status) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1, %entry.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %intr_status)
  %cmp10 = icmp eq i32 %intr_status, -1
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %and = and i32 %intr_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end42_crit_edge, label %if.then14

if.end12.if.end42_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then14:                                        ; preds = %if.end12
  %csr6 = getelementptr i8, ptr %dev, i32 3792
  %3 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %csr6, align 4
  %5 = lshr i32 %4, 14
  %and15 = and i32 %5, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and15)
  %cmp16 = icmp ult i32 %and15, 64
  %phi.bo = shl nuw nsw i32 %and15, 15
  %new.0 = select i1 %cmp16, i32 %phi.bo, i32 2080768
  %and20 = and i32 %4, -2080769
  %or = or i32 %new.0, %and20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netdev_error.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@netdev_error, %do.end41)) #13
          to label %if.then36 [label %do.end41], !srcloc !255

if.then36:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @netdev_error.__UNIQUE_ID_ddebug374, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %or) #13
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.then14
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  %spec.select.i = select i1 %tobool.i.not.i, i32 0, i32 %or
  %11 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %csr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %12)
  %cmp.i = icmp eq i32 %spec.select.i, %12
  br i1 %cmp.i, label %do.end41.if.end42_crit_edge, label %if.end3.i

do.end41.if.end42_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.end3.i:                                        ; preds = %do.end41
  %and.i = and i32 %12, -8195
  %add.ptr.i84 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %13) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %7, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %15 = and i32 %14, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i88, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %19) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i88 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %20 = and i32 %19, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %22 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %23) #13, !srcloc !252
  %and26.i = and i32 %spec.select.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.end.i.if.end42_crit_edge, label %if.then28.i

for.end.i.if.end42_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %full_duplex.i = getelementptr i8, ptr %dev, i32 3856
  %24 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %full_duplex.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %full_duplex.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then28.i, %for.end.i.if.end42_crit_edge, %do.end41.if.end42_crit_edge, %if.end12.if.end42_crit_edge
  %and43 = and i32 %intr_status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end46_crit_edge, label %if.then45

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %rx_errors = getelementptr i8, ptr %dev, i32 3612
  %25 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_errors, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %rx_errors, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %and47 = and i32 %intr_status, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end53_crit_edge, label %if.then49

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then49:                                        ; preds = %if.end46
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.then49.if.end53_crit_edge, label %if.then51

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -174063360) #13, !srcloc !252
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  %add.ptr54 = getelementptr i8, ptr %1, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %31 = and i32 %30, -65536
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %rx_missed_errors = getelementptr i8, ptr %dev, i32 3656
  %33 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %rx_missed_errors, align 4
  %add.ptr58 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #13, !srcloc !252
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end9.cleanup_crit_edge
  ret void
}

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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_rxtx_rings(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %rx_head_desc = getelementptr i8, ptr %dev, i32 3796
  %2 = ptrtoint ptr %rx_head_desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rx_head_desc, align 4
  %arrayidx2 = getelementptr %struct.w840_rx_desc, ptr %1, i32 128
  %tx_ring = getelementptr i8, ptr %dev, i32 2820
  %3 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx2, ptr %tx_ring, align 4
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 3808
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.099 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_sz, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %length = getelementptr %struct.w840_rx_desc, ptr %7, i32 %i.099, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %length, align 4
  %9 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx6 = getelementptr %struct.w840_rx_desc, ptr %9, i32 %i.099
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.099
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %length10 = getelementptr %struct.w840_rx_desc, ptr %13, i32 127, i32 1
  %14 = ptrtoint ptr %length10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length10, align 4
  %or = or i32 %15, 33554432
  store i32 %or, ptr %length10, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
  br label %for.body13

for.body13:                                       ; preds = %for.inc30.for.body13_crit_edge, %for.end
  %i.1100 = phi i32 [ 0, %for.end ], [ %inc31, %for.inc30.for.body13_crit_edge ]
  %16 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %17, i32 noundef 2592) #13
  %arrayidx17 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.1100
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %arrayidx17, align 4
  %cmp18 = icmp eq ptr %call.i, null
  br i1 %cmp18, label %for.body13.for.end32_crit_edge, label %if.end

for.body13.for.end32_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

if.end:                                           ; preds = %for.body13
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_sz, align 4
  %call.i95 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %22) #13
  br i1 %call.i95, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.for.inc30_crit_edge, label %if.then.i, !prof !257

land.rhs.i.for.inc30_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc30

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev19) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev19, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %for.inc30

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev19, ptr noundef %22, i32 noundef %24) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %22 to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i96 = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i = and i32 %30, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev19, ptr noundef %add.ptr.i96, i32 noundef %and.i, i32 noundef %24, i32 noundef 2, i32 noundef 0) #13
  br label %for.inc30

for.inc30:                                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.for.inc30_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.for.inc30_crit_edge ]
  %arrayidx22 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 1, i32 %i.1100
  %31 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i, ptr %arrayidx22, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %buffer1 = getelementptr %struct.w840_rx_desc, ptr %33, i32 %i.1100, i32 2
  %34 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i, ptr %buffer1, align 4
  %35 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx28 = getelementptr %struct.w840_rx_desc, ptr %35, i32 %i.1100
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2147483648, ptr %arrayidx28, align 4
  %inc31 = add nuw nsw i32 %i.1100, 1
  %exitcond102.not = icmp eq i32 %inc31, 128
  br i1 %exitcond102.not, label %for.inc30.for.end32_crit_edge, label %for.inc30.for.body13_crit_edge

for.inc30.for.body13_crit_edge:                   ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13

for.inc30.for.end32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end32

for.end32:                                        ; preds = %for.inc30.for.end32_crit_edge, %for.body13.for.end32_crit_edge
  %i.1.lcssa = phi i32 [ %i.1100, %for.body13.for.end32_crit_edge ], [ 128, %for.inc30.for.end32_crit_edge ]
  %cur_rx = getelementptr i8, ptr %dev, i32 3800
  %37 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cur_rx, align 4
  %sub33 = add nsw i32 %i.1.lcssa, -128
  %dirty_rx = getelementptr i8, ptr %dev, i32 3804
  %38 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub33, ptr %dirty_rx, align 4
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.end32
  %i.2101 = phi i32 [ 0, %for.end32 ], [ %inc42, %for.body36.for.body36_crit_edge ]
  %arrayidx37 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.2101
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx37, align 4
  %40 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_ring, align 4
  %arrayidx39 = getelementptr %struct.w840_tx_desc, ptr %41, i32 %i.2101
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx39, align 4
  %inc42 = add nuw nsw i32 %i.2101, 1
  %exitcond103.not = icmp eq i32 %inc42, 32
  br i1 %exitcond103.not, label %for.end43, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

for.end43:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  %cur_tx = getelementptr i8, ptr %dev, i32 3812
  %ring_dma_addr = getelementptr i8, ptr %dev, i32 2952
  %43 = call ptr @memset(ptr %cur_tx, i32 0, i32 16)
  %44 = ptrtoint ptr %ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ring_dma_addr, align 4
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %48) #13, !srcloc !252
  %49 = ptrtoint ptr %ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ring_dma_addr, align 4
  %add = add i32 %50, 2048
  %51 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr, align 4
  %add.ptr46 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %53 = tail call i32 @llvm.bswap.i32(i32 %add) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %53) #13, !srcloc !252
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_link(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phys = getelementptr i8, ptr %dev, i32 3832
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phys, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call1)
  %cmp = icmp eq i32 %call1, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %csr6 = getelementptr i8, ptr %dev, i32 3792
  %2 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csr6, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phys, align 4
  %conv5 = zext i8 %5 to i32
  %call6 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv5, i32 noundef 1)
  %and = and i32 %call6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.then9, label %if.then7.if.end17_crit_edge

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then9:                                         ; preds = %if.then7
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then9.if.end16_crit_edge, label %do.end

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %dev12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %10 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phys, align 4
  %conv15 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.48, i32 noundef %conv15) #16
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.then9.if.end16_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7.if.end17_crit_edge
  %csr618 = getelementptr i8, ptr %dev, i32 3792
  %12 = ptrtoint ptr %csr618 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %csr618, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.end19.if.end32_crit_edge, label %if.then21

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then21:                                        ; preds = %if.end19
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %if.then21.if.end31_crit_edge, label %do.end26

if.then21.if.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

do.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %dev27 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %15 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phys, align 4
  %conv30 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.51, i32 noundef %conv30) #16
  br label %if.end31

if.end31:                                         ; preds = %do.end26, %if.then21.if.end31_crit_edge
  tail call void @netif_carrier_on(ptr noundef %dev) #13
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end19.if.end32_crit_edge
  %mii = getelementptr i8, ptr %dev, i32 3836
  %17 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mii, align 4
  %and33 = and i32 %18, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25278464, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 25278464
  %19 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phys, align 4
  %conv39 = zext i8 %20 to i32
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv39, i32 noundef 0)
  %and41 = and i32 %call40, 256
  %and42 = and i32 %call40, 8192
  br label %if.end54

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %conv39, i32 noundef 5)
  %advertising = getelementptr i8, ptr %dev, i32 3844
  %21 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %advertising, align 4
  %and47 = and i32 %22, %call46
  %and48 = and i32 %and47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp ne i32 %and48, 0
  %and50 = and i32 %and47, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 64
  %narrow = or i1 %tobool49.not, %cmp51
  %23 = zext i1 %narrow to i32
  %and53 = and i32 %and47, 896
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then36
  %duplex.0 = phi i32 [ %and41, %if.then36 ], [ %23, %if.else ]
  %fasteth.0 = phi i32 [ %and42, %if.then36 ], [ %and53, %if.else ]
  %force_media = getelementptr i8, ptr %dev, i32 3856
  %24 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %force_media, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %or = or i32 %duplex.0, %bf.cast
  %csr656 = getelementptr i8, ptr %dev, i32 3792
  %25 = ptrtoint ptr %csr656 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %csr656, align 4
  %and57 = and i32 %26, -536871425
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool58.not = icmp eq i32 %or, 0
  %or60 = or i32 %and57, 512
  %spec.select = select i1 %tobool58.not, i32 %and57, i32 %or60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fasteth.0)
  %tobool62.not = icmp eq i32 %fasteth.0, 0
  %or64 = or i32 %spec.select, 536870912
  %result.1 = select i1 %tobool62.not, i32 %spec.select, i32 %or64
  call void @__sanitizer_cov_trace_cmp4(i32 %result.1, i32 %26)
  %cmp67.not = icmp eq i32 %result.1, %26
  br i1 %cmp67.not, label %if.end54.cleanup_crit_edge, label %land.lhs.true

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end54
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool69.not = icmp eq i32 %27, 0
  br i1 %tobool69.not, label %land.lhs.true.cleanup_crit_edge, label %do.end73

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end73:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dev74 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %cond = select i1 %tobool62.not, i32 10, i32 100
  %cond77 = select i1 %tobool58.not, ptr @.str.57, ptr @.str.56
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phys, align 4
  %conv80 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.54, i32 noundef %cond, ptr noundef nonnull %cond77, i32 noundef %conv80) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %land.lhs.true.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end17, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %13, %if.end17 ], [ %result.1, %do.end73 ], [ %result.1, %land.lhs.true.cleanup_crit_edge ], [ %26, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_rx_mode(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #13
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end49

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %7 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %7)
  %cmp = icmp sle i32 %6, %7
  %and2 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %cmp, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %mc_filter, align 8
  br label %if.end49

if.else6:                                         ; preds = %if.else
  %9 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %mc_filter, align 8
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.076 = load ptr, ptr %mc, align 4
  %cmp12.not77 = icmp eq ptr %ha.076, %mc
  br i1 %cmp12.not77, label %if.else6.if.end49_crit_edge, label %if.else6.cond.end_crit_edge

if.else6.cond.end_crit_edge:                      ; preds = %if.else6
  br label %cond.end

if.else6.if.end49_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else6.cond.end_crit_edge
  %ha.078 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.076, %if.else6.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.078, i32 0, i32 2
  %call14 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %11 = and i32 %call14, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %13 to i32
  %14 = shl nuw i32 %conv2.i.i, 24
  %15 = xor i32 %14, -1
  %xor = lshr i32 %15, 26
  %and40 = and i32 %xor, 31
  %shl41 = shl nuw i32 1, %and40
  %16 = lshr i32 %15, 31
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or43 = or i32 %shl41, %18
  store i32 %or43, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %ha.078 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0 = load ptr, ptr %ha.078, align 4
  %cmp12.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp12.not, label %cond.end.if.end49_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.end.if.end49_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.end49:                                         ; preds = %cond.end.if.end49_crit_edge, %if.else6.if.end49_crit_edge, %if.then4, %if.then
  %rx_mode.0 = phi i32 [ 58, %if.then ], [ 50, %if.then4 ], [ 50, %if.else6.if.end49_crit_edge ], [ 50, %cond.end.if.end49_crit_edge ]
  %20 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %21 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mc_filter, align 8
  %add.ptr51 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %23) #13, !srcloc !252
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 4
  %add.ptr53 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %26) #13, !srcloc !252
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #13
  ret i32 %rx_mode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_rxtx_rings(ptr nocapture noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.netdev_private, ptr %np, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %arrayidx = getelementptr %struct.w840_rx_desc, ptr %1, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.netdev_private, ptr %np, i32 0, i32 5, i32 %i.056
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %arrayidx2 = getelementptr %struct.netdev_private, ptr %np, i32 0, i32 1, i32 %i.056
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %8, i32 noundef %10, i32 noundef 2, i32 noundef 0) #13
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  tail call void @consume_skb(ptr noundef %12) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %if.end.for.body11_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

for.body11:                                       ; preds = %if.end23.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %i.158 = phi i32 [ %inc27, %if.end23.for.body11_crit_edge ], [ 0, %if.end.for.body11_crit_edge ]
  %arrayidx12 = getelementptr %struct.netdev_private, ptr %np, i32 0, i32 6, i32 %i.158
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %for.body11.if.end23_crit_edge, label %if.then14

for.body11.if.end23_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %arrayidx17 = getelementptr %struct.netdev_private, ptr %np, i32 0, i32 3, i32 %i.158
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %20 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len20, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev16, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #13
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  tail call void @consume_skb(ptr noundef %23) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %for.body11.if.end23_crit_edge
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx12, align 4
  %inc27 = add nuw nsw i32 %i.158, 1
  %exitcond60.not = icmp eq i32 %inc27, 32
  br i1 %exitcond60.not, label %for.end28, label %if.end23.for.body11_crit_edge

if.end23.for.body11_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11

for.end28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #13
  %pci_dev = getelementptr i8, ptr %dev, i32 3788
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netdev_get_msglevel(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_set_msglevel(ptr nocapture noundef readnone %dev, i32 noundef %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %value, ptr @debug, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3840
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3840
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %mii_if = getelementptr i8, ptr %dev, i32 3840
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %mii_if = getelementptr i8, ptr %dev, i32 3840
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w840_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %base_addr = getelementptr i8, ptr %1, i32 3872
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  tail call void @rtnl_lock() #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %timer = getelementptr i8, ptr %1, i32 3688
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer) #13
  %lock = getelementptr i8, ptr %1, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  tail call void @netif_device_detach(ptr noundef %1) #13
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr, align 4
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %csr6.i = getelementptr i8, ptr %1, i32 3792
  %10 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csr6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.update_csr6.exit_crit_edge, label %if.end3.i

if.then.update_csr6.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_csr6.exit

if.end3.i:                                        ; preds = %if.then
  %and.i = and i32 %11, -8195
  %add.ptr.i34 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %12) #13, !srcloc !252
  %add.ptr5.i = getelementptr i8, ptr %7, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %14 = and i32 %13, 27648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.end3.i.for.end.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  br label %cleanup.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end18.i:                                       ; preds = %cleanup.i
  %dec.i = add nsw i32 %dec.i39, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i, ptr noundef nonnull @.str.46, i32 noundef %18) #16
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end18.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %dec.i39 = phi i32 [ %dec.i, %if.end18.i.cleanup.i_crit_edge ], [ 1999, %if.end3.i.cleanup.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !253
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %19 = and i32 %18, 7077888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %cleanup.i.for.end.i_crit_edge, label %if.end18.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %do.end.i, %if.end3.i.for.end.i_crit_edge
  %21 = ptrtoint ptr %csr6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %csr6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #13, !srcloc !252
  br label %update_csr6.exit

update_csr6.exit:                                 ; preds = %for.end.i, %if.then.update_csr6.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !252
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %pci_dev = getelementptr i8, ptr %1, i32 3788
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %25) #13
  tail call fastcc void @local_bh_disable() #13
  %26 = tail call i32 @llvm.read_register.i32(metadata !240) #13
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #13
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %30 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp13.not.i = icmp eq i32 %31, 0
  br i1 %cmp13.not.i, label %update_csr6.exit.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

update_csr6.exit.netif_tx_disable.exit_crit_edge: ; preds = %update_csr6.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %update_csr6.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %33, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #13
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %33, i32 %i.014.i, i32 11
  %34 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %29, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i35 = getelementptr %struct.netdev_queue, ptr %33, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i35) #13
  %35 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #13
  %inc.i = add nuw i32 %i.014.i, 1
  %36 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i36 = icmp ult i32 %inc.i, %37
  br i1 %cmp.i36, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %update_csr6.exit.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #13
  tail call fastcc void @local_bh_enable() #13
  %add.ptr5 = getelementptr i8, ptr %3, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  %39 = and i32 %38, -65536
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %rx_missed_errors = getelementptr i8, ptr %1, i32 3656
  %41 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %42, %40
  store i32 %add, ptr %rx_missed_errors, align 4
  %43 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %csr6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %lor.rhs, label %netif_tx_disable.exit.do.body13_crit_edge, !prof !257

netif_tx_disable.exit.do.body13_crit_edge:        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

lor.rhs:                                          ; preds = %netif_tx_disable.exit
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not = icmp eq i32 %45, 0
  br i1 %tobool9.not, label %do.end18, label %lor.rhs.do.body13_crit_edge, !prof !257

lor.rhs.do.body13_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body13

do.body13:                                        ; preds = %lor.rhs.do.body13_crit_edge, %netif_tx_disable.exit.do.body13_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/winbond-840.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1580, 0\0A.popsection", ""() #13, !srcloc !265
  unreachable

do.end18:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @free_rxtx_rings(ptr noundef %add.ptr.i)
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_detach(ptr noundef %1) #13
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end18
  tail call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w840_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i23.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i23.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %1, i32 3736
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %base_addr = getelementptr i8, ptr %1, i32 3872
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #13, !srcloc !252
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !254
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #13
  tail call void @netif_device_attach(ptr noundef %1) #13
  tail call fastcc void @init_rxtx_rings(ptr noundef %1)
  tail call fastcc void @init_registers(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #13
  %timer = getelementptr i8, ptr %1, i32 3688
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 100
  %call9 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #13
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_attach(ptr noundef %1) #13
  br label %out

out:                                              ; preds = %if.else, %if.then4, %entry.out_crit_edge
  tail call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
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
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !227, !228, !230, !231, !232, !234, !235, !236, !238}
!llvm.named.register.sp = !{!240}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__UNIQUE_ID_author344, !1, !"__UNIQUE_ID_author344", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 139, i32 1}
!2 = !{ptr @__UNIQUE_ID_description345, !3, !"__UNIQUE_ID_description345", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 140, i32 1}
!4 = !{ptr @__UNIQUE_ID_file346, !5, !"__UNIQUE_ID_file346", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 141, i32 1}
!6 = !{ptr @__UNIQUE_ID_license347, !5, !"__UNIQUE_ID_license347", i1 false, i1 false}
!7 = !{ptr @__param_max_interrupt_work, !8, !"__param_max_interrupt_work", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 143, i32 1}
!9 = !{ptr @__UNIQUE_ID_max_interrupt_worktype348, !8, !"__UNIQUE_ID_max_interrupt_worktype348", i1 false, i1 false}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 144, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype349, !11, !"__UNIQUE_ID_debugtype349", i1 false, i1 false}
!13 = !{ptr @__param_rx_copybreak, !14, !"__param_rx_copybreak", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 145, i32 1}
!15 = !{ptr @__UNIQUE_ID_rx_copybreaktype350, !14, !"__UNIQUE_ID_rx_copybreaktype350", i1 false, i1 false}
!16 = !{ptr @__param_multicast_filter_limit, !17, !"__param_multicast_filter_limit", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 146, i32 1}
!18 = !{ptr @__UNIQUE_ID_multicast_filter_limittype351, !17, !"__UNIQUE_ID_multicast_filter_limittype351", i1 false, i1 false}
!19 = !{ptr @__param_options, !20, !"__param_options", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 147, i32 1}
!21 = !{ptr @__UNIQUE_ID_optionstype352, !20, !"__UNIQUE_ID_optionstype352", i1 false, i1 false}
!22 = !{ptr @__param_full_duplex, !23, !"__param_full_duplex", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 148, i32 1}
!24 = !{ptr @__UNIQUE_ID_full_duplextype353, !23, !"__UNIQUE_ID_full_duplextype353", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_max_interrupt_work354, !26, !"__UNIQUE_ID_max_interrupt_work354", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 149, i32 1}
!27 = !{ptr @__UNIQUE_ID_debug355, !28, !"__UNIQUE_ID_debug355", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 150, i32 1}
!29 = !{ptr @__UNIQUE_ID_rx_copybreak356, !30, !"__UNIQUE_ID_rx_copybreak356", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 151, i32 1}
!31 = !{ptr @__UNIQUE_ID_multicast_filter_limit357, !32, !"__UNIQUE_ID_multicast_filter_limit357", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 152, i32 1}
!33 = !{ptr @__UNIQUE_ID_options358, !34, !"__UNIQUE_ID_options358", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 153, i32 1}
!35 = !{ptr @__UNIQUE_ID_full_duplex359, !36, !"__UNIQUE_ID_full_duplex359", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 154, i32 1}
!37 = !{ptr @__initcall__kmod_winbond_840__377_1631_w840_driver_init6, !38, !"__initcall__kmod_winbond_840__377_1631_w840_driver_init6", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1631, i32 1}
!39 = !{ptr @__exitcall_w840_driver_exit, !38, !"__exitcall_w840_driver_exit", i1 false, i1 false}
!40 = !{ptr @rx_copybreak, !41, !"rx_copybreak", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 74, i32 12}
!42 = !{ptr @__param_str_max_interrupt_work, !8, !"__param_str_max_interrupt_work", i1 false, i1 false}
!43 = !{ptr @max_interrupt_work, !44, !"max_interrupt_work", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 67, i32 12}
!45 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!46 = !{ptr @debug, !47, !"debug", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 66, i32 12}
!48 = !{ptr @__param_str_rx_copybreak, !14, !"__param_str_rx_copybreak", i1 false, i1 false}
!49 = !{ptr @__param_str_multicast_filter_limit, !17, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!50 = !{ptr @multicast_filter_limit, !51, !"multicast_filter_limit", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 70, i32 12}
!52 = !{ptr @__param_str_options, !20, !"__param_str_options", i1 false, i1 false}
!53 = !{ptr @__param_arr_options, !20, !"__param_arr_options", i1 false, i1 false}
!54 = !{ptr @options, !55, !"options", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 82, i32 12}
!56 = !{ptr @__param_str_full_duplex, !23, !"__param_str_full_duplex", i1 false, i1 false}
!57 = !{ptr @__param_arr_full_duplex, !23, !"__param_arr_full_duplex", i1 false, i1 false}
!58 = !{ptr @full_duplex, !59, !"full_duplex", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 83, i32 12}
!60 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.1, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1624, i32 11}
!63 = !{ptr @w840_driver, !64, !"w840_driver", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1623, i32 26}
!65 = !{ptr @w840_pci_tbl, !66, !"w840_pci_tbl", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 212, i32 35}
!67 = !{ptr @w840_probe1.find_cnt, !68, !"find_cnt", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 354, i32 13}
!69 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 369, i32 3}
!71 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @w840_probe1._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @w840_probe1._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @w840_probe1.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 397, i32 2}
!77 = !{ptr @.str.5, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.7, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 413, i32 4}
!80 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.9, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @w840_probe1._entry.6, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @w840_probe1._entry_ptr.10, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.12, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 432, i32 2}
!86 = !{ptr @w840_probe1._entry.11, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @w840_probe1._entry_ptr.13, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.15, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 444, i32 5}
!90 = !{ptr @w840_probe1._entry.14, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @w840_probe1._entry_ptr.16, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 453, i32 4}
!94 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @w840_probe1._entry.17, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @w840_probe1._entry_ptr.20, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 231, i32 4}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 233, i32 4}
!101 = !{ptr @pci_id_tbl, !102, !"pci_id_tbl", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 229, i32 33}
!103 = distinct !{null, !104, !"mii_preamble_required", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 536, i32 13}
!105 = !{ptr @netdev_ops, !106, !"netdev_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 338, i32 36}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 633, i32 3}
!109 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @netdev_open.__UNIQUE_ID_ddebug360, !108, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!111 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 646, i32 3}
!113 = !{ptr @netdev_open.__UNIQUE_ID_ddebug361, !112, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!114 = !{ptr @netdev_open.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 649, i32 2}
!116 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.27, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1115, i32 4}
!119 = !{ptr @.str.28, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @intr_handler.__UNIQUE_ID_ddebug366, !118, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!121 = !{ptr @.str.29, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1140, i32 4}
!123 = !{ptr @intr_handler._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @intr_handler._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1156, i32 3}
!127 = !{ptr @intr_handler.__UNIQUE_ID_ddebug367, !126, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!128 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1170, i32 3}
!130 = !{ptr @.str.32, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @netdev_rx.__UNIQUE_ID_ddebug368, !129, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!132 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1180, i32 4}
!134 = !{ptr @netdev_rx.__UNIQUE_ID_ddebug369, !133, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!135 = !{ptr @.str.34, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1188, i32 6}
!137 = !{ptr @netdev_rx._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @netdev_rx._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.35, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1196, i32 6}
!141 = !{ptr @netdev_rx.__UNIQUE_ID_ddebug370, !140, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1210, i32 5}
!144 = !{ptr @netdev_rx.__UNIQUE_ID_ddebug371, !143, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!145 = !{ptr @.str.37, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1239, i32 5}
!147 = !{ptr @netdev_rx.__UNIQUE_ID_ddebug372, !146, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!150 = !{ptr @.str.38, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.40, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1059, i32 5}
!154 = !{ptr @.str.41, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @netdev_tx_done.__UNIQUE_ID_ddebug364, !153, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!156 = !{ptr @.str.42, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1072, i32 5}
!158 = !{ptr @netdev_tx_done.__UNIQUE_ID_ddebug365, !157, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!159 = !{ptr @.str.43, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1281, i32 3}
!161 = !{ptr @.str.44, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @netdev_error.__UNIQUE_ID_ddebug373, !160, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!163 = !{ptr @.str.45, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1301, i32 3}
!165 = !{ptr @netdev_error.__UNIQUE_ID_ddebug374, !164, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!166 = !{ptr @.str.46, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 753, i32 4}
!168 = !{ptr @.str.47, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @update_csr6._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @update_csr6._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.48, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 675, i32 5}
!173 = !{ptr @.str.49, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @update_link._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @update_link._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.51, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 684, i32 4}
!178 = !{ptr @update_link._entry.50, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @update_link._entry_ptr.52, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.54, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 718, i32 3}
!182 = !{ptr @update_link._entry.53, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @update_link._entry_ptr.55, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.56, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.58, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 773, i32 3}
!188 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @netdev_timer.__UNIQUE_ID_ddebug362, !187, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!190 = !{ptr @.str.60, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1474, i32 3}
!192 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @netdev_close.__UNIQUE_ID_ddebug375, !191, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!194 = !{ptr @.str.62, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1477, i32 3}
!196 = !{ptr @netdev_close.__UNIQUE_ID_ddebug376, !195, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!197 = !{ptr @.str.63, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1041, i32 3}
!199 = !{ptr @.str.64, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @start_tx.__UNIQUE_ID_ddebug363, !198, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!201 = !{ptr @.str.65, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 919, i32 2}
!203 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @tx_timeout._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @tx_timeout._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.68, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 924, i32 3}
!208 = !{ptr @tx_timeout._entry.67, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @tx_timeout._entry_ptr.69, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.71, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 926, i32 4}
!212 = !{ptr @tx_timeout._entry.70, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tx_timeout._entry_ptr.72, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 927, i32 3}
!216 = !{ptr @tx_timeout._entry.73, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tx_timeout._entry_ptr.75, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 928, i32 3}
!220 = !{ptr @tx_timeout._entry.76, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tx_timeout._entry_ptr.78, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @tx_timeout._entry.79, !223, !"_entry", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 930, i32 4}
!224 = !{ptr @tx_timeout._entry_ptr.80, !223, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @tx_timeout._entry.81, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 931, i32 3}
!227 = !{ptr @tx_timeout._entry_ptr.82, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.84, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 933, i32 2}
!230 = !{ptr @tx_timeout._entry.83, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @tx_timeout._entry_ptr.85, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.87, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 935, i32 2}
!234 = !{ptr @tx_timeout._entry.86, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @tx_timeout._entry_ptr.88, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @netdev_ethtool_ops, !237, !"netdev_ethtool_ops", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1430, i32 33}
!238 = !{ptr @w840_pm_ops, !239, !"w840_pm_ops", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/dec/tulip/winbond-840.c", i32 1621, i32 8}
!240 = !{!"sp"}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"auto-init"}
!251 = !{i64 2152223987}
!252 = !{i64 4681865}
!253 = !{i64 4682283}
!254 = !{i64 2152222632}
!255 = !{i64 2148999793, i64 2148999798, i64 2148999811, i64 2148999855, i64 2148999889, i64 2148999910}
!256 = !{i64 2156715017}
!257 = !{!"branch_weights", i32 2000, i32 1}
!258 = !{i64 2156670906}
!259 = !{i64 2156671054}
!260 = !{i64 2156671245}
!261 = !{i64 2152223013}
!262 = !{i64 4681668}
!263 = !{i64 2156700509}
!264 = !{i64 2156678819}
!265 = !{i64 2156715551, i64 2156716061, i64 2156715588, i64 2156715644, i64 2156715678, i64 2156715702, i64 2156715743, i64 2156715764, i64 2156715792, i64 2156715826}
