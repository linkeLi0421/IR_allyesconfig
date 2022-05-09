; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/pcnet32.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/pcnet32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pcnet32_access = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.pcnet32_init_block = type { i16, i16, [6 x i8], i16, [2 x i32], i32, i32 }
%struct.pcnet32_rx_head = type { i32, i16, i16, i32, i32 }
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
%struct.pcnet32_tx_head = type { i32, i16, i16, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"pcnet32.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype351 = internal constant [27 x i8] c"pcnet32.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug352 = internal constant [39 x i8] c"pcnet32.parm=debug:pcnet32 debug level\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [27 x i8] c"pcnet32.max_interrupt_work\00", align 1
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype353 = internal constant [40 x i8] c"pcnet32.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work354 = internal constant [77 x i8] c"pcnet32.parm=max_interrupt_work:pcnet32 maximum events handled per interrupt\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"pcnet32.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype355 = internal constant [34 x i8] c"pcnet32.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak356 = internal constant [76 x i8] c"pcnet32.parm=rx_copybreak:pcnet32 copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__param_str_tx_start_pt = internal constant [20 x i8] c"pcnet32.tx_start_pt\00", align 1
@tx_start_pt = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tx_start_pt = internal constant %struct.kernel_param { ptr @__param_str_tx_start_pt, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @tx_start_pt } }, section "__param", align 4
@__UNIQUE_ID_tx_start_pttype357 = internal constant [33 x i8] c"pcnet32.parmtype=tx_start_pt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_start_pt358 = internal constant [60 x i8] c"pcnet32.parm=tx_start_pt:pcnet32 transmit start point (0-3)\00", section ".modinfo", align 1
@__param_str_pcnet32vlb = internal constant [19 x i8] c"pcnet32.pcnet32vlb\00", align 1
@pcnet32vlb = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcnet32vlb = internal constant %struct.kernel_param { ptr @__param_str_pcnet32vlb, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @pcnet32vlb } }, section "__param", align 4
@__UNIQUE_ID_pcnet32vlbtype359 = internal constant [32 x i8] c"pcnet32.parmtype=pcnet32vlb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcnet32vlb360 = internal constant [67 x i8] c"pcnet32.parm=pcnet32vlb:pcnet32 Vesa local bus (VLB) support (0/1)\00", section ".modinfo", align 1
@__param_str_options = internal constant [16 x i8] c"pcnet32.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype361 = internal constant [38 x i8] c"pcnet32.parmtype=options:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_options362 = internal constant [62 x i8] c"pcnet32.parm=options:pcnet32 initial option setting(s) (0-15)\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [20 x i8] c"pcnet32.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype363 = internal constant [42 x i8] c"pcnet32.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex364 = internal constant [60 x i8] c"pcnet32.parm=full_duplex:pcnet32 full duplex setting(s) (1)\00", section ".modinfo", align 1
@__param_str_homepna = internal constant [16 x i8] c"pcnet32.homepna\00", align 1
@__param_arr_homepna = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @homepna }, align 4
@__param_homepna = internal constant %struct.kernel_param { ptr @__param_str_homepna, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_homepna } }, section "__param", align 4
@__UNIQUE_ID_homepnatype365 = internal constant [38 x i8] c"pcnet32.parmtype=homepna:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_homepna366 = internal constant [100 x i8] c"pcnet32.parm=homepna:pcnet32 mode for 79C978 cards (1 for HomePNA, 0 for Ethernet, default Ethernet\00", section ".modinfo", align 1
@__UNIQUE_ID_author367 = internal constant [35 x i8] c"pcnet32.author=Thomas Bogendoerfer\00", section ".modinfo", align 1
@__UNIQUE_ID_description368 = internal constant [69 x i8] c"pcnet32.description=Driver for PCnet32 and PCnetPCI based ethercards\00", section ".modinfo", align 1
@__UNIQUE_ID_file369 = internal constant [46 x i8] c"pcnet32.file=drivers/net/ethernet/amd/pcnet32\00", section ".modinfo", align 1
@__UNIQUE_ID_license370 = internal constant [20 x i8] c"pcnet32.license=GPL\00", section ".modinfo", align 1
@pcnet32_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@pcnet32_have_pci = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pcnet32_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pcnet32_pci_tbl, ptr @pcnet32_probe_pci, ptr @pcnet32_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcnet32_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_pcnet32__371_3039_pcnet32_init_module6 = internal global ptr @pcnet32_init_module, section ".initcall6.init", align 4
@__exitcall_pcnet32_cleanup_module = internal global ptr @pcnet32_cleanup_module, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@homepna = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcnet32\00", [24 x i8] zeroinitializer }, align 32
@pcnet32_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 8192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 8192, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pcnet32_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcnet32_pm_suspend, ptr @pcnet32_pm_resume, ptr @pcnet32_pm_suspend, ptr @pcnet32_pm_resume, ptr @pcnet32_pm_suspend, ptr @pcnet32_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pcnet32_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcnet32_probe_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pcnet32: failed to enable device -- err=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcnet32_probe_pci\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ethernet/amd/pcnet32.c\00", [61 x i8] zeroinitializer }, align 32
@pcnet32_probe_pci._entry_ptr = internal global ptr @pcnet32_probe_pci._entry, section ".printk_index", align 4
@pcnet32_probe_pci._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013pcnet32: card has no PCI IO resources, aborting\0A\00", [45 x i8] zeroinitializer }, align 32
@pcnet32_probe_pci._entry_ptr.6 = internal global ptr @pcnet32_probe_pci._entry.4, section ".printk_index", align 4
@pcnet32_probe_pci._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013pcnet32: architecture does not support 32bit PCI busmaster DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@pcnet32_probe_pci._entry_ptr.9 = internal global ptr @pcnet32_probe_pci._entry.7, section ".printk_index", align 4
@pcnet32_probe_pci._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pcnet32: io address range already allocated\0A\00", [49 x i8] zeroinitializer }, align 32
@pcnet32_probe_pci._entry_ptr.12 = internal global ptr @pcnet32_probe_pci._entry.10, section ".printk_index", align 4
@pcnet32_wio = internal constant { %struct.pcnet32_access, [36 x i8] } { %struct.pcnet32_access { ptr @pcnet32_wio_read_csr, ptr @pcnet32_wio_write_csr, ptr @pcnet32_wio_read_bcr, ptr @pcnet32_wio_write_bcr, ptr @pcnet32_wio_read_rap, ptr @pcnet32_wio_write_rap, ptr @pcnet32_wio_reset }, [36 x i8] zeroinitializer }, align 32
@pcnet32_dwio = internal constant { %struct.pcnet32_access, [36 x i8] } { %struct.pcnet32_access { ptr @pcnet32_dwio_read_csr, ptr @pcnet32_dwio_write_csr, ptr @pcnet32_dwio_read_bcr, ptr @pcnet32_dwio_write_bcr, ptr @pcnet32_dwio_read_rap, ptr @pcnet32_dwio_write_rap, ptr @pcnet32_dwio_reset }, [36 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013pcnet32: No access methods\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcnet32_probe1\00", [17 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr = internal global ptr @pcnet32_probe1._entry, section ".printk_index", align 4
@pcnet32_probe1._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pcnet32:   PCnet chip version is %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.17 = internal global ptr @pcnet32_probe1._entry.15, section ".printk_index", align 4
@pcnet32_probe1._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 1629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pcnet32: Unsupported chip version\0A\00", [59 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.20 = internal global ptr @pcnet32_probe1._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCnet/PCI 79C970\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCnet/32 79C965\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCnet/PCI II 79C970A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCnet/FAST 79C971\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCnet/FAST+ 79C972\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCnet/FAST III 79C973\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCnet/Home 79C978\00", [46 x i8] zeroinitializer }, align 32
@cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcnet32_probe1._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.3, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017pcnet32: media set to %sMbit mode\0A\00", [59 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.30 = internal global ptr @pcnet32_probe1._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PCnet/FAST III 79C975\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCnet/PRO 79C976\00", [47 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.14, ptr @.str.3, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pcnet32: PCnet version %#x, no PCnet32 chip\0A\00", [49 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.37 = internal global ptr @pcnet32_probe1._entry.35, section ".printk_index", align 4
@pcnet32_probe1._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.14, ptr @.str.3, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016pcnet32: %s at %#3lx,\00", [40 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.40 = internal global ptr @pcnet32_probe1._entry.38, section ".printk_index", align 4
@pcnet32_probe1._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.14, ptr @.str.3, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\01c warning: CSR address invalid,\0A\00", [62 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.43 = internal global ptr @pcnet32_probe1._entry.41, section ".printk_index", align 4
@pcnet32_probe1._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.14, ptr @.str.3, i32 1782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pcnet32:     using instead PROM address of\00", [51 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.46 = internal global ptr @pcnet32_probe1._entry.44, section ".printk_index", align 4
@pcnet32_probe1.zero_addr = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@pcnet32_probe1._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.14, ptr @.str.3, i32 1796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c %pM\00", [25 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.49 = internal global ptr @pcnet32_probe1._entry.47, section ".printk_index", align 4
@pcnet32_probe1._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.14, ptr @.str.3, i32 1801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pcnet32:     tx_start_pt(0x%04x):\00", [60 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.52 = internal global ptr @pcnet32_probe1._entry.50, section ".printk_index", align 4
@pcnet32_probe1._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.14, ptr @.str.3, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c  20 bytes,\00", [18 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.55 = internal global ptr @pcnet32_probe1._entry.53, section ".printk_index", align 4
@pcnet32_probe1._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.14, ptr @.str.3, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c  64 bytes,\00", [18 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.58 = internal global ptr @pcnet32_probe1._entry.56, section ".printk_index", align 4
@pcnet32_probe1._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.14, ptr @.str.3, i32 1810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c 128 bytes,\00", [18 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.61 = internal global ptr @pcnet32_probe1._entry.59, section ".printk_index", align 4
@pcnet32_probe1._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.14, ptr @.str.3, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c~220 bytes,\00", [18 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.64 = internal global ptr @pcnet32_probe1._entry.62, section ".printk_index", align 4
@pcnet32_probe1._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.14, ptr @.str.3, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c BCR18(%x):\00", [18 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.67 = internal global ptr @pcnet32_probe1._entry.65, section ".printk_index", align 4
@pcnet32_probe1._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.14, ptr @.str.3, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cBurstWrEn \00", [19 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.70 = internal global ptr @pcnet32_probe1._entry.68, section ".printk_index", align 4
@pcnet32_probe1._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.14, ptr @.str.3, i32 1821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cBurstRdEn \00", [19 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.73 = internal global ptr @pcnet32_probe1._entry.71, section ".printk_index", align 4
@pcnet32_probe1._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.14, ptr @.str.3, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01cDWordIO \00", [21 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.76 = internal global ptr @pcnet32_probe1._entry.74, section ".printk_index", align 4
@pcnet32_probe1._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.14, ptr @.str.3, i32 1825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01cNoUFlow \00", [21 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.79 = internal global ptr @pcnet32_probe1._entry.77, section ".printk_index", align 4
@pcnet32_probe1._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.14, ptr @.str.3, i32 1827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016pcnet32:     SRAMSIZE=0x%04x,\00", [32 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.82 = internal global ptr @pcnet32_probe1._entry.80, section ".printk_index", align 4
@pcnet32_probe1._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.14, ptr @.str.3, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c SRAM_BND=0x%04x,\00", [44 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.85 = internal global ptr @pcnet32_probe1._entry.83, section ".printk_index", align 4
@pcnet32_probe1._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.14, ptr @.str.3, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01cLowLatRx\00", [21 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.88 = internal global ptr @pcnet32_probe1._entry.86, section ".printk_index", align 4
@pcnet32_probe1._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.14, ptr @.str.3, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pcnet32: Coherent memory allocation failed\0A\00", [50 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.91 = internal global ptr @pcnet32_probe1._entry.89, section ".printk_index", align 4
@pcnet32_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@options_mapping = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\04\00\00\04\81\04\04\04\04\03\83\03\01C\C3\04", [16 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.14, ptr @.str.3, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c assigned IRQ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.95 = internal global ptr @pcnet32_probe1._entry.93, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pcnet32_probe1._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.14, ptr @.str.3, i32 1937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01c, failed to detect IRQ line\0A\00", [33 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.98 = internal global ptr @pcnet32_probe1._entry.96, section ".printk_index", align 4
@pcnet32_probe1._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.14, ptr @.str.3, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c, probed IRQ %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.101 = internal global ptr @pcnet32_probe1._entry.99, section ".printk_index", align 4
@pcnet32_probe1._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.14, ptr @.str.3, i32 1967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pcnet32: Found PHY %04x:%04x at address %d\0A\00", [50 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.104 = internal global ptr @pcnet32_probe1._entry.102, section ".printk_index", align 4
@pcnet32_probe1.__key.105 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&lp->watchdog_timer)\00", [42 x i8] zeroinitializer }, align 32
@pcnet32_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pcnet32_open, ptr @pcnet32_close, ptr @pcnet32_start_xmit, ptr null, ptr null, ptr null, ptr @pcnet32_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @pcnet32_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcnet32_tx_timeout, ptr null, ptr null, ptr null, ptr @pcnet32_get_stats, ptr null, ptr null, ptr @pcnet32_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pcnet32_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pcnet32_get_drvinfo, ptr @pcnet32_get_regs_len, ptr @pcnet32_get_regs, ptr null, ptr null, ptr @pcnet32_get_msglevel, ptr @pcnet32_set_msglevel, ptr @pcnet32_nway_reset, ptr @pcnet32_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcnet32_get_ringparam, ptr @pcnet32_set_ringparam, ptr null, ptr null, ptr null, ptr @pcnet32_ethtool_test, ptr @pcnet32_get_strings, ptr @pcnet32_set_phys_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcnet32_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcnet32_get_link_ksettings, ptr @pcnet32_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.14, ptr @.str.3, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016pcnet32: %s: registered as %s\0A\00", [63 x i8] zeroinitializer }, align 32
@pcnet32_probe1._entry_ptr.109 = internal global ptr @pcnet32_probe1._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Impossible packet size %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Runt packet!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mapping error.\0A\00", [44 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tx error status=%04x err_status=%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tx FIFO error!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"out-of-sync dirty pointer, %d vs. %d, full=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s timed out waiting for stop\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.pcnet32_restart = private unnamed_addr constant [16 x i8] c"pcnet32_restart\00", align 1
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s netdev_alloc_skb failed\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.pcnet32_init_ring = private unnamed_addr constant [18 x i8] c"pcnet32_init_ring\00", align 1
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s pci dma mapping error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Coherent memory allocation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"link up, %uMbps, %s-duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using PHY number %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() irq %d tx/rx rings %#x/%#x init %#x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.pcnet32_open = private unnamed_addr constant [13 x i8] c"pcnet32_open\00", align 1
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Setting 100Mb-Full Duplex\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"pcnet32 open after %d ticks, init block %#x csr0 %4.4x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"interrupt  csr0=%#2.2x new csr=%#2.2x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Bus master arbitration failure, status %4.4x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exiting interrupt, csr0=%#4.4x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Shutting down ethercard, status was %2.2x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() called, csr0 %4.4x\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.pcnet32_start_xmit = private unnamed_addr constant [19 x i8] c"pcnet32_start_xmit\00", align 1
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Promiscuous mode enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error getting into suspend!\0A\00", [35 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 2458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013pcnet32: %s: transmit timed out, status %4.4x, resetting\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcnet32_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry_ptr = internal global ptr @pcnet32_tx_timeout._entry, section ".printk_index", align 4
@pcnet32_tx_timeout._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.3, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017 Ring data dump: dirty_tx %d cur_tx %d%s cur_rx %d.\00", [42 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry_ptr.143 = internal global ptr @pcnet32_tx_timeout._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (full)\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pcnet32_tx_timeout._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.140, ptr @.str.3, i32 2472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %08x %04x %08x %04x\00", [41 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry_ptr.148 = internal global ptr @pcnet32_tx_timeout._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A \00", [29 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.140, ptr @.str.3, i32 2478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry_ptr.151 = internal global ptr @pcnet32_tx_timeout._entry.150, section ".printk_index", align 4
@pcnet32_tx_timeout._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.140, ptr @.str.3, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pcnet32_tx_timeout._entry_ptr.154 = internal global ptr @pcnet32_tx_timeout._entry.152, section ".printk_index", align 4
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VLB 0x%lx\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Ring Param Settings: RX: %d, TX: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.pcnet32_realloc_rx_ring = private unnamed_addr constant [24 x i8] c"pcnet32_realloc_rx_ring\00", align 1
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s dma mapping failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Loopback test failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Loopback test passed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No tests to run (specify 'Offline' on ethtool)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot allocate skb at line: %d!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA mapping error at line: %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Desc %d failed to reset!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX loopback packets:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Packet %d: \00", [20 x i8] zeroinitializer }, align 32
@pcnet32_loopback_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.3, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcnet32_loopback_test\00", [42 x i8] zeroinitializer }, align 32
@pcnet32_loopback_test._entry_ptr = internal global ptr @pcnet32_loopback_test._entry, section ".printk_index", align 4
@pcnet32_loopback_test._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.3, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pcnet32_loopback_test._entry_ptr.170 = internal global ptr @pcnet32_loopback_test._entry.168, section ".printk_index", align 4
@.str.171 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in compare! %2x - %02x %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@pcnet32_gstrings_test = internal constant { [1 x [32 x i8]], [32 x i8] } { [1 x [32 x i8]] [[32 x i8] c"Loopback test  (offline)\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@pcnet32_portlist = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 768, i32 800, i32 832, i32 864, i32 0], [44 x i8] zeroinitializer }, align 32
@pcnet32_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 3014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016pcnet32: %d cards_found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcnet32_init_module\00", [44 x i8] zeroinitializer }, align 32
@pcnet32_init_module._entry_ptr = internal global ptr @pcnet32_init_module._entry, section ".printk_index", align 4
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcnet32_probe_vlbus\00", [44 x i8] zeroinitializer }, align 32
@switch.table.pcnet32_probe1 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 9248, i64 9264, i64 9761, i64 9763, i64 9764, i64 9765, i64 9766, i64 9767, i64 9768]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 16, i64 9985, i64 9987]
@__sancov_gen_cov_switch_values.176 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2966, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 90, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 91, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"tx_start_pt\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2967, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"pcnet32vlb\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 86, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"pcnet32_dev\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 88, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"pcnet32_have_pci\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"pcnet32_driver\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2955, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 141, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 142, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [8 x i8] c"homepna\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 143, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2956, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"pcnet32_pci_tbl\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 60, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"pcnet32_pm_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2953, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"pcnet32_debug\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 84, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1536, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1543, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1551, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1558, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [12 x i8] c"pcnet32_wio\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 381, i32 36 }
@___asan_gen_.253 = private unnamed_addr constant [13 x i8] c"pcnet32_dwio\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 436, i32 36 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1618, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1626, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1629, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1639, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1645, i32 15 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1648, i32 14 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1652, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1658, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1664, i32 14 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1670, i32 14 }
@___asan_gen_.298 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 76, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1683, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1688, i32 14 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1694, i32 14 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1700, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1755, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1781, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1782, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant [10 x i8] c"zero_addr\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1790, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1796, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1801, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1804, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1807, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1810, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1813, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1817, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1819, i32 5 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1821, i32 5 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1823, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1825, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1827, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1829, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1832, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1844, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1852, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [16 x i8] c"options_mapping\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 112, i32 28 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1921, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1937, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1942, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1966, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1974, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [19 x i8] c"pcnet32_netdev_ops\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1572, i32 36 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"pcnet32_ethtool_ops\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1487, i32 33 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1993, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1204, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1210, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1231, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 326, i32 6 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1320, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1334, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1369, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2432, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2372, i32 5 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2386, i32 5 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2021, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2862, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2874, i32 22 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2877, i32 12 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2877, i32 21 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2888, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2808, i32 5 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2116, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2159, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2295, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2571, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2593, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2610, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2634, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2500, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2724, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 703, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2457, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2463, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2468, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2474, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 2479, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 806, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 924, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 585, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 955, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 959, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 962, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1010, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1039, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1071, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1079, i32 34 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1082, i32 35 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1085, i32 5 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1086, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1097, i32 5 }
@___asan_gen_.664 = private unnamed_addr constant [22 x i8] c"pcnet32_gstrings_test\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 132, i32 19 }
@___asan_gen_.667 = private unnamed_addr constant [17 x i8] c"pcnet32_portlist\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 81, i32 21 }
@___asan_gen_.670 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 3014, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.680 = private constant [38 x i8] c"../drivers/net/ethernet/amd/pcnet32.c\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.680, i32 1514, i32 7 }
@___asan_gen_.682 = private unnamed_addr constant [28 x i8] c"switch.table.pcnet32_probe1\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_author367, ptr @__UNIQUE_ID_debug352, ptr @__UNIQUE_ID_debugtype351, ptr @__UNIQUE_ID_description368, ptr @__UNIQUE_ID_file369, ptr @__UNIQUE_ID_full_duplex364, ptr @__UNIQUE_ID_full_duplextype363, ptr @__UNIQUE_ID_homepna366, ptr @__UNIQUE_ID_homepnatype365, ptr @__UNIQUE_ID_license370, ptr @__UNIQUE_ID_max_interrupt_work354, ptr @__UNIQUE_ID_max_interrupt_worktype353, ptr @__UNIQUE_ID_options362, ptr @__UNIQUE_ID_optionstype361, ptr @__UNIQUE_ID_pcnet32vlb360, ptr @__UNIQUE_ID_pcnet32vlbtype359, ptr @__UNIQUE_ID_rx_copybreak356, ptr @__UNIQUE_ID_rx_copybreaktype355, ptr @__UNIQUE_ID_tx_start_pt358, ptr @__UNIQUE_ID_tx_start_pttype357, ptr @__exitcall_pcnet32_cleanup_module, ptr @__initcall__kmod_pcnet32__371_3039_pcnet32_init_module6, ptr @__param_debug, ptr @__param_full_duplex, ptr @__param_homepna, ptr @__param_max_interrupt_work, ptr @__param_options, ptr @__param_pcnet32vlb, ptr @__param_rx_copybreak, ptr @__param_tx_start_pt, ptr @pcnet32_cleanup_module, ptr @pcnet32_init_module._entry, ptr @pcnet32_init_module._entry_ptr, ptr @pcnet32_loopback_test._entry, ptr @pcnet32_loopback_test._entry.168, ptr @pcnet32_loopback_test._entry_ptr, ptr @pcnet32_loopback_test._entry_ptr.170, ptr @pcnet32_probe1._entry, ptr @pcnet32_probe1._entry.102, ptr @pcnet32_probe1._entry.107, ptr @pcnet32_probe1._entry.15, ptr @pcnet32_probe1._entry.18, ptr @pcnet32_probe1._entry.28, ptr @pcnet32_probe1._entry.35, ptr @pcnet32_probe1._entry.38, ptr @pcnet32_probe1._entry.41, ptr @pcnet32_probe1._entry.44, ptr @pcnet32_probe1._entry.47, ptr @pcnet32_probe1._entry.50, ptr @pcnet32_probe1._entry.53, ptr @pcnet32_probe1._entry.56, ptr @pcnet32_probe1._entry.59, ptr @pcnet32_probe1._entry.62, ptr @pcnet32_probe1._entry.65, ptr @pcnet32_probe1._entry.68, ptr @pcnet32_probe1._entry.71, ptr @pcnet32_probe1._entry.74, ptr @pcnet32_probe1._entry.77, ptr @pcnet32_probe1._entry.80, ptr @pcnet32_probe1._entry.83, ptr @pcnet32_probe1._entry.86, ptr @pcnet32_probe1._entry.89, ptr @pcnet32_probe1._entry.93, ptr @pcnet32_probe1._entry.96, ptr @pcnet32_probe1._entry.99, ptr @pcnet32_probe1._entry_ptr, ptr @pcnet32_probe1._entry_ptr.101, ptr @pcnet32_probe1._entry_ptr.104, ptr @pcnet32_probe1._entry_ptr.109, ptr @pcnet32_probe1._entry_ptr.17, ptr @pcnet32_probe1._entry_ptr.20, ptr @pcnet32_probe1._entry_ptr.30, ptr @pcnet32_probe1._entry_ptr.37, ptr @pcnet32_probe1._entry_ptr.40, ptr @pcnet32_probe1._entry_ptr.43, ptr @pcnet32_probe1._entry_ptr.46, ptr @pcnet32_probe1._entry_ptr.49, ptr @pcnet32_probe1._entry_ptr.52, ptr @pcnet32_probe1._entry_ptr.55, ptr @pcnet32_probe1._entry_ptr.58, ptr @pcnet32_probe1._entry_ptr.61, ptr @pcnet32_probe1._entry_ptr.64, ptr @pcnet32_probe1._entry_ptr.67, ptr @pcnet32_probe1._entry_ptr.70, ptr @pcnet32_probe1._entry_ptr.73, ptr @pcnet32_probe1._entry_ptr.76, ptr @pcnet32_probe1._entry_ptr.79, ptr @pcnet32_probe1._entry_ptr.82, ptr @pcnet32_probe1._entry_ptr.85, ptr @pcnet32_probe1._entry_ptr.88, ptr @pcnet32_probe1._entry_ptr.91, ptr @pcnet32_probe1._entry_ptr.95, ptr @pcnet32_probe1._entry_ptr.98, ptr @pcnet32_probe_pci._entry, ptr @pcnet32_probe_pci._entry.10, ptr @pcnet32_probe_pci._entry.4, ptr @pcnet32_probe_pci._entry.7, ptr @pcnet32_probe_pci._entry_ptr, ptr @pcnet32_probe_pci._entry_ptr.12, ptr @pcnet32_probe_pci._entry_ptr.6, ptr @pcnet32_probe_pci._entry_ptr.9, ptr @pcnet32_tx_timeout._entry, ptr @pcnet32_tx_timeout._entry.141, ptr @pcnet32_tx_timeout._entry.146, ptr @pcnet32_tx_timeout._entry.150, ptr @pcnet32_tx_timeout._entry.152, ptr @pcnet32_tx_timeout._entry_ptr, ptr @pcnet32_tx_timeout._entry_ptr.143, ptr @pcnet32_tx_timeout._entry_ptr.148, ptr @pcnet32_tx_timeout._entry_ptr.151, ptr @pcnet32_tx_timeout._entry_ptr.154, ptr @debug, ptr @max_interrupt_work, ptr @rx_copybreak, ptr @tx_start_pt, ptr @pcnet32vlb, ptr @pcnet32_dev, ptr @pcnet32_have_pci, ptr @pcnet32_driver, ptr @options, ptr @full_duplex, ptr @homepna, ptr @.str, ptr @pcnet32_pci_tbl, ptr @pcnet32_pm_ops, ptr @pcnet32_debug, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @pcnet32_wio, ptr @pcnet32_dwio, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cards_found, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @pcnet32_probe1.zero_addr, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @pcnet32_probe1.__key, ptr @.str.92, ptr @options_mapping, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @pcnet32_probe1.__key.105, ptr @.str.106, ptr @pcnet32_netdev_ops, ptr @pcnet32_ethtool_ops, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @pcnet32_gstrings_test, ptr @pcnet32_portlist, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @switch.table.pcnet32_probe1], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_start_pt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32vlb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_have_pci to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @homepna to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe_pci._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe_pci._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe_pci._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_wio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_dwio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1.zero_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1.__key.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_probe1._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_tx_timeout._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_tx_timeout._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_tx_timeout._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_tx_timeout._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_loopback_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_loopback_test._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_gstrings_test to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_portlist to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet32_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcnet32_probe1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %.pr = load ptr, ptr @pcnet32_dev, align 4
  %tobool.not5 = icmp eq ptr %.pr, null
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %0 = phi ptr [ %2, %while.body.while.body_crit_edge ], [ %.pr, %entry.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %0, i32 2304
  %next = getelementptr i8, ptr %0, i32 2676
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next, align 4
  tail call void @unregister_netdev(ptr noundef nonnull %0) #18
  %3 = load ptr, ptr @pcnet32_dev, align 4
  tail call fastcc void @pcnet32_free_ring(ptr noundef %3)
  %4 = load ptr, ptr @pcnet32_dev, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef 32) #18
  %pci_dev = getelementptr i8, ptr %0, i32 2320
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %init_dma_addr = getelementptr i8, ptr %0, i32 2316
  %11 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %init_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 28, ptr noundef %10, i32 noundef %12, i32 noundef 0) #18
  %13 = load ptr, ptr @pcnet32_dev, align 4
  tail call void @free_netdev(ptr noundef %13) #18
  store ptr %2, ptr @pcnet32_dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %.b = load i1, ptr @pcnet32_have_pci, align 4
  br i1 %.b, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @pci_unregister_driver(ptr noundef nonnull @pcnet32_driver) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_free_ring(ptr nocapture noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skbuff = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skbuff, align 8
  tail call void @kfree(ptr noundef %1) #18
  %2 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_skbuff, align 8
  %rx_skbuff = getelementptr i8, ptr %dev, i32 2332
  %3 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skbuff, align 4
  tail call void @kfree(ptr noundef %4) #18
  %5 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rx_skbuff, align 4
  %tx_dma_addr = getelementptr i8, ptr %dev, i32 2336
  %6 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_addr, align 8
  tail call void @kfree(ptr noundef %7) #18
  %8 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tx_dma_addr, align 8
  %rx_dma_addr = getelementptr i8, ptr %dev, i32 2340
  %9 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_dma_addr, align 4
  tail call void @kfree(ptr noundef %10) #18
  %11 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_dma_addr, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %16 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ring_size, align 4
  %mul = shl i32 %17, 4
  %tx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2424
  %18 = ptrtoint ptr %tx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %mul, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #18
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_ring, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  %21 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ring, align 4
  %tobool8.not = icmp eq ptr %22, null
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pci_dev10 = getelementptr i8, ptr %dev, i32 2320
  %23 = ptrtoint ptr %pci_dev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev10, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %25 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_ring_size, align 8
  %mul12 = shl i32 %26, 4
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2420
  %27 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_ring_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef %mul12, ptr noundef nonnull %22, i32 noundef %28, i32 noundef 0) #18
  %29 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rx_ring, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 31
  br i1 %cmp1.i, label %entry.netif_msg_init.exit_crit_edge, label %if.end.i

entry.netif_msg_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2.i = icmp eq i32 %0, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %notmask.i = shl nsw i32 -1, %0
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %entry.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %entry.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  store i32 %retval.0.i, ptr @pcnet32_debug, align 4
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcnet32_driver, ptr noundef null, ptr noundef nonnull @.str) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %netif_msg_init.exit.if.end4_crit_edge

netif_msg_init.exit.if.end4_crit_edge:            ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @pcnet32_have_pci, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %netif_msg_init.exit.if.end4_crit_edge
  %1 = load i32, ptr @pcnet32vlb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %2 = phi i32 [ %8, %for.inc.i.for.body.i_crit_edge ], [ 768, %if.end4.for.body.i_crit_edge ]
  %port.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @pcnet32_portlist, %if.end4.for.body.i_crit_edge ]
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %2, i32 noundef 32, ptr noundef nonnull @.str.174, i32 noundef 0) #18
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %add.i = add i32 %2, 14
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add2.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #18, !srcloc !407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !408
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %4)
  %cmp.i = icmp eq i8 %4, 87
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %add7.i = add i32 %2, 15
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %5 = inttoptr i32 %add9.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #18, !srcloc !407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !409
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %6)
  %cmp14.i = icmp eq i8 %6, 87
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %call17.i = tail call fastcc i32 @pcnet32_probe1(i32 noundef %2, i32 noundef 0, ptr noundef null) #18
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %2, i32 noundef 32) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then16.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %port.02.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end7_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %9 = load i32, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end7
  %10 = load i32, ptr @pcnet32_debug, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true9.if.end13_crit_edge, label %do.end

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

do.end:                                           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #20
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %9) #21
  br label %if.end13

if.end13:                                         ; preds = %do.end, %land.lhs.true9.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %.b = load i1, ptr @pcnet32_have_pci, align 4
  %.neg = sext i1 %.b to i32
  %11 = load i32, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %.neg)
  %tobool14.not = icmp eq i32 %11, %.neg
  %cond = select i1 %tobool14.not, i32 -19, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_probe_pci(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @pcnet32_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #21
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #18
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.end3.if.then11_crit_edge, label %cond.false

if.end3.if.then11_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

cond.false:                                       ; preds = %if.end3
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %tobool10.not = icmp eq i32 %sub, -1
  br i1 %tobool10.not, label %cond.false.if.then11_crit_edge, label %if.end21

cond.false.if.then11_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then11

if.then11:                                        ; preds = %cond.false.if.then11_crit_edge, %if.end3.if.then11_crit_edge
  %5 = load i32, ptr @pcnet32_debug, align 4
  %and12 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.then53_crit_edge, label %if.then11.if.then53.sink.split_crit_edge

if.then11.if.then53.sink.split_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then53.sink.split

if.then11.if.then53_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then53

if.end21:                                         ; preds = %cond.false
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call22 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end34, label %if.then24

if.then24:                                        ; preds = %if.end21
  %6 = load i32, ptr @pcnet32_debug, align 4
  %and25 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then24.err_disable_dev_crit_edge, label %do.end30

if.then24.err_disable_dev_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_disable_dev

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #21
  br label %err_disable_dev

if.end34:                                         ; preds = %if.end21
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %call38 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %8, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef 0) #18
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.end34
  %9 = load i32, ptr @pcnet32_debug, align 4
  %and41 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then40.if.then53_crit_edge, label %if.then40.if.then53.sink.split_crit_edge

if.then40.if.then53.sink.split_crit_edge:         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then53.sink.split

if.then40.if.then53_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then53

if.end50:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %call51 = tail call fastcc i32 @pcnet32_probe1(i32 noundef %8, i32 noundef 1, ptr noundef %pdev)
  br label %err_disable_dev

err_disable_dev:                                  ; preds = %if.end50, %do.end30, %if.then24.err_disable_dev_crit_edge
  %err.0 = phi i32 [ %call22, %do.end30 ], [ %call22, %if.then24.err_disable_dev_crit_edge ], [ %call51, %if.end50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp52 = icmp slt i32 %err.0, 0
  br i1 %cmp52, label %err_disable_dev.if.then53_crit_edge, label %err_disable_dev.cleanup_crit_edge

err_disable_dev.cleanup_crit_edge:                ; preds = %err_disable_dev
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

err_disable_dev.if.then53_crit_edge:              ; preds = %err_disable_dev
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then53

if.then53.sink.split:                             ; preds = %if.then40.if.then53.sink.split_crit_edge, %if.then11.if.then53.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.5, %if.then11.if.then53.sink.split_crit_edge ], [ @.str.11, %if.then40.if.then53.sink.split_crit_edge ]
  %err.072.ph = phi i32 [ -19, %if.then11.if.then53.sink.split_crit_edge ], [ -16, %if.then40.if.then53.sink.split_crit_edge ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink) #21
  br label %if.then53

if.then53:                                        ; preds = %if.then53.sink.split, %err_disable_dev.if.then53_crit_edge, %if.then40.if.then53_crit_edge, %if.then11.if.then53_crit_edge
  %err.072 = phi i32 [ %err.0, %err_disable_dev.if.then53_crit_edge ], [ -16, %if.then40.if.then53_crit_edge ], [ -19, %if.then11.if.then53_crit_edge ], [ %err.072.ph, %if.then53.sink.split ]
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %err_disable_dev.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %err.072, %if.then53 ], [ %err.0, %err_disable_dev.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #18
  tail call fastcc void @pcnet32_free_ring(ptr noundef nonnull %1)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 32) #18
  %pci_dev = getelementptr i8, ptr %1, i32 2320
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %init_dma_addr = getelementptr i8, ptr %1, i32 2316
  %8 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 28, ptr noundef %7, i32 noundef %9, i32 noundef 0) #18
  tail call void @free_netdev(ptr noundef nonnull %1) #18
  tail call void @pci_disable_device(ptr noundef %pdev) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcnet32_probe1(i32 noundef %ioaddr, i32 noundef %shared, ptr noundef %pdev) unnamed_addr #3 align 64 {
entry:
  %promaddr = alloca [6 x i8], align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %promaddr) #18
  %0 = getelementptr inbounds [6 x i8], ptr %promaddr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %promaddr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %promaddr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %promaddr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %promaddr, i32 0, i32 5
  %5 = call ptr @memset(ptr %promaddr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #18
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %7 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %9 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %add.i = add i32 %ioaddr, 20
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  %12 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #18, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !412
  tail call void @arm_heavy_mb() #18
  %add.i860 = add i32 %ioaddr, 18
  %and.i861 = and i32 %add.i860, 1048575
  %add1.i862 = or i32 %and.i861, -18874368
  %14 = inttoptr i32 %add1.i862 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 0) #18, !srcloc !413
  %add2.i = add i32 %ioaddr, 16
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %15 = inttoptr i32 %add4.i to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #18, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !414
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %16)
  %cmp = icmp eq i16 %16, 1024
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !415
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 22528) #18, !srcloc !413
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #18, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !416
  call void @__sanitizer_cov_trace_const_cmp2(i16 22528, i16 %17)
  %cmp.i.not = icmp eq i16 %17, 22528
  br i1 %cmp.i.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %add.i866 = add i32 %ioaddr, 24
  %and.i867 = and i32 %add.i866, 1048575
  %add1.i868 = or i32 %and.i867, -18874368
  %18 = inttoptr i32 %add1.i868 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !418
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !419
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #18, !srcloc !420
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !421
  %21 = and i32 %20, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %21)
  %cmp5 = icmp eq i32 %21, 67108864
  br i1 %cmp5, label %land.lhs.true7, label %if.else.if.else11_crit_edge

if.else.if.else11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else11

land.lhs.true7:                                   ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !422
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 1476395008) #18, !srcloc !420
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !423
  %23 = and i32 %22, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1476395008, i32 %23)
  %cmp.i878.not = icmp eq i32 %23, 1476395008
  br i1 %cmp.i878.not, label %land.lhs.true7.if.end16_crit_edge, label %land.lhs.true7.if.else11_crit_edge

land.lhs.true7.if.else11_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else11

land.lhs.true7.if.end16_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.else11:                                        ; preds = %land.lhs.true7.if.else11_crit_edge, %if.else.if.else11_crit_edge
  %24 = load i32, ptr @pcnet32_debug, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else11.err_release_region_crit_edge, label %do.end

if.else11.err_release_region_crit_edge:           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_release_region

do.end:                                           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #20
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  br label %err_release_region

if.end16:                                         ; preds = %land.lhs.true7.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  %a.0 = phi ptr [ @pcnet32_wio, %land.lhs.true.if.end16_crit_edge ], [ @pcnet32_dwio, %land.lhs.true7.if.end16_crit_edge ]
  %25 = ptrtoint ptr %a.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %a.0, align 4
  %call17 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 88) #18
  %conv18 = zext i16 %call17 to i32
  %call20 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 89) #18
  %conv21 = zext i16 %call20 to i32
  %shl = shl nuw i32 %conv21, 16
  %or = or i32 %shl, %conv18
  %27 = load i32, ptr @pcnet32_debug, align 4
  %28 = and i32 %27, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %28)
  %.not = icmp eq i32 %28, 8194
  br i1 %.not, label %do.end30, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %or) #21
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end16.if.end33_crit_edge
  %and34 = and i32 %conv18, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 3
  br i1 %cmp35.not, label %if.end47, label %if.then37

if.then37:                                        ; preds = %if.end33
  %29 = load i32, ptr @pcnet32_debug, align 4
  %and38 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then37.err_release_region_crit_edge, label %do.end43

if.then37.err_release_region_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_release_region

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #21
  br label %err_release_region

if.end47:                                         ; preds = %if.end33
  %30 = lshr i32 %or, 12
  %and48 = and i32 %30, 65535
  %trunc = trunc i32 %30 to i16
  %31 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 9248, label %if.end47.if.end117_crit_edge
    i16 9264, label %sw.bb49
    i16 9761, label %sw.bb54
    i16 9763, label %if.end47.if.end106.thread_crit_edge
    i16 9764, label %sw.bb56
    i16 9765, label %if.end47.if.then108_crit_edge
    i16 9766, label %sw.bb58
    i16 9767, label %sw.bb81
    i16 9768, label %sw.bb82
  ]

if.end47.if.then108_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then108

if.end47.if.end106.thread_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106.thread

if.end47.if.end117_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

sw.bb49:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shared)
  %tobool50.not = icmp eq i32 %shared, 0
  %.str.22..str.21 = select i1 %tobool50.not, ptr @.str.22, ptr @.str.21
  br label %if.end117

sw.bb54:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

sw.bb56:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106.thread

sw.bb58:                                          ; preds = %if.end47
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 2
  %32 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_bcr, align 4
  %call59 = tail call zeroext i16 %33(i32 noundef %ioaddr, i32 noundef 49) #18
  %34 = and i16 %call59, -4
  %and61 = zext i16 %34 to i32
  %35 = load i32, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp62 = icmp slt i32 %35, 8
  br i1 %cmp62, label %land.lhs.true64, label %sw.bb58.if.end68_crit_edge

sw.bb58.if.end68_crit_edge:                       ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

land.lhs.true64:                                  ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [8 x i32], ptr @homepna, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool65.not = icmp ne i32 %37, 0
  %or67 = zext i1 %tobool65.not to i32
  %spec.select = or i32 %or67, %and61
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true64, %sw.bb58.if.end68_crit_edge
  %media.0 = phi i32 [ %and61, %sw.bb58.if.end68_crit_edge ], [ %spec.select, %land.lhs.true64 ]
  %38 = load i32, ptr @pcnet32_debug, align 4
  %and69 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end79_crit_edge, label %do.end74

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end79

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #20
  %and76 = and i32 %media.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %cond = select i1 %tobool77.not, ptr @.str.32, ptr @.str.31
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %cond) #21
  br label %if.end79

if.end79:                                         ; preds = %do.end74, %if.end68.if.end79_crit_edge
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 3
  %39 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_bcr, align 4
  %conv80 = trunc i32 %media.0 to i16
  tail call void %40(i32 noundef %ioaddr, i32 noundef 49, i16 noundef zeroext %conv80) #18
  br label %if.end117

sw.bb81:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then108

sw.bb82:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end117

sw.default:                                       ; preds = %if.end47
  %41 = load i32, ptr @pcnet32_debug, align 4
  %and83 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %sw.default.err_release_region_crit_edge, label %do.end88

sw.default.err_release_region_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_release_region

do.end88:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %and48) #21
  br label %err_release_region

if.end106.thread:                                 ; preds = %sw.bb56, %if.end47.if.end106.thread_crit_edge
  %chipname.0 = phi ptr [ @.str.25, %sw.bb56 ], [ @.str.24, %if.end47.if.end106.thread_crit_edge ]
  %write_bcr94 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 3
  %42 = ptrtoint ptr %write_bcr94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_bcr94, align 4
  %read_bcr95 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 2
  %44 = ptrtoint ptr %read_bcr95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_bcr95, align 4
  %call96 = tail call zeroext i16 %45(i32 noundef %ioaddr, i32 noundef 18) #18
  %46 = or i16 %call96, 2144
  tail call void %43(i32 noundef %ioaddr, i32 noundef 18, i16 noundef zeroext %46) #18
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 1
  %47 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_csr, align 4
  %call101 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 80) #18
  tail call void %48(i32 noundef %ioaddr, i32 noundef 80, i16 noundef zeroext 3072) #18
  br label %if.end117

if.then108:                                       ; preds = %sw.bb81, %if.end47.if.then108_crit_edge
  %chipname.0.ph = phi ptr [ @.str.33, %sw.bb81 ], [ @.str.26, %if.end47.if.then108_crit_edge ]
  %write_bcr109 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 3
  %49 = ptrtoint ptr %write_bcr109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_bcr109, align 4
  tail call void %50(i32 noundef %ioaddr, i32 noundef 25, i16 noundef zeroext 23) #18
  tail call void %50(i32 noundef %ioaddr, i32 noundef 26, i16 noundef zeroext 12) #18
  %read_bcr112 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 2
  %51 = ptrtoint ptr %read_bcr112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_bcr112, align 4
  %call113 = tail call zeroext i16 %52(i32 noundef %ioaddr, i32 noundef 18) #18
  %53 = or i16 %call113, 2048
  tail call void %50(i32 noundef %ioaddr, i32 noundef 18, i16 noundef zeroext %53) #18
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.end106.thread, %sw.bb82, %if.end79, %sw.bb54, %sw.bb49, %if.end47.if.end117_crit_edge
  %dxsuflo.0941 = phi i8 [ 64, %if.end106.thread ], [ 0, %if.then108 ], [ 0, %sw.bb49 ], [ 0, %if.end47.if.end117_crit_edge ], [ 0, %sw.bb54 ], [ 0, %if.end79 ], [ 0, %sw.bb82 ]
  %chipname.0925940 = phi ptr [ %chipname.0, %if.end106.thread ], [ %chipname.0.ph, %if.then108 ], [ %.str.22..str.21, %sw.bb49 ], [ @.str.21, %if.end47.if.end117_crit_edge ], [ @.str.23, %sw.bb54 ], [ @.str.27, %if.end79 ], [ @.str.34, %sw.bb82 ]
  %mii.0928939 = phi i8 [ 32, %if.end106.thread ], [ 32, %if.then108 ], [ 0, %sw.bb49 ], [ 0, %if.end47.if.end117_crit_edge ], [ 0, %sw.bb54 ], [ 0, %if.end79 ], [ 32, %sw.bb82 ]
  %tobool396.not929938 = phi i1 [ false, %if.end106.thread ], [ false, %if.then108 ], [ true, %sw.bb49 ], [ true, %if.end47.if.end117_crit_edge ], [ false, %sw.bb54 ], [ false, %if.end79 ], [ false, %sw.bb82 ]
  %fdx.0930937 = phi i8 [ -128, %if.end106.thread ], [ -128, %if.then108 ], [ 0, %sw.bb49 ], [ 0, %if.end47.if.end117_crit_edge ], [ -128, %sw.bb54 ], [ -128, %if.end79 ], [ -128, %sw.bb82 ]
  %call118 = tail call ptr @alloc_etherdev_mqs(i32 noundef 480, i32 noundef 1, i32 noundef 1) #18
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.end117.err_release_region_crit_edge, label %if.end121

if.end117.err_release_region_crit_edge:           ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_release_region

if.end121:                                        ; preds = %if.end117
  %tobool122.not = icmp eq ptr %pdev, null
  br i1 %tobool122.not, label %if.end121.if.end126_crit_edge, label %if.then123

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 133, i32 1
  %54 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev124, ptr %parent, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end121.if.end126_crit_edge
  %55 = load i32, ptr @pcnet32_debug, align 4
  %and127 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end126.if.end135_crit_edge, label %do.end132

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end135

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %chipname.0925940, i32 noundef %ioaddr) #21
  br label %if.end135

if.end135:                                        ; preds = %do.end132, %if.end126.if.end135_crit_edge
  %call139 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 12) #18
  %conv143 = trunc i16 %call139 to i8
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv143, ptr %addr, align 1
  %57 = lshr i16 %call139, 8
  %conv147 = trunc i16 %57 to i8
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv147, ptr %6, align 1
  %call139.1 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 13) #18
  %conv143.1 = trunc i16 %call139.1 to i8
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv143.1, ptr %7, align 1
  %60 = lshr i16 %call139.1, 8
  %conv147.1 = trunc i16 %60 to i8
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv147.1, ptr %8, align 1
  %call139.2 = tail call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 14) #18
  %conv143.2 = trunc i16 %call139.2 to i8
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv143.2, ptr %9, align 1
  %63 = lshr i16 %call139.2, 8
  %conv147.2 = trunc i16 %63 to i8
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv147.2, ptr %10, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call118, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #18
  %and156 = and i32 %ioaddr, 1048575
  %add157 = or i32 %and156, -18874368
  %65 = inttoptr i32 %add157 to ptr
  %66 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %67 = ptrtoint ptr %promaddr to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %promaddr, align 4
  %add155.1 = add i32 %ioaddr, 1
  %and156.1 = and i32 %add155.1, 1048575
  %add157.1 = or i32 %and156.1, -18874368
  %68 = inttoptr i32 %add157.1 to ptr
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %0, align 1
  %add155.2 = add i32 %ioaddr, 2
  %and156.2 = and i32 %add155.2, 1048575
  %add157.2 = or i32 %and156.2, -18874368
  %71 = inttoptr i32 %add157.2 to ptr
  %72 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %1, align 2
  %add155.3 = add i32 %ioaddr, 3
  %and156.3 = and i32 %add155.3, 1048575
  %add157.3 = or i32 %and156.3, -18874368
  %74 = inttoptr i32 %add157.3 to ptr
  %75 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %2, align 1
  %add155.4 = add i32 %ioaddr, 4
  %and156.4 = and i32 %add155.4, 1048575
  %add157.4 = or i32 %and156.4, -18874368
  %77 = inttoptr i32 %add157.4 to ptr
  %78 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %3, align 4
  %add155.5 = add i32 %ioaddr, 5
  %and156.5 = and i32 %add155.5, 1048575
  %add157.5 = or i32 %and156.5, -18874368
  %80 = inttoptr i32 %add157.5 to ptr
  %81 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #18, !srcloc !407
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !424
  %82 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %4, align 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 86
  %83 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_addr, align 64
  %85 = ptrtoint ptr %promaddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %promaddr, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %84, align 4
  %xor.i = xor i32 %88, %86
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %3, align 4
  %add.ptr1.i = getelementptr i8, ptr %84, i32 4
  %91 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %92, %90
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i880 = icmp ne i32 %or.i, 0
  %93 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.i.not.i = icmp ne i32 %93, 0
  %or.cond966 = select i1 %cmp.i880, i1 true, i1 %tobool.i.not.i
  %conv.i.i = zext i16 %92 to i32
  %or.i.i = or i32 %88, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  %or.cond967 = select i1 %or.cond966, i1 true, i1 %cmp.i.i
  %94 = and i32 %86, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.i.not.i881 = icmp eq i32 %94, 0
  %or.cond968 = select i1 %or.cond967, i1 %tobool.i.not.i881, i1 false
  %conv.i.i883 = zext i16 %90 to i32
  %or.i.i884 = or i32 %86, %conv.i.i883
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i884)
  %cmp.i.i885 = icmp ne i32 %or.i.i884, 0
  %or.cond969 = select i1 %or.cond968, i1 %cmp.i.i885, i1 false
  br i1 %or.cond969, label %if.then172, label %if.end135.if.end189_crit_edge

if.end135.if.end189_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end189

if.then172:                                       ; preds = %if.end135
  %95 = load i32, ptr @pcnet32_debug, align 4
  %and173 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.then172.if.end186_crit_edge, label %do.end178

if.then172.if.end186_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end186

do.end178:                                        ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #20
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #21
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #21
  br label %if.end186

if.end186:                                        ; preds = %do.end178, %if.then172.if.end186_crit_edge
  call void @dev_addr_mod(ptr noundef nonnull %call118, i32 noundef 0, ptr noundef nonnull %promaddr, i32 noundef 6) #18
  br label %if.end189

if.end189:                                        ; preds = %if.end186, %if.end135.if.end189_crit_edge
  %96 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_addr, align 64
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %100 = and i32 %99, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i.not.i888 = icmp eq i32 %100, 0
  br i1 %tobool.i.not.i888, label %is_valid_ether_addr.exit894, label %if.end189.if.then192_crit_edge

if.end189.if.then192_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then192

is_valid_ether_addr.exit894:                      ; preds = %if.end189
  %add.ptr.i.i889 = getelementptr i8, ptr %97, i32 4
  %101 = ptrtoint ptr %add.ptr.i.i889 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i.i889, align 2
  %conv.i.i890 = zext i16 %102 to i32
  %or.i.i891 = or i32 %99, %conv.i.i890
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i891)
  %cmp.i.i892.not = icmp eq i32 %or.i.i891, 0
  br i1 %cmp.i.i892.not, label %is_valid_ether_addr.exit894.if.then192_crit_edge, label %is_valid_ether_addr.exit894.if.end193_crit_edge

is_valid_ether_addr.exit894.if.end193_crit_edge:  ; preds = %is_valid_ether_addr.exit894
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end193

is_valid_ether_addr.exit894.if.then192_crit_edge: ; preds = %is_valid_ether_addr.exit894
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then192

if.then192:                                       ; preds = %is_valid_ether_addr.exit894.if.then192_crit_edge, %if.end189.if.then192_crit_edge
  call void @dev_addr_mod(ptr noundef nonnull %call118, i32 noundef 0, ptr noundef nonnull @pcnet32_probe1.zero_addr, i32 noundef 6) #18
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %is_valid_ether_addr.exit894.if.end193_crit_edge
  %103 = load i32, ptr @pcnet32_debug, align 4
  %and194 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end193.if.end319_crit_edge, label %do.end199

if.end193.if.end319_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end319

do.end199:                                        ; preds = %if.end193
  %104 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_addr, align 64
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %105) #21
  %add203 = add nuw nsw i32 %30, 1
  %and204 = and i32 %add203, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 9764, i32 %and204)
  %cmp205 = icmp eq i32 %and204, 9764
  br i1 %cmp205, label %if.then207, label %do.end199.if.end319_crit_edge

do.end199.if.end319_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end319

if.then207:                                       ; preds = %do.end199
  %call209 = call zeroext i16 %26(i32 noundef %ioaddr, i32 noundef 80) #18
  %106 = and i16 %call209, 3072
  %and211 = zext i16 %106 to i32
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %and211) #21
  %107 = lshr exact i32 %and211, 10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pcnet32_probe1, i32 0, i32 %107
  %108 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load) #21
  %read_bcr243 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 2
  %109 = ptrtoint ptr %read_bcr243 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_bcr243, align 4
  %call244 = call zeroext i16 %110(i32 noundef %ioaddr, i32 noundef 18) #18
  %conv245 = zext i16 %call244 to i32
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv245) #21
  %and252 = and i32 %conv245, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.then207.if.end260_crit_edge, label %do.end257

if.then207.if.end260_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end260

do.end257:                                        ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #20
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #21
  br label %if.end260

if.end260:                                        ; preds = %do.end257, %if.then207.if.end260_crit_edge
  %and261 = and i32 %conv245, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %if.end260.if.end269_crit_edge, label %do.end266

if.end260.if.end269_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end269

do.end266:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #20
  %call268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #21
  br label %if.end269

if.end269:                                        ; preds = %do.end266, %if.end260.if.end269_crit_edge
  %and270 = and i32 %conv245, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %if.end269.if.end278_crit_edge, label %do.end275

if.end269.if.end278_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end278

do.end275:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #20
  %call277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #21
  br label %if.end278

if.end278:                                        ; preds = %do.end275, %if.end269.if.end278_crit_edge
  %and279 = and i32 %conv245, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %if.end278.if.end287_crit_edge, label %do.end284

if.end278.if.end287_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end287

do.end284:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #20
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #21
  br label %if.end287

if.end287:                                        ; preds = %do.end284, %if.end278.if.end287_crit_edge
  %call289 = call zeroext i16 %110(i32 noundef %ioaddr, i32 noundef 25) #18
  %conv290 = zext i16 %call289 to i32
  %shl295 = shl nuw nsw i32 %conv290, 8
  %call296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %shl295) #21
  %call298 = call zeroext i16 %110(i32 noundef %ioaddr, i32 noundef 26) #18
  %conv299 = zext i16 %call298 to i32
  %shl304 = shl nuw nsw i32 %conv299, 8
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %shl304) #21
  %call307 = call zeroext i16 %110(i32 noundef %ioaddr, i32 noundef 27) #18
  %111 = and i16 %call307, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool310.not = icmp eq i16 %111, 0
  br i1 %tobool310.not, label %if.end287.if.end319_crit_edge, label %do.end314

if.end287.if.end319_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end319

do.end314:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #20
  %call316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #21
  br label %if.end319

if.end319:                                        ; preds = %do.end314, %if.end287.if.end319_crit_edge, %do.end199.if.end319_crit_edge, %if.end193.if.end319_crit_edge
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 5
  %112 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %ioaddr, ptr %base_addr, align 32
  %add.ptr.i895 = getelementptr i8, ptr %call118, i32 2304
  %dev321 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %init_dma_addr = getelementptr i8, ptr %call118, i32 2316
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev321, i32 noundef 28, ptr noundef %init_dma_addr, i32 noundef 3264, i32 noundef 0) #18
  %113 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i, ptr %add.ptr.i895, align 8
  %tobool324.not = icmp eq ptr %call.i, null
  br i1 %tobool324.not, label %if.then325, label %if.end335

if.then325:                                       ; preds = %if.end319
  %114 = load i32, ptr @pcnet32_debug, align 4
  %and326 = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %if.then325.err_free_netdev_crit_edge, label %do.end331

if.then325.err_free_netdev_crit_edge:             ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_netdev

do.end331:                                        ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #20
  %call333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #21
  br label %err_free_netdev

if.end335:                                        ; preds = %if.end319
  %pci_dev = getelementptr i8, ptr %call118, i32 2320
  %115 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %pdev, ptr %pci_dev, align 8
  %dev336 = getelementptr i8, ptr %call118, i32 2436
  %116 = ptrtoint ptr %dev336 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call118, ptr %dev336, align 4
  %lock = getelementptr i8, ptr %call118, i32 2348
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.92, ptr noundef nonnull @pcnet32_probe1.__key, i16 noundef signext 3) #18
  %name = getelementptr i8, ptr %call118, i32 2324
  %117 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %chipname.0925940, ptr %name, align 4
  %shared_irq = getelementptr i8, ptr %call118, i32 2672
  %118 = trunc i32 %shared to i8
  %119 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load = load i8, ptr %shared_irq, align 8
  %bf.shl = shl i8 %118, 7
  %bf.clear = and i8 %bf.load, 31
  %bf.set = or i8 %bf.clear, %bf.shl
  %tx_ring_size = getelementptr i8, ptr %call118, i32 2404
  %120 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 16, ptr %tx_ring_size, align 4
  %rx_ring_size = getelementptr i8, ptr %call118, i32 2400
  %121 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 32, ptr %rx_ring_size, align 8
  %tx_mod_mask = getelementptr i8, ptr %call118, i32 2412
  %122 = ptrtoint ptr %tx_mod_mask to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 15, ptr %tx_mod_mask, align 4
  %rx_mod_mask = getelementptr i8, ptr %call118, i32 2408
  %123 = ptrtoint ptr %rx_mod_mask to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 31, ptr %rx_mod_mask, align 8
  %tx_len_bits = getelementptr i8, ptr %call118, i32 2418
  %124 = ptrtoint ptr %tx_len_bits to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 16384, ptr %tx_len_bits, align 2
  %rx_len_bits = getelementptr i8, ptr %call118, i32 2416
  %125 = ptrtoint ptr %rx_len_bits to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 80, ptr %rx_len_bits, align 8
  %mii_if = getelementptr i8, ptr %call118, i32 2680
  %full_duplex = getelementptr i8, ptr %call118, i32 2696
  %126 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load344 = load i8, ptr %full_duplex, align 8
  %bf.clear347 = and i8 %bf.load344, 127
  %bf.set348 = or i8 %bf.clear347, %fdx.0930937
  store i8 %bf.set348, ptr %full_duplex, align 8
  %phy_id_mask = getelementptr i8, ptr %call118, i32 2688
  %127 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call118, i32 2692
  %128 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 31, ptr %reg_num_mask, align 4
  %bf.set357 = or i8 %mii.0928939, %dxsuflo.0941
  %bf.set364 = or i8 %bf.set357, %bf.set
  store i8 %bf.set364, ptr %shared_irq, align 8
  %chip_version367 = getelementptr i8, ptr %call118, i32 2768
  %129 = ptrtoint ptr %chip_version367 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %trunc, ptr %chip_version367, align 8
  %130 = load i32, ptr @pcnet32_debug, align 4
  %msg_enable = getelementptr i8, ptr %call118, i32 2760
  %131 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %msg_enable, align 8
  %132 = load i32, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %132)
  %cmp368 = icmp sgt i32 %132, 7
  br i1 %cmp368, label %if.end335.if.end380_crit_edge, label %lor.lhs.false370

if.end335.if.end380_crit_edge:                    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end380

lor.lhs.false370:                                 ; preds = %if.end335
  %arrayidx371 = getelementptr [8 x i32], ptr @options, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx371, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %134)
  %cmp372 = icmp ugt i32 %134, 15
  br i1 %cmp372, label %lor.lhs.false370.if.end380_crit_edge, label %if.else375

lor.lhs.false370.if.end380_crit_edge:             ; preds = %lor.lhs.false370
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end380

if.else375:                                       ; preds = %lor.lhs.false370
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx377 = getelementptr [16 x i8], ptr @options_mapping, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx377, align 1
  %conv378 = zext i8 %136 to i32
  br label %if.end380

if.end380:                                        ; preds = %if.else375, %lor.lhs.false370.if.end380_crit_edge, %if.end335.if.end380_crit_edge
  %conv378.sink = phi i32 [ %conv378, %if.else375 ], [ 4, %lor.lhs.false370.if.end380_crit_edge ], [ 4, %if.end335.if.end380_crit_edge ]
  %options379 = getelementptr i8, ptr %call118, i32 2668
  %137 = ptrtoint ptr %options379 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv378.sink, ptr %options379, align 4
  %138 = ptrtoint ptr %chip_version367 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %chip_version367, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %139)
  %cmp383 = icmp eq i16 %139, 9761
  br i1 %cmp383, label %if.then385, label %if.end380.if.end387_crit_edge

if.end380.if.end387_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end387

if.then385:                                       ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #20
  %options386 = getelementptr i8, ptr %call118, i32 2668
  %140 = ptrtoint ptr %options386 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %options386, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.then385, %if.end380.if.end387_crit_edge
  %dev389 = getelementptr i8, ptr %call118, i32 2700
  %141 = ptrtoint ptr %dev389 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call118, ptr %dev389, align 4
  %mdio_read = getelementptr i8, ptr %call118, i32 2704
  %142 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call118, i32 2708
  %143 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %144 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rx_ring_size, align 8
  %div857 = lshr i32 %145, 1
  %napi = getelementptr i8, ptr %call118, i32 2440
  %weight = getelementptr i8, ptr %call118, i32 2452
  %146 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %div857, ptr %weight, align 4
  call void @netif_napi_add(ptr noundef nonnull %call118, ptr noundef %napi, ptr noundef nonnull @pcnet32_poll, i32 noundef %div857) #18
  br i1 %tobool396.not929938, label %if.end387.if.end410_crit_edge, label %land.lhs.true397

if.end387.if.end410_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end410

land.lhs.true397:                                 ; preds = %if.end387
  %options398 = getelementptr i8, ptr %call118, i32 2668
  %147 = ptrtoint ptr %options398 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %options398, align 4
  %and399 = and i32 %148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and399)
  %tobool400.not = icmp eq i32 %and399, 0
  br i1 %tobool400.not, label %land.lhs.true401, label %land.lhs.true397.if.end410_crit_edge

land.lhs.true397.if.end410_crit_edge:             ; preds = %land.lhs.true397
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end410

land.lhs.true401:                                 ; preds = %land.lhs.true397
  %149 = load i32, ptr @cards_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %149)
  %cmp402 = icmp sgt i32 %149, 7
  br i1 %cmp402, label %land.lhs.true401.if.then407_crit_edge, label %lor.lhs.false404

land.lhs.true401.if.then407_crit_edge:            ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then407

lor.lhs.false404:                                 ; preds = %land.lhs.true401
  %arrayidx405 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %149
  %150 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool406.not = icmp eq i32 %151, 0
  br i1 %tobool406.not, label %lor.lhs.false404.if.end410_crit_edge, label %lor.lhs.false404.if.then407_crit_edge

lor.lhs.false404.if.then407_crit_edge:            ; preds = %lor.lhs.false404
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then407

lor.lhs.false404.if.end410_crit_edge:             ; preds = %lor.lhs.false404
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end410

if.then407:                                       ; preds = %lor.lhs.false404.if.then407_crit_edge, %land.lhs.true401.if.then407_crit_edge
  %or409 = or i32 %148, 128
  %152 = ptrtoint ptr %options398 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or409, ptr %options398, align 4
  br label %if.end410

if.end410:                                        ; preds = %if.then407, %lor.lhs.false404.if.end410_crit_edge, %land.lhs.true397.if.end410_crit_edge, %if.end387.if.end410_crit_edge
  %a411 = getelementptr i8, ptr %call118, i32 2344
  %153 = ptrtoint ptr %a411 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %a.0, ptr %a411, align 8
  %154 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pci_dev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  %156 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_ring_size, align 4
  %mul.i = shl i32 %157, 4
  %tx_ring_dma_addr.i = getelementptr i8, ptr %call118, i32 2424
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %mul.i, ptr noundef %tx_ring_dma_addr.i, i32 noundef 3264, i32 noundef 0) #18
  %tx_ring.i = getelementptr i8, ptr %call118, i32 2312
  %158 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i.i, ptr %tx_ring.i, align 8
  %cmp.i896 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i896, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end410
  %159 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %msg_enable, align 8
  %and.i897 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i897)
  %tobool.not.i = icmp eq i32 %and.i897, 0
  br i1 %tobool.not.i, label %do.body.i.err_free_ring_crit_edge, label %if.then4.i

do.body.i.err_free_ring_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call118, ptr noundef nonnull @.str.121) #21
  br label %err_free_ring

if.end5.i:                                        ; preds = %if.end410
  %161 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pci_dev, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rx_ring_size, align 8
  %mul8.i = shl i32 %164, 4
  %rx_ring_dma_addr.i = getelementptr i8, ptr %call118, i32 2420
  %call.i1.i = call ptr @dma_alloc_attrs(ptr noundef %dev7.i, i32 noundef %mul8.i, ptr noundef %rx_ring_dma_addr.i, i32 noundef 3264, i32 noundef 0) #18
  %rx_ring.i = getelementptr i8, ptr %call118, i32 2308
  %165 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i1.i, ptr %rx_ring.i, align 4
  %cmp11.i = icmp eq ptr %call.i1.i, null
  br i1 %cmp11.i, label %do.body13.i, label %if.end21.i

do.body13.i:                                      ; preds = %if.end5.i
  %166 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %msg_enable, align 8
  %and15.i = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body13.i.err_free_ring_crit_edge, label %if.then17.i

do.body13.i.err_free_ring_crit_edge:              ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.then17.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call118, ptr noundef nonnull @.str.121) #21
  br label %err_free_ring

if.end21.i:                                       ; preds = %if.end5.i
  %168 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_ring_size, align 4
  %170 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %169, i32 4) #18
  %171 = extractvalue { i32, i1 } %170, 1
  br i1 %171, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !425

kcalloc.exit.thread.i:                            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  %tx_dma_addr102.i = getelementptr i8, ptr %call118, i32 2336
  %172 = ptrtoint ptr %tx_dma_addr102.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %tx_dma_addr102.i, align 8
  br label %err_free_ring

if.end7.i.i.i:                                    ; preds = %if.end21.i
  %173 = extractvalue { i32, i1 } %170, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %173, i32 noundef 3520) #22
  %tx_dma_addr.i = getelementptr i8, ptr %call118, i32 2336
  %174 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call8.i.i.i, ptr %tx_dma_addr.i, align 8
  %tobool25.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool25.not.i, label %if.end7.i.i.i.err_free_ring_crit_edge, label %if.end27.i

if.end7.i.i.i.err_free_ring_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.end27.i:                                       ; preds = %if.end7.i.i.i
  %175 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx_ring_size, align 8
  %177 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %176, i32 4) #18
  %178 = extractvalue { i32, i1 } %177, 1
  br i1 %178, label %kcalloc.exit34.thread.i, label %if.end7.i.i32.i, !prof !425

kcalloc.exit34.thread.i:                          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %rx_dma_addr109.i = getelementptr i8, ptr %call118, i32 2340
  %179 = ptrtoint ptr %rx_dma_addr109.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %rx_dma_addr109.i, align 4
  br label %err_free_ring

if.end7.i.i32.i:                                  ; preds = %if.end27.i
  %180 = extractvalue { i32, i1 } %177, 0
  %call8.i.i31.i = call noalias align 128 ptr @__kmalloc(i32 noundef %180, i32 noundef 3520) #22
  %rx_dma_addr.i = getelementptr i8, ptr %call118, i32 2340
  %181 = ptrtoint ptr %rx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call8.i.i31.i, ptr %rx_dma_addr.i, align 4
  %tobool31.not.i = icmp eq ptr %call8.i.i31.i, null
  br i1 %tobool31.not.i, label %if.end7.i.i32.i.err_free_ring_crit_edge, label %if.end33.i

if.end7.i.i32.i.err_free_ring_crit_edge:          ; preds = %if.end7.i.i32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.end33.i:                                       ; preds = %if.end7.i.i32.i
  %182 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx_ring_size, align 4
  %184 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %183, i32 4) #18
  %185 = extractvalue { i32, i1 } %184, 1
  br i1 %185, label %kcalloc.exit67.thread.i, label %if.end7.i.i65.i, !prof !425

kcalloc.exit67.thread.i:                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  %tx_skbuff116.i = getelementptr i8, ptr %call118, i32 2328
  %186 = ptrtoint ptr %tx_skbuff116.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %tx_skbuff116.i, align 8
  br label %err_free_ring

if.end7.i.i65.i:                                  ; preds = %if.end33.i
  %187 = extractvalue { i32, i1 } %184, 0
  %call8.i.i64.i = call noalias align 128 ptr @__kmalloc(i32 noundef %187, i32 noundef 3520) #22
  %tx_skbuff.i = getelementptr i8, ptr %call118, i32 2328
  %188 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call8.i.i64.i, ptr %tx_skbuff.i, align 8
  %tobool37.not.i = icmp eq ptr %call8.i.i64.i, null
  br i1 %tobool37.not.i, label %if.end7.i.i65.i.err_free_ring_crit_edge, label %if.end39.i

if.end7.i.i65.i.err_free_ring_crit_edge:          ; preds = %if.end7.i.i65.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.end39.i:                                       ; preds = %if.end7.i.i65.i
  %189 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %rx_ring_size, align 8
  %191 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %190, i32 4) #18
  %192 = extractvalue { i32, i1 } %191, 1
  br i1 %192, label %kcalloc.exit100.i.thread, label %if.end7.i.i98.i, !prof !425

kcalloc.exit100.i.thread:                         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  %rx_skbuff.i960 = getelementptr i8, ptr %call118, i32 2332
  %193 = ptrtoint ptr %rx_skbuff.i960 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %rx_skbuff.i960, align 4
  br label %err_free_ring

if.end7.i.i98.i:                                  ; preds = %if.end39.i
  %194 = extractvalue { i32, i1 } %191, 0
  %call8.i.i97.i = call noalias align 128 ptr @__kmalloc(i32 noundef %194, i32 noundef 3520) #22
  %rx_skbuff.i = getelementptr i8, ptr %call118, i32 2332
  %195 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call8.i.i97.i, ptr %rx_skbuff.i, align 4
  %tobool43.not.i = icmp eq ptr %call8.i.i97.i, null
  br i1 %tobool43.not.i, label %if.end7.i.i98.i.err_free_ring_crit_edge, label %if.end417

if.end7.i.i98.i.err_free_ring_crit_edge:          ; preds = %if.end7.i.i98.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.end417:                                        ; preds = %if.end7.i.i98.i
  %196 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev_addr, align 64
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %cmp421 = icmp eq i8 %199, 0
  br i1 %cmp421, label %land.lhs.true423, label %if.end417.if.end437_crit_edge

if.end417.if.end437_crit_edge:                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end437

land.lhs.true423:                                 ; preds = %if.end417
  %arrayidx425 = getelementptr i8, ptr %197, i32 1
  %200 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx425, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %201)
  %cmp427 = icmp eq i8 %201, -32
  br i1 %cmp427, label %land.lhs.true429, label %land.lhs.true423.if.end437_crit_edge

land.lhs.true423.if.end437_crit_edge:             ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end437

land.lhs.true429:                                 ; preds = %land.lhs.true423
  %arrayidx431 = getelementptr i8, ptr %197, i32 2
  %202 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx431, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %203)
  %cmp433 = icmp eq i8 %203, 117
  br i1 %cmp433, label %if.then435, label %land.lhs.true429.if.end437_crit_edge

land.lhs.true429.if.end437_crit_edge:             ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end437

if.then435:                                       ; preds = %land.lhs.true429
  call void @__sanitizer_cov_trace_pc() #20
  %options436 = getelementptr i8, ptr %call118, i32 2668
  %204 = ptrtoint ptr %options436 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 130, ptr %options436, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then435, %land.lhs.true429.if.end437_crit_edge, %land.lhs.true423.if.end437_crit_edge, %if.end417.if.end437_crit_edge
  %205 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr.i895, align 8
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 768, ptr %206, align 4
  %208 = ptrtoint ptr %tx_len_bits to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %tx_len_bits, align 2
  %210 = ptrtoint ptr %rx_len_bits to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %rx_len_bits, align 8
  %or443859 = or i16 %211, %209
  %212 = call i16 @llvm.bswap.i16(i16 %or443859)
  %213 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %add.ptr.i895, align 8
  %tlen_rlen = getelementptr inbounds %struct.pcnet32_init_block, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %tlen_rlen to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %212, ptr %tlen_rlen, align 2
  %216 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev_addr, align 64
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %217, align 1
  %220 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453 = getelementptr %struct.pcnet32_init_block, ptr %220, i32 0, i32 2, i32 0
  %221 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %219, ptr %arrayidx453, align 1
  %222 = load ptr, ptr %dev_addr, align 64
  %arrayidx451.1 = getelementptr i8, ptr %222, i32 1
  %223 = ptrtoint ptr %arrayidx451.1 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx451.1, align 1
  %225 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453.1 = getelementptr %struct.pcnet32_init_block, ptr %225, i32 0, i32 2, i32 1
  %226 = ptrtoint ptr %arrayidx453.1 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %224, ptr %arrayidx453.1, align 1
  %227 = load ptr, ptr %dev_addr, align 64
  %arrayidx451.2 = getelementptr i8, ptr %227, i32 2
  %228 = ptrtoint ptr %arrayidx451.2 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx451.2, align 1
  %230 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453.2 = getelementptr %struct.pcnet32_init_block, ptr %230, i32 0, i32 2, i32 2
  %231 = ptrtoint ptr %arrayidx453.2 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %229, ptr %arrayidx453.2, align 1
  %232 = load ptr, ptr %dev_addr, align 64
  %arrayidx451.3 = getelementptr i8, ptr %232, i32 3
  %233 = ptrtoint ptr %arrayidx451.3 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx451.3, align 1
  %235 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453.3 = getelementptr %struct.pcnet32_init_block, ptr %235, i32 0, i32 2, i32 3
  %236 = ptrtoint ptr %arrayidx453.3 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %234, ptr %arrayidx453.3, align 1
  %237 = load ptr, ptr %dev_addr, align 64
  %arrayidx451.4 = getelementptr i8, ptr %237, i32 4
  %238 = ptrtoint ptr %arrayidx451.4 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx451.4, align 1
  %240 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453.4 = getelementptr %struct.pcnet32_init_block, ptr %240, i32 0, i32 2, i32 4
  %241 = ptrtoint ptr %arrayidx453.4 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %239, ptr %arrayidx453.4, align 1
  %242 = load ptr, ptr %dev_addr, align 64
  %arrayidx451.5 = getelementptr i8, ptr %242, i32 5
  %243 = ptrtoint ptr %arrayidx451.5 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx451.5, align 1
  %245 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx453.5 = getelementptr %struct.pcnet32_init_block, ptr %245, i32 0, i32 2, i32 5
  %246 = ptrtoint ptr %arrayidx453.5 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %244, ptr %arrayidx453.5, align 1
  %247 = load ptr, ptr %add.ptr.i895, align 8
  %filter = getelementptr inbounds %struct.pcnet32_init_block, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %filter, align 4
  %249 = load ptr, ptr %add.ptr.i895, align 8
  %arrayidx461 = getelementptr %struct.pcnet32_init_block, ptr %249, i32 0, i32 4, i32 1
  %250 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %arrayidx461, align 4
  %251 = ptrtoint ptr %rx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rx_ring_dma_addr.i, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252)
  %254 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %add.ptr.i895, align 8
  %rx_ring = getelementptr inbounds %struct.pcnet32_init_block, ptr %255, i32 0, i32 5
  %256 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %253, ptr %rx_ring, align 4
  %257 = ptrtoint ptr %tx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tx_ring_dma_addr.i, align 8
  %259 = call i32 @llvm.bswap.i32(i32 %258)
  %260 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr.i895, align 8
  %tx_ring = getelementptr inbounds %struct.pcnet32_init_block, ptr %261, i32 0, i32 6
  %262 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %259, ptr %tx_ring, align 4
  %write_bcr464 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 3
  %263 = ptrtoint ptr %write_bcr464 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write_bcr464, align 4
  call void %264(i32 noundef %ioaddr, i32 noundef 20, i16 noundef zeroext 2) #18
  %write_csr465 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 1
  %265 = ptrtoint ptr %write_csr465 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %write_csr465, align 4
  %267 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %init_dma_addr, align 4
  %conv468 = trunc i32 %268 to i16
  call void %266(i32 noundef %ioaddr, i32 noundef 1, i16 noundef zeroext %conv468) #18
  %269 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %init_dma_addr, align 4
  %shr471 = lshr i32 %270, 16
  %conv472 = trunc i32 %shr471 to i16
  call void %266(i32 noundef %ioaddr, i32 noundef 2, i16 noundef zeroext %conv472) #18
  br i1 %tobool122.not, label %if.else486, label %if.then474

if.then474:                                       ; preds = %if.end437
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %271 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %irq, align 4
  %irq475 = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 64
  %273 = ptrtoint ptr %irq475 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %irq475, align 4
  %274 = load i32, ptr @pcnet32_debug, align 4
  %and476 = and i32 %274, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and476)
  %tobool477.not = icmp eq i32 %and476, 0
  br i1 %tobool477.not, label %if.then474.if.end514_crit_edge, label %do.end481

if.then474.if.end514_crit_edge:                   ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end514

do.end481:                                        ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #20
  %call484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %272) #21
  br label %if.end514

if.else486:                                       ; preds = %if.end437
  %call487 = call i32 @probe_irq_on() #18
  call void %266(i32 noundef %ioaddr, i32 noundef 0, i16 noundef zeroext 65) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %275(i32 noundef 214748000) #18
  %call489 = call i32 @probe_irq_off(i32 noundef %call487) #18
  %irq490 = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 64
  %276 = ptrtoint ptr %irq490 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call489, ptr %irq490, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call489)
  %tobool492.not = icmp eq i32 %call489, 0
  %277 = load i32, ptr @pcnet32_debug, align 4
  %and494 = and i32 %277, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and494)
  %tobool495.not = icmp eq i32 %and494, 0
  br i1 %tobool492.not, label %if.then493, label %if.end503

if.then493:                                       ; preds = %if.else486
  br i1 %tobool495.not, label %if.then493.err_free_ring_crit_edge, label %do.end499

if.then493.err_free_ring_crit_edge:               ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

do.end499:                                        ; preds = %if.then493
  call void @__sanitizer_cov_trace_pc() #20
  %call501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #21
  br label %err_free_ring

if.end503:                                        ; preds = %if.else486
  br i1 %tobool495.not, label %if.end503.if.end514_crit_edge, label %do.end509

if.end503.if.end514_crit_edge:                    ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end514

do.end509:                                        ; preds = %if.end503
  call void @__sanitizer_cov_trace_pc() #20
  %call512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %call489) #21
  br label %if.end514

if.end514:                                        ; preds = %do.end509, %if.end503.if.end514_crit_edge, %do.end481, %if.then474.if.end514_crit_edge
  %278 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %278)
  %bf.load516 = load i8, ptr %shared_irq, align 8
  %279 = and i8 %bf.load516, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool518.not = icmp eq i8 %279, 0
  br i1 %tobool518.not, label %if.end514.do.body592_crit_edge, label %if.then519

if.end514.do.body592_crit_edge:                   ; preds = %if.end514
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body592

if.then519:                                       ; preds = %if.end514
  %280 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %a411, align 8
  %read_bcr521 = getelementptr inbounds %struct.pcnet32_access, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %read_bcr521 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %read_bcr521, align 4
  %call522 = call zeroext i16 %283(i32 noundef %ioaddr, i32 noundef 33) #18
  %284 = lshr i16 %call522, 5
  %285 = and i16 %284, 31
  %and525 = zext i16 %285 to i32
  %286 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %and525, ptr %mii_if, align 8
  %add548 = add nuw nsw i32 %30, 1
  %and549 = and i32 %add548, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 9764, i32 %and549)
  %cmp550 = icmp ne i32 %and549, 9764
  %phycount = getelementptr i8, ptr %call118, i32 2665
  %phymask = getelementptr i8, ptr %call118, i32 2764
  br label %for.body530

for.body530:                                      ; preds = %cleanup570.for.body530_crit_edge, %if.then519
  %i.3974 = phi i32 [ 0, %if.then519 ], [ %inc575, %cleanup570.for.body530_crit_edge ]
  %287 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load.i = load i8, ptr %shared_irq, align 8
  %288 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i898 = icmp eq i8 %288, 0
  br i1 %tobool.not.i898, label %for.body530.if.end537_crit_edge, label %mdio_read.exit

for.body530.if.end537_crit_edge:                  ; preds = %for.body530
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end537

mdio_read.exit:                                   ; preds = %for.body530
  %289 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %base_addr, align 32
  %291 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %a411, align 8
  %write_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %292, i32 0, i32 3
  %293 = ptrtoint ptr %write_bcr.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %write_bcr.i, align 4
  %i.3.tr = trunc i32 %i.3974 to i16
  %295 = shl i16 %i.3.tr, 5
  %296 = and i16 %295, 992
  %conv.i901 = or i16 %296, 2
  call void %294(i32 noundef %290, i32 noundef 33, i16 noundef zeroext %conv.i901) #18
  %297 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %a411, align 8
  %read_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %read_bcr.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read_bcr.i, align 4
  %call3.i = call zeroext i16 %300(i32 noundef %290, i32 noundef 34) #18
  %conv4.i = zext i16 %call3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call3.i)
  %cmp534 = icmp eq i16 %call3.i, -1
  br i1 %cmp534, label %mdio_read.exit.cleanup570_crit_edge, label %mdio_read.exit.if.end537_crit_edge

mdio_read.exit.if.end537_crit_edge:               ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end537

mdio_read.exit.cleanup570_crit_edge:              ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup570

if.end537:                                        ; preds = %mdio_read.exit.if.end537_crit_edge, %for.body530.if.end537_crit_edge
  %conv533954 = phi i32 [ %conv4.i, %mdio_read.exit.if.end537_crit_edge ], [ 0, %for.body530.if.end537_crit_edge ]
  %301 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %301)
  %bf.load.i904 = load i8, ptr %shared_irq, align 8
  %302 = and i8 %bf.load.i904, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool.not.i905 = icmp eq i8 %302, 0
  br i1 %tobool.not.i905, label %if.end537.if.end544_crit_edge, label %mdio_read.exit918

if.end537.if.end544_crit_edge:                    ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end544

mdio_read.exit918:                                ; preds = %if.end537
  %303 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %base_addr, align 32
  %305 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %a411, align 8
  %write_bcr.i908 = getelementptr inbounds %struct.pcnet32_access, ptr %306, i32 0, i32 3
  %307 = ptrtoint ptr %write_bcr.i908 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %write_bcr.i908, align 4
  %i.3.tr970 = trunc i32 %i.3974 to i16
  %309 = shl i16 %i.3.tr970, 5
  %310 = and i16 %309, 992
  %conv.i912 = or i16 %310, 3
  call void %308(i32 noundef %304, i32 noundef 33, i16 noundef zeroext %conv.i912) #18
  %311 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %a411, align 8
  %read_bcr.i913 = getelementptr inbounds %struct.pcnet32_access, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %read_bcr.i913 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %read_bcr.i913, align 4
  %call3.i914 = call zeroext i16 %314(i32 noundef %304, i32 noundef 34) #18
  %conv4.i915 = zext i16 %call3.i914 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call3.i914)
  %cmp541 = icmp eq i16 %call3.i914, -1
  br i1 %cmp541, label %mdio_read.exit918.cleanup570_crit_edge, label %mdio_read.exit918.if.end544_crit_edge

mdio_read.exit918.if.end544_crit_edge:            ; preds = %mdio_read.exit918
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end544

mdio_read.exit918.cleanup570_crit_edge:           ; preds = %mdio_read.exit918
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup570

if.end544:                                        ; preds = %mdio_read.exit918.if.end544_crit_edge, %if.end537.if.end544_crit_edge
  %conv540958 = phi i32 [ %conv4.i915, %mdio_read.exit918.if.end544_crit_edge ], [ 0, %if.end537.if.end544_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.3974)
  %cmp545 = icmp ne i32 %i.3974, 31
  %brmerge = select i1 %cmp545, i1 true, i1 %cmp550
  br i1 %brmerge, label %if.end553, label %if.end544.for.end576_crit_edge

if.end544.for.end576_crit_edge:                   ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end576

if.end553:                                        ; preds = %if.end544
  %315 = ptrtoint ptr %phycount to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %phycount, align 1
  %inc554 = add i8 %316, 1
  store i8 %inc554, ptr %phycount, align 1
  %shl555 = shl nuw i32 1, %i.3974
  %317 = ptrtoint ptr %phymask to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %phymask, align 4
  %or556 = or i32 %318, %shl555
  store i32 %or556, ptr %phymask, align 4
  %319 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %i.3974, ptr %mii_if, align 8
  %320 = load i32, ptr @pcnet32_debug, align 4
  %and559 = and i32 %320, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and559)
  %tobool560.not = icmp eq i32 %and559, 0
  br i1 %tobool560.not, label %if.end553.cleanup570_crit_edge, label %do.end564

if.end553.cleanup570_crit_edge:                   ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup570

do.end564:                                        ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #20
  %call568 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %conv533954, i32 noundef %conv540958, i32 noundef %i.3974) #21
  br label %cleanup570

cleanup570:                                       ; preds = %do.end564, %if.end553.cleanup570_crit_edge, %mdio_read.exit918.cleanup570_crit_edge, %mdio_read.exit.cleanup570_crit_edge
  %inc575 = add nuw nsw i32 %i.3974, 1
  %exitcond.not = icmp eq i32 %inc575, 32
  br i1 %exitcond.not, label %cleanup570.for.end576_crit_edge, label %cleanup570.for.body530_crit_edge

cleanup570.for.body530_crit_edge:                 ; preds = %cleanup570
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body530

cleanup570.for.end576_crit_edge:                  ; preds = %cleanup570
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end576

for.end576:                                       ; preds = %cleanup570.for.end576_crit_edge, %if.end544.for.end576_crit_edge
  %321 = ptrtoint ptr %a411 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %a411, align 8
  %write_bcr578 = getelementptr inbounds %struct.pcnet32_access, ptr %322, i32 0, i32 3
  %323 = ptrtoint ptr %write_bcr578 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write_bcr578, align 4
  %325 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %mii_if, align 8
  %.tr = trunc i32 %326 to i16
  %conv582 = shl i16 %.tr, 5
  call void %324(i32 noundef %ioaddr, i32 noundef 33, i16 noundef zeroext %conv582) #18
  %327 = ptrtoint ptr %phycount to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %phycount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %328)
  %cmp585 = icmp ugt i8 %328, 1
  br i1 %cmp585, label %if.then587, label %for.end576.do.body592_crit_edge

for.end576.do.body592_crit_edge:                  ; preds = %for.end576
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body592

if.then587:                                       ; preds = %for.end576
  call void @__sanitizer_cov_trace_pc() #20
  %options588 = getelementptr i8, ptr %call118, i32 2668
  %329 = ptrtoint ptr %options588 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %options588, align 4
  %or589 = or i32 %330, 3
  store i32 %or589, ptr %options588, align 4
  br label %do.body592

do.body592:                                       ; preds = %if.then587, %for.end576.do.body592_crit_edge, %if.end514.do.body592_crit_edge
  %watchdog_timer = getelementptr i8, ptr %call118, i32 2712
  call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @pcnet32_watchdog, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef nonnull @pcnet32_probe1.__key.105) #18
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 16
  %331 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr @pcnet32_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 44
  %332 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr @pcnet32_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call118, i32 0, i32 115
  %333 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 500, ptr %watchdog_timeo, align 4
  %call595 = call i32 @register_netdev(ptr noundef %call118) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call595)
  %tobool596.not = icmp eq i32 %call595, 0
  br i1 %tobool596.not, label %if.end598, label %do.body592.err_free_ring_crit_edge

do.body592.err_free_ring_crit_edge:               ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_ring

if.end598:                                        ; preds = %do.body592
  br i1 %tobool122.not, label %if.else601, label %if.then600

if.then600:                                       ; preds = %if.end598
  call void @__sanitizer_cov_trace_pc() #20
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  br label %if.end602

if.else601:                                       ; preds = %if.end598
  call void @__sanitizer_cov_trace_pc() #20
  %334 = load ptr, ptr @pcnet32_dev, align 4
  %next = getelementptr i8, ptr %call118, i32 2676
  %335 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %334, ptr %next, align 4
  br label %if.end602

if.end602:                                        ; preds = %if.else601, %if.then600
  %pcnet32_dev.sink = phi ptr [ @pcnet32_dev, %if.else601 ], [ %driver_data.i.i, %if.then600 ]
  %336 = ptrtoint ptr %pcnet32_dev.sink to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call118, ptr %pcnet32_dev.sink, align 4
  %337 = load i32, ptr @pcnet32_debug, align 4
  %and603 = and i32 %337, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and603)
  %tobool604.not = icmp eq i32 %and603, 0
  br i1 %tobool604.not, label %if.end602.if.end614_crit_edge, label %do.end608

if.end602.if.end614_crit_edge:                    ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end614

do.end608:                                        ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #20
  %338 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %name, align 4
  %call613 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %call118, ptr noundef %339) #21
  br label %if.end614

if.end614:                                        ; preds = %do.end608, %if.end602.if.end614_crit_edge
  %340 = load i32, ptr @cards_found, align 4
  %inc615 = add i32 %340, 1
  store i32 %inc615, ptr @cards_found, align 4
  %read_bcr617 = getelementptr inbounds %struct.pcnet32_access, ptr %a.0, i32 0, i32 2
  %341 = ptrtoint ptr %read_bcr617 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %read_bcr617, align 4
  %call618 = call zeroext i16 %342(i32 noundef %ioaddr, i32 noundef 2) #18
  %343 = or i16 %call618, 4096
  call void %264(i32 noundef %ioaddr, i32 noundef 2, i16 noundef zeroext %343) #18
  br label %cleanup626

err_free_ring:                                    ; preds = %do.body592.err_free_ring_crit_edge, %do.end499, %if.then493.err_free_ring_crit_edge, %if.end7.i.i98.i.err_free_ring_crit_edge, %kcalloc.exit100.i.thread, %if.end7.i.i65.i.err_free_ring_crit_edge, %kcalloc.exit67.thread.i, %if.end7.i.i32.i.err_free_ring_crit_edge, %kcalloc.exit34.thread.i, %if.end7.i.i.i.err_free_ring_crit_edge, %kcalloc.exit.thread.i, %if.then17.i, %do.body13.i.err_free_ring_crit_edge, %if.then4.i, %do.body.i.err_free_ring_crit_edge
  %ret.2 = phi i32 [ -19, %do.body592.err_free_ring_crit_edge ], [ -19, %if.then493.err_free_ring_crit_edge ], [ -19, %do.end499 ], [ -12, %if.then4.i ], [ -12, %do.body.i.err_free_ring_crit_edge ], [ -12, %if.then17.i ], [ -12, %do.body13.i.err_free_ring_crit_edge ], [ -12, %if.end7.i.i.i.err_free_ring_crit_edge ], [ -12, %if.end7.i.i32.i.err_free_ring_crit_edge ], [ -12, %if.end7.i.i65.i.err_free_ring_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %kcalloc.exit34.thread.i ], [ -12, %kcalloc.exit67.thread.i ], [ -12, %kcalloc.exit100.i.thread ], [ -12, %if.end7.i.i98.i.err_free_ring_crit_edge ]
  call fastcc void @pcnet32_free_ring(ptr noundef %call118)
  %344 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %pci_dev, align 8
  %dev623 = getelementptr inbounds %struct.pci_dev, ptr %345, i32 0, i32 44
  %346 = ptrtoint ptr %add.ptr.i895 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %add.ptr.i895, align 8
  %348 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %init_dma_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev623, i32 noundef 28, ptr noundef %347, i32 noundef %349, i32 noundef 0) #18
  br label %err_free_netdev

err_free_netdev:                                  ; preds = %err_free_ring, %do.end331, %if.then325.err_free_netdev_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_ring ], [ -12, %do.end331 ], [ -12, %if.then325.err_free_netdev_crit_edge ]
  call void @free_netdev(ptr noundef %call118) #18
  br label %err_release_region

err_release_region:                               ; preds = %err_free_netdev, %if.end117.err_release_region_crit_edge, %do.end88, %sw.default.err_release_region_crit_edge, %do.end43, %if.then37.err_release_region_crit_edge, %do.end, %if.else11.err_release_region_crit_edge
  %ret.4 = phi i32 [ -19, %do.end43 ], [ -19, %if.then37.err_release_region_crit_edge ], [ -19, %do.end88 ], [ -19, %sw.default.err_release_region_crit_edge ], [ %ret.3, %err_free_netdev ], [ -19, %do.end ], [ -19, %if.else11.err_release_region_crit_edge ], [ -12, %if.end117.err_release_region_crit_edge ]
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %ioaddr, i32 noundef 32) #18
  br label %cleanup626

cleanup626:                                       ; preds = %err_release_region, %if.end614
  %retval.0 = phi i32 [ %ret.4, %err_release_region ], [ 0, %if.end614 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %promaddr) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_wio_reset(i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %0) #18, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !411
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_wio_read_csr(i32 noundef %addr, i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !412
  tail call void @arm_heavy_mb() #18
  %conv = trunc i32 %index to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %0) #18, !srcloc !413
  %add2 = add i32 %addr, 16
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %2 = inttoptr i32 %add4 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #18, !srcloc !410
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !414
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_dwio_reset(i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %addr, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !418
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_dwio_read_csr(i32 noundef %addr, i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !419
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %index)
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %0) #18, !srcloc !420
  %add2 = add i32 %addr, 16
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %2 = inttoptr i32 %add4 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !421
  %4 = and i32 %3, -65536
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv = trunc i32 %5 to i16
  ret i16 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %a = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_bcr, align 4
  %and = shl i32 %phy_id, 5
  %shl = and i32 %and, 992
  %and1 = and i32 %reg_num, 31
  %or = or i32 %shl, %and1
  %conv = trunc i32 %or to i16
  tail call void %7(i32 noundef %3, i32 noundef 33, i16 noundef zeroext %conv) #18
  %8 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_bcr, align 4
  %call3 = tail call zeroext i16 %11(i32 noundef %3, i32 noundef 34) #18
  %conv4 = zext i16 %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %a = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_bcr, align 4
  %and = shl i32 %phy_id, 5
  %shl = and i32 %and, 992
  %and1 = and i32 %reg_num, 31
  %or = or i32 %shl, %and1
  %conv = trunc i32 %or to i16
  tail call void %7(i32 noundef %3, i32 noundef 33, i16 noundef zeroext %conv) #18
  %8 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a, align 8
  %write_bcr3 = getelementptr inbounds %struct.pcnet32_access, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_bcr3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_bcr3, align 4
  %conv4 = trunc i32 %val to i16
  tail call void %11(i32 noundef %3, i32 noundef 34, i16 noundef zeroext %conv4) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_poll(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %cur_rx.i = getelementptr i8, ptr %1, i32 2392
  %rx_mod_mask.i = getelementptr i8, ptr %1, i32 2408
  %rx_ring.i = getelementptr i8, ptr %1, i32 2308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp24.i = icmp sgt i32 %budget, 0
  br i1 %cmp24.i, label %land.rhs.lr.ph.i, label %entry.pcnet32_rx.exit_crit_edge

entry.pcnet32_rx.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_rx.exit

land.rhs.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring.i, align 4
  %6 = ptrtoint ptr %rx_mod_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mod_mask.i, align 8
  %8 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_rx.i, align 8
  %and.i = and i32 %9, %7
  %arrayidx.i = getelementptr %struct.pcnet32_rx_head, ptr %5, i32 %and.i
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %pci_dev110.i.i = getelementptr i8, ptr %1, i32 2320
  %rx_dma_addr112.i.i = getelementptr i8, ptr %1, i32 2340
  %rx_skbuff115.i.i = getelementptr i8, ptr %1, i32 2332
  %stats125.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %msg_enable77.i.i = getelementptr i8, ptr %1, i32 2760
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %npackets.031.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %add.i, %pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge ]
  %rxp.026.i = phi ptr [ %arrayidx.i, %land.rhs.lr.ph.i ], [ %arrayidx9.i, %pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge ]
  %entry1.025.i = phi i32 [ %and.i, %land.rhs.lr.ph.i ], [ %and7.i, %pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.pcnet32_rx_head, ptr %rxp.026.i, i32 0, i32 2
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %status.i, align 2
  %.mask.i = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp2.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp2.i, label %while.body.i, label %land.rhs.i.pcnet32_rx.exit_crit_edge

land.rhs.i.pcnet32_rx.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_rx.exit

while.body.i:                                     ; preds = %land.rhs.i
  %12 = shl i16 %11, 8
  %13 = ashr exact i16 %12, 8
  %shr221.i.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %12)
  %cmp.not.i.i = icmp eq i16 %12, 768
  br i1 %cmp.not.i.i, label %if.end29.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  %and.i.i = and i32 %shr221.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors.i.i, align 8
  %inc.i.i = add i32 %15, 1
  store i32 %inc.i.i, ptr %rx_errors.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %and5.i.i = and i32 %shr221.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc9.i.i = add i32 %17, 1
  store i32 %inc9.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %and11.i.i = and i32 %shr221.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end10.i.i.if.end16.i.i_crit_edge, label %if.then13.i.i

if.end10.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors.i.i, align 4
  %inc15.i.i = add i32 %19, 1
  store i32 %inc15.i.i, ptr %rx_over_errors.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %if.end10.i.i.if.end16.i.i_crit_edge
  %and17.i.i = and i32 %shr221.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.if.end22.i.i_crit_edge, label %if.then19.i.i

if.end16.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc21.i.i = add i32 %21, 1
  store i32 %inc21.i.i, ptr %rx_crc_errors.i.i, align 8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end16.i.i.if.end22.i.i_crit_edge
  %and23.i.i = and i32 %shr221.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.pcnet32_rx_entry.exit.i_crit_edge, label %if.end22.i.i.cleanup.sink.split.i.i_crit_edge

if.end22.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.end22.i.i.pcnet32_rx_entry.exit.i_crit_edge:   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_rx_entry.exit.i

if.end29.i.i:                                     ; preds = %while.body.i
  %msg_length.i.i = getelementptr inbounds %struct.pcnet32_rx_head, ptr %rxp.026.i, i32 0, i32 3
  %22 = ptrtoint ptr %msg_length.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_length.i.i, align 4
  %24 = and i32 %23, -15794176
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #18
  %conv31.i.i = add nsw i32 %25, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1546, i32 %25)
  %cmp33.i.i = icmp ugt i32 %25, 1546
  br i1 %cmp33.i.i, label %do.body.i.i, label %if.end46.i.i, !prof !425

do.body.i.i:                                      ; preds = %if.end29.i.i
  %26 = ptrtoint ptr %msg_enable77.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable77.i.i, align 8
  %and38.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool39.not.i.i, label %do.body.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then40.i.i

do.body.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.then40.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.110, i32 noundef %conv31.i.i) #21
  br label %cleanup.sink.split.i.i

if.end46.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %25)
  %cmp48.i.i = icmp ult i32 %25, 64
  br i1 %cmp48.i.i, label %do.body51.i.i, label %if.end62.i.i

do.body51.i.i:                                    ; preds = %if.end46.i.i
  %28 = ptrtoint ptr %msg_enable77.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable77.i.i, align 8
  %and53.i.i = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %do.body51.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then55.i.i

do.body51.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.then55.i.i:                                    ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.111) #21
  br label %cleanup.sink.split.i.i

if.end62.i.i:                                     ; preds = %if.end46.i.i
  %30 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31.i.i, i32 %30)
  %cmp64.i.i = icmp sgt i32 %conv31.i.i, %30
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.end99.i.i

if.then66.i.i:                                    ; preds = %if.end62.i.i
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1544, i32 noundef 2592) #18
  %tobool67.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool67.not.i.i, label %if.then66.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then68.i.i

if.then66.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.then68.i.i:                                    ; preds = %if.then66.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %34, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %35 = ptrtoint ptr %pci_dev110.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev110.i.i, align 8
  %dev69.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call.i199.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #18
  br i1 %call.i199.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then68.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !426

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev69.i.i) #18
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %dev69.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev69.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %40, %if.end.i.i.i.i ], [ %38, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #18
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %dev69.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 1542) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i.i.i = add i32 %42, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i200.i.i = getelementptr %struct.page, ptr %41, i32 %shr.i.i.i
  %and.i.i.i = and i32 %42, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev69.i.i, ptr noundef %add.ptr.i200.i.i, i32 noundef %and.i.i.i, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %43 = ptrtoint ptr %pci_dev110.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev110.i.i, align 8
  %dev72.i.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev72.i.i, i32 noundef %retval.0.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %do.body76.i.i, label %if.end99.thread212.i.i

do.body76.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %45 = ptrtoint ptr %msg_enable77.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable77.i.i, align 8
  %and78.i.i = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i.i)
  %tobool79.not.i.i = icmp eq i32 %and78.i.i, 0
  br i1 %tobool79.not.i.i, label %do.body76.i.i.do.end83.i.i_crit_edge, label %if.then80.i.i

do.body76.i.i.do.end83.i.i_crit_edge:             ; preds = %do.body76.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end83.i.i

if.then80.i.i:                                    ; preds = %do.body76.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.112) #21
  br label %do.end83.i.i

do.end83.i.i:                                     ; preds = %if.then80.i.i, %do.body76.i.i.do.end83.i.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #18
  br label %cleanup.sink.split.i.i

if.end99.i.i:                                     ; preds = %if.end62.i.i
  %add.i.i = add nsw i32 %25, -2
  %call.i201.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #18
  %cmp100.i.i = icmp eq ptr %call.i201.i.i, null
  br i1 %cmp100.i.i, label %if.end99.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then107.i.i

if.end99.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.end99.thread212.i.i:                           ; preds = %dma_map_single_attrs.exit.i.i
  %47 = ptrtoint ptr %rx_skbuff115.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_skbuff115.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %entry1.025.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %51 = ptrtoint ptr %pci_dev110.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_dev110.i.i, align 8
  %dev85.i.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %rx_dma_addr112.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_dma_addr112.i.i, align 4
  %arrayidx86.i.i = getelementptr i32, ptr %54, i32 %entry1.025.i
  %55 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx86.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev85.i.i, i32 noundef %56, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  %call88.i.i = tail call ptr @skb_put(ptr noundef %50, i32 noundef %conv31.i.i) #18
  %57 = ptrtoint ptr %rx_skbuff115.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_skbuff115.i.i, align 4
  %arrayidx90.i.i = getelementptr ptr, ptr %58, i32 %entry1.025.i
  %59 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i.i, ptr %arrayidx90.i.i, align 4
  %60 = ptrtoint ptr %rx_dma_addr112.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_dma_addr112.i.i, align 4
  %arrayidx92.i.i = getelementptr i32, ptr %61, i32 %entry1.025.i
  %62 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i.i.i, ptr %arrayidx92.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #18
  %64 = ptrtoint ptr %rxp.026.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rxp.026.i, align 4
  %cmp100215.i.i = icmp eq ptr %50, null
  br i1 %cmp100215.i.i, label %if.end99.thread212.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end99.thread212.i.i.if.end124.i.i_crit_edge

if.end99.thread212.i.i.if.end124.i.i_crit_edge:   ; preds = %if.end99.thread212.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end124.i.i

if.end99.thread212.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %if.end99.thread212.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i.i

if.then107.i.i:                                   ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %data.i202.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i201.i.i, i32 0, i32 19
  %65 = ptrtoint ptr %data.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i202.i.i, align 4
  %add.ptr.i203.i.i = getelementptr i8, ptr %66, i32 2
  store ptr %add.ptr.i203.i.i, ptr %data.i202.i.i, align 4
  %tail.i204.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i201.i.i, i32 0, i32 16
  %67 = ptrtoint ptr %tail.i204.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i204.i.i, align 8
  %add.ptr1.i205.i.i = getelementptr i8, ptr %68, i32 2
  store ptr %add.ptr1.i205.i.i, ptr %tail.i204.i.i, align 8
  %call109.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i201.i.i, i32 noundef %conv31.i.i) #18
  %69 = ptrtoint ptr %pci_dev110.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_dev110.i.i, align 8
  %dev111.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %rx_dma_addr112.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_dma_addr112.i.i, align 4
  %arrayidx113.i.i = getelementptr i32, ptr %72, i32 %entry1.025.i
  %73 = ptrtoint ptr %arrayidx113.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx113.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev111.i.i, i32 noundef %74, i32 noundef %conv31.i.i, i32 noundef 2) #18
  %75 = ptrtoint ptr %rx_skbuff115.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_skbuff115.i.i, align 4
  %arrayidx116.i.i = getelementptr ptr, ptr %76, i32 %entry1.025.i
  %77 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx116.i.i, align 4
  %data117.i.i = getelementptr inbounds %struct.sk_buff, ptr %78, i32 0, i32 19
  %79 = ptrtoint ptr %data117.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data117.i.i, align 4
  %81 = ptrtoint ptr %data.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i202.i.i, align 4
  %83 = call ptr @memcpy(ptr %82, ptr %80, i32 %conv31.i.i)
  %84 = ptrtoint ptr %pci_dev110.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci_dev110.i.i, align 8
  %dev120.i.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %rx_dma_addr112.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_dma_addr112.i.i, align 4
  %arrayidx122.i.i = getelementptr i32, ptr %87, i32 %entry1.025.i
  %88 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx122.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev120.i.i, i32 noundef %89, i32 noundef %conv31.i.i, i32 noundef 2) #18
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %if.then107.i.i, %if.end99.thread212.i.i.if.end124.i.i_crit_edge
  %skb.1211.i.i = phi ptr [ %call.i201.i.i, %if.then107.i.i ], [ %50, %if.end99.thread212.i.i.if.end124.i.i_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1211.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i.i, align 4
  %92 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_bytes.i.i, align 8
  %add126.i.i = add i32 %93, %91
  store i32 %add126.i.i, ptr %rx_bytes.i.i, align 8
  %call127.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.1211.i.i, ptr noundef %1) #18
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1211.i.i, i32 0, i32 15, i32 0, i32 18
  %94 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %call127.i.i, ptr %protocol.i.i, align 8
  %call128.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %skb.1211.i.i) #18
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end124.i.i, %if.end99.thread212.i.i.cleanup.sink.split.i.i_crit_edge, %if.end99.i.i.cleanup.sink.split.i.i_crit_edge, %do.end83.i.i, %if.then66.i.i.cleanup.sink.split.i.i_crit_edge, %if.then55.i.i, %do.body51.i.i.cleanup.sink.split.i.i_crit_edge, %if.then40.i.i, %do.body.i.i.cleanup.sink.split.i.i_crit_edge, %if.end22.i.i.cleanup.sink.split.i.i_crit_edge
  %rx_fifo_errors.sink222.i.i = phi ptr [ %stats125.i.i, %if.end124.i.i ], [ %rx_fifo_errors.i.i, %if.end22.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_errors.i.i, %if.then40.i.i ], [ %rx_errors.i.i, %do.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_errors.i.i, %if.then55.i.i ], [ %rx_errors.i.i, %do.body51.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_dropped.i.i, %if.end99.thread212.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_dropped.i.i, %if.end99.i.i.cleanup.sink.split.i.i_crit_edge ], [ %rx_dropped.i.i, %do.end83.i.i ], [ %rx_dropped.i.i, %if.then66.i.i.cleanup.sink.split.i.i_crit_edge ]
  %95 = ptrtoint ptr %rx_fifo_errors.sink222.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_fifo_errors.sink222.i.i, align 8
  %inc27.i.i = add i32 %96, 1
  store i32 %inc27.i.i, ptr %rx_fifo_errors.sink222.i.i, align 8
  br label %pcnet32_rx_entry.exit.i

pcnet32_rx_entry.exit.i:                          ; preds = %cleanup.sink.split.i.i, %if.end22.i.i.pcnet32_rx_entry.exit.i_crit_edge
  %add.i = add nuw nsw i32 %npackets.031.i, 1
  %buf_length.i = getelementptr inbounds %struct.pcnet32_rx_head, ptr %rxp.026.i, i32 0, i32 1
  %97 = ptrtoint ptr %buf_length.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1287, ptr %buf_length.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !427
  tail call void @arm_heavy_mb() #18
  %98 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 128, ptr %status.i, align 2
  %99 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cur_rx.i, align 8
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %cur_rx.i, align 8
  %101 = ptrtoint ptr %rx_mod_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_mod_mask.i, align 8
  %and7.i = and i32 %102, %inc.i
  %103 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx9.i = getelementptr %struct.pcnet32_rx_head, ptr %104, i32 %and7.i
  %exitcond.not.i = icmp eq i32 %add.i, %budget
  br i1 %exitcond.not.i, label %pcnet32_rx_entry.exit.i.pcnet32_rx.exit_crit_edge, label %pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge

pcnet32_rx_entry.exit.i.land.rhs.i_crit_edge:     ; preds = %pcnet32_rx_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.i

pcnet32_rx_entry.exit.i.pcnet32_rx.exit_crit_edge: ; preds = %pcnet32_rx_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_rx.exit

pcnet32_rx.exit:                                  ; preds = %pcnet32_rx_entry.exit.i.pcnet32_rx.exit_crit_edge, %land.rhs.i.pcnet32_rx.exit_crit_edge, %entry.pcnet32_rx.exit_crit_edge
  %npackets.0.lcssa.i = phi i32 [ 0, %entry.pcnet32_rx.exit_crit_edge ], [ %npackets.031.i, %land.rhs.i.pcnet32_rx.exit_crit_edge ], [ %budget, %pcnet32_rx_entry.exit.i.pcnet32_rx.exit_crit_edge ]
  %lock = getelementptr i8, ptr %napi, i32 -92
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %dirty_tx1.i = getelementptr i8, ptr %1, i32 2432
  %105 = ptrtoint ptr %dirty_tx1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dirty_tx1.i, align 8
  %tx_mod_mask.i = getelementptr i8, ptr %1, i32 2412
  %cur_tx.i = getelementptr i8, ptr %1, i32 2396
  %107 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp.not180.i = icmp eq i32 %106, %108
  br i1 %cmp.not180.i, label %pcnet32_rx.exit.while.end.i_crit_edge, label %while.body.lr.ph.i

pcnet32_rx.exit.while.end.i_crit_edge:            ; preds = %pcnet32_rx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %pcnet32_rx.exit
  %tx_ring.i = getelementptr i8, ptr %1, i32 2312
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %msg_enable.i = getelementptr i8, ptr %1, i32 2760
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_skbuff.i = getelementptr i8, ptr %1, i32 2328
  %pci_dev.i = getelementptr i8, ptr %1, i32 2320
  %tx_dma_addr.i = getelementptr i8, ptr %1, i32 2336
  br label %while.body.i46

while.body.i46:                                   ; preds = %cleanup.i.while.body.i46_crit_edge, %while.body.lr.ph.i
  %must_restart.0182.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %must_restart.2.i, %cleanup.i.while.body.i46_crit_edge ]
  %dirty_tx.0181.i = phi i32 [ %106, %while.body.lr.ph.i ], [ %inc71.i, %cleanup.i.while.body.i46_crit_edge ]
  %109 = ptrtoint ptr %tx_mod_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_mod_mask.i, align 4
  %and.i45 = and i32 %110, %dirty_tx.0181.i
  %111 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_ring.i, align 8
  %status3.i = getelementptr %struct.pcnet32_tx_head, ptr %112, i32 %and.i45, i32 2
  %113 = ptrtoint ptr %status3.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %status3.i, align 2
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #18
  %conv.i = sext i16 %115 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp4.i = icmp slt i16 %115, 0
  br i1 %cmp4.i, label %while.body.i46.while.end.i_crit_edge, label %if.end.i

while.body.i46.while.end.i_crit_edge:             ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i46
  %arrayidx.i47 = getelementptr %struct.pcnet32_tx_head, ptr %112, i32 %and.i45
  %116 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %arrayidx.i47, align 4
  %and8.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %117 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_ring.i, align 8
  %misc.i = getelementptr %struct.pcnet32_tx_head, ptr %118, i32 %and.i45, i32 3
  %119 = ptrtoint ptr %misc.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %misc.i, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #18
  %122 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_errors.i, align 4
  %inc.i48 = add i32 %123, 1
  store i32 %inc.i48, ptr %tx_errors.i, align 4
  %124 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_enable.i, align 8
  %and12.i = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.do.end.i_crit_edge, label %if.then14.i

if.then9.i.do.end.i_crit_edge:                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %conv.i, i32 noundef %121) #21
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %if.then9.i.do.end.i_crit_edge
  %and16.i = and i32 %121, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.end.i.if.end21.i_crit_edge, label %if.then18.i

do.end.i.if.end21.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21.i

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %126 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc20.i = add i32 %127, 1
  store i32 %inc20.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %do.end.i.if.end21.i_crit_edge
  %and22.i = and i32 %121, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  %128 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc26.i = add i32 %129, 1
  store i32 %inc26.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge
  %and28.i = and i32 %121, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.then30.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %130 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_window_errors.i, align 8
  %inc32.i = add i32 %131, 1
  store i32 %inc32.i, ptr %tx_window_errors.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end33.i_crit_edge
  %and34.i = and i32 %121, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end56.i_crit_edge, label %if.then36.i

if.end33.i.if.end56.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56.i

if.then36.i:                                      ; preds = %if.end33.i
  %132 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc38.i = add i32 %133, 1
  store i32 %inc38.i, ptr %tx_fifo_errors.i, align 8
  %134 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msg_enable.i, align 8
  %and41.i = and i32 %135, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then36.i.if.end56.i_crit_edge, label %if.then43.i

if.then36.i.if.end56.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56.i

if.then43.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.116) #21
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end.i
  %and48.i = and i32 %conv.i, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else.i.if.end53.i_crit_edge, label %if.then50.i

if.else.i.if.end53.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %136 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %collisions.i, align 4
  %inc52.i = add i32 %137, 1
  store i32 %inc52.i, ptr %collisions.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.else.i.if.end53.i_crit_edge
  %138 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_packets.i, align 4
  %inc55.i = add i32 %139, 1
  store i32 %inc55.i, ptr %tx_packets.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end53.i, %if.then43.i, %if.then36.i.if.end56.i_crit_edge, %if.end33.i.if.end56.i_crit_edge
  %must_restart.2.i = phi i32 [ %must_restart.0182.i, %if.end53.i ], [ %must_restart.0182.i, %if.end33.i.if.end56.i_crit_edge ], [ 1, %if.then43.i ], [ 1, %if.then36.i.if.end56.i_crit_edge ]
  %140 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tx_skbuff.i, align 8
  %arrayidx57.i = getelementptr ptr, ptr %141, i32 %and.i45
  %142 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx57.i, align 4
  %tobool58.not.i = icmp eq ptr %143, null
  br i1 %tobool58.not.i, label %if.end56.i.cleanup.i_crit_edge, label %if.then59.i

if.end56.i.cleanup.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #20
  %144 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pci_dev.i, align 8
  %dev60.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %146 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tx_dma_addr.i, align 8
  %arrayidx61.i = getelementptr i32, ptr %147, i32 %and.i45
  %148 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx61.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %143, i32 0, i32 6
  %150 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev60.i, i32 noundef %149, i32 noundef %151, i32 noundef 1, i32 noundef 0) #18
  %152 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tx_skbuff.i, align 8
  %arrayidx65.i = getelementptr ptr, ptr %153, i32 %and.i45
  %154 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx65.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %155, i32 noundef 1) #18
  %156 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tx_skbuff.i, align 8
  %arrayidx67.i = getelementptr ptr, ptr %157, i32 %and.i45
  %158 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %arrayidx67.i, align 4
  %159 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tx_dma_addr.i, align 8
  %arrayidx69.i = getelementptr i32, ptr %160, i32 %and.i45
  %161 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %arrayidx69.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then59.i, %if.end56.i.cleanup.i_crit_edge
  %inc71.i = add i32 %dirty_tx.0181.i, 1
  %162 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_tx.i, align 4
  %cmp.not.i = icmp eq i32 %inc71.i, %163
  br i1 %cmp.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i46_crit_edge

cleanup.i.while.body.i46_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i46

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i46.while.end.i_crit_edge, %pcnet32_rx.exit.while.end.i_crit_edge
  %dirty_tx.0.lcssa.i = phi i32 [ %106, %pcnet32_rx.exit.while.end.i_crit_edge ], [ %inc71.i, %cleanup.i.while.end.i_crit_edge ], [ %dirty_tx.0181.i, %while.body.i46.while.end.i_crit_edge ]
  %must_restart.0.lcssa.i = phi i32 [ 0, %pcnet32_rx.exit.while.end.i_crit_edge ], [ %must_restart.2.i, %cleanup.i.while.end.i_crit_edge ], [ %must_restart.0182.i, %while.body.i46.while.end.i_crit_edge ]
  %164 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %cur_tx.i, align 4
  %sub.i = sub i32 %165, %dirty_tx.0.lcssa.i
  %166 = ptrtoint ptr %tx_mod_mask.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tx_mod_mask.i, align 4
  %tx_ring_size.i = getelementptr i8, ptr %1, i32 2404
  %168 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_ring_size.i, align 4
  %add.i49 = add i32 %169, %167
  %and75.i = and i32 %add.i49, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and75.i, i32 %169)
  %cmp77.i = icmp ugt i32 %and75.i, %169
  br i1 %cmp77.i, label %do.body80.i, label %while.end.i.if.end94.i_crit_edge

while.end.i.if.end94.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end94.i

do.body80.i:                                      ; preds = %while.end.i
  %msg_enable81.i = getelementptr i8, ptr %1, i32 2760
  %170 = ptrtoint ptr %msg_enable81.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_enable81.i, align 8
  %and82.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %do.body80.i.do.end89.i_crit_edge, label %if.then84.i

do.body80.i.do.end89.i_crit_edge:                 ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end89.i

if.then84.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #20
  %tx_full.i = getelementptr i8, ptr %1, i32 2664
  %172 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %tx_full.i, align 8
  %conv86.i = zext i8 %173 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.117, i32 noundef %dirty_tx.0.lcssa.i, i32 noundef %165, i32 noundef %conv86.i) #21
  br label %do.end89.i

do.end89.i:                                       ; preds = %if.then84.i, %do.body80.i.do.end89.i_crit_edge
  %174 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tx_ring_size.i, align 4
  %add91.i = add i32 %175, %dirty_tx.0.lcssa.i
  %sub93.i = sub i32 %and75.i, %175
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end89.i, %while.end.i.if.end94.i_crit_edge
  %dirty_tx.3.i = phi i32 [ %add91.i, %do.end89.i ], [ %dirty_tx.0.lcssa.i, %while.end.i.if.end94.i_crit_edge ]
  %delta.0.i = phi i32 [ %sub93.i, %do.end89.i ], [ %and75.i, %while.end.i.if.end94.i_crit_edge ]
  %tx_full95.i = getelementptr i8, ptr %1, i32 2664
  %176 = ptrtoint ptr %tx_full95.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tx_full95.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool97.not.i = icmp eq i8 %177, 0
  br i1 %tobool97.not.i, label %if.end94.i.pcnet32_tx.exit_crit_edge, label %land.lhs.true.i

if.end94.i.pcnet32_tx.exit_crit_edge:             ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_tx.exit

land.lhs.true.i:                                  ; preds = %if.end94.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %178 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %179, i32 0, i32 13
  %180 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.pcnet32_tx.exit_crit_edge, label %land.lhs.true100.i

land.lhs.true.i.pcnet32_tx.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_tx.exit

land.lhs.true100.i:                               ; preds = %land.lhs.true.i
  %182 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tx_ring_size.i, align 4
  %sub102.i = add i32 %183, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %delta.0.i, i32 %sub102.i)
  %cmp103.i = icmp ult i32 %delta.0.i, %sub102.i
  br i1 %cmp103.i, label %if.then105.i, label %land.lhs.true100.i.pcnet32_tx.exit_crit_edge

land.lhs.true100.i.pcnet32_tx.exit_crit_edge:     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_tx.exit

if.then105.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #20
  %184 = ptrtoint ptr %tx_full95.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %tx_full95.i, align 8
  tail call void @netif_tx_wake_queue(ptr noundef %179) #18
  br label %pcnet32_tx.exit

pcnet32_tx.exit:                                  ; preds = %if.then105.i, %land.lhs.true100.i.pcnet32_tx.exit_crit_edge, %land.lhs.true.i.pcnet32_tx.exit_crit_edge, %if.end94.i.pcnet32_tx.exit_crit_edge
  %185 = ptrtoint ptr %dirty_tx1.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %dirty_tx.3.i, ptr %dirty_tx1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %must_restart.0.lcssa.i)
  %tobool.not = icmp eq i32 %must_restart.0.lcssa.i, 0
  br i1 %tobool.not, label %pcnet32_tx.exit.if.end_crit_edge, label %if.then

pcnet32_tx.exit.if.end_crit_edge:                 ; preds = %pcnet32_tx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %pcnet32_tx.exit
  call void @__sanitizer_cov_trace_pc() #20
  %a = getelementptr i8, ptr %napi, i32 -96
  %186 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %a, align 8
  %reset = getelementptr inbounds %struct.pcnet32_access, ptr %187, i32 0, i32 6
  %188 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %reset, align 4
  tail call void %189(i32 noundef %3) #18
  %190 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write_csr, align 4
  tail call void %193(i32 noundef %3, i32 noundef 4, i16 noundef zeroext 2325) #18
  tail call fastcc void @pcnet32_restart(ptr noundef %1, i32 noundef 2)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %194 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %195) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %pcnet32_tx.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %npackets.0.lcssa.i, i32 %budget)
  %cmp10 = icmp slt i32 %npackets.0.lcssa.i, %budget
  br i1 %cmp10, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %call12 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %npackets.0.lcssa.i) #18
  br i1 %call12, label %if.then14, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %a15 = getelementptr i8, ptr %napi, i32 -96
  %196 = ptrtoint ptr %a15 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %a15, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %call16 = tail call zeroext i16 %199(i32 noundef %3, i32 noundef 3) #18
  %200 = and i16 %call16, 255
  %201 = ptrtoint ptr %a15 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %a15, align 8
  %write_csr20 = getelementptr inbounds %struct.pcnet32_access, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %write_csr20 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write_csr20, align 4
  tail call void %204(i32 noundef %3, i32 noundef 3, i16 noundef zeroext %200) #18
  %205 = ptrtoint ptr %a15 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %a15, align 8
  %write_csr22 = getelementptr inbounds %struct.pcnet32_access, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %write_csr22 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write_csr22, align 4
  tail call void %208(i32 noundef %3, i32 noundef 0, i16 noundef zeroext 64) #18
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #18
  ret i32 %npackets.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_watchdog(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -276
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lock = getelementptr i8, ptr %t, i32 -364
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  tail call fastcc void @pcnet32_check_media(ptr noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 200
  %call8 = tail call i32 @round_jiffies(i32 noundef %add) #18
  %call9 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call8) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_wio_write_csr(i32 noundef %addr, i32 noundef %index, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !428
  tail call void @arm_heavy_mb() #18
  %conv = trunc i32 %index to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %0) #18, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !429
  tail call void @arm_heavy_mb() #18
  %2 = tail call i16 @llvm.bswap.i16(i16 %val)
  %add4 = add i32 %addr, 16
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %3 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %2) #18, !srcloc !413
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_wio_read_bcr(i32 noundef %addr, i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !430
  tail call void @arm_heavy_mb() #18
  %conv = trunc i32 %index to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %0) #18, !srcloc !413
  %add2 = add i32 %addr, 22
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %2 = inttoptr i32 %add4 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #18, !srcloc !410
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !431
  ret i16 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_wio_write_bcr(i32 noundef %addr, i32 noundef %index, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !432
  tail call void @arm_heavy_mb() #18
  %conv = trunc i32 %index to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %0) #18, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !433
  tail call void @arm_heavy_mb() #18
  %2 = tail call i16 @llvm.bswap.i16(i16 %val)
  %add4 = add i32 %addr, 22
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %3 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %3, i16 %2) #18, !srcloc !413
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_wio_read_rap(i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %0) #18, !srcloc !410
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !434
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_wio_write_rap(i32 noundef %addr, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !435
  tail call void @arm_heavy_mb() #18
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %add = add i32 %addr, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %0) #18, !srcloc !413
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_dwio_write_csr(i32 noundef %addr, i32 noundef %index, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !436
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %index)
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %0) #18, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !437
  tail call void @arm_heavy_mb() #18
  %conv = zext i16 %val to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add4 = add i32 %addr, 16
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %3 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %2) #18, !srcloc !420
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_dwio_read_bcr(i32 noundef %addr, i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !438
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %index)
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %0) #18, !srcloc !420
  %add2 = add i32 %addr, 28
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %2 = inttoptr i32 %add4 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !439
  %4 = and i32 %3, -65536
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv = trunc i32 %5 to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_dwio_write_bcr(i32 noundef %addr, i32 noundef %index, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !440
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %index)
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %0) #18, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !441
  tail call void @arm_heavy_mb() #18
  %conv = zext i16 %val to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add4 = add i32 %addr, 28
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %3 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %2) #18, !srcloc !420
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pcnet32_dwio_read_rap(i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #18, !srcloc !417
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !442
  %2 = and i32 %1, -65536
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_dwio_write_rap(i32 noundef %addr, i16 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !443
  tail call void @arm_heavy_mb() #18
  %conv = zext i16 %val to i32
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add = add i32 %addr, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %0) #18, !srcloc !420
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef %csr0_bits) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %a = getelementptr i8, ptr %dev, i32 2344
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.body, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call zeroext i16 %5(i32 noundef %1, i32 noundef 0) #18
  %6 = and i16 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %for.cond, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

do.body:                                          ; preds = %for.cond
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and5 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body.if.end9_crit_edge, label %if.then7

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.118, ptr noundef nonnull @__func__.pcnet32_restart) #21
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.body.if.end9_crit_edge, %for.body.if.end9_crit_edge
  tail call fastcc void @pcnet32_purge_tx_ring(ptr noundef %dev)
  %call10 = tail call fastcc i32 @pcnet32_init_ring(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_csr, align 4
  tail call void %12(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 1) #18
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end13
  %i.1 = phi i32 [ 0, %if.end13 ], [ %inc15, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %i.1)
  %exitcond47.not = icmp eq i32 %i.1, 1000
  br i1 %exitcond47.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.cond
  %inc15 = add nuw nsw i32 %i.1, 1
  %13 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call20 = tail call zeroext i16 %16(i32 noundef %1, i32 noundef 0) #18
  %17 = and i16 %call20, 256
  %tobool23.not = icmp eq i16 %17, 0
  br i1 %tobool23.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %18 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a, align 8
  %write_csr27 = getelementptr inbounds %struct.pcnet32_access, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_csr27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_csr27, align 4
  %conv28 = trunc i32 %csr0_bits to i16
  tail call void %21(i32 noundef %1, i32 noundef 0, i16 noundef zeroext %conv28) #18
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_purge_tx_ring(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp39.not = icmp eq i32 %1, 0
  br i1 %cmp39.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %tx_skbuff = getelementptr i8, ptr %dev, i32 2328
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %tx_dma_addr = getelementptr i8, ptr %dev, i32 2336
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %status = getelementptr %struct.pcnet32_tx_head, ptr %3, i32 %i.040, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !444
  tail call void @arm_heavy_mb() #18
  %5 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx1 = getelementptr ptr, ptr %6, i32 %i.040
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end15_crit_edge, label %if.then

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx3 = getelementptr i32, ptr %12, i32 %i.040
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %14) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not = icmp eq i32 %14, -1
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx10 = getelementptr i32, ptr %18, i32 %i.040
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  %21 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx12 = getelementptr ptr, ptr %22, i32 %i.040
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev8, i32 noundef %20, i32 noundef %26, i32 noundef 1, i32 noundef 0) #18
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %27 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx14 = getelementptr ptr, ptr %28, i32 %i.040
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx14, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %30, i32 noundef 1) #18
  br label %if.end15

if.end15:                                         ; preds = %if.end, %for.body.if.end15_crit_edge
  %31 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx17 = getelementptr ptr, ptr %32, i32 %i.040
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx17, align 4
  %34 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx19 = getelementptr i32, ptr %35, i32 %i.040
  %36 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx19, align 4
  %inc = add nuw i32 %i.040, 1
  %37 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_ring_size, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcnet32_init_ring(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_full = getelementptr i8, ptr %dev, i32 2664
  %0 = ptrtoint ptr %tx_full to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_full, align 8
  %cur_tx = getelementptr i8, ptr %dev, i32 2396
  %1 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cur_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2392
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_rx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 2432
  %3 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dirty_tx, align 8
  %dirty_rx = getelementptr i8, ptr %dev, i32 2428
  %4 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dirty_rx, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %5 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp146.not = icmp eq i32 %6, 0
  br i1 %cmp146.not, label %entry.for.cond47.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond47.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_skbuff1 = getelementptr i8, ptr %dev, i32 2332
  %rx_dma_addr = getelementptr i8, ptr %dev, i32 2340
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.cond47.preheader:                             ; preds = %if.end36.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %7 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp48148.not = icmp eq i32 %8, 0
  br i1 %cmp48148.not, label %for.cond47.preheader.for.end61_crit_edge, label %for.body49.lr.ph

for.cond47.preheader.for.end61_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.body49.lr.ph:                                 ; preds = %for.cond47.preheader
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %tx_dma_addr = getelementptr i8, ptr %dev, i32 2336
  br label %for.body49

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end36.for.body_crit_edge ]
  %9 = ptrtoint ptr %rx_skbuff1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skbuff1, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.0147
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %12, null
  br i1 %cmp2, label %if.then, label %for.body.if.end12_crit_edge

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then:                                          ; preds = %for.body
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1544, i32 noundef 2592) #18
  %13 = ptrtoint ptr %rx_skbuff1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_skbuff1, align 4
  %arrayidx5 = getelementptr ptr, ptr %14, i32 %i.0147
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %arrayidx5, align 4
  %16 = load ptr, ptr %rx_skbuff1, align 4
  %arrayidx7 = getelementptr ptr, ptr %16, i32 %i.0147
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body.cleanup81_crit_edge, label %if.then10

do.body.cleanup81_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup81

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.pcnet32_init_ring) #21
  br label %cleanup81

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr.i143, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body.if.end12_crit_edge
  %rx_skbuff.0 = phi ptr [ %18, %if.end11 ], [ %12, %for.body.if.end12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !445
  %25 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx13 = getelementptr i32, ptr %26, i32 %i.0147
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then15, label %if.end12.if.end36_crit_edge

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then15:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %rx_skbuff.0, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %call.i144 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #18
  br i1 %call.i144, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then15
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !426

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev16) #18
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %dev16, ptr noundef %32, i32 noundef 1542) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %32 to i32
  %sub.i = add i32 %38, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i145 = getelementptr %struct.page, ptr %37, i32 %shr.i
  %and.i = and i32 %38, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev16, ptr noundef %add.ptr.i145, i32 noundef %and.i, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %39 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx19 = getelementptr i32, ptr %40, i32 %i.0147
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i, ptr %arrayidx19, align 4
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx23 = getelementptr i32, ptr %44, i32 %i.0147
  %45 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx23, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev21, i32 noundef %46) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not = icmp eq i32 %46, -1
  br i1 %cmp.i.not, label %do.body27, label %dma_map_single_attrs.exit.if.end36_crit_edge

dma_map_single_attrs.exit.if.end36_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

do.body27:                                        ; preds = %dma_map_single_attrs.exit
  %msg_enable28 = getelementptr i8, ptr %dev, i32 2760
  %47 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable28, align 8
  %and29 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.cleanup81_crit_edge, label %if.then31

do.body27.cleanup81_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup81

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.pcnet32_init_ring) #21
  br label %cleanup81

if.end36:                                         ; preds = %dma_map_single_attrs.exit.if.end36_crit_edge, %if.end12.if.end36_crit_edge
  %49 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx38 = getelementptr i32, ptr %50, i32 %i.0147
  %51 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx38, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring, align 4
  %arrayidx39 = getelementptr %struct.pcnet32_rx_head, ptr %55, i32 %i.0147
  %56 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %arrayidx39, align 4
  %57 = load ptr, ptr %rx_ring, align 4
  %buf_length = getelementptr %struct.pcnet32_rx_head, ptr %57, i32 %i.0147, i32 1
  %58 = ptrtoint ptr %buf_length to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1287, ptr %buf_length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !446
  tail call void @arm_heavy_mb() #18
  %59 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_ring, align 4
  %status = getelementptr %struct.pcnet32_rx_head, ptr %60, i32 %i.0147, i32 2
  %61 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 128, ptr %status, align 2
  %inc = add nuw i32 %i.0147, 1
  %62 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_ring_size, align 8
  %cmp = icmp ult i32 %inc, %63
  br i1 %cmp, label %if.end36.for.body_crit_edge, label %if.end36.for.cond47.preheader_crit_edge

if.end36.for.cond47.preheader_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond47.preheader

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.body49.lr.ph
  %i.1149 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc60, %for.body49.for.body49_crit_edge ]
  %64 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_ring, align 8
  %status51 = getelementptr %struct.pcnet32_tx_head, ptr %65, i32 %i.1149, i32 2
  %66 = ptrtoint ptr %status51 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %status51, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !447
  tail call void @arm_heavy_mb() #18
  %67 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_ring, align 8
  %arrayidx56 = getelementptr %struct.pcnet32_tx_head, ptr %68, i32 %i.1149
  %69 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx56, align 4
  %70 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx58 = getelementptr i32, ptr %71, i32 %i.1149
  %72 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx58, align 4
  %inc60 = add nuw i32 %i.1149, 1
  %73 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_ring_size, align 4
  %cmp48 = icmp ult i32 %inc60, %74
  br i1 %cmp48, label %for.body49.for.body49_crit_edge, label %for.body49.for.end61_crit_edge

for.body49.for.end61_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end61

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body49

for.end61:                                        ; preds = %for.body49.for.end61_crit_edge, %for.cond47.preheader.for.end61_crit_edge
  %tx_len_bits = getelementptr i8, ptr %dev, i32 2418
  %75 = ptrtoint ptr %tx_len_bits to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %tx_len_bits, align 2
  %rx_len_bits = getelementptr i8, ptr %dev, i32 2416
  %77 = ptrtoint ptr %rx_len_bits to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rx_len_bits, align 8
  %or142 = or i16 %78, %76
  %79 = tail call i16 @llvm.bswap.i16(i16 %or142)
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 8
  %tlen_rlen = getelementptr inbounds %struct.pcnet32_init_block, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %tlen_rlen to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %79, ptr %tlen_rlen, align 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %83 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_addr, align 64
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %87 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70 = getelementptr %struct.pcnet32_init_block, ptr %87, i32 0, i32 2, i32 0
  %88 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %arrayidx70, align 1
  %89 = load ptr, ptr %dev_addr, align 64
  %arrayidx68.1 = getelementptr i8, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx68.1, align 1
  %92 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70.1 = getelementptr %struct.pcnet32_init_block, ptr %92, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %91, ptr %arrayidx70.1, align 1
  %94 = load ptr, ptr %dev_addr, align 64
  %arrayidx68.2 = getelementptr i8, ptr %94, i32 2
  %95 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx68.2, align 1
  %97 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70.2 = getelementptr %struct.pcnet32_init_block, ptr %97, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %96, ptr %arrayidx70.2, align 1
  %99 = load ptr, ptr %dev_addr, align 64
  %arrayidx68.3 = getelementptr i8, ptr %99, i32 3
  %100 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx68.3, align 1
  %102 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70.3 = getelementptr %struct.pcnet32_init_block, ptr %102, i32 0, i32 2, i32 3
  %103 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %101, ptr %arrayidx70.3, align 1
  %104 = load ptr, ptr %dev_addr, align 64
  %arrayidx68.4 = getelementptr i8, ptr %104, i32 4
  %105 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx68.4, align 1
  %107 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70.4 = getelementptr %struct.pcnet32_init_block, ptr %107, i32 0, i32 2, i32 4
  %108 = ptrtoint ptr %arrayidx70.4 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %106, ptr %arrayidx70.4, align 1
  %109 = load ptr, ptr %dev_addr, align 64
  %arrayidx68.5 = getelementptr i8, ptr %109, i32 5
  %110 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx68.5, align 1
  %112 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx70.5 = getelementptr %struct.pcnet32_init_block, ptr %112, i32 0, i32 2, i32 5
  %113 = ptrtoint ptr %arrayidx70.5 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %111, ptr %arrayidx70.5, align 1
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2420
  %114 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_ring_dma_addr, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 8
  %rx_ring75 = getelementptr inbounds %struct.pcnet32_init_block, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %rx_ring75 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %116, ptr %rx_ring75, align 4
  %tx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2424
  %120 = ptrtoint ptr %tx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_ring_dma_addr, align 8
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 8
  %tx_ring77 = getelementptr inbounds %struct.pcnet32_init_block, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %tx_ring77 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %122, ptr %tx_ring77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !448
  tail call void @arm_heavy_mb() #18
  br label %cleanup81

cleanup81:                                        ; preds = %for.end61, %if.then31, %do.body27.cleanup81_crit_edge, %if.then10, %do.body.cleanup81_crit_edge
  %retval.2 = phi i32 [ 0, %for.end61 ], [ -1, %do.body27.cleanup81_crit_edge ], [ -1, %if.then31 ], [ -1, %do.body.cleanup81_crit_edge ], [ -1, %if.then10 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_check_media(ptr noundef %dev, i32 noundef %verbose) unnamed_addr #3 align 64 {
entry:
  %mii.i = alloca %struct.mii_if_info, align 4
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %mii = getelementptr i8, ptr %dev, i32 2672
  %3 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %mii, align 8
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %call2 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #18
  br label %if.end31

if.else:                                          ; preds = %entry
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %5 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %6)
  %cmp = icmp eq i16 %6, 9761
  br i1 %cmp, label %if.then4, label %if.else21

if.then4:                                         ; preds = %if.else
  %7 = and i8 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %.not = icmp eq i8 %7, 8
  br i1 %.not, label %if.then15, label %if.then4.if.else47_crit_edge

if.then4.if.else47_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else47

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr, align 32
  %a = getelementptr i8, ptr %dev, i32 2344
  %10 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %a, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_bcr, align 4
  %call16 = tail call zeroext i16 %13(i32 noundef %9, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call16)
  %cmp18 = icmp ne i16 %call16, 192
  %conv19 = zext i1 %cmp18 to i32
  br label %if.end31

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr23 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %14 = ptrtoint ptr %base_addr23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr23, align 32
  %a24 = getelementptr i8, ptr %dev, i32 2344
  %16 = ptrtoint ptr %a24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a24, align 8
  %read_bcr25 = getelementptr inbounds %struct.pcnet32_access, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read_bcr25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_bcr25, align 4
  %call26 = tail call zeroext i16 %19(i32 noundef %15, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call26)
  %cmp28 = icmp ne i16 %call26, 192
  %conv29 = zext i1 %cmp28 to i32
  br label %if.end31

if.end31:                                         ; preds = %if.else21, %if.then15, %if.then
  %curr_link.1 = phi i32 [ %call2, %if.then ], [ %conv29, %if.else21 ], [ %conv19, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %curr_link.1)
  %tobool32.not = icmp eq i32 %curr_link.1, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.else47_crit_edge

if.end31.if.else47_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else47

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool35.not = icmp ne i32 %verbose, 0
  %20 = or i1 %tobool35.not, %tobool.not.i
  br i1 %20, label %if.then36, label %if.then33.if.end40_crit_edge

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then36:                                        ; preds = %if.then33
  tail call void @netif_carrier_off(ptr noundef %dev) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.then36.if.end40_crit_edge, label %if.then38

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end40

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.122) #21
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36.if.end40_crit_edge, %if.then33.if.end40_crit_edge
  %phycount = getelementptr i8, ptr %dev, i32 2665
  %23 = ptrtoint ptr %phycount to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %phycount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp42 = icmp ugt i8 %24, 1
  br i1 %cmp42, label %if.then44, label %if.end40.if.end108_crit_edge

if.end40.if.end108_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.then44:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mii.i) #18
  %mii_if.i = getelementptr i8, ptr %dev, i32 2680
  %25 = call ptr @memcpy(ptr %mii.i, ptr %mii_if.i, i32 32)
  %phymask.i = getelementptr i8, ptr %dev, i32 2764
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then44
  %i.045.i = phi i32 [ 0, %if.then44 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mii_if.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.045.i, i32 %27)
  %cmp2.i = icmp eq i32 %i.045.i, %27
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %28 = ptrtoint ptr %phymask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phymask.i, align 4
  %shl.i = shl nuw i32 1, %i.045.i
  %and.i = and i32 %29, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i143 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i143, label %if.end.i.for.inc.i_crit_edge, label %if.then3.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.045.i, ptr %mii.i, align 4
  %call5.i = call i32 @mii_link_ok(ptr noundef nonnull %mii.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.for.inc.i_crit_edge, label %do.body.i

if.then3.i.for.inc.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

do.body.i:                                        ; preds = %if.then3.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2760
  %31 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i, align 8
  %and8.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then10.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.127, i32 noundef %i.045.i) #21
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i.do.end.i_crit_edge
  %33 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %mii, align 8
  %34 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %do.end.i.mdio_read.exit.i_crit_edge, label %if.end.i.i

do.end.i.mdio_read.exit.i_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mdio_read.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mii_if.i, align 8
  %base_addr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %37 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base_addr.i.i, align 32
  %a.i.i = getelementptr i8, ptr %dev, i32 2344
  %39 = ptrtoint ptr %a.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %a.i.i, align 8
  %write_bcr.i.i = getelementptr inbounds %struct.pcnet32_access, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_bcr.i.i, align 4
  %.tr.i = trunc i32 %36 to i16
  %43 = shl i16 %.tr.i, 5
  %conv.i.i = and i16 %43, 992
  call void %42(i32 noundef %38, i32 noundef 33, i16 noundef zeroext %conv.i.i) #18
  %44 = ptrtoint ptr %a.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %a.i.i, align 8
  %read_bcr.i.i = getelementptr inbounds %struct.pcnet32_access, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read_bcr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_bcr.i.i, align 4
  %call3.i.i = call zeroext i16 %47(i32 noundef %38, i32 noundef 34) #18
  %48 = or i16 %call3.i.i, 1024
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %if.end.i.i, %do.end.i.mdio_read.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %48, %if.end.i.i ], [ 1024, %do.end.i.mdio_read.exit.i_crit_edge ]
  %49 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i2.i = load i8, ptr %mii, align 8
  %50 = and i8 %bf.load.i2.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i3.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i3.i, label %mdio_read.exit.i.mdio_write.exit.i_crit_edge, label %if.end.i11.i

mdio_read.exit.i.mdio_write.exit.i_crit_edge:     ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mdio_write.exit.i

if.end.i11.i:                                     ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mii_if.i, align 8
  %base_addr.i4.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %53 = ptrtoint ptr %base_addr.i4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr.i4.i, align 32
  %a.i5.i = getelementptr i8, ptr %dev, i32 2344
  %55 = ptrtoint ptr %a.i5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %a.i5.i, align 8
  %write_bcr.i6.i = getelementptr inbounds %struct.pcnet32_access, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %write_bcr.i6.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_bcr.i6.i, align 4
  %.tr41.i = trunc i32 %52 to i16
  %59 = shl i16 %.tr41.i, 5
  %conv.i9.i = and i16 %59, 992
  call void %58(i32 noundef %54, i32 noundef 33, i16 noundef zeroext %conv.i9.i) #18
  %60 = ptrtoint ptr %a.i5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %a.i5.i, align 8
  %write_bcr3.i.i = getelementptr inbounds %struct.pcnet32_access, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %write_bcr3.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_bcr3.i.i, align 4
  call void %63(i32 noundef %54, i32 noundef 34, i16 noundef zeroext %retval.0.i.i) #18
  br label %mdio_write.exit.i

mdio_write.exit.i:                                ; preds = %if.end.i11.i, %mdio_read.exit.i.mdio_write.exit.i_crit_edge
  %64 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i13.i = load i8, ptr %mii, align 8
  %65 = and i8 %bf.load.i13.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i14.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i14.i, label %mdio_write.exit.i.mdio_read.exit26.i_crit_edge, label %if.end.i24.i

mdio_write.exit.i.mdio_read.exit26.i_crit_edge:   ; preds = %mdio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mdio_read.exit26.i

if.end.i24.i:                                     ; preds = %mdio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr.i15.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %66 = ptrtoint ptr %base_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_addr.i15.i, align 32
  %a.i16.i = getelementptr i8, ptr %dev, i32 2344
  %68 = ptrtoint ptr %a.i16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %a.i16.i, align 8
  %write_bcr.i17.i = getelementptr inbounds %struct.pcnet32_access, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %write_bcr.i17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_bcr.i17.i, align 4
  %i.0.tr.i = trunc i32 %i.045.i to i16
  %72 = shl i16 %i.0.tr.i, 5
  %conv.i20.i = and i16 %72, 992
  call void %71(i32 noundef %67, i32 noundef 33, i16 noundef zeroext %conv.i20.i) #18
  %73 = ptrtoint ptr %a.i16.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %a.i16.i, align 8
  %read_bcr.i21.i = getelementptr inbounds %struct.pcnet32_access, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %read_bcr.i21.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_bcr.i21.i, align 4
  %call3.i22.i = call zeroext i16 %76(i32 noundef %67, i32 noundef 34) #18
  %77 = and i16 %call3.i22.i, -1025
  br label %mdio_read.exit26.i

mdio_read.exit26.i:                               ; preds = %if.end.i24.i, %mdio_write.exit.i.mdio_read.exit26.i_crit_edge
  %retval.0.i25.i = phi i16 [ %77, %if.end.i24.i ], [ 0, %mdio_write.exit.i.mdio_read.exit26.i_crit_edge ]
  %78 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i28.i = load i8, ptr %mii, align 8
  %79 = and i8 %bf.load.i28.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i29.i = icmp eq i8 %79, 0
  br i1 %tobool.not.i29.i, label %mdio_read.exit26.i.mdio_write.exit39.i_crit_edge, label %if.end.i38.i

mdio_read.exit26.i.mdio_write.exit39.i_crit_edge: ; preds = %mdio_read.exit26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %mdio_write.exit39.i

if.end.i38.i:                                     ; preds = %mdio_read.exit26.i
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr.i30.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %80 = ptrtoint ptr %base_addr.i30.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %base_addr.i30.i, align 32
  %a.i31.i = getelementptr i8, ptr %dev, i32 2344
  %82 = ptrtoint ptr %a.i31.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %a.i31.i, align 8
  %write_bcr.i32.i = getelementptr inbounds %struct.pcnet32_access, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %write_bcr.i32.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_bcr.i32.i, align 4
  %i.0.tr42.i = trunc i32 %i.045.i to i16
  %86 = shl i16 %i.0.tr42.i, 5
  %conv.i35.i = and i16 %86, 992
  call void %85(i32 noundef %81, i32 noundef 33, i16 noundef zeroext %conv.i35.i) #18
  %87 = ptrtoint ptr %a.i31.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %a.i31.i, align 8
  %write_bcr3.i36.i = getelementptr inbounds %struct.pcnet32_access, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %write_bcr3.i36.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write_bcr3.i36.i, align 4
  call void %90(i32 noundef %81, i32 noundef 34, i16 noundef zeroext %retval.0.i25.i) #18
  br label %mdio_write.exit39.i

mdio_write.exit39.i:                              ; preds = %if.end.i38.i, %mdio_read.exit26.i.mdio_write.exit39.i_crit_edge
  %91 = ptrtoint ptr %mii_if.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %i.045.i, ptr %mii_if.i, align 8
  br label %pcnet32_check_otherphy.exit

for.inc.i:                                        ; preds = %if.then3.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.pcnet32_check_otherphy.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.pcnet32_check_otherphy.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_check_otherphy.exit

pcnet32_check_otherphy.exit:                      ; preds = %for.inc.i.pcnet32_check_otherphy.exit_crit_edge, %mdio_write.exit39.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mii.i) #18
  br label %if.end108

if.else47:                                        ; preds = %if.end31.if.else47_crit_edge, %if.then4.if.else47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool48.not = icmp ne i32 %verbose, 0
  %call1.not142 = xor i1 %tobool.not.i, true
  %brmerge = select i1 %tobool48.not, i1 true, i1 %call1.not142
  br i1 %brmerge, label %if.then51, label %if.else47.if.end108_crit_edge

if.else47.if.end108_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.then51:                                        ; preds = %if.else47
  tail call void @netif_carrier_on(ptr noundef %dev) #18
  %92 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load53 = load i8, ptr %mii, align 8
  %93 = and i8 %bf.load53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool57.not = icmp eq i8 %93, 0
  %msg_enable99 = getelementptr i8, ptr %dev, i32 2760
  %94 = ptrtoint ptr %msg_enable99 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable99, align 8
  %and100 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool57.not, label %do.body98, label %if.then58

if.then58:                                        ; preds = %if.then51
  br i1 %tobool101.not, label %if.then58.if.end69_crit_edge, label %if.then62

if.then58.if.end69_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #18
  %96 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %97 = call ptr @memset(ptr %96, i32 0, i32 40)
  %98 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %ecmd, align 4
  %mii_if63 = getelementptr i8, ptr %dev, i32 2680
  call void @mii_ethtool_gset(ptr noundef %mii_if63, ptr noundef nonnull %ecmd) #18
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %99 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %100 to i32
  %shl.i144 = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %101 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %102 to i32
  %or.i = or i32 %shl.i144, %conv1.i
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %103 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp66 = icmp eq i8 %104, 1
  %cond68 = select i1 %cmp66, ptr @.str.124, ptr @.str.125
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %or.i, ptr noundef nonnull %cond68) #21
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #18
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.then58.if.end69_crit_edge
  %a70 = getelementptr i8, ptr %dev, i32 2344
  %105 = ptrtoint ptr %a70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %a70, align 8
  %read_bcr71 = getelementptr inbounds %struct.pcnet32_access, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %read_bcr71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read_bcr71, align 4
  %base_addr72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %109 = ptrtoint ptr %base_addr72 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %base_addr72, align 32
  %call73 = call zeroext i16 %108(i32 noundef %110, i32 noundef 9) #18
  %111 = and i16 %call73, 1
  %full_duplex = getelementptr i8, ptr %dev, i32 2696
  %112 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load77 = load i8, ptr %full_duplex, align 8
  %bf.lshr78 = lshr i8 %bf.load77, 7
  %113 = zext i8 %bf.lshr78 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %113)
  %cmp80.not = icmp eq i16 %111, %113
  br i1 %cmp80.not, label %if.end69.if.end108_crit_edge, label %if.then82

if.end69.if.end108_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.then82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  %and91 = and i16 %call73, -2
  %bcr9.0 = or i16 %and91, %113
  %114 = ptrtoint ptr %a70 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %a70, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_bcr, align 4
  %118 = ptrtoint ptr %base_addr72 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %base_addr72, align 32
  call void %117(i32 noundef %119, i32 noundef 9, i16 noundef zeroext %bcr9.0) #18
  br label %if.end108

do.body98:                                        ; preds = %if.then51
  br i1 %tobool101.not, label %do.body98.if.end108_crit_edge, label %if.then102

do.body98.if.end108_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end108

if.then102:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.126) #21
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %do.body98.if.end108_crit_edge, %if.then82, %if.end69.if.end108_crit_edge, %if.else47.if.end108_crit_edge, %pcnet32_check_otherphy.exit, %if.end40.if.end108_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_open(ptr noundef %dev) #3 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %shared_irq = getelementptr i8, ptr %dev, i32 2672
  %6 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %shared_irq, align 8
  %7 = and i8 %bf.load, -128
  %8 = zext i8 %7 to i32
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @pcnet32_interrupt, ptr noundef null, i32 noundef %8, ptr noundef %dev, ptr noundef %dev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_addr, align 64
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.body3.err_free_irq_crit_edge

do.body3.err_free_irq_crit_edge:                  ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_irq

is_valid_ether_addr.exit:                         ; preds = %do.body3
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %or.i.i = or i32 %12, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.err_free_irq_crit_edge, label %if.end10

is_valid_ether_addr.exit.err_free_irq_crit_edge:  ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_free_irq

if.end10:                                         ; preds = %is_valid_ether_addr.exit
  %a = getelementptr i8, ptr %dev, i32 2344
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a, align 8
  %reset = getelementptr inbounds %struct.pcnet32_access, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  tail call void %19(i32 noundef %3) #18
  %20 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_bcr, align 4
  tail call void %23(i32 noundef %3, i32 noundef 20, i16 noundef zeroext 2) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 8
  %and = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end10.do.end18_crit_edge, label %if.then14

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %tx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2424
  %28 = ptrtoint ptr %tx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_ring_dma_addr, align 8
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2420
  %30 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ring_dma_addr, align 4
  %init_dma_addr = getelementptr i8, ptr %dev, i32 2316
  %32 = ptrtoint ptr %init_dma_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %init_dma_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.pcnet32_open, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #21
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %if.end10.do.end18_crit_edge
  %options = getelementptr i8, ptr %dev, i32 2668
  %34 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %options, align 4
  %36 = trunc i32 %35 to i8
  %37 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load22 = load i8, ptr %shared_irq, align 8
  %38 = shl i8 %36, 2
  %bf.shl = and i8 %38, 16
  %bf.clear = and i8 %bf.load22, -29
  %bf.set = or i8 %bf.shl, %bf.clear
  %39 = shl i8 %36, 3
  %bf.shl32 = and i8 %39, 8
  %bf.set34 = or i8 %bf.set, %bf.shl32
  %40 = lshr i8 %36, 5
  %bf.shl45 = and i8 %40, 4
  %bf.set47 = or i8 %bf.set34, %bf.shl45
  store i8 %bf.set47, ptr %shared_irq, align 8
  %41 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %a, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_bcr, align 4
  %call50 = tail call zeroext i16 %44(i32 noundef %3, i32 noundef 2) #18
  %45 = and i16 %call50, -3
  %46 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options, align 4
  %48 = trunc i32 %47 to i16
  %49 = lshr i16 %48, 1
  %50 = and i16 %49, 2
  %spec.select = or i16 %50, %45
  %51 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %a, align 8
  %write_bcr62 = getelementptr inbounds %struct.pcnet32_access, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %write_bcr62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_bcr62, align 4
  tail call void %54(i32 noundef %3, i32 noundef 2, i16 noundef zeroext %spec.select) #18
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %full_duplex = getelementptr i8, ptr %dev, i32 2696
  %55 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load63 = load i8, ptr %full_duplex, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load63)
  %tobool66.not = icmp sgt i8 %bf.load63, -1
  br i1 %tobool66.not, label %do.end18.if.end105_crit_edge, label %if.then67

do.end18.if.end105_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end105

if.then67:                                        ; preds = %do.end18
  %56 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %a, align 8
  %read_bcr69 = getelementptr inbounds %struct.pcnet32_access, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read_bcr69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_bcr69, align 4
  %call70 = tail call zeroext i16 %59(i32 noundef %3, i32 noundef 9) #18
  %60 = and i16 %call70, -4
  %61 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %options, align 4
  %and75 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #20
  %63 = or i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %62)
  %cmp82 = icmp eq i32 %62, 128
  %64 = or i16 %call70, 3
  %spec.select530 = select i1 %cmp82, i16 %64, i16 %63
  br label %if.end102

if.else:                                          ; preds = %if.then67
  %and90 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else.if.end102_crit_edge, label %if.then92

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end102

if.then92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %65 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9767, i16 %66)
  %cmp94 = icmp eq i16 %66, 9767
  %masksel561 = select i1 %cmp94, i16 3, i16 0
  %spec.select531 = or i16 %masksel561, %60
  br label %if.end102

if.end102:                                        ; preds = %if.then92, %if.else.if.end102_crit_edge, %if.then77
  %val.1 = phi i16 [ %60, %if.else.if.end102_crit_edge ], [ %spec.select530, %if.then77 ], [ %spec.select531, %if.then92 ]
  %67 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %a, align 8
  %write_bcr104 = getelementptr inbounds %struct.pcnet32_access, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %write_bcr104 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_bcr104, align 4
  tail call void %70(i32 noundef %3, i32 noundef 9, i16 noundef zeroext %val.1) #18
  br label %if.end105

if.end105:                                        ; preds = %if.end102, %do.end18.if.end105_crit_edge
  %71 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %a, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %call107 = tail call zeroext i16 %74(i32 noundef %3, i32 noundef 124) #18
  %75 = and i16 %call107, -17
  %76 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %options, align 4
  %and112 = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and112)
  %cmp113 = icmp eq i32 %and112, 2
  %masksel = select i1 %cmp113, i16 16, i16 0
  %spec.select532 = or i16 %masksel, %75
  %78 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_csr, align 4
  tail call void %81(i32 noundef %3, i32 noundef 124, i16 noundef zeroext %spec.select532) #18
  %tobool121.not = icmp eq ptr %1, null
  br i1 %tobool121.not, label %if.end105.if.end148_crit_edge, label %land.lhs.true

if.end105.if.end148_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

land.lhs.true:                                    ; preds = %if.end105
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4697, i16 %83)
  %cmp123 = icmp eq i16 %83, 4697
  br i1 %cmp123, label %land.lhs.true125, label %land.lhs.true.if.end148_crit_edge

land.lhs.true.if.end148_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

land.lhs.true125:                                 ; preds = %land.lhs.true
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %84 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %subsystem_device, align 2
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.175)
  switch i16 %85, label %land.lhs.true125.if.end148_crit_edge [
    i16 9985, label %land.lhs.true125.if.then133_crit_edge
    i16 9987, label %land.lhs.true125.if.then133_crit_edge569
  ]

land.lhs.true125.if.then133_crit_edge569:         ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then133

land.lhs.true125.if.then133_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then133

land.lhs.true125.if.end148_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

if.then133:                                       ; preds = %land.lhs.true125.if.then133_crit_edge, %land.lhs.true125.if.then133_crit_edge569
  %87 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %options, align 4
  %and135 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then133.if.end148_crit_edge, label %if.then137

if.then133.if.end148_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

if.then137:                                       ; preds = %if.then133
  %89 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 192, ptr %options, align 4
  %90 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_enable, align 8
  %and141 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then137.if.end148_crit_edge, label %if.then143

if.then137.if.end148_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end148

if.then143:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.130) #21
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.then137.if.end148_crit_edge, %if.then133.if.end148_crit_edge, %land.lhs.true125.if.end148_crit_edge, %land.lhs.true.if.end148_crit_edge, %if.end105.if.end148_crit_edge
  %phycount = getelementptr i8, ptr %dev, i32 2665
  %92 = ptrtoint ptr %phycount to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %phycount, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %cmp150 = icmp ult i8 %93, 2
  br i1 %cmp150, label %if.then152, label %if.else221

if.then152:                                       ; preds = %if.end148
  %94 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load153 = load i8, ptr %shared_irq, align 8
  %95 = and i8 %bf.load153, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool157.not = icmp eq i8 %95, 0
  br i1 %tobool157.not, label %if.then152.if.else195_crit_edge, label %land.lhs.true158

if.then152.if.else195_crit_edge:                  ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else195

land.lhs.true158:                                 ; preds = %if.then152
  %96 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %options, align 4
  %and160 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.then162, label %land.lhs.true158.if.else195_crit_edge

land.lhs.true158.if.else195_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else195

if.then162:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #20
  %98 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %a, align 8
  %write_bcr164 = getelementptr inbounds %struct.pcnet32_access, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %write_bcr164 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write_bcr164, align 4
  %read_bcr166 = getelementptr inbounds %struct.pcnet32_access, ptr %99, i32 0, i32 2
  %102 = ptrtoint ptr %read_bcr166 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read_bcr166, align 4
  %call167 = tail call zeroext i16 %103(i32 noundef %3, i32 noundef 32) #18
  %104 = or i16 %call167, 128
  tail call void %101(i32 noundef %3, i32 noundef 32, i16 noundef zeroext %104) #18
  %105 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %a, align 8
  %read_bcr172 = getelementptr inbounds %struct.pcnet32_access, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %read_bcr172 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read_bcr172, align 4
  %call173 = tail call zeroext i16 %108(i32 noundef %3, i32 noundef 32) #18
  %109 = and i16 %call173, -185
  %110 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %options, align 4
  %112 = trunc i32 %111 to i16
  %113 = lshr i16 %112, 3
  %114 = and i16 %113, 16
  %115 = or i16 %114, %109
  %116 = and i16 %113, 8
  %117 = or i16 %115, %116
  %118 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %a, align 8
  %write_bcr194 = getelementptr inbounds %struct.pcnet32_access, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %write_bcr194 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write_bcr194, align 4
  tail call void %121(i32 noundef %3, i32 noundef 32, i16 noundef zeroext %117) #18
  br label %if.end302

if.else195:                                       ; preds = %land.lhs.true158.if.else195_crit_edge, %if.then152.if.else195_crit_edge
  %122 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %options, align 4
  %and197 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.else195.if.end302_crit_edge, label %if.then199

if.else195.if.end302_crit_edge:                   ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end302

if.then199:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #20
  %124 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %a, align 8
  %write_bcr201 = getelementptr inbounds %struct.pcnet32_access, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %write_bcr201 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write_bcr201, align 4
  %read_bcr203 = getelementptr inbounds %struct.pcnet32_access, ptr %125, i32 0, i32 2
  %128 = ptrtoint ptr %read_bcr203 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read_bcr203, align 4
  %call204 = tail call zeroext i16 %129(i32 noundef %3, i32 noundef 32) #18
  %130 = or i16 %call204, 128
  tail call void %127(i32 noundef %3, i32 noundef 32, i16 noundef zeroext %130) #18
  %131 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %a, align 8
  %read_bcr209 = getelementptr inbounds %struct.pcnet32_access, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %read_bcr209 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %read_bcr209, align 4
  %call210 = tail call zeroext i16 %134(i32 noundef %3, i32 noundef 32) #18
  %135 = and i16 %call210, -185
  %136 = or i16 %135, 32
  %137 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %a, align 8
  %write_bcr218 = getelementptr inbounds %struct.pcnet32_access, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %write_bcr218 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write_bcr218, align 4
  tail call void %140(i32 noundef %3, i32 noundef 32, i16 noundef zeroext %136) #18
  br label %if.end302

if.else221:                                       ; preds = %if.end148
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #18
  %141 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %142 = call ptr @memset(ptr %141, i32 0, i32 40)
  %143 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %ecmd, align 4
  %144 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %a, align 8
  %read_bcr223 = getelementptr inbounds %struct.pcnet32_access, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %read_bcr223 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read_bcr223, align 4
  %call224 = tail call zeroext i16 %147(i32 noundef %3, i32 noundef 2) #18
  %148 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %a, align 8
  %write_bcr226 = getelementptr inbounds %struct.pcnet32_access, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %write_bcr226 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write_bcr226, align 4
  %152 = and i16 %call224, -3
  tail call void %151(i32 noundef %3, i32 noundef 2, i16 noundef zeroext %152) #18
  %153 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %a, align 8
  %read_bcr231 = getelementptr inbounds %struct.pcnet32_access, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %read_bcr231 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %read_bcr231, align 4
  %call232 = tail call zeroext i16 %156(i32 noundef %3, i32 noundef 32) #18
  %157 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %a, align 8
  %write_bcr234 = getelementptr inbounds %struct.pcnet32_access, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %write_bcr234 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_bcr234, align 4
  %161 = and i16 %call232, -129
  tail call void %160(i32 noundef %3, i32 noundef 32, i16 noundef zeroext %161) #18
  %162 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %options, align 4
  %and239 = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.then241, label %if.else221.if.end263_crit_edge

if.else221.if.end263_crit_edge:                   ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end263

if.then241:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #20
  %port = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 5
  %164 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 2, ptr %port, align 1
  %transceiver = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 7
  %165 = ptrtoint ptr %transceiver to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %transceiver, align 1
  %autoneg242 = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 8
  %166 = ptrtoint ptr %autoneg242 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %autoneg242, align 2
  %and244 = and i32 %163, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  %conv.i = select i1 %tobool245.not, i16 10, i16 100
  %speed1.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %167 = ptrtoint ptr %speed1.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i, ptr %speed1.i, align 4
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %168 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %speed_hi.i, align 4
  %169 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %a, align 8
  %read_bcr248 = getelementptr inbounds %struct.pcnet32_access, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %read_bcr248 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read_bcr248, align 4
  %call249 = tail call zeroext i16 %172(i32 noundef %3, i32 noundef 9) #18
  %173 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %options, align 4
  %and252 = and i32 %174, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  %. = select i1 %tobool253.not, i16 -2, i16 1
  %not.tobool253.not = xor i1 %tobool253.not, true
  %.568 = zext i1 %not.tobool253.not to i8
  %or258 = or i16 %call249, %.
  %175 = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %.568, ptr %175, align 2
  %177 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %a, align 8
  %write_bcr261 = getelementptr inbounds %struct.pcnet32_access, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %write_bcr261 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write_bcr261, align 4
  tail call void %180(i32 noundef %3, i32 noundef 9, i16 noundef zeroext %or258) #18
  br label %if.end263

if.end263:                                        ; preds = %if.then241, %if.else221.if.end263_crit_edge
  %phymask = getelementptr i8, ptr %dev, i32 2764
  %phy_address = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 6
  %autoneg287 = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end263
  %first_phy.0565 = phi i32 [ -1, %if.end263 ], [ %first_phy.2, %for.inc.for.body_crit_edge ]
  %i.0562 = phi i32 [ 0, %if.end263 ], [ %inc, %for.inc.for.body_crit_edge ]
  %181 = ptrtoint ptr %phymask to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %phymask, align 4
  %shl = shl nuw i32 1, %i.0562
  %and266 = and i32 %182, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %for.body.for.inc_crit_edge, label %if.then268

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then268:                                       ; preds = %for.body
  %183 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load.i = load i8, ptr %shared_irq, align 8
  %184 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i = icmp eq i8 %184, 0
  br i1 %tobool.not.i, label %if.then268.mdio_read.exit_crit_edge, label %if.end.i

if.then268.mdio_read.exit_crit_edge:              ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #20
  br label %mdio_read.exit

if.end.i:                                         ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #20
  %185 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %base_addr, align 32
  %187 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %a, align 8
  %write_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %write_bcr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write_bcr.i, align 4
  %i.0.tr = trunc i32 %i.0562 to i16
  %191 = shl i16 %i.0.tr, 5
  %conv.i534 = and i16 %191, 992
  call void %190(i32 noundef %186, i32 noundef 33, i16 noundef zeroext %conv.i534) #18
  %192 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %a, align 8
  %read_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %read_bcr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %read_bcr.i, align 4
  %call3.i = call zeroext i16 %195(i32 noundef %186, i32 noundef 34) #18
  %conv4.i = zext i16 %call3.i to i32
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %if.end.i, %if.then268.mdio_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv4.i, %if.end.i ], [ 0, %if.then268.mdio_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_phy.0565)
  %cmp271 = icmp eq i32 %first_phy.0565, -1
  %196 = ptrtoint ptr %shared_irq to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load.i536 = load i8, ptr %shared_irq, align 8
  %197 = and i8 %bf.load.i536, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i537 = icmp eq i8 %197, 0
  br i1 %cmp271, label %if.then273, label %if.else276

if.then273:                                       ; preds = %mdio_read.exit
  br i1 %tobool.not.i537, label %if.then273.if.end279_crit_edge, label %if.end.i545

if.then273.if.end279_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end279

if.end.i545:                                      ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #20
  %198 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %base_addr, align 32
  %200 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %a, align 8
  %write_bcr.i540 = getelementptr inbounds %struct.pcnet32_access, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %write_bcr.i540 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write_bcr.i540, align 4
  %i.0.tr560 = trunc i32 %i.0562 to i16
  %204 = shl i16 %i.0.tr560, 5
  %conv.i543 = and i16 %204, 992
  call void %203(i32 noundef %199, i32 noundef 33, i16 noundef zeroext %conv.i543) #18
  %205 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %a, align 8
  %write_bcr3.i = getelementptr inbounds %struct.pcnet32_access, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %write_bcr3.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write_bcr3.i, align 4
  %209 = trunc i32 %retval.0.i to i16
  %conv4.i544 = and i16 %209, -1025
  call void %208(i32 noundef %199, i32 noundef 34, i16 noundef zeroext %conv4.i544) #18
  br label %if.end279

if.else276:                                       ; preds = %mdio_read.exit
  br i1 %tobool.not.i537, label %if.else276.if.end279_crit_edge, label %if.end.i557

if.else276.if.end279_crit_edge:                   ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end279

if.end.i557:                                      ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #20
  %210 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %base_addr, align 32
  %212 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %a, align 8
  %write_bcr.i551 = getelementptr inbounds %struct.pcnet32_access, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %write_bcr.i551 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write_bcr.i551, align 4
  %i.0.tr559 = trunc i32 %i.0562 to i16
  %216 = shl i16 %i.0.tr559, 5
  %conv.i554 = and i16 %216, 992
  call void %215(i32 noundef %211, i32 noundef 33, i16 noundef zeroext %conv.i554) #18
  %217 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %a, align 8
  %write_bcr3.i555 = getelementptr inbounds %struct.pcnet32_access, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %write_bcr3.i555 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write_bcr3.i555, align 4
  %221 = trunc i32 %retval.0.i to i16
  %conv4.i556 = or i16 %221, 1024
  call void %220(i32 noundef %211, i32 noundef 34, i16 noundef zeroext %conv4.i556) #18
  br label %if.end279

if.end279:                                        ; preds = %if.end.i557, %if.else276.if.end279_crit_edge, %if.end.i545, %if.then273.if.end279_crit_edge
  %first_phy.1 = phi i32 [ %i.0562, %if.then273.if.end279_crit_edge ], [ %i.0562, %if.end.i545 ], [ %first_phy.0565, %if.else276.if.end279_crit_edge ], [ %first_phy.0565, %if.end.i557 ]
  %222 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %i.0562, ptr %mii_if, align 8
  %conv281 = trunc i32 %i.0562 to i8
  %223 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv281, ptr %phy_address, align 4
  %224 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %options, align 4
  %and283 = and i32 %225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.end279.if.end288_crit_edge, label %if.then285

if.end279.if.end288_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end288

if.then285:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #20
  call void @mii_ethtool_gset(ptr noundef %mii_if, ptr noundef nonnull %ecmd) #18
  %226 = ptrtoint ptr %autoneg287 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %autoneg287, align 2
  br label %if.end288

if.end288:                                        ; preds = %if.then285, %if.end279.if.end288_crit_edge
  %call290 = call i32 @mii_ethtool_sset(ptr noundef %mii_if, ptr noundef nonnull %ecmd) #18
  br label %for.inc

for.inc:                                          ; preds = %if.end288, %for.body.for.inc_crit_edge
  %first_phy.2 = phi i32 [ %first_phy.1, %if.end288 ], [ %first_phy.0565, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0562, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  %227 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %first_phy.2, ptr %mii_if, align 8
  %228 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %msg_enable, align 8
  %and296 = and i32 %229, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and296)
  %tobool297.not = icmp eq i32 %and296, 0
  br i1 %tobool297.not, label %for.end.do.end301_crit_edge, label %if.then298

for.end.do.end301_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end301

if.then298:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.127, i32 noundef %first_phy.2) #21
  br label %do.end301

do.end301:                                        ; preds = %if.then298, %for.end.do.end301_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #18
  br label %if.end302

if.end302:                                        ; preds = %do.end301, %if.then199, %if.else195.if.end302_crit_edge, %if.then162
  %230 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %options, align 4
  %.tr = trunc i32 %231 to i16
  %232 = shl i16 %.tr, 7
  %conv306 = and i16 %232, 384
  %233 = call i16 @llvm.bswap.i16(i16 %conv306)
  %234 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %233, ptr %235, align 4
  call fastcc void @pcnet32_load_multicast(ptr noundef %dev)
  %call307 = call fastcc i32 @pcnet32_init_ring(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end310, label %if.then309

if.then309:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @pcnet32_purge_rx_ring(ptr noundef %dev)
  %237 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %a, align 8
  %write_bcr359 = getelementptr inbounds %struct.pcnet32_access, ptr %238, i32 0, i32 3
  %239 = ptrtoint ptr %write_bcr359 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write_bcr359, align 4
  call void %240(i32 noundef %3, i32 noundef 20, i16 noundef zeroext 4) #18
  br label %err_free_irq

if.end310:                                        ; preds = %if.end302
  %napi = getelementptr i8, ptr %dev, i32 2440
  call void @napi_enable(ptr noundef %napi) #18
  %241 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %a, align 8
  %write_csr312 = getelementptr inbounds %struct.pcnet32_access, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_csr312 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write_csr312, align 4
  %init_dma_addr313 = getelementptr i8, ptr %dev, i32 2316
  %245 = ptrtoint ptr %init_dma_addr313 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %init_dma_addr313, align 4
  %conv315 = trunc i32 %246 to i16
  call void %244(i32 noundef %3, i32 noundef 1, i16 noundef zeroext %conv315) #18
  %247 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %a, align 8
  %write_csr317 = getelementptr inbounds %struct.pcnet32_access, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %write_csr317 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write_csr317, align 4
  %251 = ptrtoint ptr %init_dma_addr313 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %init_dma_addr313, align 4
  %shr = lshr i32 %252, 16
  %conv319 = trunc i32 %shr to i16
  call void %250(i32 noundef %3, i32 noundef 2, i16 noundef zeroext %conv319) #18
  %253 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %a, align 8
  %write_csr321 = getelementptr inbounds %struct.pcnet32_access, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %write_csr321 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %write_csr321, align 4
  call void %256(i32 noundef %3, i32 noundef 4, i16 noundef zeroext 2325) #18
  %257 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %a, align 8
  %write_csr323 = getelementptr inbounds %struct.pcnet32_access, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %write_csr323 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %write_csr323, align 4
  call void %260(i32 noundef %3, i32 noundef 0, i16 noundef zeroext 1) #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %261 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %262, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %chip_version324 = getelementptr i8, ptr %dev, i32 2768
  %263 = ptrtoint ptr %chip_version324 to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %chip_version324, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9760, i16 %264)
  %cmp326 = icmp ugt i16 %264, 9760
  br i1 %cmp326, label %if.then328, label %if.end310.while.cond.preheader_crit_edge

if.end310.while.cond.preheader_crit_edge:         ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

if.then328:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #20
  call fastcc void @pcnet32_check_media(ptr noundef %dev, i32 noundef 1)
  %watchdog_timer = getelementptr i8, ptr %dev, i32 2712
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %265 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %265, 200
  %call329 = call i32 @mod_timer(ptr noundef %watchdog_timer, i32 noundef %add) #18
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then328, %if.end310.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.1 = phi i32 [ %inc331, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.1)
  %exitcond566.not = icmp eq i32 %i.1, 100
  br i1 %exitcond566.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %while.cond
  %inc331 = add nuw nsw i32 %i.1, 1
  %266 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %a, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %call336 = call zeroext i16 %269(i32 noundef %3, i32 noundef 0) #18
  %270 = and i16 %call336, 256
  %tobool339.not = icmp eq i16 %270, 0
  br i1 %tobool339.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %inc331.lcssa = phi i32 [ %inc331, %while.body.while.end_crit_edge ], [ 101, %while.cond.while.end_crit_edge ]
  %271 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %a, align 8
  %write_csr343 = getelementptr inbounds %struct.pcnet32_access, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %write_csr343 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %write_csr343, align 4
  call void %274(i32 noundef %3, i32 noundef 0, i16 noundef zeroext 66) #18
  %275 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %msg_enable, align 8
  %and346 = and i32 %276, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and346)
  %tobool347.not = icmp eq i32 %and346, 0
  br i1 %tobool347.not, label %while.end.do.end356_crit_edge, label %if.then348

while.end.do.end356_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end356

if.then348:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %277 = ptrtoint ptr %init_dma_addr313 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %init_dma_addr313, align 4
  %279 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %a, align 8
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %call352 = call zeroext i16 %282(i32 noundef %3, i32 noundef 0) #18
  %conv353 = zext i16 %call352 to i32
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %inc331.lcssa, i32 noundef %278, i32 noundef %conv353) #21
  br label %do.end356

do.end356:                                        ; preds = %if.then348, %while.end.do.end356_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #18
  br label %cleanup

err_free_irq:                                     ; preds = %if.then309, %is_valid_ether_addr.exit.err_free_irq_crit_edge, %do.body3.err_free_irq_crit_edge
  %rc.0 = phi i32 [ -12, %if.then309 ], [ -22, %is_valid_ether_addr.exit.err_free_irq_crit_edge ], [ -22, %do.body3.err_free_irq_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #18
  %283 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %irq, align 4
  %call362 = call ptr @free_irq(i32 noundef %284, ptr noundef %dev) #18
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq, %do.end356, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_free_irq ], [ 0, %do.end356 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %watchdog_timer = getelementptr i8, ptr %dev, i32 2712
  %call1 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %napi = getelementptr i8, ptr %dev, i32 2440
  tail call void @napi_disable(ptr noundef %napi) #18
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %a = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call7 = tail call zeroext i16 %7(i32 noundef %1, i32 noundef 112) #18
  %conv8 = zext i16 %call7 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %8 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv8, ptr %rx_missed_errors, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %if.then

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %a, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call12 = tail call zeroext i16 %14(i32 noundef %1, i32 noundef 0) #18
  %conv13 = zext i16 %call12 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %conv13) #21
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry.do.end15_crit_edge
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_csr, align 4
  tail call void %18(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 4) #18
  %19 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %a, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_bcr, align 4
  tail call void %22(i32 noundef %1, i32 noundef 20, i16 noundef zeroext 4) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call19 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %dev) #18
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  tail call fastcc void @pcnet32_purge_rx_ring(ptr noundef %dev)
  tail call fastcc void @pcnet32_purge_tx_ring(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.then

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %a = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call8 = tail call zeroext i16 %7(i32 noundef %1, i32 noundef 0) #18
  %conv9 = zext i16 %call8 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.pcnet32_start_xmit, i32 noundef %conv9) #21
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %cur_tx = getelementptr i8, ptr %dev, i32 2396
  %8 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_tx, align 4
  %tx_mod_mask = getelementptr i8, ptr %dev, i32 2412
  %10 = ptrtoint ptr %tx_mod_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_mod_mask, align 4
  %and12 = and i32 %11, %9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = trunc i32 %13 to i16
  %conv13 = sub i16 0, %14
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring, align 8
  %length = getelementptr %struct.pcnet32_tx_head, ptr %17, i32 %and12, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %length, align 4
  %19 = load ptr, ptr %tx_ring, align 8
  %misc = getelementptr %struct.pcnet32_tx_head, ptr %19, i32 %and12, i32 3
  %20 = ptrtoint ptr %misc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %misc, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %21 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #18
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end11
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !426

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev16) #18
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %dev16, ptr noundef %24, i32 noundef %26) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %24 to i32
  %sub.i = add i32 %32, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i94 = getelementptr %struct.page, ptr %31, i32 %shr.i
  %and.i = and i32 %32, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev16, ptr noundef %add.ptr.i94, i32 noundef %and.i, i32 noundef %26, i32 noundef 1, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_dma_addr = getelementptr i8, ptr %dev, i32 2336
  %33 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx19 = getelementptr i32, ptr %34, i32 %and12
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %arrayidx19, align 4
  %36 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %38 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx23 = getelementptr i32, ptr %38, i32 %and12
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx23, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev21, i32 noundef %40) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not = icmp eq i32 %40, -1
  br i1 %cmp.i.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %41 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %drop_packet

if.end27:                                         ; preds = %dma_map_single_attrs.exit
  %tx_skbuff = getelementptr i8, ptr %dev, i32 2328
  %43 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_skbuff, align 8
  %arrayidx28 = getelementptr ptr, ptr %44, i32 %and12
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %skb, ptr %arrayidx28, align 4
  %46 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_dma_addr, align 8
  %arrayidx30 = getelementptr i32, ptr %47, i32 %and12
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx30, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_ring, align 8
  %arrayidx32 = getelementptr %struct.pcnet32_tx_head, ptr %52, i32 %and12
  %53 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !449
  tail call void @arm_heavy_mb() #18
  %54 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_ring, align 8
  %status38 = getelementptr %struct.pcnet32_tx_head, ptr %55, i32 %and12, i32 2
  %56 = ptrtoint ptr %status38 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 131, ptr %status38, align 2
  %57 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cur_tx, align 4
  %inc40 = add i32 %58, 1
  store i32 %inc40, ptr %cur_tx, align 4
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %61 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %62, %60
  store i32 %add, ptr %tx_bytes, align 4
  %a43 = getelementptr i8, ptr %dev, i32 2344
  %63 = ptrtoint ptr %a43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %a43, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_csr, align 4
  tail call void %66(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 72) #18
  %67 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_ring, align 8
  %add45 = add i32 %and12, 1
  %69 = ptrtoint ptr %tx_mod_mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_mod_mask, align 4
  %and47 = and i32 %70, %add45
  %arrayidx48 = getelementptr %struct.pcnet32_tx_head, ptr %68, i32 %and47
  %71 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp50.not = icmp eq i32 %72, 0
  br i1 %cmp50.not, label %if.end27.drop_packet_crit_edge, label %if.then52

if.end27.drop_packet_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %drop_packet

if.then52:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %tx_full = getelementptr i8, ptr %dev, i32 2664
  %73 = ptrtoint ptr %tx_full to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %tx_full, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %74 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %75, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  br label %drop_packet

drop_packet:                                      ; preds = %if.then52, %if.end27.drop_packet_crit_edge, %if.then26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_set_multicast_list(ptr noundef %dev) #3 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %flags, align 4
  %call6 = call fastcc i32 @pcnet32_suspend(ptr noundef %dev, ptr noundef nonnull %flags, i32 noundef 0)
  %a = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %a, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call7 = tail call zeroext i16 %6(i32 noundef %1, i32 noundef 15) #18
  %flags9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags9, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body10

do.body10:                                        ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and11 = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end15_crit_edge, label %if.then13

do.body10.do.end15_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end15

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.137) #21
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %do.body10.do.end15_crit_edge
  %options = getelementptr i8, ptr %dev, i32 2668
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options, align 4
  %.tr62 = trunc i32 %12 to i16
  %13 = shl i16 %.tr62, 7
  %14 = and i16 %13, 384
  %conv17 = or i16 %14, -32768
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv17)
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %17, align 4
  %19 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_csr, align 4
  %23 = or i16 %call7, -32768
  tail call void %22(i32 noundef %1, i32 noundef 15, i16 noundef zeroext %23) #18
  br label %if.end31

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %options21 = getelementptr i8, ptr %dev, i32 2668
  %24 = ptrtoint ptr %options21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %options21, align 4
  %.tr = trunc i32 %25 to i16
  %26 = shl i16 %.tr, 7
  %conv24 = and i16 %26, 384
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %27, ptr %29, align 4
  %31 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %a, align 8
  %write_csr28 = getelementptr inbounds %struct.pcnet32_access, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_csr28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_csr28, align 4
  %and29 = and i16 %call7, 32767
  tail call void %34(i32 noundef %1, i32 noundef 15, i16 noundef zeroext %and29) #18
  tail call fastcc void @pcnet32_load_multicast(ptr noundef %dev)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool32.not = icmp eq i32 %call6, 0
  %35 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a, align 8
  br i1 %tobool32.not, label %if.else34, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i = tail call zeroext i16 %38(i32 noundef %1, i32 noundef 5) #18
  %39 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %a, align 8
  %write_csr.i = getelementptr inbounds %struct.pcnet32_access, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_csr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_csr.i, align 4
  %43 = and i16 %call.i, -2
  tail call void %42(i32 noundef %1, i32 noundef 5, i16 noundef zeroext %43) #18
  br label %if.end37

if.else34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %write_csr36 = getelementptr inbounds %struct.pcnet32_access, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %write_csr36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_csr36, align 4
  tail call void %45(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 4) #18
  tail call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 66)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %47) #18
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then33
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %49) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call7 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call7, %do.body1 ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %2 = load i32, ptr @pcnet32_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end8

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %a = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %a, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call10 = tail call zeroext i16 %6(i32 noundef %1, i32 noundef 0) #18
  %conv11 = zext i16 %call10 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %dev, i32 noundef %conv11) #21
  br label %if.end

if.end:                                           ; preds = %do.end8, %entry.if.end_crit_edge
  %a13 = getelementptr i8, ptr %dev, i32 2344
  %7 = ptrtoint ptr %a13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a13, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_csr, align 4
  tail call void %10(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 4) #18
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tx_errors, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and14 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end77_crit_edge, label %if.then16

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.then16:                                        ; preds = %if.end
  %dirty_tx = getelementptr i8, ptr %dev, i32 2432
  %15 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dirty_tx, align 8
  %cur_tx = getelementptr i8, ptr %dev, i32 2396
  %17 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_tx, align 4
  %tx_full = getelementptr i8, ptr %dev, i32 2664
  %19 = ptrtoint ptr %tx_full to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx_full, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool22.not, ptr @.str.145, ptr @.str.144
  %cur_rx = getelementptr i8, ptr %dev, i32 2392
  %21 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_rx, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %cond, i32 noundef %22) #21
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %23 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24118.not = icmp eq i32 %24, 0
  br i1 %cmp24118.not, label %if.then16.for.cond44.preheader_crit_edge, label %do.end28.lr.ph

if.then16.for.cond44.preheader_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond44.preheader

do.end28.lr.ph:                                   ; preds = %if.then16
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %do.end28

for.cond44.preheader:                             ; preds = %do.end28.for.cond44.preheader_crit_edge, %if.then16.for.cond44.preheader_crit_edge
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %25 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp45120.not = icmp eq i32 %26, 0
  br i1 %cmp45120.not, label %for.cond44.preheader.do.end74_crit_edge, label %do.end50.lr.ph

for.cond44.preheader.do.end74_crit_edge:          ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end74

do.end50.lr.ph:                                   ; preds = %for.cond44.preheader
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  br label %do.end50

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.end28.lr.ph
  %i.0119 = phi i32 [ 0, %do.end28.lr.ph ], [ %inc43, %do.end28.do.end28_crit_edge ]
  %and30 = and i32 %i.0119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.149, ptr @.str.145
  %27 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring, align 4
  %arrayidx = getelementptr %struct.pcnet32_rx_head, ptr %28, i32 %i.0119
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %buf_length = getelementptr %struct.pcnet32_rx_head, ptr %28, i32 %i.0119, i32 1
  %32 = ptrtoint ptr %buf_length to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buf_length, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %35 = sub i16 0, %34
  %and36 = zext i16 %35 to i32
  %msg_length = getelementptr %struct.pcnet32_rx_head, ptr %28, i32 %i.0119, i32 3
  %36 = ptrtoint ptr %msg_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_length, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %status = getelementptr %struct.pcnet32_rx_head, ptr %28, i32 %i.0119, i32 2
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %status, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv41 = zext i16 %41 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull %cond32, i32 noundef %31, i32 noundef %and36, i32 noundef %38, i32 noundef %conv41) #21
  %inc43 = add nuw i32 %i.0119, 1
  %42 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_ring_size, align 8
  %cmp24 = icmp ult i32 %inc43, %43
  br i1 %cmp24, label %do.end28.do.end28_crit_edge, label %do.end28.for.cond44.preheader_crit_edge

do.end28.for.cond44.preheader_crit_edge:          ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond44.preheader

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end28

do.end50:                                         ; preds = %do.end50.do.end50_crit_edge, %do.end50.lr.ph
  %i.1121 = phi i32 [ 0, %do.end50.lr.ph ], [ %inc70, %do.end50.do.end50_crit_edge ]
  %and52 = and i32 %i.1121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cond54 = select i1 %tobool53.not, ptr @.str.149, ptr @.str.145
  %44 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_ring, align 8
  %arrayidx55 = getelementptr %struct.pcnet32_tx_head, ptr %45, i32 %i.1121
  %46 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx55, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %length = getelementptr %struct.pcnet32_tx_head, ptr %45, i32 %i.1121, i32 1
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %length, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %52 = sub i16 0, %51
  %and61 = zext i16 %52 to i32
  %misc = getelementptr %struct.pcnet32_tx_head, ptr %45, i32 %i.1121, i32 3
  %53 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %misc, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %status66 = getelementptr %struct.pcnet32_tx_head, ptr %45, i32 %i.1121, i32 2
  %56 = ptrtoint ptr %status66 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %status66, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %conv67 = zext i16 %58 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull %cond54, i32 noundef %48, i32 noundef %and61, i32 noundef %55, i32 noundef %conv67) #21
  %inc70 = add nuw i32 %i.1121, 1
  %59 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_ring_size, align 4
  %cmp45 = icmp ult i32 %inc70, %60
  br i1 %cmp45, label %do.end50.do.end50_crit_edge, label %do.end50.do.end74_crit_edge

do.end50.do.end74_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end74

do.end50.do.end50_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end50

do.end74:                                         ; preds = %do.end50.do.end74_crit_edge, %for.cond44.preheader.do.end74_crit_edge
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #21
  br label %if.end77

if.end77:                                         ; preds = %do.end74, %if.end.if.end77_crit_edge
  tail call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 66)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 12
  %64 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %63)
  %cmp.not.i.i = icmp eq i32 %65, %63
  br i1 %cmp.not.i.i, label %if.end77.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end77.netif_trans_update.exit_crit_edge:       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  %66 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %63, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end77.netif_trans_update.exit_crit_edge
  %67 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %68) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pcnet32_get_stats(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %a = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call6 = tail call zeroext i16 %5(i32 noundef %1, i32 noundef 112) #18
  %conv7 = zext i16 %call6 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %6 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv7, ptr %rx_missed_errors, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_poll_controller(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #18
  %call = tail call i32 @pcnet32_interrupt(i32 noundef 0, ptr noundef %dev)
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_interrupt_work, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_addr, align 32
  %lock = getelementptr i8, ptr %dev_id, i32 2348
  tail call void @_raw_spin_lock(ptr noundef %lock) #18
  %a = getelementptr i8, ptr %dev_id, i32 2344
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %a, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = tail call zeroext i16 %6(i32 noundef %2, i32 noundef 0) #18
  %conv105 = zext i16 %call1 to i32
  %and106 = and i32 %conv105, 36608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool.not107 = icmp eq i32 %and106, 0
  br i1 %tobool.not107, label %entry.do.body59_crit_edge, label %land.rhs.lr.ph

entry.do.body59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body59

land.rhs.lr.ph:                                   ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev_id, i32 2760
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %napi = getelementptr i8, ptr %dev_id, i32 2440
  br label %land.rhs

land.rhs:                                         ; preds = %if.end55.land.rhs_crit_edge, %land.rhs.lr.ph
  %conv110 = phi i32 [ %conv105, %land.rhs.lr.ph ], [ %conv, %if.end55.land.rhs_crit_edge ]
  %boguscnt.0109 = phi i32 [ %0, %land.rhs.lr.ph ], [ %dec, %if.end55.land.rhs_crit_edge ]
  %csr0.0108 = phi i16 [ %call1, %land.rhs.lr.ph ], [ %call58, %if.end55.land.rhs_crit_edge ]
  %dec = add i32 %boguscnt.0109, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %csr0.0108)
  %cmp4 = icmp eq i16 %csr0.0108, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %land.rhs.do.body59_crit_edge, label %if.end

land.rhs.do.body59_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body59

if.end:                                           ; preds = %land.rhs
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_csr, align 4
  %and8 = and i16 %csr0.0108, -80
  tail call void %10(i32 noundef %2, i32 noundef 0, i16 noundef zeroext %and8) #18
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and10 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.do.end_crit_edge, label %if.then12

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call16 = tail call zeroext i16 %16(i32 noundef %2, i32 noundef 0) #18
  %conv17 = zext i16 %call16 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev_id, ptr noundef nonnull @.str.132, i32 noundef %conv110, i32 noundef %conv17) #21
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end.do.end_crit_edge
  %and20 = and i32 %conv110, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end.if.end23_crit_edge, label %if.then22

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %17 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end.if.end23_crit_edge
  %and25 = and i32 %conv110, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_errors, align 8
  %inc29 = add i32 %20, 1
  store i32 %inc29, ptr %rx_errors, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %and32 = and i32 %conv110, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end44_crit_edge, label %do.body35

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

do.body35:                                        ; preds = %if.end30
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 8
  %and37 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.if.end44_crit_edge, label %if.then39

do.body35.if.end44_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.133, i32 noundef %conv110) #21
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %do.body35.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  %call45 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  %23 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %a, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br i1 %call45, label %if.then46, label %if.end55

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  %call49 = tail call zeroext i16 %26(i32 noundef %2, i32 noundef 3) #18
  %27 = or i16 %call49, 24320
  %28 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %a, align 8
  %write_csr53 = getelementptr inbounds %struct.pcnet32_access, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_csr53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_csr53, align 4
  tail call void %31(i32 noundef %2, i32 noundef 3, i16 noundef zeroext %27) #18
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %do.body59

if.end55:                                         ; preds = %if.end44
  %call58 = tail call zeroext i16 %26(i32 noundef %2, i32 noundef 0) #18
  %conv = zext i16 %call58 to i32
  %and = and i32 %conv, 36608
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end55.do.body59_crit_edge, label %if.end55.land.rhs_crit_edge

if.end55.land.rhs_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

if.end55.do.body59_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body59

do.body59:                                        ; preds = %if.end55.do.body59_crit_edge, %if.then46, %land.rhs.do.body59_crit_edge, %entry.do.body59_crit_edge
  %msg_enable60 = getelementptr i8, ptr %dev_id, i32 2760
  %32 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable60, align 8
  %and61 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.do.end70_crit_edge, label %if.then63

do.body59.do.end70_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end70

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %a, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call66 = tail call zeroext i16 %37(i32 noundef %2, i32 noundef 0) #18
  %conv67 = zext i16 %call66 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev_id, ptr noundef nonnull @.str.134, i32 noundef %conv67) #21
  br label %do.end70

do.end70:                                         ; preds = %if.then63, %do.body59.do.end70_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #18
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_sset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_load_multicast(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %filter = getelementptr inbounds %struct.pcnet32_init_block, ptr %1, i32 0, i32 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -1, ptr %filter, align 4
  %arrayidx3 = getelementptr %struct.pcnet32_init_block, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1, ptr %arrayidx3, align 4
  %a = getelementptr i8, ptr %dev, i32 2344
  %8 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_csr, align 4
  tail call void %11(i32 noundef %3, i32 noundef 8, i16 noundef zeroext -1) #18
  %12 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a, align 8
  %write_csr5 = getelementptr inbounds %struct.pcnet32_access, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_csr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_csr5, align 4
  tail call void %15(i32 noundef %3, i32 noundef 9, i16 noundef zeroext -1) #18
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a, align 8
  %write_csr7 = getelementptr inbounds %struct.pcnet32_access, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_csr7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_csr7, align 4
  tail call void %19(i32 noundef %3, i32 noundef 10, i16 noundef zeroext -1) #18
  %20 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a, align 8
  %write_csr9 = getelementptr inbounds %struct.pcnet32_access, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_csr9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_csr9, align 4
  tail call void %23(i32 noundef %3, i32 noundef 11, i16 noundef zeroext -1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %filter, align 4
  %arrayidx13 = getelementptr %struct.pcnet32_init_block, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx13, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %26 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.071 = load ptr, ptr %mc, align 4
  %cmp.not72 = icmp eq ptr %ha.071, %mc
  br i1 %cmp.not72, label %if.end.for.cond30.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond30.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body.for.cond30.preheader_crit_edge, %if.end.for.cond30.preheader_crit_edge
  %a34 = getelementptr i8, ptr %dev, i32 2344
  %27 = ptrtoint ptr %a34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a34, align 8
  %write_csr35 = getelementptr inbounds %struct.pcnet32_access, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_csr35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_csr35, align 4
  %31 = ptrtoint ptr %filter to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load volatile i16, ptr %filter, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  tail call void %30(i32 noundef %3, i32 noundef 8, i16 noundef zeroext %33) #18
  %34 = ptrtoint ptr %a34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %a34, align 8
  %write_csr35.1 = getelementptr inbounds %struct.pcnet32_access, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_csr35.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_csr35.1, align 4
  %arrayidx36.1 = getelementptr i16, ptr %filter, i32 1
  %38 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load volatile i16, ptr %arrayidx36.1, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  tail call void %37(i32 noundef %3, i32 noundef 9, i16 noundef zeroext %40) #18
  %41 = ptrtoint ptr %a34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %a34, align 8
  %write_csr35.2 = getelementptr inbounds %struct.pcnet32_access, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_csr35.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_csr35.2, align 4
  %arrayidx36.2 = getelementptr %struct.pcnet32_init_block, ptr %1, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load volatile i16, ptr %arrayidx36.2, align 2
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void %44(i32 noundef %3, i32 noundef 10, i16 noundef zeroext %47) #18
  %48 = ptrtoint ptr %a34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %a34, align 8
  %write_csr35.3 = getelementptr inbounds %struct.pcnet32_access, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_csr35.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_csr35.3, align 4
  %arrayidx36.3 = getelementptr i16, ptr %filter, i32 3
  %52 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load volatile i16, ptr %arrayidx36.3, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  tail call void %51(i32 noundef %3, i32 noundef 11, i16 noundef zeroext %54) #18
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %ha.073 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.071, %if.end.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.073, i32 0, i32 2
  %call18 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #23
  %shr = lshr i32 %call18, 26
  %and19 = and i32 %shr, 15
  %shl = shl nuw nsw i32 1, %and19
  %conv = trunc i32 %shl to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %shr21 = lshr i32 %call18, 30
  %arrayidx22 = getelementptr i16, ptr %filter, i32 %shr21
  %56 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load volatile i16, ptr %arrayidx22, align 2
  %or70 = or i16 %55, %57
  store volatile i16 %or70, ptr %arrayidx22, align 2
  %58 = ptrtoint ptr %ha.073 to i32
  call void @__asan_load4_noabort(i32 %58)
  %ha.0 = load ptr, ptr %ha.073, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.cond30.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.cond30.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond30.preheader

cleanup:                                          ; preds = %for.cond30.preheader, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_purge_rx_ring(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  %rx_skbuff = getelementptr i8, ptr %dev, i32 2332
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %rx_dma_addr = getelementptr i8, ptr %dev, i32 2340
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end13.for.body_crit_edge ]
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %status = getelementptr %struct.pcnet32_rx_head, ptr %3, i32 %i.036, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %status, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !450
  tail call void @arm_heavy_mb() #18
  %5 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx1 = getelementptr ptr, ptr %6, i32 %i.036
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.if.end13_crit_edge, label %if.then

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then:                                          ; preds = %for.body
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx3 = getelementptr i32, ptr %12, i32 %i.036
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %14) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not = icmp eq i32 %14, -1
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx10 = getelementptr i32, ptr %18, i32 %i.036
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev8, i32 noundef %20, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx12 = getelementptr ptr, ptr %22, i32 %i.036
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %24, i32 noundef 1) #18
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body.if.end13_crit_edge
  %25 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx15 = getelementptr ptr, ptr %26, i32 %i.036
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx15, align 4
  %28 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_dma_addr, align 4
  %arrayidx17 = getelementptr i32, ptr %29, i32 %i.036
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx17, align 4
  %inc = add nuw i32 %i.036, 1
  %31 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_ring_size, align 8
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcnet32_suspend(ptr noundef %dev, ptr nocapture noundef %flags, i32 noundef %can_sleep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %a1 = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a1, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %4 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %5)
  %cmp = icmp ult i16 %5, 9761
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call3 = tail call zeroext i16 %7(i32 noundef %3, i32 noundef 5) #18
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_csr, align 4
  %10 = or i16 %call3, 1
  tail call void %9(i32 noundef %3, i32 noundef 5, i16 noundef zeroext %10) #18
  %lock = getelementptr i8, ptr %dev, i32 2348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_sleep)
  %tobool9.not = icmp eq i32 %can_sleep, 0
  br label %while.cond

while.cond:                                       ; preds = %do.body12.while.cond_crit_edge, %if.end
  %ticks.0 = phi i32 [ 0, %if.end ], [ %inc, %do.body12.while.cond_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call7 = tail call zeroext i16 %12(i32 noundef %3, i32 noundef 5) #18
  %13 = and i16 %call7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %15) #18
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @msleep(i32 noundef 1) #18
  br label %do.body12

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #18
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then10
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17, ptr %flags, align 4
  %inc = add nuw nsw i32 %ticks.0, 1
  %exitcond = icmp eq i32 %inc, 201
  br i1 %exitcond, label %do.body23, label %do.body12.while.cond_crit_edge

do.body12.while.cond_crit_edge:                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

do.body23:                                        ; preds = %do.body12
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 8
  %and24 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %if.then26

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.138) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body23.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %do.body23.cleanup_crit_edge ], [ 1, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #18
  %pci_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %tobool.not = icmp eq ptr %1, null
  %bus_info6 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.pci_name.exit_crit_edge ]
  %call5 = tail call i32 @strlcpy(ptr noundef %bus_info6, ptr noundef %retval.0.i.i, i32 noundef 32) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info6, i32 noundef 32, ptr noundef nonnull @.str.155, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %pci_name.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcnet32_get_regs_len(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phycount = getelementptr i8, ptr %dev, i32 2665
  %0 = ptrtoint ptr %phycount to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phycount, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %mul1 = add nuw nsw i32 %mul, 272
  ret i32 %mul1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_get_regs(ptr noundef %dev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %ptr) #3 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %a1 = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a1, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #18
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %flags, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call7 = tail call zeroext i16 %6(i32 noundef %3, i32 noundef 0) #18
  %7 = and i16 %call7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = call fastcc i32 @pcnet32_suspend(ptr noundef %dev, ptr noundef nonnull %flags, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and12 = and i32 %3, 1048575
  %add13 = or i32 %and12, -18874368
  %8 = inttoptr i32 %add13 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #18, !srcloc !410
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr = getelementptr i16, ptr %ptr, i32 1
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ptr, align 2
  %add.1 = add i32 %3, 2
  %and12.1 = and i32 %add.1, 1048575
  %add13.1 = or i32 %and12.1, -18874368
  %12 = inttoptr i32 %add13.1 to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #18, !srcloc !410
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.1 = getelementptr i16, ptr %ptr, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %incdec.ptr, align 2
  %add.2 = add i32 %3, 4
  %and12.2 = and i32 %add.2, 1048575
  %add13.2 = or i32 %and12.2, -18874368
  %16 = inttoptr i32 %add13.2 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #18, !srcloc !410
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.2 = getelementptr i16, ptr %ptr, i32 3
  %19 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %incdec.ptr.1, align 2
  %add.3 = add i32 %3, 6
  %and12.3 = and i32 %add.3, 1048575
  %add13.3 = or i32 %and12.3, -18874368
  %20 = inttoptr i32 %add13.3 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #18, !srcloc !410
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.3 = getelementptr i16, ptr %ptr, i32 4
  %23 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %incdec.ptr.2, align 2
  %add.4 = add i32 %3, 8
  %and12.4 = and i32 %add.4, 1048575
  %add13.4 = or i32 %and12.4, -18874368
  %24 = inttoptr i32 %add13.4 to ptr
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %24) #18, !srcloc !410
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.4 = getelementptr i16, ptr %ptr, i32 5
  %27 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %incdec.ptr.3, align 2
  %add.5 = add i32 %3, 10
  %and12.5 = and i32 %add.5, 1048575
  %add13.5 = or i32 %and12.5, -18874368
  %28 = inttoptr i32 %add13.5 to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #18, !srcloc !410
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.5 = getelementptr i16, ptr %ptr, i32 6
  %31 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %incdec.ptr.4, align 2
  %add.6 = add i32 %3, 12
  %and12.6 = and i32 %add.6, 1048575
  %add13.6 = or i32 %and12.6, -18874368
  %32 = inttoptr i32 %add13.6 to ptr
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %32) #18, !srcloc !410
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.6 = getelementptr i16, ptr %ptr, i32 7
  %35 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %incdec.ptr.5, align 2
  %add.7 = add i32 %3, 14
  %and12.7 = and i32 %add.7, 1048575
  %add13.7 = or i32 %and12.7, -18874368
  %36 = inttoptr i32 %add13.7 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #18, !srcloc !410
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !451
  %incdec.ptr.7 = getelementptr i16, ptr %ptr, i32 8
  %39 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %incdec.ptr.6, align 2
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.end
  %i.1137 = phi i32 [ %inc, %for.body21.for.body21_crit_edge ], [ 0, %if.end ]
  %buff.1136 = phi ptr [ %incdec.ptr24, %for.body21.for.body21_crit_edge ], [ %incdec.ptr.7, %if.end ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call23 = tail call zeroext i16 %41(i32 noundef %3, i32 noundef %i.1137) #18
  %incdec.ptr24 = getelementptr i16, ptr %buff.1136, i32 1
  %42 = ptrtoint ptr %buff.1136 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %call23, ptr %buff.1136, align 2
  %inc = add nuw nsw i32 %i.1137, 1
  %exitcond.not = icmp eq i32 %inc, 90
  br i1 %exitcond.not, label %for.end26, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body21

for.end26:                                        ; preds = %for.body21
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call28 = tail call zeroext i16 %44(i32 noundef %3, i32 noundef 112) #18
  %incdec.ptr29 = getelementptr i16, ptr %buff.1136, i32 2
  %45 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call28, ptr %incdec.ptr24, align 2
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call31 = tail call zeroext i16 %47(i32 noundef %3, i32 noundef 114) #18
  %incdec.ptr32 = getelementptr i16, ptr %buff.1136, i32 3
  %48 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call31, ptr %incdec.ptr29, align 2
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 2
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.end26
  %i.2139 = phi i32 [ 0, %for.end26 ], [ %inc40, %for.body36.for.body36_crit_edge ]
  %buff.2138 = phi ptr [ %incdec.ptr32, %for.end26 ], [ %incdec.ptr38, %for.body36.for.body36_crit_edge ]
  %49 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_bcr, align 4
  %call37 = tail call zeroext i16 %50(i32 noundef %3, i32 noundef %i.2139) #18
  %incdec.ptr38 = getelementptr i16, ptr %buff.2138, i32 1
  %51 = ptrtoint ptr %buff.2138 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %call37, ptr %buff.2138, align 2
  %inc40 = add nuw nsw i32 %i.2139, 1
  %exitcond148.not = icmp eq i32 %inc40, 30
  br i1 %exitcond148.not, label %for.end41, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body36

for.end41:                                        ; preds = %for.body36
  %52 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %incdec.ptr38, align 2
  %buff.3140 = getelementptr i16, ptr %buff.2138, i32 2
  %53 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_bcr, align 4
  %call48 = tail call zeroext i16 %54(i32 noundef %3, i32 noundef 31) #18
  %55 = ptrtoint ptr %buff.3140 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %call48, ptr %buff.3140, align 2
  %buff.3 = getelementptr i16, ptr %buff.2138, i32 3
  %56 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_bcr, align 4
  %call48.1 = tail call zeroext i16 %57(i32 noundef %3, i32 noundef 32) #18
  %58 = ptrtoint ptr %buff.3 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %call48.1, ptr %buff.3, align 2
  %buff.3.1 = getelementptr i16, ptr %buff.2138, i32 4
  %59 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_bcr, align 4
  %call48.2 = tail call zeroext i16 %60(i32 noundef %3, i32 noundef 33) #18
  %61 = ptrtoint ptr %buff.3.1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %call48.2, ptr %buff.3.1, align 2
  %buff.3.2 = getelementptr i16, ptr %buff.2138, i32 5
  %62 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_bcr, align 4
  %call48.3 = tail call zeroext i16 %63(i32 noundef %3, i32 noundef 34) #18
  %64 = ptrtoint ptr %buff.3.2 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call48.3, ptr %buff.3.2, align 2
  %buff.3.3 = getelementptr i16, ptr %buff.2138, i32 6
  %65 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_bcr, align 4
  %call48.4 = tail call zeroext i16 %66(i32 noundef %3, i32 noundef 35) #18
  %67 = ptrtoint ptr %buff.3.3 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %call48.4, ptr %buff.3.3, align 2
  %mii = getelementptr i8, ptr %dev, i32 2672
  %68 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %mii, align 8
  %69 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool53.not = icmp eq i8 %69, 0
  br i1 %tobool53.not, label %for.end41.if.end80_crit_edge, label %for.cond55.preheader

for.end41.if.end80_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

for.cond55.preheader:                             ; preds = %for.end41
  %buff.3.4 = getelementptr i16, ptr %buff.2138, i32 7
  %phymask = getelementptr i8, ptr %dev, i32 2764
  br label %for.body58

for.body58:                                       ; preds = %for.inc77.for.body58_crit_edge, %for.cond55.preheader
  %j.0146 = phi i32 [ 0, %for.cond55.preheader ], [ %inc78, %for.inc77.for.body58_crit_edge ]
  %buff.4145 = phi ptr [ %buff.3.4, %for.cond55.preheader ], [ %buff.6, %for.inc77.for.body58_crit_edge ]
  %70 = ptrtoint ptr %phymask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phymask, align 4
  %shl = shl nuw i32 1, %j.0146
  %and59 = and i32 %71, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %for.body58.for.inc77_crit_edge, label %for.cond62.preheader

for.body58.for.inc77_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc77

for.cond62.preheader:                             ; preds = %for.body58
  %shl67 = shl i32 %j.0146, 5
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.cond62.preheader
  %i.4144 = phi i32 [ 0, %for.cond62.preheader ], [ %inc74, %for.body65.for.body65_crit_edge ]
  %buff.5143 = phi ptr [ %buff.4145, %for.cond62.preheader ], [ %incdec.ptr72, %for.body65.for.body65_crit_edge ]
  %72 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %a1, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_bcr, align 4
  %or = or i32 %i.4144, %shl67
  %conv68 = trunc i32 %or to i16
  tail call void %75(i32 noundef %3, i32 noundef 33, i16 noundef zeroext %conv68) #18
  %76 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %a1, align 8
  %read_bcr70 = getelementptr inbounds %struct.pcnet32_access, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_bcr70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_bcr70, align 4
  %call71 = tail call zeroext i16 %79(i32 noundef %3, i32 noundef 34) #18
  %incdec.ptr72 = getelementptr i16, ptr %buff.5143, i32 1
  %80 = ptrtoint ptr %buff.5143 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call71, ptr %buff.5143, align 2
  %inc74 = add nuw nsw i32 %i.4144, 1
  %exitcond150.not = icmp eq i32 %inc74, 32
  br i1 %exitcond150.not, label %for.body65.for.inc77_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body65

for.body65.for.inc77_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc77

for.inc77:                                        ; preds = %for.body65.for.inc77_crit_edge, %for.body58.for.inc77_crit_edge
  %buff.6 = phi ptr [ %buff.4145, %for.body58.for.inc77_crit_edge ], [ %incdec.ptr72, %for.body65.for.inc77_crit_edge ]
  %inc78 = add nuw nsw i32 %j.0146, 1
  %exitcond151.not = icmp eq i32 %inc78, 32
  br i1 %exitcond151.not, label %for.inc77.if.end80_crit_edge, label %for.inc77.for.body58_crit_edge

for.inc77.for.body58_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body58

for.inc77.if.end80_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

if.end80:                                         ; preds = %for.inc77.if.end80_crit_edge, %for.end41.if.end80_crit_edge
  br i1 %tobool.not, label %if.then83, label %if.end80.if.end84_crit_edge

if.end80.if.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  %81 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %a1, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %call.i = tail call zeroext i16 %84(i32 noundef %3, i32 noundef 5) #18
  %85 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %a1, align 8
  %write_csr.i = getelementptr inbounds %struct.pcnet32_access, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_csr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_csr.i, align 4
  %89 = and i16 %call.i, -2
  tail call void %88(i32 noundef %3, i32 noundef 5, i16 noundef zeroext %89) #18
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80.if.end84_crit_edge
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %91) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcnet32_get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pcnet32_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_nway_reset(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %call6 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %r.0 = phi i32 [ %call6, %do.body1 ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_get_link(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %call6 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #18
  br label %if.end44

if.else:                                          ; preds = %entry
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %3)
  %cmp8 = icmp eq i16 %3, 9761
  br i1 %cmp8, label %if.then10, label %if.else27

if.then10:                                        ; preds = %if.else
  %4 = and i8 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %.not = icmp eq i8 %4, 8
  br i1 %.not, label %if.then21, label %if.then10.if.end44_crit_edge

if.then10.if.end44_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr, align 32
  %a = getelementptr i8, ptr %dev, i32 2344
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_bcr, align 4
  %call22 = tail call zeroext i16 %10(i32 noundef %6, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call22)
  %cmp24 = icmp ne i16 %call22, 192
  %conv25 = zext i1 %cmp24 to i32
  br label %if.end44

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %3)
  %cmp30 = icmp ugt i16 %3, 9761
  br i1 %cmp30, label %if.then32, label %if.else27.if.end44_crit_edge

if.else27.if.end44_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #20
  %base_addr34 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %base_addr34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_addr34, align 32
  %a35 = getelementptr i8, ptr %dev, i32 2344
  %13 = ptrtoint ptr %a35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a35, align 8
  %read_bcr36 = getelementptr inbounds %struct.pcnet32_access, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read_bcr36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_bcr36, align 4
  %call37 = tail call zeroext i16 %16(i32 noundef %12, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call37)
  %cmp39 = icmp ne i16 %call37, 192
  %conv40 = zext i1 %cmp39 to i32
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.else27.if.end44_crit_edge, %if.then21, %if.then10.if.end44_crit_edge, %if.then
  %r.1 = phi i32 [ %call6, %if.then ], [ %conv40, %if.then32 ], [ %conv25, %if.then21 ], [ 1, %if.then10.if.end44_crit_edge ], [ 1, %if.else27.if.end44_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  ret i32 %r.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcnet32_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %0 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %tx_max_pending, align 4
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %1 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_ring_size, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %3 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tx_pending, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %4 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %rx_max_pending, align 4
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %5 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ring_size, align 8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %7 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %new_ring_dma_addr.i106 = alloca i32, align 4
  %new_ring_dma_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.do.body5_crit_edge, label %if.then3

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @pcnet32_netif_stop(ptr noundef %dev)
  br label %do.body5

do.body5:                                         ; preds = %if.then3, %if.end.do.body5_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %a = getelementptr i8, ptr %dev, i32 2344
  %8 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_csr, align 4
  tail call void %11(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 4) #18
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %12 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pending, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 512)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.body5
  %i.0 = phi i32 [ 2, %do.body5 ], [ %inc, %for.cond.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0)
  %cmp13 = icmp ult i32 %i.0, 10
  %shl = shl nuw nsw i32 1, %i.0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %shl)
  %cmp15.not = icmp ugt i32 %14, %shl
  %or.cond = select i1 %cmp13, i1 %cmp15.not, i1 false
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %or.cond, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tx_ring_size = getelementptr i8, ptr %dev, i32 2404
  %15 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_ring_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %16)
  %cmp20.not = icmp eq i32 %shl, %16
  br i1 %cmp20.not, label %for.end.if.end23_crit_edge, label %if.then22

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

if.then22:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ring_dma_addr.i) #18
  %17 = ptrtoint ptr %new_ring_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %new_ring_dma_addr.i, align 4, !annotation !452
  tail call fastcc void @pcnet32_purge_tx_ring(ptr noundef %dev) #18
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2320
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %mul.i = shl nuw nsw i32 %shl, 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %mul.i, ptr noundef nonnull %new_ring_dma_addr.i, i32 noundef 2592, i32 noundef 0) #18
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.then22.pcnet32_realloc_tx_ring.exit_crit_edge, label %if.end.i

if.then22.pcnet32_realloc_tx_ring.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_realloc_tx_ring.exit

if.end.i:                                         ; preds = %if.then22
  %20 = shl nuw nsw i32 %shl, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 2848) #22
  %tobool.not98.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not98.i, label %if.end.i.free_new_tx_ring.i_crit_edge, label %if.end7.i.i81.i

if.end.i.free_new_tx_ring.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_new_tx_ring.i

if.end7.i.i81.i:                                  ; preds = %if.end.i
  %call8.i.i80.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 2848) #22
  %tobool6.not.i = icmp eq ptr %call8.i.i80.i, null
  br i1 %tobool6.not.i, label %free_new_lists.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.end7.i.i81.i
  call void @__sanitizer_cov_trace_pc() #20
  %tx_skbuff.i = getelementptr i8, ptr %dev, i32 2328
  %21 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_skbuff.i, align 8
  call void @kfree(ptr noundef %22) #18
  %tx_dma_addr.i = getelementptr i8, ptr %dev, i32 2336
  %23 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_dma_addr.i, align 8
  call void @kfree(ptr noundef %24) #18
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 8
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_ring_size, align 4
  %mul11.i = shl i32 %28, 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2312
  %29 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ring.i, align 8
  %tx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2424
  %31 = ptrtoint ptr %tx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_ring_dma_addr.i, align 8
  call void @dma_free_attrs(ptr noundef %dev10.i, i32 noundef %mul11.i, ptr noundef %30, i32 noundef %32, i32 noundef 0) #18
  %33 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl, ptr %tx_ring_size, align 4
  %sub.i = add nsw i32 %shl, -1
  %tx_mod_mask.i = getelementptr i8, ptr %dev, i32 2412
  %34 = ptrtoint ptr %tx_mod_mask.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %tx_mod_mask.i, align 4
  %size.tr.i = trunc i32 %i.0 to i16
  %conv.i = shl nuw i16 %size.tr.i, 12
  %tx_len_bits.i = getelementptr i8, ptr %dev, i32 2418
  %35 = ptrtoint ptr %tx_len_bits.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %tx_len_bits.i, align 2
  %36 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %tx_ring.i, align 8
  %37 = ptrtoint ptr %new_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %new_ring_dma_addr.i, align 4
  %39 = ptrtoint ptr %tx_ring_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_ring_dma_addr.i, align 8
  %40 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i.i.i, ptr %tx_dma_addr.i, align 8
  %41 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i.i80.i, ptr %tx_skbuff.i, align 8
  br label %pcnet32_realloc_tx_ring.exit

free_new_lists.i:                                 ; preds = %if.end7.i.i81.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #18
  br label %free_new_tx_ring.i

free_new_tx_ring.i:                               ; preds = %free_new_lists.i, %if.end.i.free_new_tx_ring.i_crit_edge
  %42 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev.i, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %new_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %new_ring_dma_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev20.i, i32 noundef %mul.i, ptr noundef nonnull %call.i.i, i32 noundef %45, i32 noundef 0) #18
  br label %pcnet32_realloc_tx_ring.exit

pcnet32_realloc_tx_ring.exit:                     ; preds = %free_new_tx_ring.i, %if.end8.i, %if.then22.pcnet32_realloc_tx_ring.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ring_dma_addr.i) #18
  br label %if.end23

if.end23:                                         ; preds = %pcnet32_realloc_tx_ring.exit, %for.end.if.end23_crit_edge
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %46 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_pending, align 4
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 512)
  br label %for.cond31

for.cond31:                                       ; preds = %for.cond31.for.cond31_crit_edge, %if.end23
  %i.1 = phi i32 [ 2, %if.end23 ], [ %inc41, %for.cond31.for.cond31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.1)
  %cmp32 = icmp ult i32 %i.1, 10
  %shl35 = shl nuw nsw i32 1, %i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shl35)
  %cmp36.not = icmp ugt i32 %48, %shl35
  %or.cond105 = select i1 %cmp32, i1 %cmp36.not, i1 false
  %inc41 = add nuw nsw i32 %i.1, 1
  br i1 %or.cond105, label %for.cond31.for.cond31_crit_edge, label %for.end42

for.cond31.for.cond31_crit_edge:                  ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond31

for.end42:                                        ; preds = %for.cond31
  %rx_ring_size = getelementptr i8, ptr %dev, i32 2400
  %49 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl35, i32 %50)
  %cmp44.not = icmp eq i32 %shl35, %50
  br i1 %cmp44.not, label %for.end42.if.end47_crit_edge, label %if.then46

for.end42.if.end47_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then46:                                        ; preds = %for.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ring_dma_addr.i106) #18
  %51 = ptrtoint ptr %new_ring_dma_addr.i106 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %new_ring_dma_addr.i106, align 4, !annotation !452
  %pci_dev.i108 = getelementptr i8, ptr %dev, i32 2320
  %52 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_dev.i108, align 8
  %dev1.i109 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %mul.i110 = shl nuw nsw i32 %shl35, 4
  %call.i.i111 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i109, i32 noundef %mul.i110, ptr noundef nonnull %new_ring_dma_addr.i106, i32 noundef 2592, i32 noundef 0) #18
  %cmp.i112 = icmp eq ptr %call.i.i111, null
  br i1 %cmp.i112, label %if.then46.pcnet32_realloc_rx_ring.exit_crit_edge, label %if.end.i113

if.then46.pcnet32_realloc_rx_ring.exit_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcnet32_realloc_rx_ring.exit

if.end.i113:                                      ; preds = %if.then46
  %54 = shl nuw nsw i32 %shl35, 2
  %call8.i.i.i146 = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 2848) #22
  %tobool.not303.i = icmp eq ptr %call8.i.i.i146, null
  br i1 %tobool.not303.i, label %if.end.i113.free_new_rx_ring.i_crit_edge, label %if.end7.i.i253.i

if.end.i113.free_new_rx_ring.i_crit_edge:         ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_new_rx_ring.i

if.end7.i.i253.i:                                 ; preds = %if.end.i113
  %call8.i.i252.i = call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 2848) #22
  %tobool6.not.i148 = icmp eq ptr %call8.i.i252.i, null
  br i1 %tobool6.not.i148, label %if.end7.i.i253.i.free_new_lists.i153_crit_edge, label %if.end8.i149

if.end7.i.i253.i.free_new_lists.i153_crit_edge:   ; preds = %if.end7.i.i253.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_new_lists.i153

if.end8.i149:                                     ; preds = %if.end7.i.i253.i
  %55 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_ring_size, align 8
  %57 = call i32 @llvm.umin.i32(i32 %shl35, i32 %56) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp10280.not.i = icmp eq i32 %57, 0
  br i1 %cmp10280.not.i, label %if.end8.i149.for.body18.i.preheader_crit_edge, label %for.body.lr.ph.i

if.end8.i149.for.body18.i.preheader_crit_edge:    ; preds = %if.end8.i149
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body18.i.preheader

for.body18.i.preheader:                           ; preds = %for.cond16.preheader.i.for.body18.i.preheader_crit_edge, %if.end8.i149.for.body18.i.preheader_crit_edge
  br label %for.body18.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i149
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %rx_dma_addr.i = getelementptr i8, ptr %dev, i32 2340
  %rx_skbuff.i = getelementptr i8, ptr %dev, i32 2332
  br label %for.body.i

for.cond16.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl35, i32 %56)
  %cmp17283.i = icmp ugt i32 %shl35, %56
  br i1 %cmp17283.i, label %for.cond16.preheader.i.for.body18.i.preheader_crit_edge, label %for.cond16.preheader.i.for.cond56.preheader.i_crit_edge

for.cond16.preheader.i.for.cond56.preheader.i_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond56.preheader.i

for.cond16.preheader.i.for.body18.i.preheader_crit_edge: ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body18.i.preheader

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %new.0281.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pcnet32_rx_head, ptr %call.i.i111, i32 %new.0281.i
  %58 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx11.i = getelementptr %struct.pcnet32_rx_head, ptr %59, i32 %new.0281.i
  %60 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx11.i, i32 16)
  %61 = ptrtoint ptr %rx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_dma_addr.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %62, i32 %new.0281.i
  %63 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %call8.i.i.i146, i32 %new.0281.i
  %65 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx13.i, align 4
  %66 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_skbuff.i, align 4
  %arrayidx14.i = getelementptr ptr, ptr %67, i32 %new.0281.i
  %68 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr ptr, ptr %call8.i.i252.i, i32 %new.0281.i
  %70 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %arrayidx15.i, align 4
  %inc.i = add nuw nsw i32 %new.0281.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %57
  br i1 %exitcond.not.i, label %for.cond16.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond56.preheader.i:                           ; preds = %for.inc53.i.for.cond56.preheader.i_crit_edge, %for.cond16.preheader.i.for.cond56.preheader.i_crit_edge
  %new.1.lcssa.i = phi i32 [ %57, %for.cond16.preheader.i.for.cond56.preheader.i_crit_edge ], [ %shl35, %for.inc53.i.for.cond56.preheader.i_crit_edge ]
  %71 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %new.1.lcssa.i, i32 %72)
  %cmp58286.i = icmp ult i32 %new.1.lcssa.i, %72
  br i1 %cmp58286.i, label %for.body59.lr.ph.i, label %for.cond56.preheader.i.for.end81.i_crit_edge

for.cond56.preheader.i.for.end81.i_crit_edge:     ; preds = %for.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end81.i

for.body59.lr.ph.i:                               ; preds = %for.cond56.preheader.i
  %rx_skbuff60.i = getelementptr i8, ptr %dev, i32 2332
  %rx_dma_addr66.i = getelementptr i8, ptr %dev, i32 2340
  br label %for.body59.i

for.body18.i:                                     ; preds = %for.inc53.i.for.body18.i_crit_edge, %for.body18.i.preheader
  %new.1284.i = phi i32 [ %inc54.i, %for.inc53.i.for.body18.i_crit_edge ], [ %57, %for.body18.i.preheader ]
  %call.i256.i = call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1544, i32 noundef 2592) #18
  %arrayidx21.i = getelementptr ptr, ptr %call8.i.i252.i, i32 %new.1284.i
  %73 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i256.i, ptr %arrayidx21.i, align 4
  %tobool23.not.i = icmp eq ptr %call.i256.i, null
  br i1 %tobool23.not.i, label %do.body.i, label %if.end28.i

do.body.i:                                        ; preds = %for.body18.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2760
  %74 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %do.body.i.cleanup.i_crit_edge, label %if.then26.i

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.119, ptr noundef nonnull @__func__.pcnet32_realloc_rx_ring) #21
  br label %cleanup.i

if.end28.i:                                       ; preds = %for.body18.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i256.i, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i256.i, i32 0, i32 16
  %78 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %79, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %80 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev.i108, align 8
  %dev30.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %call.i257.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i) #18
  br i1 %call.i257.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end28.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !426

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %dev30.i) #18
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44, i32 3
  %82 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i258.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i.i

if.end.i.i258.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %84 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev30.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i258.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i259.i = phi ptr [ %85, %if.end.i.i258.i ], [ %83, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i259.i) #18
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @debug_dma_map_single(ptr noundef %dev30.i, ptr noundef %add.ptr.i.i, i32 noundef 1542) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.i.i = add i32 %87, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i260.i = getelementptr %struct.page, ptr %86, i32 %shr.i.i
  %and.i.i = and i32 %87, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev30.i, ptr noundef %add.ptr.i260.i, i32 noundef %and.i.i, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %arrayidx32.i = getelementptr i32, ptr %call8.i.i.i146, i32 %new.1284.i
  %88 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i, ptr %arrayidx32.i, align 4
  %89 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pci_dev.i108, align 8
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev34.i, i32 noundef %retval.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %do.body39.i, label %for.inc53.i

do.body39.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %arrayidx21.i.le = getelementptr ptr, ptr %call8.i.i252.i, i32 %new.1284.i
  %msg_enable40.i = getelementptr i8, ptr %dev, i32 2760
  %91 = ptrtoint ptr %msg_enable40.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable40.i, align 8
  %and41.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %do.body39.i.do.end46.i_crit_edge, label %if.then43.i

do.body39.i.do.end46.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end46.i

if.then43.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.157, ptr noundef nonnull @__func__.pcnet32_realloc_rx_ring) #21
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then43.i, %do.body39.i.do.end46.i_crit_edge
  %93 = ptrtoint ptr %arrayidx21.i.le to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx21.i.le, align 4
  call void @consume_skb(ptr noundef %94) #18
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end46.i, %if.then26.i, %do.body.i.cleanup.i_crit_edge
  %dec289.i = add i32 %new.1284.i, -1
  %95 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_ring_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %dec289.i, i32 %96)
  %cmp97.not290.i = icmp ult i32 %dec289.i, %96
  br i1 %cmp97.not290.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

for.inc53.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %97 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx32.i, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98) #18
  %arrayidx50.i = getelementptr %struct.pcnet32_rx_head, ptr %call.i.i111, i32 %new.1284.i
  %100 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx50.i, align 4
  %buf_length.i = getelementptr %struct.pcnet32_rx_head, ptr %call.i.i111, i32 %new.1284.i, i32 1
  %101 = ptrtoint ptr %buf_length.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1287, ptr %buf_length.i, align 4
  %status.i = getelementptr %struct.pcnet32_rx_head, ptr %call.i.i111, i32 %new.1284.i, i32 2
  %102 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 128, ptr %status.i, align 2
  %inc54.i = add i32 %new.1284.i, 1
  %exitcond295.not.i = icmp eq i32 %inc54.i, %shl35
  br i1 %exitcond295.not.i, label %for.inc53.i.for.cond56.preheader.i_crit_edge, label %for.inc53.i.for.body18.i_crit_edge

for.inc53.i.for.body18.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body18.i

for.inc53.i.for.cond56.preheader.i_crit_edge:     ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond56.preheader.i

for.body59.i:                                     ; preds = %for.inc79.i.for.body59.i_crit_edge, %for.body59.lr.ph.i
  %new.2287.i = phi i32 [ %new.1.lcssa.i, %for.body59.lr.ph.i ], [ %inc80.i, %for.inc79.i.for.body59.i_crit_edge ]
  %103 = ptrtoint ptr %rx_skbuff60.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_skbuff60.i, align 4
  %arrayidx61.i = getelementptr ptr, ptr %104, i32 %new.2287.i
  %105 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx61.i, align 4
  %tobool62.not.i = icmp eq ptr %106, null
  br i1 %tobool62.not.i, label %for.body59.i.for.inc79.i_crit_edge, label %if.then63.i

for.body59.i.for.inc79.i_crit_edge:               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc79.i

if.then63.i:                                      ; preds = %for.body59.i
  %107 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pci_dev.i108, align 8
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %rx_dma_addr66.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_dma_addr66.i, align 4
  %arrayidx67.i = getelementptr i32, ptr %110, i32 %new.2287.i
  %111 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx67.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev65.i, i32 noundef %112) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.i261.not.i = icmp eq i32 %112, -1
  br i1 %cmp.i261.not.i, label %if.then63.i.if.end75.i_crit_edge, label %if.then70.i

if.then63.i.if.end75.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75.i

if.then70.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #20
  %113 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pci_dev.i108, align 8
  %dev72.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %rx_dma_addr66.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx_dma_addr66.i, align 4
  %arrayidx74.i = getelementptr i32, ptr %116, i32 %new.2287.i
  %117 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx74.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev72.i, i32 noundef %118, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then70.i, %if.then63.i.if.end75.i_crit_edge
  %119 = ptrtoint ptr %rx_skbuff60.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_skbuff60.i, align 4
  %arrayidx77.i = getelementptr ptr, ptr %120, i32 %new.2287.i
  %121 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx77.i, align 4
  call void @consume_skb(ptr noundef %122) #18
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %if.end75.i, %for.body59.i.for.inc79.i_crit_edge
  %inc80.i = add nuw i32 %new.2287.i, 1
  %123 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_ring_size, align 8
  %cmp58.i = icmp ult i32 %inc80.i, %124
  br i1 %cmp58.i, label %for.inc79.i.for.body59.i_crit_edge, label %for.inc79.i.for.end81.i_crit_edge

for.inc79.i.for.end81.i_crit_edge:                ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end81.i

for.inc79.i.for.body59.i_crit_edge:               ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body59.i

for.end81.i:                                      ; preds = %for.inc79.i.for.end81.i_crit_edge, %for.cond56.preheader.i.for.end81.i_crit_edge
  %rx_skbuff82.i = getelementptr i8, ptr %dev, i32 2332
  %125 = ptrtoint ptr %rx_skbuff82.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rx_skbuff82.i, align 4
  call void @kfree(ptr noundef %126) #18
  %rx_dma_addr83.i = getelementptr i8, ptr %dev, i32 2340
  %127 = ptrtoint ptr %rx_dma_addr83.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_dma_addr83.i, align 4
  call void @kfree(ptr noundef %128) #18
  %129 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci_dev.i108, align 8
  %dev85.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_ring_size, align 8
  %mul87.i = shl i32 %132, 4
  %rx_ring88.i = getelementptr i8, ptr %dev, i32 2308
  %133 = ptrtoint ptr %rx_ring88.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx_ring88.i, align 4
  %rx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2420
  %135 = ptrtoint ptr %rx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_ring_dma_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev85.i, i32 noundef %mul87.i, ptr noundef %134, i32 noundef %136, i32 noundef 0) #18
  %137 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %shl35, ptr %rx_ring_size, align 8
  %sub.i150 = add i32 %shl35, -1
  %rx_mod_mask.i = getelementptr i8, ptr %dev, i32 2408
  %138 = ptrtoint ptr %rx_mod_mask.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.i150, ptr %rx_mod_mask.i, align 8
  %size.tr.i151 = trunc i32 %i.1 to i16
  %conv.i152 = shl i16 %size.tr.i151, 4
  %rx_len_bits.i = getelementptr i8, ptr %dev, i32 2416
  %139 = ptrtoint ptr %rx_len_bits.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i152, ptr %rx_len_bits.i, align 8
  %140 = ptrtoint ptr %rx_ring88.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i.i111, ptr %rx_ring88.i, align 4
  %141 = ptrtoint ptr %new_ring_dma_addr.i106 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %new_ring_dma_addr.i106, align 4
  %143 = ptrtoint ptr %rx_ring_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %rx_ring_dma_addr.i, align 4
  %144 = ptrtoint ptr %rx_dma_addr83.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call8.i.i.i146, ptr %rx_dma_addr83.i, align 4
  %145 = ptrtoint ptr %rx_skbuff82.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call8.i.i252.i, ptr %rx_skbuff82.i, align 4
  br label %pcnet32_realloc_rx_ring.exit

while.body.i:                                     ; preds = %if.end113.i.while.body.i_crit_edge, %cleanup.i.while.body.i_crit_edge
  %dec291.i = phi i32 [ %dec.i, %if.end113.i.while.body.i_crit_edge ], [ %dec289.i, %cleanup.i.while.body.i_crit_edge ]
  %arrayidx99.i = getelementptr ptr, ptr %call8.i.i252.i, i32 %dec291.i
  %146 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx99.i, align 4
  %tobool100.not.i = icmp eq ptr %147, null
  br i1 %tobool100.not.i, label %while.body.i.if.end113.i_crit_edge, label %if.then101.i

while.body.i.if.end113.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end113.i

if.then101.i:                                     ; preds = %while.body.i
  %148 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pci_dev.i108, align 8
  %dev103.i = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %arrayidx104.i = getelementptr i32, ptr %call8.i.i.i146, i32 %dec291.i
  %150 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx104.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %dev103.i, i32 noundef %151) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp.i263.not.i = icmp eq i32 %151, -1
  br i1 %cmp.i263.not.i, label %if.then101.i.if.end111.i_crit_edge, label %if.then107.i

if.then101.i.if.end111.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end111.i

if.then107.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #20
  %152 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci_dev.i108, align 8
  %dev109.i = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %154 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx104.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev109.i, i32 noundef %155, i32 noundef 1542, i32 noundef 2, i32 noundef 0) #18
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then107.i, %if.then101.i.if.end111.i_crit_edge
  %156 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx99.i, align 4
  call void @consume_skb(ptr noundef %157) #18
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end111.i, %while.body.i.if.end113.i_crit_edge
  %dec.i = add i32 %dec291.i, -1
  %158 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_ring_size, align 8
  %cmp97.not.i = icmp ult i32 %dec.i, %159
  br i1 %cmp97.not.i, label %if.end113.i.while.end.i_crit_edge, label %if.end113.i.while.body.i_crit_edge

if.end113.i.while.body.i_crit_edge:               ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

if.end113.i.while.end.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.end.i:                                      ; preds = %if.end113.i.while.end.i_crit_edge, %cleanup.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i252.i) #18
  br label %free_new_lists.i153

free_new_lists.i153:                              ; preds = %while.end.i, %if.end7.i.i253.i.free_new_lists.i153_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i146) #18
  br label %free_new_rx_ring.i

free_new_rx_ring.i:                               ; preds = %free_new_lists.i153, %if.end.i113.free_new_rx_ring.i_crit_edge
  %160 = ptrtoint ptr %pci_dev.i108 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pci_dev.i108, align 8
  %dev115.i = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %162 = ptrtoint ptr %new_ring_dma_addr.i106 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %new_ring_dma_addr.i106, align 4
  call void @dma_free_attrs(ptr noundef %dev115.i, i32 noundef %mul.i110, ptr noundef nonnull %call.i.i111, i32 noundef %163, i32 noundef 0) #18
  br label %pcnet32_realloc_rx_ring.exit

pcnet32_realloc_rx_ring.exit:                     ; preds = %free_new_rx_ring.i, %for.end81.i, %if.then46.pcnet32_realloc_rx_ring.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ring_dma_addr.i106) #18
  br label %if.end47

if.end47:                                         ; preds = %pcnet32_realloc_rx_ring.exit, %for.end42.if.end47_crit_edge
  %164 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_ring_size, align 8
  %div103 = lshr i32 %165, 1
  %weight = getelementptr i8, ptr %dev, i32 2452
  %166 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %div103, ptr %weight, align 4
  %167 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %state.i, align 4
  %and1.i.i155 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i155)
  %tobool.i156.not = icmp eq i32 %and1.i.i155, 0
  br i1 %tobool.i156.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %169 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %base_addr, align 32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %171 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %172) #18
  %173 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %a, align 8
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %call1.i = call zeroext i16 %176(i32 noundef %170, i32 noundef 3) #18
  %177 = and i16 %call1.i, 255
  %178 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %a, align 8
  %write_csr.i = getelementptr inbounds %struct.pcnet32_access, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %write_csr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write_csr.i, align 4
  call void %181(i32 noundef %170, i32 noundef 3, i16 noundef zeroext %177) #18
  %napi.i = getelementptr i8, ptr %dev, i32 2440
  call void @napi_enable(ptr noundef %napi.i) #18
  call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 66)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #18
  %msg_enable = getelementptr i8, ptr %dev, i32 2760
  %182 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_enable, align 8
  %and = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %if.then55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  %184 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rx_ring_size, align 8
  %186 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tx_ring_size, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.156, i32 noundef %185, i32 noundef %187) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet32_ethtool_test(ptr noundef %dev, ptr nocapture noundef %test, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %do.body16

if.then:                                          ; preds = %entry
  %a1.i = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a1.i, align 8
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr.i, align 32
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.do.body3.i_crit_edge, label %if.then.i

if.then.do.body3.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body3.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @pcnet32_netif_stop(ptr noundef %dev) #18
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.then.do.body3.i_crit_edge
  %lock.i = getelementptr i8, ptr %dev, i32 2348
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  %8 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %a1.i, align 8
  %write_csr.i = getelementptr inbounds %struct.pcnet32_access, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_csr.i, align 4
  tail call void %11(i32 noundef %5, i32 noundef 0, i16 noundef zeroext 4) #18
  %rx_ring_size.i = getelementptr i8, ptr %dev, i32 2400
  %12 = ptrtoint ptr %rx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_size.i, align 8
  %tx_ring_size.i = getelementptr i8, ptr %dev, i32 2404
  %14 = ptrtoint ptr %tx_ring_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_ring_size.i, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15) #18
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 4) #18
  %18 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a1.i, align 8
  %reset.i = getelementptr inbounds %struct.pcnet32_access, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset.i, align 4
  tail call void %21(i32 noundef %5) #18
  %22 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a1.i, align 8
  %write_csr21.i = getelementptr inbounds %struct.pcnet32_access, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_csr21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_csr21.i, align 4
  tail call void %25(i32 noundef %5, i32 noundef 4, i16 noundef zeroext 2325) #18
  %26 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %a1.i, align 8
  %write_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_bcr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_bcr.i, align 4
  tail call void %29(i32 noundef %5, i32 noundef 20, i16 noundef zeroext 2) #18
  tail call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 0) #18
  %30 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a1.i, align 8
  %write_csr24.i = getelementptr inbounds %struct.pcnet32_access, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_csr24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_csr24.i, align 4
  tail call void %33(i32 noundef %5, i32 noundef 0, i16 noundef zeroext 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp25428.i = icmp sgt i32 %16, 0
  br i1 %cmp25428.i, label %for.body.lr.ph.i, label %do.body3.i.for.end102.i_crit_edge

do.body3.i.for.end102.i_crit_edge:                ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end102.i

for.body.lr.ph.i:                                 ; preds = %do.body3.i
  %tx_skbuff.i = getelementptr i8, ptr %dev, i32 2328
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2312
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2320
  %tx_dma_addr.i = getelementptr i8, ptr %dev, i32 2336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %17, i32 1) #18
  br label %for.body.i

for.body.i:                                       ; preds = %if.end89.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %x.0429.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc101.i, %if.end89.i.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 75, i32 noundef 2592) #18
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.body29.i, label %if.end35.i

do.body29.i:                                      ; preds = %for.body.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2760
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %do.body29.i.clean_up.i_crit_edge, label %if.then31.i

do.body29.i.clean_up.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

if.then31.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.161, i32 noundef 1012) #21
  br label %clean_up.i

if.end35.i:                                       ; preds = %for.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %call36.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 75) #18
  %38 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_skbuff.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %39, i32 %x.0429.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %43 = trunc i32 %42 to i16
  %conv37.i = sub i16 0, %43
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv37.i) #18
  %45 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring.i, align 8
  %length.i = getelementptr %struct.pcnet32_tx_head, ptr %46, i32 %x.0429.i, i32 1
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %44, ptr %length.i, align 4
  %48 = load ptr, ptr %tx_ring.i, align 8
  %misc.i = getelementptr %struct.pcnet32_tx_head, ptr %48, i32 %x.0429.i, i32 3
  %49 = ptrtoint ptr %misc.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %misc.i, align 4
  %50 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_addr.i, align 64
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %incdec.ptr.i = getelementptr i8, ptr %37, i32 1
  %54 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %37, align 1
  %55 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx45.1.i = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx45.1.i, align 1
  %incdec.ptr.1.i = getelementptr i8, ptr %37, i32 2
  %58 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %incdec.ptr.i, align 1
  %59 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx45.2.i = getelementptr i8, ptr %59, i32 2
  %60 = ptrtoint ptr %arrayidx45.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx45.2.i, align 1
  %incdec.ptr.2.i = getelementptr i8, ptr %37, i32 3
  %62 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %incdec.ptr.1.i, align 1
  %63 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx45.3.i = getelementptr i8, ptr %63, i32 3
  %64 = ptrtoint ptr %arrayidx45.3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx45.3.i, align 1
  %incdec.ptr.3.i = getelementptr i8, ptr %37, i32 4
  %66 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %incdec.ptr.2.i, align 1
  %67 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx45.4.i = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %arrayidx45.4.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx45.4.i, align 1
  %incdec.ptr.4.i = getelementptr i8, ptr %37, i32 5
  %70 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %incdec.ptr.3.i, align 1
  %71 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx45.5.i = getelementptr i8, ptr %71, i32 5
  %72 = ptrtoint ptr %arrayidx45.5.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx45.5.i, align 1
  %incdec.ptr.5.i = getelementptr i8, ptr %37, i32 6
  %74 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %incdec.ptr.4.i, align 1
  %75 = load ptr, ptr %dev_addr.i, align 64
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 1
  %incdec.ptr52.i = getelementptr i8, ptr %37, i32 7
  %78 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %incdec.ptr.5.i, align 1
  %79 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx51.1.i = getelementptr i8, ptr %79, i32 1
  %80 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx51.1.i, align 1
  %incdec.ptr52.1.i = getelementptr i8, ptr %37, i32 8
  %82 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %incdec.ptr52.i, align 1
  %83 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx51.2.i = getelementptr i8, ptr %83, i32 2
  %84 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx51.2.i, align 1
  %incdec.ptr52.2.i = getelementptr i8, ptr %37, i32 9
  %86 = ptrtoint ptr %incdec.ptr52.1.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %incdec.ptr52.1.i, align 1
  %87 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx51.3.i = getelementptr i8, ptr %87, i32 3
  %88 = ptrtoint ptr %arrayidx51.3.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx51.3.i, align 1
  %incdec.ptr52.3.i = getelementptr i8, ptr %37, i32 10
  %90 = ptrtoint ptr %incdec.ptr52.2.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %incdec.ptr52.2.i, align 1
  %91 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx51.4.i = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %arrayidx51.4.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx51.4.i, align 1
  %incdec.ptr52.4.i = getelementptr i8, ptr %37, i32 11
  %94 = ptrtoint ptr %incdec.ptr52.3.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %incdec.ptr52.3.i, align 1
  %95 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx51.5.i = getelementptr i8, ptr %95, i32 5
  %96 = ptrtoint ptr %arrayidx51.5.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx51.5.i, align 1
  %incdec.ptr52.5.i = getelementptr i8, ptr %37, i32 12
  %98 = ptrtoint ptr %incdec.ptr52.4.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %incdec.ptr52.4.i, align 1
  %incdec.ptr56.i = getelementptr i8, ptr %37, i32 13
  %99 = ptrtoint ptr %incdec.ptr52.5.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 8, ptr %incdec.ptr52.5.i, align 1
  %incdec.ptr57.i = getelementptr i8, ptr %37, i32 14
  %100 = ptrtoint ptr %incdec.ptr56.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 6, ptr %incdec.ptr56.i, align 1
  %conv58.i = trunc i32 %x.0429.i to i8
  %incdec.ptr59.i = getelementptr i8, ptr %37, i32 15
  %101 = ptrtoint ptr %incdec.ptr57.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv58.i, ptr %incdec.ptr57.i, align 1
  %incdec.ptr65.i = getelementptr i8, ptr %37, i32 16
  %102 = ptrtoint ptr %incdec.ptr59.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %incdec.ptr59.i, align 1
  %incdec.ptr65.1.i = getelementptr i8, ptr %37, i32 17
  %103 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %incdec.ptr65.i, align 1
  %incdec.ptr65.2.i = getelementptr i8, ptr %37, i32 18
  %104 = ptrtoint ptr %incdec.ptr65.1.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 2, ptr %incdec.ptr65.1.i, align 1
  %incdec.ptr65.3.i = getelementptr i8, ptr %37, i32 19
  %105 = ptrtoint ptr %incdec.ptr65.2.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 3, ptr %incdec.ptr65.2.i, align 1
  %incdec.ptr65.4.i = getelementptr i8, ptr %37, i32 20
  %106 = ptrtoint ptr %incdec.ptr65.3.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 4, ptr %incdec.ptr65.3.i, align 1
  %incdec.ptr65.5.i = getelementptr i8, ptr %37, i32 21
  %107 = ptrtoint ptr %incdec.ptr65.4.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 5, ptr %incdec.ptr65.4.i, align 1
  %incdec.ptr65.6.i = getelementptr i8, ptr %37, i32 22
  %108 = ptrtoint ptr %incdec.ptr65.5.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 6, ptr %incdec.ptr65.5.i, align 1
  %incdec.ptr65.7.i = getelementptr i8, ptr %37, i32 23
  %109 = ptrtoint ptr %incdec.ptr65.6.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 7, ptr %incdec.ptr65.6.i, align 1
  %incdec.ptr65.8.i = getelementptr i8, ptr %37, i32 24
  %110 = ptrtoint ptr %incdec.ptr65.7.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 8, ptr %incdec.ptr65.7.i, align 1
  %incdec.ptr65.9.i = getelementptr i8, ptr %37, i32 25
  %111 = ptrtoint ptr %incdec.ptr65.8.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 9, ptr %incdec.ptr65.8.i, align 1
  %incdec.ptr65.10.i = getelementptr i8, ptr %37, i32 26
  %112 = ptrtoint ptr %incdec.ptr65.9.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 10, ptr %incdec.ptr65.9.i, align 1
  %incdec.ptr65.11.i = getelementptr i8, ptr %37, i32 27
  %113 = ptrtoint ptr %incdec.ptr65.10.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 11, ptr %incdec.ptr65.10.i, align 1
  %incdec.ptr65.12.i = getelementptr i8, ptr %37, i32 28
  %114 = ptrtoint ptr %incdec.ptr65.11.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 12, ptr %incdec.ptr65.11.i, align 1
  %incdec.ptr65.13.i = getelementptr i8, ptr %37, i32 29
  %115 = ptrtoint ptr %incdec.ptr65.12.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 13, ptr %incdec.ptr65.12.i, align 1
  %incdec.ptr65.14.i = getelementptr i8, ptr %37, i32 30
  %116 = ptrtoint ptr %incdec.ptr65.13.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 14, ptr %incdec.ptr65.13.i, align 1
  %incdec.ptr65.15.i = getelementptr i8, ptr %37, i32 31
  %117 = ptrtoint ptr %incdec.ptr65.14.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 15, ptr %incdec.ptr65.14.i, align 1
  %incdec.ptr65.16.i = getelementptr i8, ptr %37, i32 32
  %118 = ptrtoint ptr %incdec.ptr65.15.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 16, ptr %incdec.ptr65.15.i, align 1
  %incdec.ptr65.17.i = getelementptr i8, ptr %37, i32 33
  %119 = ptrtoint ptr %incdec.ptr65.16.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 17, ptr %incdec.ptr65.16.i, align 1
  %incdec.ptr65.18.i = getelementptr i8, ptr %37, i32 34
  %120 = ptrtoint ptr %incdec.ptr65.17.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 18, ptr %incdec.ptr65.17.i, align 1
  %incdec.ptr65.19.i = getelementptr i8, ptr %37, i32 35
  %121 = ptrtoint ptr %incdec.ptr65.18.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 19, ptr %incdec.ptr65.18.i, align 1
  %incdec.ptr65.20.i = getelementptr i8, ptr %37, i32 36
  %122 = ptrtoint ptr %incdec.ptr65.19.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 20, ptr %incdec.ptr65.19.i, align 1
  %incdec.ptr65.21.i = getelementptr i8, ptr %37, i32 37
  %123 = ptrtoint ptr %incdec.ptr65.20.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 21, ptr %incdec.ptr65.20.i, align 1
  %incdec.ptr65.22.i = getelementptr i8, ptr %37, i32 38
  %124 = ptrtoint ptr %incdec.ptr65.21.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 22, ptr %incdec.ptr65.21.i, align 1
  %incdec.ptr65.23.i = getelementptr i8, ptr %37, i32 39
  %125 = ptrtoint ptr %incdec.ptr65.22.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 23, ptr %incdec.ptr65.22.i, align 1
  %incdec.ptr65.24.i = getelementptr i8, ptr %37, i32 40
  %126 = ptrtoint ptr %incdec.ptr65.23.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 24, ptr %incdec.ptr65.23.i, align 1
  %incdec.ptr65.25.i = getelementptr i8, ptr %37, i32 41
  %127 = ptrtoint ptr %incdec.ptr65.24.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 25, ptr %incdec.ptr65.24.i, align 1
  %incdec.ptr65.26.i = getelementptr i8, ptr %37, i32 42
  %128 = ptrtoint ptr %incdec.ptr65.25.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 26, ptr %incdec.ptr65.25.i, align 1
  %incdec.ptr65.27.i = getelementptr i8, ptr %37, i32 43
  %129 = ptrtoint ptr %incdec.ptr65.26.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 27, ptr %incdec.ptr65.26.i, align 1
  %incdec.ptr65.28.i = getelementptr i8, ptr %37, i32 44
  %130 = ptrtoint ptr %incdec.ptr65.27.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 28, ptr %incdec.ptr65.27.i, align 1
  %incdec.ptr65.29.i = getelementptr i8, ptr %37, i32 45
  %131 = ptrtoint ptr %incdec.ptr65.28.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 29, ptr %incdec.ptr65.28.i, align 1
  %incdec.ptr65.30.i = getelementptr i8, ptr %37, i32 46
  %132 = ptrtoint ptr %incdec.ptr65.29.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 30, ptr %incdec.ptr65.29.i, align 1
  %incdec.ptr65.31.i = getelementptr i8, ptr %37, i32 47
  %133 = ptrtoint ptr %incdec.ptr65.30.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 31, ptr %incdec.ptr65.30.i, align 1
  %incdec.ptr65.32.i = getelementptr i8, ptr %37, i32 48
  %134 = ptrtoint ptr %incdec.ptr65.31.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 32, ptr %incdec.ptr65.31.i, align 1
  %incdec.ptr65.33.i = getelementptr i8, ptr %37, i32 49
  %135 = ptrtoint ptr %incdec.ptr65.32.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 33, ptr %incdec.ptr65.32.i, align 1
  %incdec.ptr65.34.i = getelementptr i8, ptr %37, i32 50
  %136 = ptrtoint ptr %incdec.ptr65.33.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 34, ptr %incdec.ptr65.33.i, align 1
  %incdec.ptr65.35.i = getelementptr i8, ptr %37, i32 51
  %137 = ptrtoint ptr %incdec.ptr65.34.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 35, ptr %incdec.ptr65.34.i, align 1
  %incdec.ptr65.36.i = getelementptr i8, ptr %37, i32 52
  %138 = ptrtoint ptr %incdec.ptr65.35.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 36, ptr %incdec.ptr65.35.i, align 1
  %incdec.ptr65.37.i = getelementptr i8, ptr %37, i32 53
  %139 = ptrtoint ptr %incdec.ptr65.36.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 37, ptr %incdec.ptr65.36.i, align 1
  %incdec.ptr65.38.i = getelementptr i8, ptr %37, i32 54
  %140 = ptrtoint ptr %incdec.ptr65.37.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 38, ptr %incdec.ptr65.37.i, align 1
  %incdec.ptr65.39.i = getelementptr i8, ptr %37, i32 55
  %141 = ptrtoint ptr %incdec.ptr65.38.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 39, ptr %incdec.ptr65.38.i, align 1
  %incdec.ptr65.40.i = getelementptr i8, ptr %37, i32 56
  %142 = ptrtoint ptr %incdec.ptr65.39.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 40, ptr %incdec.ptr65.39.i, align 1
  %incdec.ptr65.41.i = getelementptr i8, ptr %37, i32 57
  %143 = ptrtoint ptr %incdec.ptr65.40.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 41, ptr %incdec.ptr65.40.i, align 1
  %incdec.ptr65.42.i = getelementptr i8, ptr %37, i32 58
  %144 = ptrtoint ptr %incdec.ptr65.41.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 42, ptr %incdec.ptr65.41.i, align 1
  %incdec.ptr65.43.i = getelementptr i8, ptr %37, i32 59
  %145 = ptrtoint ptr %incdec.ptr65.42.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 43, ptr %incdec.ptr65.42.i, align 1
  %incdec.ptr65.44.i = getelementptr i8, ptr %37, i32 60
  %146 = ptrtoint ptr %incdec.ptr65.43.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 44, ptr %incdec.ptr65.43.i, align 1
  %incdec.ptr65.45.i = getelementptr i8, ptr %37, i32 61
  %147 = ptrtoint ptr %incdec.ptr65.44.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 45, ptr %incdec.ptr65.44.i, align 1
  %incdec.ptr65.46.i = getelementptr i8, ptr %37, i32 62
  %148 = ptrtoint ptr %incdec.ptr65.45.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 46, ptr %incdec.ptr65.45.i, align 1
  %incdec.ptr65.47.i = getelementptr i8, ptr %37, i32 63
  %149 = ptrtoint ptr %incdec.ptr65.46.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 47, ptr %incdec.ptr65.46.i, align 1
  %incdec.ptr65.48.i = getelementptr i8, ptr %37, i32 64
  %150 = ptrtoint ptr %incdec.ptr65.47.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 48, ptr %incdec.ptr65.47.i, align 1
  %incdec.ptr65.49.i = getelementptr i8, ptr %37, i32 65
  %151 = ptrtoint ptr %incdec.ptr65.48.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 49, ptr %incdec.ptr65.48.i, align 1
  %incdec.ptr65.50.i = getelementptr i8, ptr %37, i32 66
  %152 = ptrtoint ptr %incdec.ptr65.49.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 50, ptr %incdec.ptr65.49.i, align 1
  %incdec.ptr65.51.i = getelementptr i8, ptr %37, i32 67
  %153 = ptrtoint ptr %incdec.ptr65.50.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 51, ptr %incdec.ptr65.50.i, align 1
  %incdec.ptr65.52.i = getelementptr i8, ptr %37, i32 68
  %154 = ptrtoint ptr %incdec.ptr65.51.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 52, ptr %incdec.ptr65.51.i, align 1
  %incdec.ptr65.53.i = getelementptr i8, ptr %37, i32 69
  %155 = ptrtoint ptr %incdec.ptr65.52.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 53, ptr %incdec.ptr65.52.i, align 1
  %incdec.ptr65.54.i = getelementptr i8, ptr %37, i32 70
  %156 = ptrtoint ptr %incdec.ptr65.53.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 54, ptr %incdec.ptr65.53.i, align 1
  %incdec.ptr65.55.i = getelementptr i8, ptr %37, i32 71
  %157 = ptrtoint ptr %incdec.ptr65.54.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 55, ptr %incdec.ptr65.54.i, align 1
  %incdec.ptr65.56.i = getelementptr i8, ptr %37, i32 72
  %158 = ptrtoint ptr %incdec.ptr65.55.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 56, ptr %incdec.ptr65.55.i, align 1
  %incdec.ptr65.57.i = getelementptr i8, ptr %37, i32 73
  %159 = ptrtoint ptr %incdec.ptr65.56.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 57, ptr %incdec.ptr65.56.i, align 1
  %incdec.ptr65.58.i = getelementptr i8, ptr %37, i32 74
  %160 = ptrtoint ptr %incdec.ptr65.57.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 58, ptr %incdec.ptr65.57.i, align 1
  %161 = ptrtoint ptr %incdec.ptr65.58.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 59, ptr %incdec.ptr65.58.i, align 1
  %162 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pci_dev.i, align 8
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  %164 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i, align 4
  %166 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len.i, align 4
  %call.i414.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %165) #18
  br i1 %call.i414.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end35.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !426

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev69.i) #18
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44, i32 3
  %168 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %170 = ptrtoint ptr %dev69.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev69.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %171, %if.end.i.i.i ], [ %169, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #18
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @debug_dma_map_single(ptr noundef %dev69.i, ptr noundef %165, i32 noundef %167) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %172 = load ptr, ptr @mem_map, align 4
  %173 = ptrtoint ptr %165 to i32
  %sub.i.i = add i32 %173, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i415.i = getelementptr %struct.page, ptr %172, i32 %shr.i.i
  %and.i.i = and i32 %173, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev69.i, ptr noundef %add.ptr.i415.i, i32 noundef %and.i.i, i32 noundef %167, i32 noundef 1, i32 noundef 0) #18
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %174 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tx_dma_addr.i, align 8
  %arrayidx73.i = getelementptr i32, ptr %175, i32 %x.0429.i
  %176 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %retval.0.i.i, ptr %arrayidx73.i, align 4
  %177 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pci_dev.i, align 8
  %dev75.i = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  %179 = load ptr, ptr %tx_dma_addr.i, align 8
  %arrayidx77.i = getelementptr i32, ptr %179, i32 %x.0429.i
  %180 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx77.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev75.i, i32 noundef %181) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %181)
  %cmp.i.not.i = icmp eq i32 %181, -1
  br i1 %cmp.i.not.i, label %do.body81.i, label %if.end89.i

do.body81.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %msg_enable82.i = getelementptr i8, ptr %dev, i32 2760
  %182 = ptrtoint ptr %msg_enable82.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_enable82.i, align 8
  %and83.i = and i32 %183, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %do.body81.i.clean_up.i_crit_edge, label %if.then85.i

do.body81.i.clean_up.i_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

if.then85.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.162, i32 noundef 1041) #21
  br label %clean_up.i

if.end89.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %184 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tx_dma_addr.i, align 8
  %arrayidx91.i = getelementptr i32, ptr %185, i32 %x.0429.i
  %186 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx91.i, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #18
  %189 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tx_ring.i, align 8
  %arrayidx93.i = getelementptr %struct.pcnet32_tx_head, ptr %190, i32 %x.0429.i
  %191 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %188, ptr %arrayidx93.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !453
  tail call void @arm_heavy_mb() #18
  %192 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tx_ring.i, align 8
  %status99.i = getelementptr %struct.pcnet32_tx_head, ptr %193, i32 %x.0429.i, i32 2
  %194 = ptrtoint ptr %status99.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 131, ptr %status99.i, align 2
  %inc101.i = add nuw nsw i32 %x.0429.i, 1
  %exitcond.not.i = icmp eq i32 %inc101.i, %smax.i
  br i1 %exitcond.not.i, label %if.end89.i.for.end102.i_crit_edge, label %if.end89.i.for.body.i_crit_edge

if.end89.i.for.body.i_crit_edge:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end89.i.for.end102.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end102.i

for.end102.i:                                     ; preds = %if.end89.i.for.end102.i_crit_edge, %do.body3.i.for.end102.i_crit_edge
  %read_bcr.i = getelementptr inbounds %struct.pcnet32_access, ptr %3, i32 0, i32 2
  %195 = ptrtoint ptr %read_bcr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read_bcr.i, align 4
  %call103.i = tail call zeroext i16 %196(i32 noundef %5, i32 noundef 32) #18
  %write_bcr105.i = getelementptr inbounds %struct.pcnet32_access, ptr %3, i32 0, i32 3
  %197 = ptrtoint ptr %write_bcr105.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write_bcr105.i, align 4
  %199 = or i16 %call103.i, 2
  tail call void %198(i32 noundef %5, i32 noundef 32, i16 noundef zeroext %199) #18
  %200 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %3, align 4
  %call107.i = tail call zeroext i16 %201(i32 noundef %5, i32 noundef 15) #18
  %202 = and i16 %call107.i, -72
  %203 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %a1.i, align 8
  %write_csr111.i = getelementptr inbounds %struct.pcnet32_access, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %write_csr111.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write_csr111.i, align 4
  %207 = or i16 %202, 68
  tail call void %206(i32 noundef %5, i32 noundef 15, i16 noundef zeroext %207) #18
  %208 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %a1.i, align 8
  %write_csr115.i = getelementptr inbounds %struct.pcnet32_access, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %write_csr115.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write_csr115.i, align 4
  tail call void %211(i32 noundef %5, i32 noundef 0, i16 noundef zeroext 2) #18
  br i1 %cmp25428.i, label %for.body119.lr.ph.i, label %for.end102.i.for.end158.i_crit_edge

for.end102.i.for.end158.i_crit_edge:              ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

for.body119.lr.ph.i:                              ; preds = %for.end102.i
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %smax455.i = tail call i32 @llvm.smax.i32(i32 %17, i32 1) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !454
  %212 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rx_ring.i, align 4
  %status121430.i = getelementptr %struct.pcnet32_rx_head, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %status121430.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %status121430.i, align 2
  %216 = and i16 %215, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool125.not431.not.i = icmp eq i16 %216, 0
  br i1 %tobool125.not431.not.i, label %for.body119.lr.ph.i.for.inc156.i_crit_edge, label %for.body119.lr.ph.i.while.body.i_crit_edge

for.body119.lr.ph.i.while.body.i_crit_edge:       ; preds = %for.body119.lr.ph.i
  br label %while.body.i

for.body119.lr.ph.i.for.inc156.i_crit_edge:       ; preds = %for.body119.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body119.lr.ph.i.while.body.i_crit_edge
  %ticks.0434.i = phi i32 [ %inc143.i, %while.body.i.while.body.i_crit_edge ], [ 0, %for.body119.lr.ph.i.while.body.i_crit_edge ]
  %flags.1433.i = phi i32 [ %call138.i, %while.body.i.while.body.i_crit_edge ], [ %call5.i, %for.body119.lr.ph.i.while.body.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.1433.i) #18
  tail call void @msleep(i32 noundef 1) #18
  %call138.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !455
  %inc143.i = add nuw nsw i32 %ticks.0434.i, 1
  %217 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rx_ring.i, align 4
  %status121.i = getelementptr %struct.pcnet32_rx_head, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %status121.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %status121.i, align 2
  %221 = and i16 %220, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %tobool125.not.i = icmp ne i16 %221, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %ticks.0434.i)
  %cmp126.i = icmp ult i32 %ticks.0434.i, 199
  %or.cond.i = select i1 %tobool125.not.i, i1 %cmp126.i, i1 false
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc143.i)
  %cmp144.i = icmp eq i32 %inc143.i, 200
  br i1 %cmp144.i, label %while.end.i.do.body147.i_crit_edge, label %while.end.i.for.inc156.i_crit_edge

while.end.i.for.inc156.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i

while.end.i.do.body147.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body147.i

do.body147.i:                                     ; preds = %while.end.i.3.do.body147.i_crit_edge, %while.end.i.2.do.body147.i_crit_edge, %while.end.i.1.do.body147.i_crit_edge, %while.end.i.do.body147.i_crit_edge
  %x.1438.i.lcssa = phi i32 [ 0, %while.end.i.do.body147.i_crit_edge ], [ 1, %while.end.i.1.do.body147.i_crit_edge ], [ 2, %while.end.i.2.do.body147.i_crit_edge ], [ 3, %while.end.i.3.do.body147.i_crit_edge ]
  %call138.i.lcssa.lcssa = phi i32 [ %call138.i, %while.end.i.do.body147.i_crit_edge ], [ %call138.i.1, %while.end.i.1.do.body147.i_crit_edge ], [ %call138.i.2, %while.end.i.2.do.body147.i_crit_edge ], [ %call138.i.3, %while.end.i.3.do.body147.i_crit_edge ]
  %msg_enable148.i = getelementptr i8, ptr %dev, i32 2760
  %222 = ptrtoint ptr %msg_enable148.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %msg_enable148.i, align 8
  %and149.i = and i32 %223, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %do.body147.i.for.end158.i_crit_edge, label %if.then151.i

do.body147.i.for.end158.i_crit_edge:              ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

if.then151.i:                                     ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.163, i32 noundef %x.1438.i.lcssa) #21
  br label %for.end158.i

for.inc156.i:                                     ; preds = %while.end.i.for.inc156.i_crit_edge, %for.body119.lr.ph.i.for.inc156.i_crit_edge
  %flags.1.lcssa464.i = phi i32 [ %call138.i, %while.end.i.for.inc156.i_crit_edge ], [ %call5.i, %for.body119.lr.ph.i.for.inc156.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %exitcond456.not.i = icmp slt i32 %17, 2
  br i1 %exitcond456.not.i, label %for.inc156.i.for.end158.i_crit_edge, label %for.body119.i.1

for.inc156.i.for.end158.i_crit_edge:              ; preds = %for.inc156.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

for.body119.i.1:                                  ; preds = %for.inc156.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !454
  %224 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rx_ring.i, align 4
  %status121430.i.1 = getelementptr %struct.pcnet32_rx_head, ptr %225, i32 1, i32 2
  %226 = ptrtoint ptr %status121430.i.1 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %status121430.i.1, align 2
  %228 = and i16 %227, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool125.not431.not.i.1 = icmp eq i16 %228, 0
  br i1 %tobool125.not431.not.i.1, label %for.body119.i.1.for.inc156.i.1_crit_edge, label %for.body119.i.1.while.body.i.1_crit_edge

for.body119.i.1.while.body.i.1_crit_edge:         ; preds = %for.body119.i.1
  br label %while.body.i.1

for.body119.i.1.for.inc156.i.1_crit_edge:         ; preds = %for.body119.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i.1

while.body.i.1:                                   ; preds = %while.body.i.1.while.body.i.1_crit_edge, %for.body119.i.1.while.body.i.1_crit_edge
  %ticks.0434.i.1 = phi i32 [ %inc143.i.1, %while.body.i.1.while.body.i.1_crit_edge ], [ 0, %for.body119.i.1.while.body.i.1_crit_edge ]
  %flags.1433.i.1 = phi i32 [ %call138.i.1, %while.body.i.1.while.body.i.1_crit_edge ], [ %flags.1.lcssa464.i, %for.body119.i.1.while.body.i.1_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.1433.i.1) #18
  tail call void @msleep(i32 noundef 1) #18
  %call138.i.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !455
  %inc143.i.1 = add nuw nsw i32 %ticks.0434.i.1, 1
  %229 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rx_ring.i, align 4
  %status121.i.1 = getelementptr %struct.pcnet32_rx_head, ptr %230, i32 1, i32 2
  %231 = ptrtoint ptr %status121.i.1 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %status121.i.1, align 2
  %233 = and i16 %232, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %tobool125.not.i.1 = icmp ne i16 %233, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %ticks.0434.i.1)
  %cmp126.i.1 = icmp ult i32 %ticks.0434.i.1, 199
  %or.cond.i.1 = select i1 %tobool125.not.i.1, i1 %cmp126.i.1, i1 false
  br i1 %or.cond.i.1, label %while.body.i.1.while.body.i.1_crit_edge, label %while.end.i.1

while.body.i.1.while.body.i.1_crit_edge:          ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.1

while.end.i.1:                                    ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc143.i.1)
  %cmp144.i.1 = icmp eq i32 %inc143.i.1, 200
  br i1 %cmp144.i.1, label %while.end.i.1.do.body147.i_crit_edge, label %while.end.i.1.for.inc156.i.1_crit_edge

while.end.i.1.for.inc156.i.1_crit_edge:           ; preds = %while.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i.1

while.end.i.1.do.body147.i_crit_edge:             ; preds = %while.end.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body147.i

for.inc156.i.1:                                   ; preds = %while.end.i.1.for.inc156.i.1_crit_edge, %for.body119.i.1.for.inc156.i.1_crit_edge
  %flags.1.lcssa464.i.1 = phi i32 [ %call138.i.1, %while.end.i.1.for.inc156.i.1_crit_edge ], [ %flags.1.lcssa464.i, %for.body119.i.1.for.inc156.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax455.i)
  %exitcond456.not.i.1 = icmp eq i32 %smax455.i, 2
  br i1 %exitcond456.not.i.1, label %for.inc156.i.1.for.end158.i_crit_edge, label %for.body119.i.2

for.inc156.i.1.for.end158.i_crit_edge:            ; preds = %for.inc156.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

for.body119.i.2:                                  ; preds = %for.inc156.i.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !454
  %234 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rx_ring.i, align 4
  %status121430.i.2 = getelementptr %struct.pcnet32_rx_head, ptr %235, i32 2, i32 2
  %236 = ptrtoint ptr %status121430.i.2 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %status121430.i.2, align 2
  %238 = and i16 %237, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool125.not431.not.i.2 = icmp eq i16 %238, 0
  br i1 %tobool125.not431.not.i.2, label %for.body119.i.2.for.inc156.i.2_crit_edge, label %for.body119.i.2.while.body.i.2_crit_edge

for.body119.i.2.while.body.i.2_crit_edge:         ; preds = %for.body119.i.2
  br label %while.body.i.2

for.body119.i.2.for.inc156.i.2_crit_edge:         ; preds = %for.body119.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i.2

while.body.i.2:                                   ; preds = %while.body.i.2.while.body.i.2_crit_edge, %for.body119.i.2.while.body.i.2_crit_edge
  %ticks.0434.i.2 = phi i32 [ %inc143.i.2, %while.body.i.2.while.body.i.2_crit_edge ], [ 0, %for.body119.i.2.while.body.i.2_crit_edge ]
  %flags.1433.i.2 = phi i32 [ %call138.i.2, %while.body.i.2.while.body.i.2_crit_edge ], [ %flags.1.lcssa464.i.1, %for.body119.i.2.while.body.i.2_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.1433.i.2) #18
  tail call void @msleep(i32 noundef 1) #18
  %call138.i.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !455
  %inc143.i.2 = add nuw nsw i32 %ticks.0434.i.2, 1
  %239 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rx_ring.i, align 4
  %status121.i.2 = getelementptr %struct.pcnet32_rx_head, ptr %240, i32 2, i32 2
  %241 = ptrtoint ptr %status121.i.2 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %status121.i.2, align 2
  %243 = and i16 %242, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool125.not.i.2 = icmp ne i16 %243, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %ticks.0434.i.2)
  %cmp126.i.2 = icmp ult i32 %ticks.0434.i.2, 199
  %or.cond.i.2 = select i1 %tobool125.not.i.2, i1 %cmp126.i.2, i1 false
  br i1 %or.cond.i.2, label %while.body.i.2.while.body.i.2_crit_edge, label %while.end.i.2

while.body.i.2.while.body.i.2_crit_edge:          ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.2

while.end.i.2:                                    ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc143.i.2)
  %cmp144.i.2 = icmp eq i32 %inc143.i.2, 200
  br i1 %cmp144.i.2, label %while.end.i.2.do.body147.i_crit_edge, label %while.end.i.2.for.inc156.i.2_crit_edge

while.end.i.2.for.inc156.i.2_crit_edge:           ; preds = %while.end.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc156.i.2

while.end.i.2.do.body147.i_crit_edge:             ; preds = %while.end.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body147.i

for.inc156.i.2:                                   ; preds = %while.end.i.2.for.inc156.i.2_crit_edge, %for.body119.i.2.for.inc156.i.2_crit_edge
  %flags.1.lcssa464.i.2 = phi i32 [ %call138.i.2, %while.end.i.2.for.inc156.i.2_crit_edge ], [ %flags.1.lcssa464.i.1, %for.body119.i.2.for.inc156.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax455.i)
  %exitcond456.not.i.2 = icmp eq i32 %smax455.i, 3
  br i1 %exitcond456.not.i.2, label %for.inc156.i.2.for.end158.i_crit_edge, label %for.body119.i.3

for.inc156.i.2.for.end158.i_crit_edge:            ; preds = %for.inc156.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

for.body119.i.3:                                  ; preds = %for.inc156.i.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !454
  %244 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rx_ring.i, align 4
  %status121430.i.3 = getelementptr %struct.pcnet32_rx_head, ptr %245, i32 3, i32 2
  %246 = ptrtoint ptr %status121430.i.3 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %status121430.i.3, align 2
  %248 = and i16 %247, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool125.not431.not.i.3 = icmp eq i16 %248, 0
  br i1 %tobool125.not431.not.i.3, label %for.body119.i.3.for.end158.i_crit_edge, label %for.body119.i.3.while.body.i.3_crit_edge

for.body119.i.3.while.body.i.3_crit_edge:         ; preds = %for.body119.i.3
  br label %while.body.i.3

for.body119.i.3.for.end158.i_crit_edge:           ; preds = %for.body119.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

while.body.i.3:                                   ; preds = %while.body.i.3.while.body.i.3_crit_edge, %for.body119.i.3.while.body.i.3_crit_edge
  %ticks.0434.i.3 = phi i32 [ %inc143.i.3, %while.body.i.3.while.body.i.3_crit_edge ], [ 0, %for.body119.i.3.while.body.i.3_crit_edge ]
  %flags.1433.i.3 = phi i32 [ %call138.i.3, %while.body.i.3.while.body.i.3_crit_edge ], [ %flags.1.lcssa464.i.2, %for.body119.i.3.while.body.i.3_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.1433.i.3) #18
  tail call void @msleep(i32 noundef 1) #18
  %call138.i.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !455
  %inc143.i.3 = add nuw nsw i32 %ticks.0434.i.3, 1
  %249 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rx_ring.i, align 4
  %status121.i.3 = getelementptr %struct.pcnet32_rx_head, ptr %250, i32 3, i32 2
  %251 = ptrtoint ptr %status121.i.3 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %status121.i.3, align 2
  %253 = and i16 %252, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %253)
  %tobool125.not.i.3 = icmp ne i16 %253, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %ticks.0434.i.3)
  %cmp126.i.3 = icmp ult i32 %ticks.0434.i.3, 199
  %or.cond.i.3 = select i1 %tobool125.not.i.3, i1 %cmp126.i.3, i1 false
  br i1 %or.cond.i.3, label %while.body.i.3.while.body.i.3_crit_edge, label %while.end.i.3

while.body.i.3.while.body.i.3_crit_edge:          ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.3

while.end.i.3:                                    ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %inc143.i.3)
  %cmp144.i.3 = icmp eq i32 %inc143.i.3, 200
  br i1 %cmp144.i.3, label %while.end.i.3.do.body147.i_crit_edge, label %while.end.i.3.for.end158.i_crit_edge

while.end.i.3.for.end158.i_crit_edge:             ; preds = %while.end.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end158.i

while.end.i.3.do.body147.i_crit_edge:             ; preds = %while.end.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body147.i

for.end158.i:                                     ; preds = %while.end.i.3.for.end158.i_crit_edge, %for.body119.i.3.for.end158.i_crit_edge, %for.inc156.i.2.for.end158.i_crit_edge, %for.inc156.i.1.for.end158.i_crit_edge, %for.inc156.i.for.end158.i_crit_edge, %if.then151.i, %do.body147.i.for.end158.i_crit_edge, %for.end102.i.for.end158.i_crit_edge
  %flags.2.i = phi i32 [ %call138.i.lcssa.lcssa, %if.then151.i ], [ %call138.i.lcssa.lcssa, %do.body147.i.for.end158.i_crit_edge ], [ %call5.i, %for.end102.i.for.end158.i_crit_edge ], [ %flags.1.lcssa464.i, %for.inc156.i.for.end158.i_crit_edge ], [ %flags.1.lcssa464.i.1, %for.inc156.i.1.for.end158.i_crit_edge ], [ %flags.1.lcssa464.i.2, %for.inc156.i.2.for.end158.i_crit_edge ], [ %call138.i.3, %while.end.i.3.for.end158.i_crit_edge ], [ %flags.1.lcssa464.i.2, %for.body119.i.3.for.end158.i_crit_edge ]
  %254 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %a1.i, align 8
  %write_csr160.i = getelementptr inbounds %struct.pcnet32_access, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %write_csr160.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write_csr160.i, align 4
  tail call void %257(i32 noundef %5, i32 noundef 0, i16 noundef zeroext 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !456
  tail call void @arm_heavy_mb() #18
  %msg_enable164.i = getelementptr i8, ptr %dev, i32 2760
  %258 = ptrtoint ptr %msg_enable164.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %msg_enable164.i, align 8
  %260 = and i32 %259, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %260)
  %.not.i = icmp eq i32 %260, 12288
  br i1 %.not.i, label %if.then170.i, label %for.end158.i.if.end198.i_crit_edge

for.end158.i.if.end198.i_crit_edge:               ; preds = %for.end158.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198.i

if.then170.i:                                     ; preds = %for.end158.i
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.164) #21
  br i1 %cmp25428.i, label %for.body174.lr.ph.i, label %if.then170.i.clean_up.i_crit_edge

if.then170.i.clean_up.i_crit_edge:                ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

for.body174.lr.ph.i:                              ; preds = %if.then170.i
  %rx_skbuff.i = getelementptr i8, ptr %dev, i32 2332
  %smax458.i = tail call i32 @llvm.smax.i32(i32 %17, i32 1) #18
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef 0) #21
  %261 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %rx_skbuff.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %262, align 4
  %data184.i = getelementptr inbounds %struct.sk_buff, ptr %264, i32 0, i32 19
  br label %do.end182.i

do.end182.i:                                      ; preds = %do.end182.i.do.end182.i_crit_edge, %for.body174.lr.ph.i
  %i.3440.i = phi i32 [ 0, %for.body174.lr.ph.i ], [ %inc188.i, %do.end182.i.do.end182.i_crit_edge ]
  %265 = ptrtoint ptr %data184.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %data184.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %266, i32 %i.3440.i
  %267 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %add.ptr.i32, align 1
  %conv185.i = zext i8 %268 to i32
  %call186.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %conv185.i) #21
  %inc188.i = add nuw nsw i32 %i.3440.i, 1
  %exitcond457.not.i = icmp eq i32 %inc188.i, 75
  br i1 %exitcond457.not.i, label %do.end192.i, label %do.end182.i.do.end182.i_crit_edge

do.end182.i.do.end182.i_crit_edge:                ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end182.i

do.end192.i:                                      ; preds = %do.end182.i
  %call194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %exitcond459.not.i = icmp slt i32 %17, 2
  br i1 %exitcond459.not.i, label %do.end192.i.if.end198.i_crit_edge, label %for.body174.i.1

do.end192.i.if.end198.i_crit_edge:                ; preds = %do.end192.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198.i

for.body174.i.1:                                  ; preds = %do.end192.i
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef 1) #21
  %269 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rx_skbuff.i, align 4
  %arrayidx175.i.1 = getelementptr ptr, ptr %270, i32 1
  %271 = ptrtoint ptr %arrayidx175.i.1 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %arrayidx175.i.1, align 4
  %data184.i.1 = getelementptr inbounds %struct.sk_buff, ptr %272, i32 0, i32 19
  br label %do.end182.i.1

do.end182.i.1:                                    ; preds = %do.end182.i.1.do.end182.i.1_crit_edge, %for.body174.i.1
  %i.3440.i.1 = phi i32 [ 0, %for.body174.i.1 ], [ %inc188.i.1, %do.end182.i.1.do.end182.i.1_crit_edge ]
  %273 = ptrtoint ptr %data184.i.1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %data184.i.1, align 4
  %add.ptr.i32.1 = getelementptr i8, ptr %274, i32 %i.3440.i.1
  %275 = ptrtoint ptr %add.ptr.i32.1 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %add.ptr.i32.1, align 1
  %conv185.i.1 = zext i8 %276 to i32
  %call186.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %conv185.i.1) #21
  %inc188.i.1 = add nuw nsw i32 %i.3440.i.1, 1
  %exitcond457.not.i.1 = icmp eq i32 %inc188.i.1, 75
  br i1 %exitcond457.not.i.1, label %do.end192.i.1, label %do.end182.i.1.do.end182.i.1_crit_edge

do.end182.i.1.do.end182.i.1_crit_edge:            ; preds = %do.end182.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end182.i.1

do.end192.i.1:                                    ; preds = %do.end182.i.1
  %call194.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax458.i)
  %exitcond459.not.i.1 = icmp eq i32 %smax458.i, 2
  br i1 %exitcond459.not.i.1, label %do.end192.i.1.if.end198.i_crit_edge, label %for.body174.i.2

do.end192.i.1.if.end198.i_crit_edge:              ; preds = %do.end192.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198.i

for.body174.i.2:                                  ; preds = %do.end192.i.1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef 2) #21
  %277 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rx_skbuff.i, align 4
  %arrayidx175.i.2 = getelementptr ptr, ptr %278, i32 2
  %279 = ptrtoint ptr %arrayidx175.i.2 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx175.i.2, align 4
  %data184.i.2 = getelementptr inbounds %struct.sk_buff, ptr %280, i32 0, i32 19
  br label %do.end182.i.2

do.end182.i.2:                                    ; preds = %do.end182.i.2.do.end182.i.2_crit_edge, %for.body174.i.2
  %i.3440.i.2 = phi i32 [ 0, %for.body174.i.2 ], [ %inc188.i.2, %do.end182.i.2.do.end182.i.2_crit_edge ]
  %281 = ptrtoint ptr %data184.i.2 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %data184.i.2, align 4
  %add.ptr.i32.2 = getelementptr i8, ptr %282, i32 %i.3440.i.2
  %283 = ptrtoint ptr %add.ptr.i32.2 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %add.ptr.i32.2, align 1
  %conv185.i.2 = zext i8 %284 to i32
  %call186.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %conv185.i.2) #21
  %inc188.i.2 = add nuw nsw i32 %i.3440.i.2, 1
  %exitcond457.not.i.2 = icmp eq i32 %inc188.i.2, 75
  br i1 %exitcond457.not.i.2, label %do.end192.i.2, label %do.end182.i.2.do.end182.i.2_crit_edge

do.end182.i.2.do.end182.i.2_crit_edge:            ; preds = %do.end182.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end182.i.2

do.end192.i.2:                                    ; preds = %do.end182.i.2
  %call194.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax458.i)
  %exitcond459.not.i.2 = icmp eq i32 %smax458.i, 3
  br i1 %exitcond459.not.i.2, label %do.end192.i.2.if.end198.i_crit_edge, label %for.body174.i.3

do.end192.i.2.if.end198.i_crit_edge:              ; preds = %do.end192.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end198.i

for.body174.i.3:                                  ; preds = %do.end192.i.2
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.165, i32 noundef 3) #21
  %285 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rx_skbuff.i, align 4
  %arrayidx175.i.3 = getelementptr ptr, ptr %286, i32 3
  %287 = ptrtoint ptr %arrayidx175.i.3 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx175.i.3, align 4
  %data184.i.3 = getelementptr inbounds %struct.sk_buff, ptr %288, i32 0, i32 19
  br label %do.end182.i.3

do.end182.i.3:                                    ; preds = %do.end182.i.3.do.end182.i.3_crit_edge, %for.body174.i.3
  %i.3440.i.3 = phi i32 [ 0, %for.body174.i.3 ], [ %inc188.i.3, %do.end182.i.3.do.end182.i.3_crit_edge ]
  %289 = ptrtoint ptr %data184.i.3 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %data184.i.3, align 4
  %add.ptr.i32.3 = getelementptr i8, ptr %290, i32 %i.3440.i.3
  %291 = ptrtoint ptr %add.ptr.i32.3 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %add.ptr.i32.3, align 1
  %conv185.i.3 = zext i8 %292 to i32
  %call186.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %conv185.i.3) #21
  %inc188.i.3 = add nuw nsw i32 %i.3440.i.3, 1
  %exitcond457.not.i.3 = icmp eq i32 %inc188.i.3, 75
  br i1 %exitcond457.not.i.3, label %do.end192.i.3, label %do.end182.i.3.do.end182.i.3_crit_edge

do.end182.i.3.do.end182.i.3_crit_edge:            ; preds = %do.end182.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end182.i.3

do.end192.i.3:                                    ; preds = %do.end182.i.3
  call void @__sanitizer_cov_trace_pc() #20
  %call194.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #21
  br label %if.end198.i

if.end198.i:                                      ; preds = %do.end192.i.3, %do.end192.i.2.if.end198.i_crit_edge, %do.end192.i.1.if.end198.i_crit_edge, %do.end192.i.if.end198.i_crit_edge, %for.end158.i.if.end198.i_crit_edge
  br i1 %cmp25428.i, label %while.body205.lr.ph.i, label %if.end198.i.clean_up.i_crit_edge

if.end198.i.clean_up.i_crit_edge:                 ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

while.body205.lr.ph.i:                            ; preds = %if.end198.i
  %rx_skbuff206.i = getelementptr i8, ptr %dev, i32 2332
  %tx_skbuff208.i = getelementptr i8, ptr %dev, i32 2328
  %293 = ptrtoint ptr %rx_skbuff206.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %rx_skbuff206.i, align 4
  %295 = ptrtoint ptr %tx_skbuff208.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %tx_skbuff208.i, align 8
  %smax = call i32 @llvm.smax.i32(i32 %17, i32 1)
  %297 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %294, align 4
  %299 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %296, align 4
  %data210.i = getelementptr inbounds %struct.sk_buff, ptr %300, i32 0, i32 19
  %301 = ptrtoint ptr %data210.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %data210.i, align 4
  %data215.i = getelementptr inbounds %struct.sk_buff, ptr %298, i32 0, i32 19
  %303 = ptrtoint ptr %data215.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %data215.i, align 4
  br label %for.body214.i

for.body214.i:                                    ; preds = %for.inc237.i.for.body214.i_crit_edge, %while.body205.lr.ph.i
  %i.4444.i = phi i32 [ 0, %while.body205.lr.ph.i ], [ %inc238.i, %for.inc237.i.for.body214.i_crit_edge ]
  %add.ptr216.i = getelementptr i8, ptr %304, i32 %i.4444.i
  %305 = ptrtoint ptr %add.ptr216.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %add.ptr216.i, align 1
  %arrayidx218.i = getelementptr i8, ptr %302, i32 %i.4444.i
  %307 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx218.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %306, i8 %308)
  %cmp220.not.i = icmp eq i8 %306, %308
  br i1 %cmp220.not.i, label %for.inc237.i, label %for.body214.i.do.body223.i_crit_edge

for.body214.i.do.body223.i_crit_edge:             ; preds = %for.body214.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body223.i

do.body223.i:                                     ; preds = %for.body214.i.3.do.body223.i_crit_edge, %for.body214.i.2.do.body223.i_crit_edge, %for.body214.i.1.do.body223.i_crit_edge, %for.body214.i.do.body223.i_crit_edge
  %i.4444.i.lcssa = phi i32 [ %i.4444.i, %for.body214.i.do.body223.i_crit_edge ], [ %i.4444.i.1, %for.body214.i.1.do.body223.i_crit_edge ], [ %i.4444.i.2, %for.body214.i.2.do.body223.i_crit_edge ], [ %i.4444.i.3, %for.body214.i.3.do.body223.i_crit_edge ]
  %.lcssa54 = phi i8 [ %306, %for.body214.i.do.body223.i_crit_edge ], [ %320, %for.body214.i.1.do.body223.i_crit_edge ], [ %332, %for.body214.i.2.do.body223.i_crit_edge ], [ %344, %for.body214.i.3.do.body223.i_crit_edge ]
  %.lcssa = phi i8 [ %308, %for.body214.i.do.body223.i_crit_edge ], [ %322, %for.body214.i.1.do.body223.i_crit_edge ], [ %334, %for.body214.i.2.do.body223.i_crit_edge ], [ %346, %for.body214.i.3.do.body223.i_crit_edge ]
  %309 = ptrtoint ptr %msg_enable164.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %msg_enable164.i, align 8
  %and225.i = and i32 %310, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i)
  %tobool226.not.i = icmp eq i32 %and225.i, 0
  br i1 %tobool226.not.i, label %do.body223.i.clean_up.i_crit_edge, label %if.then227.i

do.body223.i.clean_up.i_crit_edge:                ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

if.then227.i:                                     ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv219.le.i = zext i8 %.lcssa to i32
  %conv217.le.i = zext i8 %.lcssa54 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.171, i32 noundef %i.4444.i.lcssa, i32 noundef %conv217.le.i, i32 noundef %conv219.le.i) #21
  br label %clean_up.i

for.inc237.i:                                     ; preds = %for.body214.i
  %inc238.i = add nuw nsw i32 %i.4444.i, 1
  %exitcond460.not.i = icmp eq i32 %inc238.i, 75
  br i1 %exitcond460.not.i, label %for.end239.i, label %for.inc237.i.for.body214.i_crit_edge

for.inc237.i.for.body214.i_crit_edge:             ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body214.i

for.end239.i:                                     ; preds = %for.inc237.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %exitcond.not = icmp slt i32 %17, 2
  br i1 %exitcond.not, label %for.end239.i.clean_up.i_crit_edge, label %while.body205.i.1

for.end239.i.clean_up.i_crit_edge:                ; preds = %for.end239.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

while.body205.i.1:                                ; preds = %for.end239.i
  %arrayidx207.i.1 = getelementptr ptr, ptr %294, i32 1
  %311 = ptrtoint ptr %arrayidx207.i.1 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx207.i.1, align 4
  %arrayidx209.i.1 = getelementptr ptr, ptr %296, i32 1
  %313 = ptrtoint ptr %arrayidx209.i.1 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %arrayidx209.i.1, align 4
  %data210.i.1 = getelementptr inbounds %struct.sk_buff, ptr %314, i32 0, i32 19
  %315 = ptrtoint ptr %data210.i.1 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %data210.i.1, align 4
  %data215.i.1 = getelementptr inbounds %struct.sk_buff, ptr %312, i32 0, i32 19
  %317 = ptrtoint ptr %data215.i.1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %data215.i.1, align 4
  br label %for.body214.i.1

for.body214.i.1:                                  ; preds = %for.inc237.i.1.for.body214.i.1_crit_edge, %while.body205.i.1
  %i.4444.i.1 = phi i32 [ 0, %while.body205.i.1 ], [ %inc238.i.1, %for.inc237.i.1.for.body214.i.1_crit_edge ]
  %add.ptr216.i.1 = getelementptr i8, ptr %318, i32 %i.4444.i.1
  %319 = ptrtoint ptr %add.ptr216.i.1 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %add.ptr216.i.1, align 1
  %arrayidx218.i.1 = getelementptr i8, ptr %316, i32 %i.4444.i.1
  %321 = ptrtoint ptr %arrayidx218.i.1 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx218.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %320, i8 %322)
  %cmp220.not.i.1 = icmp eq i8 %320, %322
  br i1 %cmp220.not.i.1, label %for.inc237.i.1, label %for.body214.i.1.do.body223.i_crit_edge

for.body214.i.1.do.body223.i_crit_edge:           ; preds = %for.body214.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body223.i

for.inc237.i.1:                                   ; preds = %for.body214.i.1
  %inc238.i.1 = add nuw nsw i32 %i.4444.i.1, 1
  %exitcond460.not.i.1 = icmp eq i32 %inc238.i.1, 75
  br i1 %exitcond460.not.i.1, label %for.end239.i.1, label %for.inc237.i.1.for.body214.i.1_crit_edge

for.inc237.i.1.for.body214.i.1_crit_edge:         ; preds = %for.inc237.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body214.i.1

for.end239.i.1:                                   ; preds = %for.inc237.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax)
  %exitcond.not.1 = icmp eq i32 %smax, 2
  br i1 %exitcond.not.1, label %for.end239.i.1.clean_up.i_crit_edge, label %while.body205.i.2

for.end239.i.1.clean_up.i_crit_edge:              ; preds = %for.end239.i.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

while.body205.i.2:                                ; preds = %for.end239.i.1
  %arrayidx207.i.2 = getelementptr ptr, ptr %294, i32 2
  %323 = ptrtoint ptr %arrayidx207.i.2 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx207.i.2, align 4
  %arrayidx209.i.2 = getelementptr ptr, ptr %296, i32 2
  %325 = ptrtoint ptr %arrayidx209.i.2 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %arrayidx209.i.2, align 4
  %data210.i.2 = getelementptr inbounds %struct.sk_buff, ptr %326, i32 0, i32 19
  %327 = ptrtoint ptr %data210.i.2 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %data210.i.2, align 4
  %data215.i.2 = getelementptr inbounds %struct.sk_buff, ptr %324, i32 0, i32 19
  %329 = ptrtoint ptr %data215.i.2 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %data215.i.2, align 4
  br label %for.body214.i.2

for.body214.i.2:                                  ; preds = %for.inc237.i.2.for.body214.i.2_crit_edge, %while.body205.i.2
  %i.4444.i.2 = phi i32 [ 0, %while.body205.i.2 ], [ %inc238.i.2, %for.inc237.i.2.for.body214.i.2_crit_edge ]
  %add.ptr216.i.2 = getelementptr i8, ptr %330, i32 %i.4444.i.2
  %331 = ptrtoint ptr %add.ptr216.i.2 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %add.ptr216.i.2, align 1
  %arrayidx218.i.2 = getelementptr i8, ptr %328, i32 %i.4444.i.2
  %333 = ptrtoint ptr %arrayidx218.i.2 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx218.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %332, i8 %334)
  %cmp220.not.i.2 = icmp eq i8 %332, %334
  br i1 %cmp220.not.i.2, label %for.inc237.i.2, label %for.body214.i.2.do.body223.i_crit_edge

for.body214.i.2.do.body223.i_crit_edge:           ; preds = %for.body214.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body223.i

for.inc237.i.2:                                   ; preds = %for.body214.i.2
  %inc238.i.2 = add nuw nsw i32 %i.4444.i.2, 1
  %exitcond460.not.i.2 = icmp eq i32 %inc238.i.2, 75
  br i1 %exitcond460.not.i.2, label %for.end239.i.2, label %for.inc237.i.2.for.body214.i.2_crit_edge

for.inc237.i.2.for.body214.i.2_crit_edge:         ; preds = %for.inc237.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body214.i.2

for.end239.i.2:                                   ; preds = %for.inc237.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax)
  %exitcond.not.2 = icmp eq i32 %smax, 3
  br i1 %exitcond.not.2, label %for.end239.i.2.clean_up.i_crit_edge, label %while.body205.i.3

for.end239.i.2.clean_up.i_crit_edge:              ; preds = %for.end239.i.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

while.body205.i.3:                                ; preds = %for.end239.i.2
  %arrayidx207.i.3 = getelementptr ptr, ptr %294, i32 3
  %335 = ptrtoint ptr %arrayidx207.i.3 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx207.i.3, align 4
  %arrayidx209.i.3 = getelementptr ptr, ptr %296, i32 3
  %337 = ptrtoint ptr %arrayidx209.i.3 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %arrayidx209.i.3, align 4
  %data210.i.3 = getelementptr inbounds %struct.sk_buff, ptr %338, i32 0, i32 19
  %339 = ptrtoint ptr %data210.i.3 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %data210.i.3, align 4
  %data215.i.3 = getelementptr inbounds %struct.sk_buff, ptr %336, i32 0, i32 19
  %341 = ptrtoint ptr %data215.i.3 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %data215.i.3, align 4
  br label %for.body214.i.3

for.body214.i.3:                                  ; preds = %for.inc237.i.3.for.body214.i.3_crit_edge, %while.body205.i.3
  %i.4444.i.3 = phi i32 [ 0, %while.body205.i.3 ], [ %inc238.i.3, %for.inc237.i.3.for.body214.i.3_crit_edge ]
  %add.ptr216.i.3 = getelementptr i8, ptr %342, i32 %i.4444.i.3
  %343 = ptrtoint ptr %add.ptr216.i.3 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %add.ptr216.i.3, align 1
  %arrayidx218.i.3 = getelementptr i8, ptr %340, i32 %i.4444.i.3
  %345 = ptrtoint ptr %arrayidx218.i.3 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx218.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %344, i8 %346)
  %cmp220.not.i.3 = icmp eq i8 %344, %346
  br i1 %cmp220.not.i.3, label %for.inc237.i.3, label %for.body214.i.3.do.body223.i_crit_edge

for.body214.i.3.do.body223.i_crit_edge:           ; preds = %for.body214.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body223.i

for.inc237.i.3:                                   ; preds = %for.body214.i.3
  %inc238.i.3 = add nuw nsw i32 %i.4444.i.3, 1
  %exitcond460.not.i.3 = icmp eq i32 %inc238.i.3, 75
  br i1 %exitcond460.not.i.3, label %for.inc237.i.3.clean_up.i_crit_edge, label %for.inc237.i.3.for.body214.i.3_crit_edge

for.inc237.i.3.for.body214.i.3_crit_edge:         ; preds = %for.inc237.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body214.i.3

for.inc237.i.3.clean_up.i_crit_edge:              ; preds = %for.inc237.i.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean_up.i

clean_up.i:                                       ; preds = %for.inc237.i.3.clean_up.i_crit_edge, %for.end239.i.2.clean_up.i_crit_edge, %for.end239.i.1.clean_up.i_crit_edge, %for.end239.i.clean_up.i_crit_edge, %if.then227.i, %do.body223.i.clean_up.i_crit_edge, %if.end198.i.clean_up.i_crit_edge, %if.then170.i.clean_up.i_crit_edge, %if.then85.i, %do.body81.i.clean_up.i_crit_edge, %if.then31.i, %do.body29.i.clean_up.i_crit_edge
  %tobool.not = phi i1 [ false, %if.then227.i ], [ false, %do.body223.i.clean_up.i_crit_edge ], [ true, %if.end198.i.clean_up.i_crit_edge ], [ true, %if.then170.i.clean_up.i_crit_edge ], [ false, %if.then85.i ], [ false, %do.body81.i.clean_up.i_crit_edge ], [ false, %if.then31.i ], [ false, %do.body29.i.clean_up.i_crit_edge ], [ true, %for.inc237.i.3.clean_up.i_crit_edge ], [ true, %for.end239.i.2.clean_up.i_crit_edge ], [ true, %for.end239.i.1.clean_up.i_crit_edge ], [ true, %for.end239.i.clean_up.i_crit_edge ]
  %rc.2.i = phi i32 [ 1, %if.then227.i ], [ 1, %do.body223.i.clean_up.i_crit_edge ], [ 0, %if.end198.i.clean_up.i_crit_edge ], [ 0, %if.then170.i.clean_up.i_crit_edge ], [ 1, %if.then85.i ], [ 1, %do.body81.i.clean_up.i_crit_edge ], [ 1, %if.then31.i ], [ 1, %do.body29.i.clean_up.i_crit_edge ], [ 0, %for.inc237.i.3.clean_up.i_crit_edge ], [ 0, %for.end239.i.2.clean_up.i_crit_edge ], [ 0, %for.end239.i.1.clean_up.i_crit_edge ], [ 0, %for.end239.i.clean_up.i_crit_edge ]
  %flags.3.i = phi i32 [ %flags.2.i, %if.then227.i ], [ %flags.2.i, %do.body223.i.clean_up.i_crit_edge ], [ %flags.2.i, %if.end198.i.clean_up.i_crit_edge ], [ %flags.2.i, %if.then170.i.clean_up.i_crit_edge ], [ %call5.i, %if.then85.i ], [ %call5.i, %do.body81.i.clean_up.i_crit_edge ], [ %call5.i, %if.then31.i ], [ %call5.i, %do.body29.i.clean_up.i_crit_edge ], [ %flags.2.i, %for.inc237.i.3.clean_up.i_crit_edge ], [ %flags.2.i, %for.end239.i.2.clean_up.i_crit_edge ], [ %flags.2.i, %for.end239.i.1.clean_up.i_crit_edge ], [ %flags.2.i, %for.end239.i.clean_up.i_crit_edge ]
  %347 = zext i32 %rc.2.i to i64
  %348 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %348)
  store i64 %347, ptr %data, align 8
  tail call fastcc void @pcnet32_purge_tx_ring(ptr noundef %dev) #18
  %349 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %3, align 4
  %call244.i = tail call zeroext i16 %350(i32 noundef %5, i32 noundef 15) #18
  %write_csr246.i = getelementptr inbounds %struct.pcnet32_access, ptr %3, i32 0, i32 1
  %351 = ptrtoint ptr %write_csr246.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %write_csr246.i, align 4
  %353 = and i16 %call244.i, -69
  tail call void %352(i32 noundef %5, i32 noundef 15, i16 noundef zeroext %353) #18
  %read_bcr249.i = getelementptr inbounds %struct.pcnet32_access, ptr %3, i32 0, i32 2
  %354 = ptrtoint ptr %read_bcr249.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %read_bcr249.i, align 4
  %call250.i = tail call zeroext i16 %355(i32 noundef %5, i32 noundef 32) #18
  %write_bcr252.i = getelementptr inbounds %struct.pcnet32_access, ptr %3, i32 0, i32 3
  %356 = ptrtoint ptr %write_bcr252.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %write_bcr252.i, align 4
  %358 = and i16 %call250.i, -3
  tail call void %357(i32 noundef %5, i32 noundef 32, i16 noundef zeroext %358) #18
  %359 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i417.i = and i32 %360, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i417.i)
  %tobool.i418.not.i = icmp eq i32 %and1.i.i417.i, 0
  br i1 %tobool.i418.not.i, label %if.else.i, label %if.then256.i

if.then256.i:                                     ; preds = %clean_up.i
  call void @__sanitizer_cov_trace_pc() #20
  %361 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %base_addr.i, align 32
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %363 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %_tx.i.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %364) #18
  %365 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %a1.i, align 8
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %call1.i.i = tail call zeroext i16 %368(i32 noundef %362, i32 noundef 3) #18
  %369 = and i16 %call1.i.i, 255
  %370 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %a1.i, align 8
  %write_csr.i.i = getelementptr inbounds %struct.pcnet32_access, ptr %371, i32 0, i32 1
  %372 = ptrtoint ptr %write_csr.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %write_csr.i.i, align 4
  tail call void %373(i32 noundef %362, i32 noundef 3, i16 noundef zeroext %369) #18
  %napi.i.i = getelementptr i8, ptr %dev, i32 2440
  tail call void @napi_enable(ptr noundef %napi.i.i) #18
  tail call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 66) #18
  br label %pcnet32_loopback_test.exit

if.else.i:                                        ; preds = %clean_up.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @pcnet32_purge_rx_ring(ptr noundef %dev) #18
  %374 = ptrtoint ptr %a1.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %a1.i, align 8
  %write_bcr258.i = getelementptr inbounds %struct.pcnet32_access, ptr %375, i32 0, i32 3
  %376 = ptrtoint ptr %write_bcr258.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %write_bcr258.i, align 4
  tail call void %377(i32 noundef %5, i32 noundef 20, i16 noundef zeroext 4) #18
  br label %pcnet32_loopback_test.exit

pcnet32_loopback_test.exit:                       ; preds = %if.else.i, %if.then256.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.3.i) #18
  %msg_enable7 = getelementptr i8, ptr %dev, i32 2760
  %378 = ptrtoint ptr %msg_enable7 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %msg_enable7, align 8
  %and8 = and i32 %379, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %pcnet32_loopback_test.exit
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %if.then4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.158) #21
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body.do.end_crit_edge
  %380 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %flags, align 4
  %or = or i32 %381, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end24

do.body6:                                         ; preds = %pcnet32_loopback_test.exit
  br i1 %tobool9.not, label %do.body6.if.end24_crit_edge, label %if.then10

do.body6.if.end24_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.159) #21
  br label %if.end24

do.body16:                                        ; preds = %entry
  %msg_enable17 = getelementptr i8, ptr %dev, i32 2760
  %382 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %msg_enable17, align 8
  %and18 = and i32 %383, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body16.if.end24_crit_edge, label %if.then20

do.body16.if.end24_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.128, ptr noundef %dev, ptr noundef nonnull @.str.160) #21
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body16.if.end24_crit_edge, %if.then10, %do.body6.if.end24_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pcnet32_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr @pcnet32_gstrings_test, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_set_phys_id(ptr noundef %dev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %a1 = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a1, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %4 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 1, label %do.body2
    i32 2, label %entry.do.body13_crit_edge
    i32 3, label %entry.do.body13_crit_edge100
    i32 0, label %do.body40
  ]

entry.do.body13_crit_edge100:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body13

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body13

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_bcr, align 4
  %call9 = tail call zeroext i16 %6(i32 noundef %3, i32 noundef 4) #18
  %arrayidx = getelementptr i8, ptr %dev, i32 2770
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call9, ptr %arrayidx, align 2
  %8 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_bcr, align 4
  %call9.1 = tail call zeroext i16 %9(i32 noundef %3, i32 noundef 5) #18
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2772
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call9.1, ptr %arrayidx.1, align 2
  %11 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_bcr, align 4
  %call9.2 = tail call zeroext i16 %12(i32 noundef %3, i32 noundef 6) #18
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2774
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %call9.2, ptr %arrayidx.2, align 2
  %14 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_bcr, align 4
  %call9.3 = tail call zeroext i16 %15(i32 noundef %3, i32 noundef 7) #18
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 2776
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call9.3, ptr %arrayidx.3, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #18
  br label %cleanup

do.body13:                                        ; preds = %entry.do.body13_crit_edge, %entry.do.body13_crit_edge100
  %lock19 = getelementptr i8, ptr %dev, i32 2348
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock19) #18
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 3
  %read_bcr30 = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_bcr, align 4
  %19 = ptrtoint ptr %read_bcr30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_bcr30, align 4
  %call31 = tail call zeroext i16 %20(i32 noundef %3, i32 noundef 4) #18
  %21 = xor i16 %call31, 16384
  tail call void %18(i32 noundef %3, i32 noundef 4, i16 noundef zeroext %21) #18
  %22 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_bcr, align 4
  %24 = ptrtoint ptr %read_bcr30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_bcr30, align 4
  %call31.1 = tail call zeroext i16 %25(i32 noundef %3, i32 noundef 5) #18
  %26 = xor i16 %call31.1, 16384
  tail call void %23(i32 noundef %3, i32 noundef 5, i16 noundef zeroext %26) #18
  %27 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_bcr, align 4
  %29 = ptrtoint ptr %read_bcr30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_bcr30, align 4
  %call31.2 = tail call zeroext i16 %30(i32 noundef %3, i32 noundef 6) #18
  %31 = xor i16 %call31.2, 16384
  tail call void %28(i32 noundef %3, i32 noundef 6, i16 noundef zeroext %31) #18
  %32 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_bcr, align 4
  %34 = ptrtoint ptr %read_bcr30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_bcr30, align 4
  %call31.3 = tail call zeroext i16 %35(i32 noundef %3, i32 noundef 7) #18
  %36 = xor i16 %call31.3, 16384
  tail call void %33(i32 noundef %3, i32 noundef 7, i16 noundef zeroext %36) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock19, i32 noundef %call21) #18
  br label %cleanup

do.body40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %lock46 = getelementptr i8, ptr %dev, i32 2348
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock46) #18
  %write_bcr57 = getelementptr inbounds %struct.pcnet32_access, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %write_bcr57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_bcr57, align 4
  %arrayidx60 = getelementptr i8, ptr %dev, i32 2770
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx60, align 2
  tail call void %38(i32 noundef %3, i32 noundef 4, i16 noundef zeroext %40) #18
  %41 = ptrtoint ptr %write_bcr57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_bcr57, align 4
  %arrayidx60.1 = getelementptr i8, ptr %dev, i32 2772
  %43 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx60.1, align 2
  tail call void %42(i32 noundef %3, i32 noundef 5, i16 noundef zeroext %44) #18
  %45 = ptrtoint ptr %write_bcr57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_bcr57, align 4
  %arrayidx60.2 = getelementptr i8, ptr %dev, i32 2774
  %47 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx60.2, align 2
  tail call void %46(i32 noundef %3, i32 noundef 6, i16 noundef zeroext %48) #18
  %49 = ptrtoint ptr %write_bcr57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_bcr57, align 4
  %arrayidx60.3 = getelementptr i8, ptr %dev, i32 2776
  %51 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx60.3, align 2
  tail call void %50(i32 noundef %3, i32 noundef 7, i16 noundef zeroext %52) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock46, i32 noundef %call48) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %do.body13, %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.body2 ], [ 0, %do.body40 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcnet32_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %cond = icmp eq i32 %sset, 0
  %. = select i1 %cond, i32 1, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %mii = getelementptr i8, ptr %dev, i32 2672
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %mii, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #18
  br label %if.end48

if.else:                                          ; preds = %entry
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %3)
  %cmp7 = icmp eq i16 %3, 9761
  br i1 %cmp7, label %if.then9, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then9:                                         ; preds = %if.else
  %4 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not = icmp eq i8 %4, 0
  %autoneg28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  br i1 %tobool14.not, label %if.else26, label %if.then15

if.then15:                                        ; preds = %if.then9
  %5 = ptrtoint ptr %autoneg28 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %autoneg28, align 1
  %a = getelementptr i8, ptr %dev, i32 2344
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_bcr, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %call17 = tail call zeroext i16 %9(i32 noundef %11, i32 noundef 4) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %call17)
  %cmp19 = icmp eq i16 %call17, 192
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %port, align 1
  br label %if.end37

if.else23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %port, align 1
  br label %if.end37

if.else26:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %autoneg28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %autoneg28, align 1
  %15 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load29 = load i8, ptr %mii, align 8
  %16 = lshr i8 %bf.load29, 3
  %.lobit = and i8 %16, 1
  %17 = xor i8 %.lobit, 1
  %port36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %port36 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %port36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.else26, %if.else23, %if.then21
  %19 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load38 = load i8, ptr %mii, align 8
  %20 = lshr i8 %bf.load38, 2
  %.lobit67 = and i8 %20, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.lobit67, ptr %duplex, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %22 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %speed, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 384) #18
  br label %if.end48

if.end48:                                         ; preds = %if.end37, %if.else.if.end48_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #3 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #18
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %flags, align 4
  %mii = getelementptr i8, ptr %dev, i32 2672
  %3 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %mii, align 8
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %mii_if = getelementptr i8, ptr %dev, i32 2680
  %call6 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #18
  br label %if.end96

if.else:                                          ; preds = %entry
  %chip_version = getelementptr i8, ptr %dev, i32 2768
  %5 = ptrtoint ptr %chip_version to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %chip_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9761, i16 %6)
  %cmp8 = icmp eq i16 %6, 9761
  br i1 %cmp8, label %if.then10, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

if.then10:                                        ; preds = %if.else
  %call11 = call fastcc i32 @pcnet32_suspend(ptr noundef %dev, ptr noundef nonnull %flags, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then10.if.end_crit_edge

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #20
  %a = getelementptr i8, ptr %dev, i32 2344
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a, align 8
  %write_csr = getelementptr inbounds %struct.pcnet32_access, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_csr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_csr, align 4
  tail call void %10(i32 noundef %1, i32 noundef 0, i16 noundef zeroext 4) #18
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then10.if.end_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp15 = icmp eq i8 %12, 1
  %13 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load18 = load i8, ptr %mii, align 8
  %bf.shl = select i1 %cmp15, i8 16, i8 0
  %bf.clear19 = and i8 %bf.load18, -17
  %bf.set = or i8 %bf.clear19, %bf.shl
  store i8 %bf.set, ptr %mii, align 8
  %a20 = getelementptr i8, ptr %dev, i32 2344
  %14 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %a20, align 8
  %read_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_bcr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_bcr, align 4
  %call21 = tail call zeroext i16 %17(i32 noundef %1, i32 noundef 2) #18
  %18 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp26 = icmp eq i8 %19, 1
  %20 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a20, align 8
  %write_bcr = getelementptr inbounds %struct.pcnet32_access, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_bcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_bcr, align 4
  br i1 %cmp26, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %24 = or i16 %call21, 2
  tail call void %23(i32 noundef %1, i32 noundef 2, i16 noundef zeroext %24) #18
  br label %if.end87

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %and = and i16 %call21, -3
  tail call void %23(i32 noundef %1, i32 noundef 2, i16 noundef zeroext %and) #18
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp37 = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load39 = load i8, ptr %mii, align 8
  %bf.shl41 = select i1 %cmp37, i8 8, i8 0
  %bf.clear42 = and i8 %bf.load39, -9
  %bf.set43 = or i8 %bf.clear42, %bf.shl41
  store i8 %bf.set43, ptr %mii, align 8
  %28 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %a20, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call46 = tail call zeroext i16 %31(i32 noundef %1, i32 noundef 15) #18
  %32 = and i16 %call46, -385
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp52 = icmp eq i8 %34, 0
  %or55 = or i16 %32, 128
  %spec.select = select i1 %cmp52, i16 %or55, i16 %32
  %35 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a20, align 8
  %write_csr58 = getelementptr inbounds %struct.pcnet32_access, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_csr58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_csr58, align 4
  tail call void %38(i32 noundef %1, i32 noundef 15, i16 noundef zeroext %spec.select) #18
  %39 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %39, ptr %41, align 4
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %43 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp63 = icmp eq i8 %44, 1
  %45 = ptrtoint ptr %mii to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load65 = load i8, ptr %mii, align 8
  %bf.shl67 = select i1 %cmp63, i8 4, i8 0
  %bf.clear68 = and i8 %bf.load65, -5
  %bf.set69 = or i8 %bf.clear68, %bf.shl67
  store i8 %bf.set69, ptr %mii, align 8
  %46 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %a20, align 8
  %read_bcr72 = getelementptr inbounds %struct.pcnet32_access, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read_bcr72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read_bcr72, align 4
  %call73 = tail call zeroext i16 %49(i32 noundef %1, i32 noundef 9) #18
  %50 = and i16 %call73, -4
  %51 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp79 = icmp eq i8 %52, 1
  %masksel = select i1 %cmp79, i16 3, i16 0
  %bcr9.0 = or i16 %masksel, %50
  %53 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %a20, align 8
  %write_bcr85 = getelementptr inbounds %struct.pcnet32_access, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %write_bcr85 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_bcr85, align 4
  tail call void %56(i32 noundef %1, i32 noundef 9, i16 noundef zeroext %bcr9.0) #18
  br label %if.end87

if.end87:                                         ; preds = %if.else31, %if.then28
  br i1 %tobool12.not, label %if.else90, label %if.then89

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #20
  %57 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %a20, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i = tail call zeroext i16 %60(i32 noundef %1, i32 noundef 5) #18
  %61 = ptrtoint ptr %a20 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %a20, align 8
  %write_csr.i = getelementptr inbounds %struct.pcnet32_access, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_csr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_csr.i, align 4
  %65 = and i16 %call.i, -2
  tail call void %64(i32 noundef %1, i32 noundef 5, i16 noundef zeroext %65) #18
  br label %if.end96

if.else90:                                        ; preds = %if.end87
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else90.if.end96_crit_edge, label %if.then92

if.else90.if.end96_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end96

if.then92:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @pcnet32_restart(ptr noundef %dev, i32 noundef 66)
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.else90.if.end96_crit_edge, %if.then89, %if.else.if.end96_crit_edge, %if.then
  %r.0 = phi i32 [ %call6, %if.then ], [ -95, %if.else.if.end96_crit_edge ], [ 0, %if.else90.if.end96_crit_edge ], [ 0, %if.then92 ], [ 0, %if.then89 ]
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %69) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #18
  ret i32 %r.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcnet32_netif_stop(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i.i = icmp eq i32 %4, %2
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %2, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2440
  tail call void @napi_disable(ptr noundef %napi) #18
  tail call fastcc void @local_bh_disable() #18
  %6 = tail call i32 @llvm.read_register.i32(metadata !397) #18
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #18
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13.not.i = icmp eq i32 %11, 0
  br i1 %cmp13.not.i, label %netif_trans_update.exit.netif_tx_disable.exit_crit_edge, label %netif_trans_update.exit.for.body.i_crit_edge

netif_trans_update.exit.for.body.i_crit_edge:     ; preds = %netif_trans_update.exit
  br label %for.body.i

netif_trans_update.exit.netif_tx_disable.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_disable.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %netif_trans_update.exit.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %netif_trans_update.exit.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #18
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %i.014.i, i32 11
  %14 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %9, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %13, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %15 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #18
  %inc.i = add nuw i32 %i.014.i, 1
  %16 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %netif_trans_update.exit.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #18
  tail call fastcc void @local_bh_enable() #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_pm_suspend(ptr nocapture noundef readonly %device_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device_d, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @netif_device_detach(ptr noundef %1) #18
  %call2 = tail call i32 @pcnet32_close(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet32_pm_resume(ptr nocapture noundef readonly %device_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device_d, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 @pcnet32_open(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !141, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267, !269, !271, !273, !275, !276, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !316, !318, !320, !322, !323, !324, !325, !327, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !341, !342, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !374, !375, !376, !378, !379, !380, !382, !384, !386, !388, !389, !390, !391, !393, !395}
!llvm.named.register.sp = !{!397}
!llvm.module.flags = !{!398, !399, !400, !401, !402, !403, !404, !405}
!llvm.ident = !{!406}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2970, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype351, !1, !"__UNIQUE_ID_debugtype351", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug352, !4, !"__UNIQUE_ID_debug352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2971, i32 1}
!5 = !{ptr @__param_max_interrupt_work, !6, !"__param_max_interrupt_work", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2972, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_interrupt_worktype353, !6, !"__UNIQUE_ID_max_interrupt_worktype353", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_interrupt_work354, !9, !"__UNIQUE_ID_max_interrupt_work354", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2973, i32 1}
!10 = !{ptr @__param_rx_copybreak, !11, !"__param_rx_copybreak", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2975, i32 1}
!12 = !{ptr @__UNIQUE_ID_rx_copybreaktype355, !11, !"__UNIQUE_ID_rx_copybreaktype355", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rx_copybreak356, !14, !"__UNIQUE_ID_rx_copybreak356", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2976, i32 1}
!15 = !{ptr @__param_tx_start_pt, !16, !"__param_tx_start_pt", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2978, i32 1}
!17 = !{ptr @__UNIQUE_ID_tx_start_pttype357, !16, !"__UNIQUE_ID_tx_start_pttype357", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_tx_start_pt358, !19, !"__UNIQUE_ID_tx_start_pt358", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2979, i32 1}
!20 = !{ptr @__param_pcnet32vlb, !21, !"__param_pcnet32vlb", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2980, i32 1}
!22 = !{ptr @__UNIQUE_ID_pcnet32vlbtype359, !21, !"__UNIQUE_ID_pcnet32vlbtype359", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_pcnet32vlb360, !24, !"__UNIQUE_ID_pcnet32vlb360", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2981, i32 1}
!25 = !{ptr @__param_options, !26, !"__param_options", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2982, i32 1}
!27 = !{ptr @__UNIQUE_ID_optionstype361, !26, !"__UNIQUE_ID_optionstype361", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_options362, !29, !"__UNIQUE_ID_options362", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2983, i32 1}
!30 = !{ptr @__param_full_duplex, !31, !"__param_full_duplex", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2984, i32 1}
!32 = !{ptr @__UNIQUE_ID_full_duplextype363, !31, !"__UNIQUE_ID_full_duplextype363", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_full_duplex364, !34, !"__UNIQUE_ID_full_duplex364", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2985, i32 1}
!35 = !{ptr @__param_homepna, !36, !"__param_homepna", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2987, i32 1}
!37 = !{ptr @__UNIQUE_ID_homepnatype365, !36, !"__UNIQUE_ID_homepnatype365", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_homepna366, !39, !"__UNIQUE_ID_homepna366", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2988, i32 1}
!40 = !{ptr @__UNIQUE_ID_author367, !41, !"__UNIQUE_ID_author367", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2992, i32 1}
!42 = !{ptr @__UNIQUE_ID_description368, !43, !"__UNIQUE_ID_description368", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2993, i32 1}
!44 = !{ptr @__UNIQUE_ID_file369, !45, !"__UNIQUE_ID_file369", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2994, i32 1}
!46 = !{ptr @__UNIQUE_ID_license370, !45, !"__UNIQUE_ID_license370", i1 false, i1 false}
!47 = !{ptr @__initcall__kmod_pcnet32__371_3039_pcnet32_init_module6, !48, !"__initcall__kmod_pcnet32__371_3039_pcnet32_init_module6", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 3039, i32 1}
!49 = !{ptr @__exitcall_pcnet32_cleanup_module, !50, !"__exitcall_pcnet32_cleanup_module", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 3040, i32 1}
!51 = !{ptr @pcnet32vlb, !52, !"pcnet32vlb", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 86, i32 12}
!53 = !{ptr @pcnet32_dev, !54, !"pcnet32_dev", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 88, i32 27}
!55 = distinct !{null, !56, !"pcnet32_have_pci", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2968, i32 12}
!57 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!58 = !{ptr @debug, !59, !"debug", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2966, i32 12}
!60 = !{ptr @__param_str_max_interrupt_work, !6, !"__param_str_max_interrupt_work", i1 false, i1 false}
!61 = !{ptr @max_interrupt_work, !62, !"max_interrupt_work", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 90, i32 12}
!63 = !{ptr @__param_str_rx_copybreak, !11, !"__param_str_rx_copybreak", i1 false, i1 false}
!64 = !{ptr @rx_copybreak, !65, !"rx_copybreak", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 91, i32 12}
!66 = !{ptr @__param_str_tx_start_pt, !16, !"__param_str_tx_start_pt", i1 false, i1 false}
!67 = !{ptr @tx_start_pt, !68, !"tx_start_pt", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2967, i32 12}
!69 = !{ptr @__param_str_pcnet32vlb, !21, !"__param_str_pcnet32vlb", i1 false, i1 false}
!70 = !{ptr @__param_str_options, !26, !"__param_str_options", i1 false, i1 false}
!71 = !{ptr @__param_arr_options, !26, !"__param_arr_options", i1 false, i1 false}
!72 = !{ptr @options, !73, !"options", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 141, i32 12}
!74 = !{ptr @__param_str_full_duplex, !31, !"__param_str_full_duplex", i1 false, i1 false}
!75 = !{ptr @__param_arr_full_duplex, !31, !"__param_arr_full_duplex", i1 false, i1 false}
!76 = !{ptr @full_duplex, !77, !"full_duplex", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 142, i32 12}
!78 = !{ptr @__param_str_homepna, !36, !"__param_str_homepna", i1 false, i1 false}
!79 = !{ptr @__param_arr_homepna, !36, !"__param_arr_homepna", i1 false, i1 false}
!80 = !{ptr @homepna, !81, !"homepna", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 143, i32 12}
!82 = !{ptr @.str, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2956, i32 10}
!84 = !{ptr @pcnet32_driver, !85, !"pcnet32_driver", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2955, i32 26}
!86 = !{ptr @pcnet32_pci_tbl, !87, !"pcnet32_pci_tbl", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 60, i32 35}
!88 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1536, i32 4}
!90 = !{ptr @.str.2, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.3, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pcnet32_probe_pci._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @pcnet32_probe_pci._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.5, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1543, i32 4}
!96 = !{ptr @pcnet32_probe_pci._entry.4, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @pcnet32_probe_pci._entry_ptr.6, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.8, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1551, i32 4}
!100 = !{ptr @pcnet32_probe_pci._entry.7, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @pcnet32_probe_pci._entry_ptr.9, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.11, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1558, i32 4}
!104 = !{ptr @pcnet32_probe_pci._entry.10, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @pcnet32_probe_pci._entry_ptr.12, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @pcnet32_debug, !107, !"pcnet32_debug", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 84, i32 12}
!108 = !{ptr @.str.13, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1618, i32 5}
!110 = !{ptr @.str.14, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pcnet32_probe1._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @pcnet32_probe1._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.16, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1626, i32 3}
!115 = !{ptr @pcnet32_probe1._entry.15, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @pcnet32_probe1._entry_ptr.17, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.19, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1629, i32 4}
!119 = !{ptr @pcnet32_probe1._entry.18, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @pcnet32_probe1._entry_ptr.20, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.21, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1639, i32 14}
!123 = !{ptr @.str.22, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1645, i32 15}
!125 = !{ptr @.str.23, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1648, i32 14}
!127 = !{ptr @.str.24, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1652, i32 14}
!129 = !{ptr @.str.25, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1658, i32 14}
!131 = !{ptr @.str.26, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1664, i32 14}
!133 = !{ptr @.str.27, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1670, i32 14}
!135 = !{ptr @.str.29, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1683, i32 4}
!137 = !{ptr @pcnet32_probe1._entry.28, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @pcnet32_probe1._entry_ptr.30, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.32, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.33, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1688, i32 14}
!143 = !{ptr @.str.34, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1694, i32 14}
!145 = !{ptr @.str.36, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1700, i32 4}
!147 = !{ptr @pcnet32_probe1._entry.35, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @pcnet32_probe1._entry_ptr.37, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1755, i32 3}
!151 = !{ptr @pcnet32_probe1._entry.38, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @pcnet32_probe1._entry_ptr.40, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.42, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1781, i32 5}
!155 = !{ptr @pcnet32_probe1._entry.41, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @pcnet32_probe1._entry_ptr.43, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1782, i32 5}
!159 = !{ptr @pcnet32_probe1._entry.44, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pcnet32_probe1._entry_ptr.46, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @pcnet32_probe1.zero_addr, !162, !"zero_addr", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1790, i32 19}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1796, i32 3}
!165 = !{ptr @pcnet32_probe1._entry.47, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @pcnet32_probe1._entry_ptr.49, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1801, i32 4}
!169 = !{ptr @pcnet32_probe1._entry.50, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @pcnet32_probe1._entry_ptr.52, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.54, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1804, i32 5}
!173 = !{ptr @pcnet32_probe1._entry.53, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @pcnet32_probe1._entry_ptr.55, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1807, i32 5}
!177 = !{ptr @pcnet32_probe1._entry.56, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @pcnet32_probe1._entry_ptr.58, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.60, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1810, i32 5}
!181 = !{ptr @pcnet32_probe1._entry.59, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @pcnet32_probe1._entry_ptr.61, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1813, i32 5}
!185 = !{ptr @pcnet32_probe1._entry.62, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @pcnet32_probe1._entry_ptr.64, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.66, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1817, i32 4}
!189 = !{ptr @pcnet32_probe1._entry.65, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @pcnet32_probe1._entry_ptr.67, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1819, i32 5}
!193 = !{ptr @pcnet32_probe1._entry.68, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @pcnet32_probe1._entry_ptr.70, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1821, i32 5}
!197 = !{ptr @pcnet32_probe1._entry.71, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @pcnet32_probe1._entry_ptr.73, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1823, i32 5}
!201 = !{ptr @pcnet32_probe1._entry.74, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @pcnet32_probe1._entry_ptr.76, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1825, i32 5}
!205 = !{ptr @pcnet32_probe1._entry.77, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @pcnet32_probe1._entry_ptr.79, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1827, i32 4}
!209 = !{ptr @pcnet32_probe1._entry.80, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @pcnet32_probe1._entry_ptr.82, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1829, i32 4}
!213 = !{ptr @pcnet32_probe1._entry.83, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @pcnet32_probe1._entry_ptr.85, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.87, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1832, i32 5}
!217 = !{ptr @pcnet32_probe1._entry.86, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @pcnet32_probe1._entry_ptr.88, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1844, i32 4}
!221 = !{ptr @pcnet32_probe1._entry.89, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @pcnet32_probe1._entry_ptr.91, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @pcnet32_probe1.__key, !224, !"__key", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1852, i32 2}
!225 = !{ptr @.str.92, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.94, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1921, i32 4}
!228 = !{ptr @pcnet32_probe1._entry.93, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @pcnet32_probe1._entry_ptr.95, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1937, i32 5}
!232 = !{ptr @pcnet32_probe1._entry.96, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @pcnet32_probe1._entry_ptr.98, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1942, i32 4}
!236 = !{ptr @pcnet32_probe1._entry.99, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @pcnet32_probe1._entry_ptr.101, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1966, i32 5}
!240 = !{ptr @pcnet32_probe1._entry.102, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @pcnet32_probe1._entry_ptr.104, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @pcnet32_probe1.__key.105, !243, !"__key", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1974, i32 2}
!244 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.108, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1993, i32 3}
!247 = !{ptr @pcnet32_probe1._entry.107, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @pcnet32_probe1._entry_ptr.109, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @pcnet32_wio, !250, !"pcnet32_wio", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 381, i32 36}
!251 = !{ptr @pcnet32_dwio, !252, !"pcnet32_dwio", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 436, i32 36}
!253 = !{ptr @cards_found, !254, !"cards_found", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 76, i32 12}
!255 = !{ptr @options_mapping, !256, !"options_mapping", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 112, i32 28}
!257 = !{ptr @.str.110, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1204, i32 3}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1210, i32 3}
!261 = !{ptr @.str.112, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1231, i32 5}
!263 = distinct !{null, !264, !"__already_done", i1 false, i1 false}
!264 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!265 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1320, i32 4}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1334, i32 5}
!271 = !{ptr @.str.117, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1369, i32 3}
!273 = !{ptr @.str.118, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2432, i32 3}
!275 = !{ptr @__func__.pcnet32_restart, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.119, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2372, i32 5}
!278 = !{ptr @__func__.pcnet32_init_ring, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.120, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2386, i32 5}
!281 = !{ptr @.str.121, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2021, i32 3}
!283 = !{ptr @.str.122, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2862, i32 4}
!285 = !{ptr @.str.123, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2874, i32 22}
!287 = !{ptr @.str.124, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2877, i32 12}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2877, i32 21}
!291 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2888, i32 4}
!293 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2808, i32 5}
!295 = !{ptr @pcnet32_netdev_ops, !296, !"pcnet32_netdev_ops", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1572, i32 36}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2116, i32 2}
!299 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @__func__.pcnet32_open, !298, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.130, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2159, i32 4}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2295, i32 2}
!305 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2571, i32 3}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2593, i32 4}
!309 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2610, i32 2}
!311 = !{ptr @.str.135, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2634, i32 2}
!313 = !{ptr @.str.136, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2500, i32 2}
!315 = !{ptr @__func__.pcnet32_start_xmit, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.137, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2724, i32 3}
!318 = !{ptr @.str.138, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 703, i32 4}
!320 = !{ptr @.str.139, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2457, i32 3}
!322 = !{ptr @.str.140, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @pcnet32_tx_timeout._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @pcnet32_tx_timeout._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.142, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2463, i32 3}
!327 = !{ptr @pcnet32_tx_timeout._entry.141, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @pcnet32_tx_timeout._entry_ptr.143, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.144, !326, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.147, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2468, i32 4}
!333 = !{ptr @pcnet32_tx_timeout._entry.146, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @pcnet32_tx_timeout._entry_ptr.148, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.149, !332, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @pcnet32_tx_timeout._entry.150, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2474, i32 4}
!338 = !{ptr @pcnet32_tx_timeout._entry_ptr.151, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.153, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2479, i32 3}
!341 = !{ptr @pcnet32_tx_timeout._entry.152, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @pcnet32_tx_timeout._entry_ptr.154, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @pcnet32_ethtool_ops, !344, !"pcnet32_ethtool_ops", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1487, i32 33}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 806, i32 4}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 924, i32 2}
!349 = !{ptr @__func__.pcnet32_realloc_rx_ring, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 575, i32 4}
!351 = !{ptr @.str.157, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 585, i32 4}
!353 = !{ptr @.str.158, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 955, i32 4}
!355 = !{ptr @.str.159, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 959, i32 4}
!357 = !{ptr @.str.160, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 962, i32 3}
!359 = distinct !{null, !360, !"data_len", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 979, i32 19}
!361 = !{ptr @.str.161, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1010, i32 4}
!363 = !{ptr @.str.162, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1039, i32 4}
!365 = !{ptr @.str.163, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1071, i32 4}
!367 = !{ptr @.str.164, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1079, i32 34}
!369 = !{ptr @.str.165, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1082, i32 35}
!371 = !{ptr @.str.166, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1085, i32 5}
!373 = !{ptr @.str.167, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @pcnet32_loopback_test._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @pcnet32_loopback_test._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.169, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1086, i32 4}
!378 = !{ptr @pcnet32_loopback_test._entry.168, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @pcnet32_loopback_test._entry_ptr.170, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.171, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1097, i32 5}
!382 = !{ptr @pcnet32_gstrings_test, !383, !"pcnet32_gstrings_test", i1 false, i1 false}
!383 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 132, i32 19}
!384 = !{ptr @pcnet32_pm_ops, !385, !"pcnet32_pm_ops", i1 false, i1 false}
!385 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 2953, i32 8}
!386 = !{ptr @.str.172, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 3014, i32 3}
!388 = !{ptr @.str.173, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @pcnet32_init_module._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @pcnet32_init_module._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = distinct !{null, !392, !"tx_start", i1 false, i1 false}
!392 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 85, i32 12}
!393 = !{ptr @.str.174, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 1514, i32 7}
!395 = !{ptr @pcnet32_portlist, !396, !"pcnet32_portlist", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/amd/pcnet32.c", i32 81, i32 21}
!397 = !{!"sp"}
!398 = !{i32 1, !"wchar_size", i32 2}
!399 = !{i32 1, !"min_enum_size", i32 4}
!400 = !{i32 8, !"branch-target-enforcement", i32 0}
!401 = !{i32 8, !"sign-return-address", i32 0}
!402 = !{i32 8, !"sign-return-address-all", i32 0}
!403 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!404 = !{i32 7, !"uwtable", i32 1}
!405 = !{i32 7, !"frame-pointer", i32 2}
!406 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!407 = !{i64 5125295}
!408 = !{i64 2156638734}
!409 = !{i64 2156639017}
!410 = !{i64 5124677}
!411 = !{i64 2156585432}
!412 = !{i64 2156579751}
!413 = !{i64 5124477}
!414 = !{i64 2156580629}
!415 = !{i64 2156585684}
!416 = !{i64 2156586556}
!417 = !{i64 5125515}
!418 = !{i64 2156592492}
!419 = !{i64 2156586811}
!420 = !{i64 5125097}
!421 = !{i64 2156587689}
!422 = !{i64 2156592744}
!423 = !{i64 2156593616}
!424 = !{i64 2156658478}
!425 = !{!"branch_weights", i32 1, i32 2000}
!426 = !{!"branch_weights", i32 2000, i32 1}
!427 = !{i64 2156633759}
!428 = !{i64 2156580884}
!429 = !{i64 2156581356}
!430 = !{i64 2156581826}
!431 = !{i64 2156582704}
!432 = !{i64 2156582959}
!433 = !{i64 2156583431}
!434 = !{i64 2156584305}
!435 = !{i64 2156584558}
!436 = !{i64 2156587944}
!437 = !{i64 2156588416}
!438 = !{i64 2156588886}
!439 = !{i64 2156589764}
!440 = !{i64 2156590019}
!441 = !{i64 2156590491}
!442 = !{i64 2156591365}
!443 = !{i64 2156591618}
!444 = !{i64 2156703927}
!445 = !{i64 2156704595}
!446 = !{i64 2156705583}
!447 = !{i64 2156705832}
!448 = !{i64 2156706393}
!449 = !{i64 2156718484}
!450 = !{i64 2156602251}
!451 = !{i64 2156638342}
!452 = !{!"auto-init"}
!453 = !{i64 2156625339}
!454 = !{i64 2156625644}
!455 = !{i64 2156626085}
!456 = !{i64 2156626648}
