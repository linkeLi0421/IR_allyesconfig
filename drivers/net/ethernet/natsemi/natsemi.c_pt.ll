; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/natsemi/natsemi.c_pt.bc'
source_filename = "../drivers/net/ethernet/natsemi/natsemi.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.122 = type { ptr, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.netdev_desc = type { i32, i32, i32, i32 }
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
%struct.netdev_private = type { i32, ptr, ptr, [32 x ptr], [32 x i32], [16 x ptr], [16 x i32], ptr, ptr, %struct.napi_struct, %struct.timer_list, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i16, i32, i16, i8, i8, i16, i32, %struct.spinlock, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author343 = internal constant [48 x i8] c"natsemi.author=Donald Becker <becker@scyld.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [78 x i8] c"natsemi.description=National Semiconductor DP8381x series PCI Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [50 x i8] c"natsemi.file=drivers/net/ethernet/natsemi/natsemi\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"natsemi.license=GPL\00", section ".modinfo", align 1
@__param_str_mtu = internal constant [12 x i8] c"natsemi.mtu\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mtu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mtu = internal constant %struct.kernel_param { ptr @__param_str_mtu, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mtu } }, section "__param", align 4
@__UNIQUE_ID_mtutype347 = internal constant [25 x i8] c"natsemi.parmtype=mtu:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"natsemi.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype348 = internal constant [27 x i8] c"natsemi.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"natsemi.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype349 = internal constant [34 x i8] c"natsemi.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__param_str_dspcfg_workaround = internal constant [26 x i8] c"natsemi.dspcfg_workaround\00", align 1
@dspcfg_workaround = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_dspcfg_workaround = internal constant %struct.kernel_param { ptr @__param_str_dspcfg_workaround, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @dspcfg_workaround } }, section "__param", align 4
@__UNIQUE_ID_dspcfg_workaroundtype350 = internal constant [39 x i8] c"natsemi.parmtype=dspcfg_workaround:int\00", section ".modinfo", align 1
@__param_str_options = internal constant [16 x i8] c"natsemi.options\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_options = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @options }, align 4
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_options } }, section "__param", align 4
@__UNIQUE_ID_optionstype351 = internal constant [38 x i8] c"natsemi.parmtype=options:array of int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [20 x i8] c"natsemi.full_duplex\00", align 1
@__param_arr_full_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @full_duplex }, align 4
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype352 = internal constant [42 x i8] c"natsemi.parmtype=full_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_mtu353 = internal constant [42 x i8] c"natsemi.parm=mtu:DP8381x MTU (all boards)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug354 = internal constant [47 x i8] c"natsemi.parm=debug:DP8381x default debug level\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak355 = internal constant [76 x i8] c"natsemi.parm=rx_copybreak:DP8381x copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__UNIQUE_ID_dspcfg_workaround356 = internal constant [66 x i8] c"natsemi.parm=dspcfg_workaround:DP8381x: control DspCfg workaround\00", section ".modinfo", align 1
@__UNIQUE_ID_options357 = internal constant [72 x i8] c"natsemi.parm=options:DP8381x: Bits 0-3: media type, bit 17: full duplex\00", section ".modinfo", align 1
@__UNIQUE_ID_full_duplex358 = internal constant [60 x i8] c"natsemi.parm=full_duplex:DP8381x full duplex setting(s) (1)\00", section ".modinfo", align 1
@natsemi_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @natsemi_pci_tbl, ptr @natsemi_probe1, ptr @natsemi_remove1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @natsemi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_natsemi__359_3383_natsemi_init_mod6 = internal global ptr @natsemi_init_mod, section ".initcall6.init", align 4
@__exitcall_natsemi_exit_mod = internal global ptr @natsemi_exit_mod, section ".exitcall.exit", align 4
@options = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@full_duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"natsemi\00", [24 x i8] zeroinitializer }, align 32
@natsemi_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4107, i32 32, i32 4825, i32 12, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4107, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@natsemi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @natsemi_suspend, ptr @natsemi_resume, ptr @natsemi_suspend, ptr @natsemi_resume, ptr @natsemi_suspend, ptr @natsemi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@natsemi_probe1.find_cnt = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@natsemi_probe1.printed_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@natsemi_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"natsemi_probe1\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/natsemi/natsemi.c\00", [57 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr = internal global ptr @natsemi_probe1._entry, section ".printk_index", align 4
@version = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\016natsemi dp8381x driver, version 2.1, Sept 11, 2006\0A  originally by Donald Becker <becker@scyld.com>\0A  2.4.x kernel port by Jeff Garzik, Tjeerd Mulder\0A\00", [39 x i8] zeroinitializer }, align 32
@natsemi_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@natsemi_pci_info = internal constant { [2 x %struct.anon.122], [40 x i8] } { [2 x %struct.anon.122] [%struct.anon.122 { ptr @.str.67, i32 1, i32 128 }, %struct.anon.122 { ptr @.str.68, i32 0, i32 24 }], [40 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016natsemi %s: ignoring user supplied media type %d\00", [45 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.6 = internal global ptr @natsemi_probe1._entry.4, section ".printk_index", align 4
@natsemi_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netdev_open, ptr @netdev_close, ptr @start_tx, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @netdev_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @natsemi_change_mtu, ptr null, ptr @ns_tx_timeout, ptr null, ptr null, ptr null, ptr @get_stats, ptr null, ptr null, ptr @natsemi_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @get_drvinfo, ptr @get_regs_len, ptr @get_regs, ptr @get_wol, ptr @set_wol, ptr @get_msglevel, ptr @set_msglevel, ptr @nway_reset, ptr @get_link, ptr null, ptr @get_eeprom_len, ptr @get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_ksettings, ptr @set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016natsemi %s: silicon revision %#04x.\0A\00", [57 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.9 = internal global ptr @natsemi_probe1._entry.7, section ".printk_index", align 4
@dev_attr_dspcfg_workaround = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @natsemi_show_dspcfg_workaround, ptr @natsemi_set_dspcfg_workaround }, [36 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016natsemi %s: %s at %#08llx (%s), %pM, IRQ %d\00", [50 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.12 = internal global ptr @natsemi_probe1._entry.10, section ".printk_index", align 4
@natsemi_probe1._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", port TP.\0A\00", [20 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.15 = internal global ptr @natsemi_probe1._entry.13, section ".printk_index", align 4
@natsemi_probe1._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c", port MII, ignoring PHY\0A\00", [38 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.18 = internal global ptr @natsemi_probe1._entry.16, section ".printk_index", align 4
@natsemi_probe1._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c", port MII, phy ad %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@natsemi_probe1._entry_ptr.21 = internal global ptr @natsemi_probe1._entry.19, section ".printk_index", align 4
@natsemi_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Poll, status %#08x, mask %#08x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"natsemi_poll\00", [19 x i8] zeroinitializer }, align 32
@natsemi_poll._entry_ptr = internal global ptr @natsemi_poll._entry, section ".printk_index", align 4
@netdev_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 2294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017  netdev_rx() entry %d status was %#08x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdev_rx\00", [22 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr = internal global ptr @netdev_rx._entry, section ".printk_index", align 4
@netdev_rx._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 2314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014%s: Oversized(?) Ethernet frame spanned multiple buffers, entry %#08x status %#08x.\0A\00", [41 x i8] zeroinitializer }, align 32
@netdev_rx._entry_ptr.28 = internal global ptr @netdev_rx._entry.26, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@reset_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: RX reset did not complete in %d usec.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reset_rx\00", [23 x i8] zeroinitializer }, align 32
@reset_rx._entry_ptr = internal global ptr @reset_rx._entry, section ".printk_index", align 4
@reset_rx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: RX reset took %d usec.\0A\00", [34 x i8] zeroinitializer }, align 32
@reset_rx._entry_ptr.33 = internal global ptr @reset_rx._entry.31, section ".printk_index", align 4
@check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s: link down.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_link\00", [21 x i8] zeroinitializer }, align 32
@check_link._entry_ptr = internal global ptr @check_link._entry, section ".printk_index", align 4
@check_link._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015%s: link up.\0A\00", [16 x i8] zeroinitializer }, align 32
@check_link._entry_ptr.38 = internal global ptr @check_link._entry.36, section ".printk_index", align 4
@check_link._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Setting %s-duplex based on negotiated link capability.\0A\00", [34 x i8] zeroinitializer }, align 32
@check_link._entry_ptr.41 = internal global ptr @check_link._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@refill_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014%s: going OOM.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"refill_rx\00", [22 x i8] zeroinitializer }, align 32
@refill_rx._entry_ptr = internal global ptr @refill_rx._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@netdev_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: tx frame #%d finished, status %#08x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netdev_tx_done\00", [17 x i8] zeroinitializer }, align 32
@netdev_tx_done._entry_ptr = internal global ptr @netdev_tx_done._entry, section ".printk_index", align 4
@netdev_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 2409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: Autonegotiation advertising %#04x  partner %#04x.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_error\00", [19 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr = internal global ptr @netdev_error._entry, section ".printk_index", align 4
@netdev_error._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s: increased tx threshold, txcfg %#08x.\0A\00", [52 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.54 = internal global ptr @netdev_error._entry.52, section ".printk_index", align 4
@netdev_error._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 2430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015%s: tx underrun with maximum tx threshold, txcfg %#08x.\0A\00", [37 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.57 = internal global ptr @netdev_error._entry.55, section ".printk_index", align 4
@netdev_error._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s: Link wake-up event %#08x\0A\00", [32 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.60 = internal global ptr @netdev_error._entry.58, section ".printk_index", align 4
@netdev_error._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: Rx status FIFO overrun\0A\00", [34 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.63 = internal global ptr @netdev_error._entry.61, section ".printk_index", align 4
@netdev_error._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.2, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: PCI error %#08x\0A\00", [41 x i8] zeroinitializer }, align 32
@netdev_error._entry_ptr.66 = internal global ptr @netdev_error._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Aculab E1/T1 PMXc cPCI carrier card\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NatSemi DP8381[56]\00", [45 x i8] zeroinitializer }, align 32
@natsemi_reload_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014natsemi %s: EEPROM did not reload in %d usec.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"natsemi_reload_eeprom\00", [42 x i8] zeroinitializer }, align 32
@natsemi_reload_eeprom._entry_ptr = internal global ptr @natsemi_reload_eeprom._entry, section ".printk_index", align 4
@natsemi_reload_eeprom._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017natsemi %s: EEPROM reloaded in %d usec.\0A\00", [53 x i8] zeroinitializer }, align 32
@natsemi_reload_eeprom._entry_ptr.73 = internal global ptr @natsemi_reload_eeprom._entry.71, section ".printk_index", align 4
@natsemi_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: reset did not complete in %d usec.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"natsemi_reset\00", [18 x i8] zeroinitializer }, align 32
@natsemi_reset._entry_ptr = internal global ptr @natsemi_reset._entry, section ".printk_index", align 4
@natsemi_reset._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: reset completed in %d usec.\0A\00", [61 x i8] zeroinitializer }, align 32
@natsemi_reset._entry_ptr.78 = internal global ptr @natsemi_reset._entry.76, section ".printk_index", align 4
@find_mii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016natsemi %s: found external phy %08x at address %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"find_mii\00", [23 x i8] zeroinitializer }, align 32
@find_mii._entry_ptr = internal global ptr @find_mii._entry, section ".printk_index", align 4
@switch_port_external._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: switching to external transceiver.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch_port_external\00", [43 x i8] zeroinitializer }, align 32
@switch_port_external._entry_ptr = internal global ptr @switch_port_external._entry, section ".printk_index", align 4
@init_phy_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: DSPCFG mismatch after retrying for %d usec.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_phy_fixup\00", [17 x i8] zeroinitializer }, align 32
@init_phy_fixup._entry_ptr = internal global ptr @init_phy_fixup._entry, section ".printk_index", align 4
@init_phy_fixup._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: DSPCFG accepted after %d usec.\0A\00", [58 x i8] zeroinitializer }, align 32
@init_phy_fixup._entry_ptr.87 = internal global ptr @init_phy_fixup._entry.85, section ".printk_index", align 4
@switch_port_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: switching to internal transceiver.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch_port_internal\00", [43 x i8] zeroinitializer }, align 32
@switch_port_internal._entry_ptr = internal global ptr @switch_port_internal._entry, section ".printk_index", align 4
@switch_port_internal._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: phy reset did not complete in %d usec.\0A\00", [50 x i8] zeroinitializer }, align 32
@switch_port_internal._entry_ptr.92 = internal global ptr @switch_port_internal._entry.90, section ".printk_index", align 4
@netdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: netdev_open() irq %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netdev_open\00", [20 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr = internal global ptr @netdev_open._entry, section ".printk_index", align 4
@netdev_open._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Done netdev_open(), status: %#08x.\0A\00", [54 x i8] zeroinitializer }, align 32
@netdev_open._entry_ptr.97 = internal global ptr @netdev_open._entry.95, section ".printk_index", align 4
@netdev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&np->timer)\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 2206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Interrupt, status %#08x, mask %#08x.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@intr_handler._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 2218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: Ignoring interrupt, status %#08x, mask %#08x.\0A\00", [43 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr.103 = internal global ptr @intr_handler._entry.101, section ".printk_index", align 4
@dump_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017  Tx ring at %p:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_ring\00", [22 x i8] zeroinitializer }, align 32
@dump_ring._entry_ptr = internal global ptr @dump_ring._entry, section ".printk_index", align 4
@dump_ring._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 1871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017 #%d desc. %#08x %#08x %#08x.\0A\00", [63 x i8] zeroinitializer }, align 32
@dump_ring._entry_ptr.108 = internal global ptr @dump_ring._entry.106, section ".printk_index", align 4
@dump_ring._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.2, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017  Rx ring %p:\0A\00", [47 x i8] zeroinitializer }, align 32
@dump_ring._entry_ptr.111 = internal global ptr @dump_ring._entry.109, section ".printk_index", align 4
@dump_ring._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dump_ring._entry_ptr.113 = internal global ptr @dump_ring._entry.112, section ".printk_index", align 4
@init_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s: Wake-up event %#08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_registers\00", [17 x i8] zeroinitializer }, align 32
@init_registers._entry_ptr = internal global ptr @init_registers._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@netdev_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Media selection timer tick.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_timer\00", [19 x i8] zeroinitializer }, align 32
@netdev_timer._entry_ptr = internal global ptr @netdev_timer._entry, section ".printk_index", align 4
@netdev_timer._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015%s: possible phy reset: re-initializing\0A\00", [53 x i8] zeroinitializer }, align 32
@netdev_timer._entry_ptr.120 = internal global ptr @netdev_timer._entry.118, section ".printk_index", align 4
@natsemi_stop_rxtx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Tx/Rx process did not stop in %d usec.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"natsemi_stop_rxtx\00", [46 x i8] zeroinitializer }, align 32
@natsemi_stop_rxtx._entry_ptr = internal global ptr @natsemi_stop_rxtx._entry, section ".printk_index", align 4
@natsemi_stop_rxtx._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Tx/Rx process stopped in %d usec.\0A\00", [55 x i8] zeroinitializer }, align 32
@natsemi_stop_rxtx._entry_ptr.125 = internal global ptr @natsemi_stop_rxtx._entry.123, section ".printk_index", align 4
@netdev_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 3168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: Shutting down ethercard, status was %#04x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netdev_close\00", [19 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr = internal global ptr @netdev_close._entry, section ".printk_index", align 4
@netdev_close._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 3173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Queue pointers were Tx %d / %d,  Rx %d / %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@netdev_close._entry_ptr.130 = internal global ptr @netdev_close._entry.128, section ".printk_index", align 4
@enable_wol_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.2, i32 3133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: remaining active for wake-on-lan\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_wol_mode\00", [16 x i8] zeroinitializer }, align 32
@enable_wol_mode._entry_ptr = internal global ptr @enable_wol_mode._entry, section ".printk_index", align 4
@start_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 2136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Transmit frame #%d queued in slot %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"start_tx\00", [23 x i8] zeroinitializer }, align 32
@start_tx._entry_ptr = internal global ptr @start_tx._entry, section ".printk_index", align 4
@ns_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 1896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Transmit timed out, status %#08x, resetting...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ns_tx_timeout\00", [18 x i8] zeroinitializer }, align 32
@ns_tx_timeout._entry_ptr = internal global ptr @ns_tx_timeout._entry, section ".printk_index", align 4
@ns_tx_timeout._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 1905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: tx_timeout while in hands_off state?\0A\00", [52 x i8] zeroinitializer }, align 32
@ns_tx_timeout._entry_ptr.139 = internal global ptr @ns_tx_timeout._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@netdev_get_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 3041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: shoot, we dropped an interrupt (%#08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netdev_get_regs\00", [16 x i8] zeroinitializer }, align 32
@netdev_get_regs._entry_ptr = internal global ptr @netdev_get_regs._entry, section ".printk_index", align 4
@natsemi_init_media._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016natsemi %s: Transceiver default autonegotiation %s 10%s %s duplex.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"natsemi_init_media\00", [45 x i8] zeroinitializer }, align 32
@natsemi_init_media._entry_ptr = internal global ptr @natsemi_init_media._entry, section ".printk_index", align 4
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enabled, advertise\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disabled, force\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@natsemi_init_media._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.144, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016natsemi %s: Transceiver status %#04x advertising %#04x.\0A\00", [37 x i8] zeroinitializer }, align 32
@natsemi_init_media._entry_ptr.151 = internal global ptr @natsemi_init_media._entry.149, section ".printk_index", align 4
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dspcfg_workaround\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.161 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 74, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 72, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 82, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"dspcfg_workaround\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 84, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant [15 x i8] c"natsemi_driver\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3360, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 92, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 93, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3361, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"natsemi_pci_tbl\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 250, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"natsemi_pm_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3358, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant [9 x i8] c"find_cnt\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 807, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"printed_version\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 818, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 820, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 130, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 878, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"natsemi_pci_info\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 245, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 924, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"natsemi_netdev_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 786, i32 36 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"ethtool_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2688, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 948, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [27 x i8] c"dev_attr_dspcfg_workaround\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 959, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 965, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 967, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 969, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2235, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2292, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2309, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1480, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1483, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1665, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1674, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1694, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1955, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 326, i32 6 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2150, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2406, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2423, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2428, i32 5 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2436, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2441, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2449, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 246, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 247, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1501, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1504, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1430, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1433, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1367, i32 5 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1269, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1240, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1244, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1304, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1325, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1544, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1569, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1573, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2203, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2215, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1866, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1868, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1873, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1875, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1761, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1801, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1817, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1522, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1525, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3166, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3170, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3132, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2135, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1893, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 1903, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 2570, i32 25 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 3039, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 766, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 779, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 666, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 674, i32 22 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 674, i32 54 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 674, i32 61 }
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.675 = private constant [42 x i8] c"../drivers/net/ethernet/natsemi/natsemi.c\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 686, i32 56 }
@llvm.compiler.used = appending global [252 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_debug354, ptr @__UNIQUE_ID_debugtype348, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_dspcfg_workaround356, ptr @__UNIQUE_ID_dspcfg_workaroundtype350, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_full_duplex358, ptr @__UNIQUE_ID_full_duplextype352, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_mtu353, ptr @__UNIQUE_ID_mtutype347, ptr @__UNIQUE_ID_options357, ptr @__UNIQUE_ID_optionstype351, ptr @__UNIQUE_ID_rx_copybreak355, ptr @__UNIQUE_ID_rx_copybreaktype349, ptr @__exitcall_natsemi_exit_mod, ptr @__initcall__kmod_natsemi__359_3383_natsemi_init_mod6, ptr @__param_debug, ptr @__param_dspcfg_workaround, ptr @__param_full_duplex, ptr @__param_mtu, ptr @__param_options, ptr @__param_rx_copybreak, ptr @check_link._entry, ptr @check_link._entry.36, ptr @check_link._entry.39, ptr @check_link._entry_ptr, ptr @check_link._entry_ptr.38, ptr @check_link._entry_ptr.41, ptr @dump_ring._entry, ptr @dump_ring._entry.106, ptr @dump_ring._entry.109, ptr @dump_ring._entry.112, ptr @dump_ring._entry_ptr, ptr @dump_ring._entry_ptr.108, ptr @dump_ring._entry_ptr.111, ptr @dump_ring._entry_ptr.113, ptr @enable_wol_mode._entry, ptr @enable_wol_mode._entry_ptr, ptr @find_mii._entry, ptr @find_mii._entry_ptr, ptr @init_phy_fixup._entry, ptr @init_phy_fixup._entry.85, ptr @init_phy_fixup._entry_ptr, ptr @init_phy_fixup._entry_ptr.87, ptr @init_registers._entry, ptr @init_registers._entry_ptr, ptr @intr_handler._entry, ptr @intr_handler._entry.101, ptr @intr_handler._entry_ptr, ptr @intr_handler._entry_ptr.103, ptr @natsemi_exit_mod, ptr @natsemi_init_media._entry, ptr @natsemi_init_media._entry.149, ptr @natsemi_init_media._entry_ptr, ptr @natsemi_init_media._entry_ptr.151, ptr @natsemi_poll._entry, ptr @natsemi_poll._entry_ptr, ptr @natsemi_probe1._entry, ptr @natsemi_probe1._entry.10, ptr @natsemi_probe1._entry.13, ptr @natsemi_probe1._entry.16, ptr @natsemi_probe1._entry.19, ptr @natsemi_probe1._entry.4, ptr @natsemi_probe1._entry.7, ptr @natsemi_probe1._entry_ptr, ptr @natsemi_probe1._entry_ptr.12, ptr @natsemi_probe1._entry_ptr.15, ptr @natsemi_probe1._entry_ptr.18, ptr @natsemi_probe1._entry_ptr.21, ptr @natsemi_probe1._entry_ptr.6, ptr @natsemi_probe1._entry_ptr.9, ptr @natsemi_reload_eeprom._entry, ptr @natsemi_reload_eeprom._entry.71, ptr @natsemi_reload_eeprom._entry_ptr, ptr @natsemi_reload_eeprom._entry_ptr.73, ptr @natsemi_reset._entry, ptr @natsemi_reset._entry.76, ptr @natsemi_reset._entry_ptr, ptr @natsemi_reset._entry_ptr.78, ptr @natsemi_stop_rxtx._entry, ptr @natsemi_stop_rxtx._entry.123, ptr @natsemi_stop_rxtx._entry_ptr, ptr @natsemi_stop_rxtx._entry_ptr.125, ptr @netdev_close._entry, ptr @netdev_close._entry.128, ptr @netdev_close._entry_ptr, ptr @netdev_close._entry_ptr.130, ptr @netdev_error._entry, ptr @netdev_error._entry.52, ptr @netdev_error._entry.55, ptr @netdev_error._entry.58, ptr @netdev_error._entry.61, ptr @netdev_error._entry.64, ptr @netdev_error._entry_ptr, ptr @netdev_error._entry_ptr.54, ptr @netdev_error._entry_ptr.57, ptr @netdev_error._entry_ptr.60, ptr @netdev_error._entry_ptr.63, ptr @netdev_error._entry_ptr.66, ptr @netdev_get_regs._entry, ptr @netdev_get_regs._entry_ptr, ptr @netdev_open._entry, ptr @netdev_open._entry.95, ptr @netdev_open._entry_ptr, ptr @netdev_open._entry_ptr.97, ptr @netdev_rx._entry, ptr @netdev_rx._entry.26, ptr @netdev_rx._entry_ptr, ptr @netdev_rx._entry_ptr.28, ptr @netdev_timer._entry, ptr @netdev_timer._entry.118, ptr @netdev_timer._entry_ptr, ptr @netdev_timer._entry_ptr.120, ptr @netdev_tx_done._entry, ptr @netdev_tx_done._entry_ptr, ptr @ns_tx_timeout._entry, ptr @ns_tx_timeout._entry.137, ptr @ns_tx_timeout._entry_ptr, ptr @ns_tx_timeout._entry_ptr.139, ptr @refill_rx._entry, ptr @refill_rx._entry_ptr, ptr @reset_rx._entry, ptr @reset_rx._entry.31, ptr @reset_rx._entry_ptr, ptr @reset_rx._entry_ptr.33, ptr @start_tx._entry, ptr @start_tx._entry_ptr, ptr @switch_port_external._entry, ptr @switch_port_external._entry_ptr, ptr @switch_port_internal._entry, ptr @switch_port_internal._entry.90, ptr @switch_port_internal._entry_ptr, ptr @switch_port_internal._entry_ptr.92, ptr @mtu, ptr @debug, ptr @rx_copybreak, ptr @dspcfg_workaround, ptr @natsemi_driver, ptr @options, ptr @full_duplex, ptr @.str, ptr @natsemi_pci_tbl, ptr @natsemi_pm_ops, ptr @natsemi_probe1.find_cnt, ptr @natsemi_probe1.printed_version, ptr @.str.1, ptr @.str.2, ptr @version, ptr @natsemi_probe1.__key, ptr @.str.3, ptr @natsemi_pci_info, ptr @.str.5, ptr @natsemi_netdev_ops, ptr @ethtool_ops, ptr @.str.8, ptr @dev_attr_dspcfg_workaround, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @netdev_open.__key, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [172 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcfg_workaround to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1.find_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1.printed_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_pci_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dspcfg_workaround to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_probe1._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_rx._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_rx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_link._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_link._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refill_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_error._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_reload_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_reload_eeprom._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_reset._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_mii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_port_external._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_phy_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_phy_fixup._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_port_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_port_internal._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ring._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ring._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ring._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_timer._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_stop_rxtx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_stop_rxtx._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_close._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_wol_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_tx_timeout._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_get_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_init_media._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @natsemi_init_media._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @natsemi_exit_mod() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @natsemi_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_init_mod() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @natsemi_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_probe1(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %7 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #15
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp, align 4, !annotation !368
  %9 = load i32, ptr @natsemi_probe1.printed_version, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @natsemi_probe1.printed_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #18
  br label %if.end3

if.end3:                                          ; preds = %do.end, %entry.if.end3_crit_edge
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 68, ptr noundef nonnull %tmp) #15
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %and11 = and i32 %11, -4
  %call12 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 68, i32 noundef %and11) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %12 = load i32, ptr @natsemi_probe1.find_cnt, align 4
  %inc14 = add i32 %12, 1
  store i32 %inc14, ptr @natsemi_probe1.find_cnt, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %15 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %sub = sub i32 1, %14
  %add = add i32 %sub, %16
  %cond = select i1 %cmp, i32 0, i32 %add
  %irq23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %17 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq23, align 4
  call void @pci_set_master(ptr noundef %pdev) #15
  %call24 = call ptr @alloc_etherdev_mqs(i32 noundef 896, i32 noundef 1, i32 noundef 1) #15
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end13.cleanup_crit_edge, label %if.end27

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27:                                         ; preds = %if.end13
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 133, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev28, ptr %parent, align 8
  %call30 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.err_pci_request_regions_crit_edge

if.end27.err_pci_request_regions_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_pci_request_regions

if.end33:                                         ; preds = %if.end27
  %call34 = call ptr @ioremap(i32 noundef %14, i32 noundef %cond) #15
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.err_pci_request_regions_crit_edge, label %if.end37

if.end33.err_pci_request_regions_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_pci_request_regions

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @eeprom_read(ptr noundef nonnull %call34, i32 noundef 6)
  %call41 = call fastcc i32 @eeprom_read(ptr noundef nonnull %call34, i32 noundef 7)
  %shl = shl i32 %call41, 1
  %20 = lshr i32 %call38, 15
  %add42 = add i32 %shl, %20
  %conv = trunc i32 %add42 to i8
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %addr, align 1
  %22 = lshr i32 %call41, 7
  %conv45 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv45, ptr %2, align 1
  %call41.1 = call fastcc i32 @eeprom_read(ptr noundef nonnull %call34, i32 noundef 8)
  %shl.1 = shl i32 %call41.1, 1
  %24 = lshr i32 %call41, 15
  %add42.1 = add i32 %shl.1, %24
  %conv.1 = trunc i32 %add42.1 to i8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.1, ptr %3, align 1
  %26 = lshr i32 %call41.1, 7
  %conv45.1 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv45.1, ptr %4, align 1
  %call41.2 = call fastcc i32 @eeprom_read(ptr noundef nonnull %call34, i32 noundef 9)
  %shl.2 = shl i32 %call41.2, 1
  %28 = lshr i32 %call41.1, 15
  %add42.2 = add i32 %shl.2, %28
  %conv.2 = trunc i32 %add42.2 to i8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.2, ptr %5, align 1
  %30 = lshr i32 %call41.2, 7
  %conv45.2 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv45.2, ptr %6, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call24, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %ioaddr51 = getelementptr i8, ptr %call24, i32 2704
  %32 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call34, ptr %ioaddr51, align 8
  %napi = getelementptr i8, ptr %call24, i32 2712
  call void @netif_napi_add(ptr noundef nonnull %call24, ptr noundef %napi, ptr noundef nonnull @natsemi_poll, i32 noundef 64) #15
  %dev52 = getelementptr i8, ptr %call24, i32 2700
  %33 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call24, ptr %dev52, align 4
  %pci_dev = getelementptr i8, ptr %call24, i32 2984
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdev, ptr %pci_dev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call24, ptr %driver_data.i.i, align 4
  %iosize53 = getelementptr i8, ptr %call24, i32 3140
  %36 = ptrtoint ptr %iosize53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %iosize53, align 4
  %lock = getelementptr i8, ptr %call24, i32 3144
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @natsemi_probe1.__key, i16 noundef signext 3) #15
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp58 = icmp sgt i32 %37, -1
  %notmask = shl nsw i32 -1, %37
  %sub62 = xor i32 %notmask, -1
  %cond65 = select i1 %cmp58, i32 %sub62, i32 16581
  %msg_enable = getelementptr i8, ptr %call24, i32 3188
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond65, ptr %msg_enable, align 4
  %hands_off = getelementptr i8, ptr %call24, i32 3020
  %39 = ptrtoint ptr %hands_off to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hands_off, align 4
  %intr_status = getelementptr i8, ptr %call24, i32 3016
  %40 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %intr_status, align 8
  %arrayidx66 = getelementptr [2 x %struct.anon.122], ptr @natsemi_pci_info, i32 0, i32 %1
  %eeprom_size = getelementptr [2 x %struct.anon.122], ptr @natsemi_pci_info, i32 0, i32 %1, i32 2
  %41 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eeprom_size, align 4
  %eeprom_size67 = getelementptr i8, ptr %call24, i32 3192
  %43 = ptrtoint ptr %eeprom_size67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %eeprom_size67, align 8
  %44 = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %tobool70.not = icmp eq i32 %44, 1
  %45 = getelementptr i8, ptr %call24, i32 3024
  br i1 %tobool70.not, label %lor.lhs.false, label %if.end73

if.end73:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %45, align 8
  %47 = load i32, ptr @dspcfg_workaround, align 4
  %dspcfg_workaround = getelementptr i8, ptr %call24, i32 3128
  %48 = ptrtoint ptr %dspcfg_workaround to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %dspcfg_workaround, align 8
  br label %if.end84

lor.lhs.false:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %45, align 8
  %50 = load i32, ptr @dspcfg_workaround, align 4
  %dspcfg_workaround382 = getelementptr i8, ptr %call24, i32 3128
  %51 = ptrtoint ptr %dspcfg_workaround382 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dspcfg_workaround382, align 8
  %add.ptr = getelementptr i8, ptr %call34, i32 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !370
  %53 = lshr i32 %52, 19
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 2
  br label %if.end84

if.end84:                                         ; preds = %lor.lhs.false, %if.end73
  %.sink = phi i8 [ 2, %if.end73 ], [ %55, %lor.lhs.false ]
  %if_port83 = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 52
  %56 = ptrtoint ptr %if_port83 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink, ptr %if_port83, align 2
  %57 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr51, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !371
  call void @arm_heavy_mb() #15
  %add.ptr.i321 = getelementptr i8, ptr %58, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321, i32 67108864) #15, !srcloc !372
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end84
  %i.043.i = phi i32 [ 0, %if.end84 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 10737400) #15
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #15, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !373
  %61 = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %do.end9.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end9.i:                                        ; preds = %for.inc.i
  %62 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 3
  %64 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end9.i.pci_name.exit.i_crit_edge

do.end9.i.pci_name.exit.i_crit_edge:              ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %66 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end9.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %67, %if.end.i.i.i ], [ %65, %do.end9.i.pci_name.exit.i_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %retval.0.i.i.i, i32 noundef 20000) #18
  br label %natsemi_reload_eeprom.exit

if.else.i:                                        ; preds = %for.body.i
  %68 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %msg_enable, align 4
  %and13.i = and i32 %69, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i.natsemi_reload_eeprom.exit_crit_edge, label %do.end18.i

if.else.i.natsemi_reload_eeprom.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_reload_eeprom.exit

do.end18.i:                                       ; preds = %if.else.i
  %70 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i34.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44, i32 3
  %72 = ptrtoint ptr %init_name.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i34.i, align 8
  %tobool.not.i.i35.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i35.i, label %if.end.i.i37.i, label %do.end18.i.pci_name.exit39.i_crit_edge

do.end18.i.pci_name.exit39.i_crit_edge:           ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit39.i

if.end.i.i37.i:                                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i36.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %74 = ptrtoint ptr %dev.i36.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i36.i, align 4
  br label %pci_name.exit39.i

pci_name.exit39.i:                                ; preds = %if.end.i.i37.i, %do.end18.i.pci_name.exit39.i_crit_edge
  %retval.0.i.i38.i = phi ptr [ %75, %if.end.i.i37.i ], [ %73, %do.end18.i.pci_name.exit39.i_crit_edge ]
  %mul22.i = mul i32 %i.043.i, 50
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %retval.0.i.i38.i, i32 noundef %mul22.i) #18
  br label %natsemi_reload_eeprom.exit

natsemi_reload_eeprom.exit:                       ; preds = %pci_name.exit39.i, %if.else.i.natsemi_reload_eeprom.exit_crit_edge, %pci_name.exit.i
  call fastcc void @natsemi_reset(ptr noundef %call24)
  %if_port85 = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 52
  %76 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp87.not = icmp eq i8 %77, 0
  br i1 %cmp87.not, label %if.else100, label %if.then89

if.then89:                                        ; preds = %natsemi_reload_eeprom.exit
  %call1.i = call fastcc i32 @switch_port_external(ptr noundef %call24) #15
  %phy_addr_external.i.i = getelementptr i8, ptr %call24, i32 3032
  br label %for.body.i322

for.body.i322:                                    ; preds = %for.inc.i334.for.body.i322_crit_edge, %if.then89
  %i.051.i = phi i32 [ 1, %if.then89 ], [ %inc.i332, %for.inc.i334.for.body.i322_crit_edge ]
  %78 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.051.i)
  %cmp.i.i = icmp eq i32 %i.051.i, 31
  %spec.select.i.i = select i1 %cmp.i.i, i32 30, i32 31
  %80 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %phy_addr_external.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %81)
  %cmp2.i.i = icmp eq i32 %spec.select.i.i, %81
  %dec4.i.i = sext i1 %cmp2.i.i to i32
  %target.1.i.i = add nsw i32 %spec.select.i.i, %dec4.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  call void @arm_heavy_mb() #15
  %conv.i.i = trunc i32 %target.1.i.i to i16
  %82 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #15
  %add.ptr.i32.i = getelementptr i8, ptr %79, i32 228
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i32.i, i16 %82) #15, !srcloc !375
  %83 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i32.i) #15, !srcloc !376
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748) #15
  %call2.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %i.051.i, i32 noundef 1) #15
  %85 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %if.then.i [
    i32 65535, label %for.body.i322.for.inc.i334_crit_edge
    i32 0, label %for.body.i322.for.inc.i334_crit_edge391
  ]

for.body.i322.for.inc.i334_crit_edge391:          ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i334

for.body.i322.for.inc.i334_crit_edge:             ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i334

if.then.i:                                        ; preds = %for.body.i322
  %86 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i33.i = icmp eq i8 %87, 0
  br i1 %cmp.i33.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr51, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %89, i32 136
  %90 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i.i) #15, !srcloc !376
  %91 = call i16 @llvm.bswap.i16(i16 %90) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i.i = zext i16 %91 to i32
  br label %mdio_read.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %phy_addr_external.i.i, align 8
  %call7.i.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %93, i32 noundef 2) #15
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %call7.i.i, %if.else.i.i ]
  %shl.i = shl i32 %retval.0.i.i, 16
  %94 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp.i38.i = icmp eq i8 %95, 0
  br i1 %cmp.i38.i, label %if.then.i43.i, label %if.else.i46.i

if.then.i43.i:                                    ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ioaddr51, align 8
  %add.ptr3.i41.i = getelementptr i8, ptr %97, i32 140
  %98 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i41.i) #15, !srcloc !376
  %99 = call i16 @llvm.bswap.i16(i16 %98) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i42.i = zext i16 %99 to i32
  br label %mdio_read.exit48.i

if.else.i46.i:                                    ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %phy_addr_external.i.i, align 8
  %call7.i45.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %101, i32 noundef 3) #15
  br label %mdio_read.exit48.i

mdio_read.exit48.i:                               ; preds = %if.else.i46.i, %if.then.i43.i
  %retval.0.i47.i = phi i32 [ %conv6.i42.i, %if.then.i43.i ], [ %call7.i45.i, %if.else.i46.i ]
  %add.i = add i32 %retval.0.i47.i, %shl.i
  %mii.i = getelementptr i8, ptr %call24, i32 3028
  %102 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add.i, ptr %mii.i, align 4
  %103 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i324 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i324, label %mdio_read.exit48.i.for.end.i_crit_edge, label %do.end.i

mdio_read.exit48.i.for.end.i_crit_edge:           ; preds = %mdio_read.exit48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

do.end.i:                                         ; preds = %mdio_read.exit48.i
  %105 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i.i326 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44, i32 3
  %107 = ptrtoint ptr %init_name.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i.i.i326, align 8
  %tobool.not.i.i.i327 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i327, label %if.end.i.i.i329, label %do.end.i.pci_name.exit.i331_crit_edge

do.end.i.pci_name.exit.i331_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit.i331

if.end.i.i.i329:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i328 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %109 = ptrtoint ptr %dev.i.i328 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i328, align 4
  br label %pci_name.exit.i331

pci_name.exit.i331:                               ; preds = %if.end.i.i.i329, %do.end.i.pci_name.exit.i331_crit_edge
  %retval.0.i.i.i330 = phi ptr [ %110, %if.end.i.i.i329 ], [ %108, %do.end.i.pci_name.exit.i331_crit_edge ]
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i.i.i330, i32 noundef %add.i, i32 noundef %i.051.i) #18
  br label %for.end.i

for.inc.i334:                                     ; preds = %for.body.i322.for.inc.i334_crit_edge, %for.body.i322.for.inc.i334_crit_edge391
  %inc.i332 = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i333 = icmp eq i32 %inc.i332, 32
  br i1 %exitcond.not.i333, label %for.inc.i334.for.end.i_crit_edge, label %for.inc.i334.for.body.i322_crit_edge

for.inc.i334.for.body.i322_crit_edge:             ; preds = %for.inc.i334
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i322

for.inc.i334.for.end.i_crit_edge:                 ; preds = %for.inc.i334
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i334.for.end.i_crit_edge, %pci_name.exit.i331, %mdio_read.exit48.i.for.end.i_crit_edge
  %i.050.i = phi i32 [ %i.051.i, %mdio_read.exit48.i.for.end.i_crit_edge ], [ %i.051.i, %pci_name.exit.i331 ], [ 32, %for.inc.i334.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool13.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool13.not.i, label %for.end.i.find_mii.exit_crit_edge, label %if.then14.i

for.end.i.find_mii.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %find_mii.exit

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @switch_port_internal(ptr noundef %call24) #15
  br label %find_mii.exit

find_mii.exit:                                    ; preds = %if.then14.i, %for.end.i.find_mii.exit_crit_edge
  %111 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %i.050.i, ptr %phy_addr_external.i.i, align 8
  %112 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool92.not = icmp eq i32 %113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.050.i)
  %cmp94 = icmp eq i32 %i.050.i, 32
  %or.cond = select i1 %tobool92.not, i1 %cmp94, i1 false
  br i1 %or.cond, label %if.then96, label %find_mii.exit.if.end102_crit_edge

find_mii.exit.if.end102_crit_edge:                ; preds = %find_mii.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

if.then96:                                        ; preds = %find_mii.exit
  call void @__sanitizer_cov_trace_pc() #17
  %114 = ptrtoint ptr %if_port85 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %if_port85, align 2
  br label %if.end102.sink.split

if.else100:                                       ; preds = %natsemi_reload_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external101 = getelementptr i8, ptr %call24, i32 3032
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.else100, %if.then96
  %phy_addr_external.i.i.sink = phi ptr [ %phy_addr_external.i.i, %if.then96 ], [ %phy_addr_external101, %if.else100 ]
  %115 = ptrtoint ptr %phy_addr_external.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %phy_addr_external.i.i.sink, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %find_mii.exit.if.end102_crit_edge
  %116 = load i32, ptr @natsemi_probe1.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %116)
  %cmp103 = icmp slt i32 %116, 8
  br i1 %cmp103, label %cond.end108, label %if.end102.if.end136_crit_edge

if.end102.if.end136_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

cond.end108:                                      ; preds = %if.end102
  %arrayidx106 = getelementptr [8 x i32], ptr @options, i32 0, i32 %116
  %117 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool110.not = icmp eq i32 %118, 0
  br i1 %tobool110.not, label %cond.end108.if.end128_crit_edge, label %if.then111

cond.end108.if.end128_crit_edge:                  ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.then111:                                       ; preds = %cond.end108
  %and112 = and i32 %118, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.then111.if.end115_crit_edge, label %if.then114

if.then111.if.end115_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end115

if.then114:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #17
  %full_duplex = getelementptr i8, ptr %call24, i32 3036
  %119 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %full_duplex, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then111.if.end115_crit_edge
  %and116 = and i32 %118, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end128_crit_edge, label %do.end121

if.end115.if.end128_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

do.end121:                                        ; preds = %if.end115
  %120 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44, i32 3
  %122 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end121.pci_name.exit_crit_edge

do.end121.pci_name.exit_crit_edge:                ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end121.pci_name.exit_crit_edge
  %retval.0.i.i335 = phi ptr [ %125, %if.end.i.i ], [ %123, %do.end121.pci_name.exit_crit_edge ]
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i335, i32 noundef %and116) #18
  br label %if.end128

if.end128:                                        ; preds = %pci_name.exit, %if.end115.if.end128_crit_edge, %cond.end108.if.end128_crit_edge
  %.pr = load i32, ptr @natsemi_probe1.find_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp129 = icmp slt i32 %.pr, 8
  br i1 %cmp129, label %land.lhs.true131, label %if.end128.if.end136_crit_edge

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

land.lhs.true131:                                 ; preds = %if.end128
  %arrayidx132 = getelementptr [8 x i32], ptr @full_duplex, i32 0, i32 %.pr
  %126 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool133.not = icmp eq i32 %127, 0
  br i1 %tobool133.not, label %land.lhs.true131.if.end136_crit_edge, label %if.then134

land.lhs.true131.if.end136_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

if.then134:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #17
  %full_duplex135 = getelementptr i8, ptr %call24, i32 3036
  %128 = ptrtoint ptr %full_duplex135 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %full_duplex135, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %land.lhs.true131.if.end136_crit_edge, %if.end128.if.end136_crit_edge, %if.end102.if.end136_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 16
  %129 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @natsemi_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 115
  %130 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 200, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 44
  %131 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ethtool_ops, ptr %ethtool_ops, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 30
  %132 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 31
  %133 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 2024, ptr %max_mtu, align 4
  %134 = load i32, ptr @mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool137.not = icmp eq i32 %134, 0
  br i1 %tobool137.not, label %if.end136.if.end139_crit_edge, label %if.then138

if.end136.if.end139_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end139

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  %mtu = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 20
  %135 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %mtu, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end136.if.end139_crit_edge
  %136 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i336 = icmp eq i32 %137, 0
  br i1 %tobool.not.i336, label %if.else.i338, label %if.then.i337

if.then.i337:                                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_on(ptr noundef %call24) #15
  br label %if.end.i

if.else.i338:                                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_off(ptr noundef %call24) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i338, %if.then.i337
  %138 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp.i.i340 = icmp eq i8 %139, 0
  br i1 %cmp.i.i340, label %if.then.i.i343, label %if.else.i.i346

if.then.i.i343:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ioaddr51, align 8
  %add.ptr.i73.i = getelementptr i8, ptr %141, i32 128
  %142 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i73.i) #15, !srcloc !376
  %143 = call i16 @llvm.bswap.i16(i16 %142) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i.i342 = zext i16 %143 to i32
  br label %mdio_read.exit.i349

if.else.i.i346:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i.i344 = getelementptr i8, ptr %call24, i32 3032
  %144 = ptrtoint ptr %phy_addr_external.i.i344 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %phy_addr_external.i.i344, align 8
  %call7.i.i345 = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %145, i32 noundef 0) #15
  br label %mdio_read.exit.i349

mdio_read.exit.i349:                              ; preds = %if.else.i.i346, %if.then.i.i343
  %retval.0.i.i347 = phi i32 [ %conv6.i.i342, %if.then.i.i343 ], [ %call7.i.i345, %if.else.i.i346 ]
  %and.i348 = and i32 %retval.0.i.i347, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool2.not.i = icmp eq i32 %and.i348, 0
  %conv.i = select i1 %tobool2.not.i, i16 10, i16 100
  %speed.i = getelementptr i8, ptr %call24, i32 3132
  %146 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i, ptr %speed.i, align 4
  %and3.i = lshr i32 %retval.0.i.i347, 8
  %147 = trunc i32 %and3.i to i8
  %148 = and i8 %147, 1
  %duplex.i = getelementptr i8, ptr %call24, i32 3134
  %149 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %duplex.i, align 2
  %and7.i = lshr i32 %retval.0.i.i347, 12
  %150 = trunc i32 %and7.i to i8
  %151 = and i8 %150, 1
  %autoneg.i = getelementptr i8, ptr %call24, i32 3135
  %152 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %autoneg.i, align 1
  %153 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp.i75.i = icmp eq i8 %154, 0
  br i1 %cmp.i75.i, label %if.then.i79.i, label %if.else.i82.i

if.then.i79.i:                                    ; preds = %mdio_read.exit.i349
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ioaddr51, align 8
  %add.ptr3.i.i350 = getelementptr i8, ptr %156, i32 144
  %157 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i.i350) #15, !srcloc !376
  %158 = call i16 @llvm.bswap.i16(i16 %157) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i78.i = zext i16 %158 to i32
  br label %mdio_read.exit84.i

if.else.i82.i:                                    ; preds = %mdio_read.exit.i349
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i80.i = getelementptr i8, ptr %call24, i32 3032
  %159 = ptrtoint ptr %phy_addr_external.i80.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %phy_addr_external.i80.i, align 8
  %call7.i81.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %160, i32 noundef 4) #15
  br label %mdio_read.exit84.i

mdio_read.exit84.i:                               ; preds = %if.else.i82.i, %if.then.i79.i
  %retval.0.i83.i = phi i32 [ %conv6.i78.i, %if.then.i79.i ], [ %call7.i81.i, %if.else.i82.i ]
  %conv12.i = trunc i32 %retval.0.i83.i to i16
  %advertising.i = getelementptr i8, ptr %call24, i32 3136
  %161 = ptrtoint ptr %advertising.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv12.i, ptr %advertising.i, align 8
  %and15.i = and i32 %retval.0.i83.i, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %and15.i)
  %cmp.not.i = icmp eq i32 %and15.i, 480
  br i1 %cmp.not.i, label %mdio_read.exit84.i.if.end37.i_crit_edge, label %land.lhs.true.i

mdio_read.exit84.i.if.end37.i_crit_edge:          ; preds = %mdio_read.exit84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %mdio_read.exit84.i
  %162 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %msg_enable, align 4
  %and17.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %do.end.i355

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37.i

do.end.i355:                                      ; preds = %land.lhs.true.i
  %164 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i.i353 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44, i32 3
  %166 = ptrtoint ptr %init_name.i.i.i353 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %init_name.i.i.i353, align 8
  %tobool.not.i.i.i354 = icmp eq ptr %167, null
  br i1 %tobool.not.i.i.i354, label %if.end.i.i.i357, label %do.end.i355.pci_name.exit.i359_crit_edge

do.end.i355.pci_name.exit.i359_crit_edge:         ; preds = %do.end.i355
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit.i359

if.end.i.i.i357:                                  ; preds = %do.end.i355
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i356 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  %168 = ptrtoint ptr %dev.i.i356 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i.i356, align 4
  br label %pci_name.exit.i359

pci_name.exit.i359:                               ; preds = %if.end.i.i.i357, %do.end.i355.pci_name.exit.i359_crit_edge
  %retval.0.i.i.i358 = phi ptr [ %169, %if.end.i.i.i357 ], [ %167, %do.end.i355.pci_name.exit.i359_crit_edge ]
  %170 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %cmp.i86.i = icmp eq i8 %171, 0
  br i1 %cmp.i86.i, label %if.then.i90.i, label %if.else.i93.i

if.then.i90.i:                                    ; preds = %pci_name.exit.i359
  call void @__sanitizer_cov_trace_pc() #17
  %172 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ioaddr51, align 8
  %add.ptr.i88.i = getelementptr i8, ptr %173, i32 128
  %174 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88.i) #15, !srcloc !376
  %175 = call i16 @llvm.bswap.i16(i16 %174) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i89.i = zext i16 %175 to i32
  br label %mdio_read.exit95.i

if.else.i93.i:                                    ; preds = %pci_name.exit.i359
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i91.i = getelementptr i8, ptr %call24, i32 3032
  %176 = ptrtoint ptr %phy_addr_external.i91.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %phy_addr_external.i91.i, align 8
  %call7.i92.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %177, i32 noundef 0) #15
  br label %mdio_read.exit95.i

mdio_read.exit95.i:                               ; preds = %if.else.i93.i, %if.then.i90.i
  %retval.0.i94.i = phi i32 [ %conv6.i89.i, %if.then.i90.i ], [ %call7.i92.i, %if.else.i93.i ]
  %and23.i = and i32 %retval.0.i94.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %cond25.i = select i1 %tobool24.not.i, ptr @.str.146, ptr @.str.145
  %178 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %advertising.i, align 8
  %conv27.i = zext i16 %179 to i32
  %and28.i = and i32 %conv27.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond30.i = select i1 %tobool29.not.i, ptr @.str.148, ptr @.str.147
  %and33.i = and i32 %conv27.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %cond35.i = select i1 %tobool34.not.i, ptr @.str.43, ptr @.str.42
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %retval.0.i.i.i358, ptr noundef nonnull %cond25.i, ptr noundef nonnull %cond30.i, ptr noundef nonnull %cond35.i) #18
  br label %if.end37.i

if.end37.i:                                       ; preds = %mdio_read.exit95.i, %land.lhs.true.i.if.end37.i_crit_edge, %mdio_read.exit84.i.if.end37.i_crit_edge
  %180 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %msg_enable, align 4
  %and39.i = and i32 %181, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.natsemi_init_media.exit_crit_edge, label %do.end44.i

if.end37.i.natsemi_init_media.exit_crit_edge:     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_init_media.exit

do.end44.i:                                       ; preds = %if.end37.i
  %182 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i96.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44, i32 3
  %184 = ptrtoint ptr %init_name.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %init_name.i.i96.i, align 8
  %tobool.not.i.i97.i = icmp eq ptr %185, null
  br i1 %tobool.not.i.i97.i, label %if.end.i.i99.i, label %do.end44.i.pci_name.exit101.i_crit_edge

do.end44.i.pci_name.exit101.i_crit_edge:          ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit101.i

if.end.i.i99.i:                                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i98.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %186 = ptrtoint ptr %dev.i98.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev.i98.i, align 4
  br label %pci_name.exit101.i

pci_name.exit101.i:                               ; preds = %if.end.i.i99.i, %do.end44.i.pci_name.exit101.i_crit_edge
  %retval.0.i.i100.i = phi ptr [ %187, %if.end.i.i99.i ], [ %185, %do.end44.i.pci_name.exit101.i_crit_edge ]
  %188 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp.i103.i = icmp eq i8 %189, 0
  br i1 %cmp.i103.i, label %if.then.i108.i, label %if.else.i111.i

if.then.i108.i:                                   ; preds = %pci_name.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  %190 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ioaddr51, align 8
  %add.ptr3.i106.i = getelementptr i8, ptr %191, i32 132
  %192 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i106.i) #15, !srcloc !376
  %193 = call i16 @llvm.bswap.i16(i16 %192) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i107.i = zext i16 %193 to i32
  br label %mdio_read.exit113.i

if.else.i111.i:                                   ; preds = %pci_name.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i109.i = getelementptr i8, ptr %call24, i32 3032
  %194 = ptrtoint ptr %phy_addr_external.i109.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %phy_addr_external.i109.i, align 8
  %call7.i110.i = call fastcc i32 @miiport_read(ptr noundef %call24, i32 noundef %195, i32 noundef 1) #15
  br label %mdio_read.exit113.i

mdio_read.exit113.i:                              ; preds = %if.else.i111.i, %if.then.i108.i
  %retval.0.i112.i = phi i32 [ %conv6.i107.i, %if.then.i108.i ], [ %call7.i110.i, %if.else.i111.i ]
  %196 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %advertising.i, align 8
  %conv50.i = zext i16 %197 to i32
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %retval.0.i.i100.i, i32 noundef %retval.0.i112.i, i32 noundef %conv50.i) #18
  br label %natsemi_init_media.exit

natsemi_init_media.exit:                          ; preds = %mdio_read.exit113.i, %if.end37.i.natsemi_init_media.exit_crit_edge
  %add.ptr142 = getelementptr i8, ptr %call34, i32 88
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #15, !srcloc !369
  %199 = call i32 @llvm.bswap.i32(i32 %198)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !379
  %srr = getelementptr i8, ptr %call24, i32 3120
  %200 = ptrtoint ptr %srr to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %srr, align 8
  %201 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %msg_enable, align 4
  %and147 = and i32 %202, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %natsemi_init_media.exit.if.end158_crit_edge, label %do.end152

natsemi_init_media.exit.if.end158_crit_edge:      ; preds = %natsemi_init_media.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end158

do.end152:                                        ; preds = %natsemi_init_media.exit
  %203 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i360 = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44, i32 3
  %205 = ptrtoint ptr %init_name.i.i360 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %init_name.i.i360, align 8
  %tobool.not.i.i361 = icmp eq ptr %206, null
  br i1 %tobool.not.i.i361, label %if.end.i.i363, label %do.end152.pci_name.exit365_crit_edge

do.end152.pci_name.exit365_crit_edge:             ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit365

if.end.i.i363:                                    ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i362 = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %207 = ptrtoint ptr %dev.i362 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i362, align 4
  br label %pci_name.exit365

pci_name.exit365:                                 ; preds = %if.end.i.i363, %do.end152.pci_name.exit365_crit_edge
  %retval.0.i.i364 = phi ptr [ %208, %if.end.i.i363 ], [ %206, %do.end152.pci_name.exit365_crit_edge ]
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i364, i32 noundef %199) #18
  br label %if.end158

if.end158:                                        ; preds = %pci_name.exit365, %natsemi_init_media.exit.if.end158_crit_edge
  %call159 = call i32 @register_netdev(ptr noundef %call24) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.err_register_netdev_crit_edge

if.end158.err_register_netdev_crit_edge:          ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_register_netdev

if.end162:                                        ; preds = %if.end158
  %call164 = call i32 @device_create_file(ptr noundef %dev28, ptr noundef nonnull @dev_attr_dspcfg_workaround) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %err_create_file

if.end167:                                        ; preds = %if.end162
  %209 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %msg_enable, align 4
  %and169 = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.cleanup_crit_edge, label %do.end174

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end174:                                        ; preds = %if.end167
  %211 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx66, align 4
  %conv179 = zext i32 %14 to i64
  %213 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i366 = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44, i32 3
  %215 = ptrtoint ptr %init_name.i.i366 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %init_name.i.i366, align 8
  %tobool.not.i.i367 = icmp eq ptr %216, null
  br i1 %tobool.not.i.i367, label %if.end.i.i369, label %do.end174.pci_name.exit371_crit_edge

do.end174.pci_name.exit371_crit_edge:             ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit371

if.end.i.i369:                                    ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i368 = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44
  %217 = ptrtoint ptr %dev.i368 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i368, align 4
  br label %pci_name.exit371

pci_name.exit371:                                 ; preds = %if.end.i.i369, %do.end174.pci_name.exit371_crit_edge
  %retval.0.i.i370 = phi ptr [ %218, %if.end.i.i369 ], [ %216, %do.end174.pci_name.exit371_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call24, i32 0, i32 86
  %219 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev_addr, align 64
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %call24, ptr noundef %212, i64 noundef %conv179, ptr noundef %retval.0.i.i370, ptr noundef %220, i32 noundef %18) #18
  %221 = ptrtoint ptr %if_port85 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %if_port85, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %cmp185 = icmp eq i8 %222, 0
  br i1 %cmp185, label %do.end190, label %if.else193

do.end190:                                        ; preds = %pci_name.exit371
  call void @__sanitizer_cov_trace_pc() #17
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %cleanup

if.else193:                                       ; preds = %pci_name.exit371
  %223 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool195.not = icmp eq i32 %224, 0
  br i1 %tobool195.not, label %do.end205, label %do.end199

do.end199:                                        ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #17
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %cleanup

do.end205:                                        ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external207 = getelementptr i8, ptr %call24, i32 3032
  %225 = ptrtoint ptr %phy_addr_external207 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %phy_addr_external207, align 8
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %226) #18
  br label %cleanup

err_create_file:                                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #17
  call void @unregister_netdev(ptr noundef %call24) #15
  br label %err_register_netdev

err_register_netdev:                              ; preds = %err_create_file, %if.end158.err_register_netdev_crit_edge
  %i.1 = phi i32 [ %call159, %if.end158.err_register_netdev_crit_edge ], [ %call164, %err_create_file ]
  call void @iounmap(ptr noundef nonnull %call34) #15
  br label %err_pci_request_regions

err_pci_request_regions:                          ; preds = %err_register_netdev, %if.end33.err_pci_request_regions_crit_edge, %if.end27.err_pci_request_regions_crit_edge
  %i.2 = phi i32 [ %call30, %if.end27.err_pci_request_regions_crit_edge ], [ %i.1, %err_register_netdev ], [ -12, %if.end33.err_pci_request_regions_crit_edge ]
  call void @free_netdev(ptr noundef %call24) #15
  br label %cleanup

cleanup:                                          ; preds = %err_pci_request_regions, %do.end205, %do.end199, %do.end190, %if.end167.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.2, %err_pci_request_regions ], [ %call4, %if.end3.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %do.end190 ], [ 0, %do.end205 ], [ 0, %do.end199 ], [ 0, %if.end167.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @natsemi_remove1(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr.i = getelementptr i8, ptr %1, i32 2704
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_dspcfg_workaround) #15
  tail call void @unregister_netdev(ptr noundef %1) #15
  tail call void @iounmap(ptr noundef %3) #15
  tail call void @free_netdev(ptr noundef %1) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeprom_read(ptr noundef %addr, i32 noundef %location) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %addr, i32 8
  %or = or i32 %location, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !380
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #15, !srcloc !372
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 10, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.083
  %and = and i32 %shl, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !381
  tail call void @arm_heavy_mb() #15
  %0 = select i1 %tobool.not, i32 134217728, i32 150994944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #15, !srcloc !372
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !383
  tail call void @arm_heavy_mb() #15
  %2 = or i32 %0, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #15, !srcloc !372
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !384
  %dec = add nsw i32 %i.083, -1
  %cmp.not = icmp eq i32 %i.083, 0
  br i1 %cmp.not, label %do.body17, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body17:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #15, !srcloc !372
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !386
  br label %do.body29

do.body29:                                        ; preds = %do.body29.do.body29_crit_edge, %do.body17
  %i.185 = phi i32 [ 0, %do.body17 ], [ %inc, %do.body29.do.body29_crit_edge ]
  %retval1.084 = phi i32 [ 0, %do.body17 ], [ %or46, %do.body29.do.body29_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !387
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 201326592) #15, !srcloc !372
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !389
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool43.not = icmp eq i32 %7, 0
  %shl44 = shl nuw nsw i32 1, %i.185
  %spec.select = select i1 %tobool43.not, i32 0, i32 %shl44
  %or46 = or i32 %spec.select, %retval1.084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !390
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #15, !srcloc !372
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !391
  %inc = add nuw nsw i32 %i.185, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body57, label %do.body29.do.body29_crit_edge

do.body29.do.body29_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

do.body57:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !392
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !393
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !372
  ret i32 %or46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ioaddr.i = getelementptr i8, ptr %1, i32 2704
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 8
  %msg_enable = getelementptr i8, ptr %napi, i32 476
  %intr_status = getelementptr i8, ptr %napi, i32 304
  %add.ptr4 = getelementptr i8, ptr %3, i32 20
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %cur_rx.i = getelementptr i8, ptr %1, i32 2992
  %rx_head_desc.i = getelementptr i8, ptr %1, i32 2988
  %rx_buf_sz.i = getelementptr i8, ptr %1, i32 3008
  %dirty_rx.i = getelementptr i8, ptr %1, i32 2996
  %msg_enable.i = getelementptr i8, ptr %1, i32 3188
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %rx_length_errors57.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %pci_dev.i = getelementptr i8, ptr %1, i32 2984
  %stats107.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_ring.i = getelementptr i8, ptr %1, i32 2308
  %lock.i = getelementptr i8, ptr %1, i32 3144
  %intr_status.i.i = getelementptr i8, ptr %1, i32 3016
  %oom.i = getelementptr i8, ptr %1, i32 3012
  %timer.i = getelementptr i8, ptr %1, i32 2936
  %lock = getelementptr i8, ptr %napi, i32 432
  %if_port.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %phy_addr_external.i.i = getelementptr i8, ptr %1, i32 3032
  %advertising.i = getelementptr i8, ptr %1, i32 3136
  %rx_missed_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %tx_config.i = getelementptr i8, ptr %1, i32 3108
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 18
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %add.ptr30 = getelementptr i8, ptr %3, i32 16
  br label %do.body

do.body:                                          ; preds = %if.end27.do.body_crit_edge, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %work_done.3, %if.end27.do.body_crit_edge ]
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_status, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #15, !srcloc !369
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !394
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %7, i32 noundef %9) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  %10 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_status, align 8
  %and10 = and i32 %11, 65575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %if.end
  %12 = ptrtoint ptr %rx_head_desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_head_desc.i, align 4
  %cmd_status.i = getelementptr inbounds %struct.netdev_desc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_status.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  %17 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_buf_sz.i, align 8
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp211.i = icmp slt i32 %16, 0
  br i1 %cmp211.i, label %while.body.lr.ph.i, label %if.then12.while.end.i_crit_edge

if.then12.while.end.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then12
  %21 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_rx.i, align 8
  %add.i = sub i32 32, %22
  %23 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dirty_rx.i, align 4
  %sub.i = add i32 %add.i, %24
  %rem.i = and i32 %22, 31
  %add98.i = add i32 %18, 16
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %work_done.1 = phi i32 [ %work_done.0, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %entry1.0214.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ %rem115.i, %cleanup.i.while.body.i_crit_edge ]
  %boguscnt.0213.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %dec.i, %cleanup.i.while.body.i_crit_edge ]
  %desc_status.0212.i = phi i32 [ %16, %while.body.lr.ph.i ], [ %164, %cleanup.i.while.body.i_crit_edge ]
  %25 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %do.end.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %entry1.0214.i, i32 noundef %desc_status.0212.i) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  %dec.i = add i32 %boguscnt.0213.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec.i)
  %cmp5.i = icmp sgt i32 %dec.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.1, i32 %budget)
  %cmp8.not.i = icmp slt i32 %work_done.1, %budget
  %or.cond = select i1 %cmp5.i, i1 %cmp8.not.i, i1 false
  br i1 %or.cond, label %if.end10.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end10.i:                                       ; preds = %if.end.i
  %inc.i = add nsw i32 %work_done.1, 1
  %and11.i = and i32 %desc_status.0212.i, 4095
  %sub12.i = add nsw i32 %and11.i, -4
  %and13.i = and i32 %desc_status.0212.i, 1212153856
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and13.i)
  %cmp14.not.i = icmp eq i32 %and13.i, 134217728
  br i1 %cmp14.not.i, label %if.else73.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i
  %and16.i = and i32 %desc_status.0212.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then15.i
  %27 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i, align 4
  %and20.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.then18.i.if.end29.i_crit_edge, label %do.end25.i

if.then18.i.if.end29.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

do.end25.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_rx.i, align 8
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %30, i32 noundef %desc_status.0212.i) #18
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end25.i, %if.then18.i.if.end29.i_crit_edge
  %31 = ptrtoint ptr %rx_length_errors57.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_length_errors57.i, align 8
  %inc30.i = add i32 %32, 1
  store i32 %inc30.i, ptr %rx_length_errors57.i, align 8
  %call36.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %33 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i, align 8
  %35 = ptrtoint ptr %intr_status.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_status.i.i, align 8
  %and.i.i = and i32 %36, -16777217
  store i32 %and.i.i, ptr %intr_status.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !395
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 536870912) #15, !srcloc !372
  %add.ptr2.i.i = getelementptr i8, ptr %34, i32 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end29.i
  %i.042.i.i = phi i32 [ 0, %if.end29.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #15, !srcloc !369
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !396
  %39 = ptrtoint ptr %intr_status.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intr_status.i.i, align 8
  %or.i.i = or i32 %40, %38
  store i32 %or.i.i, ptr %intr_status.i.i, align 8
  %and7.i.i = and i32 %or.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 3221220) #15
  %inc.i.i = add nuw nsw i32 %i.042.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 400
  br i1 %exitcond.not.i.i, label %do.end12.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef 6000) #18
  br label %reset_rx.exit.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %42 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i, align 4
  %and15.i.i = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else.i.i.reset_rx.exit.i_crit_edge, label %do.end20.i.i

if.else.i.i.reset_rx.exit.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reset_rx.exit.i

do.end20.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul24.i.i = mul i32 %i.042.i.i, 15
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %1, i32 noundef %mul24.i.i) #18
  br label %reset_rx.exit.i

reset_rx.exit.i:                                  ; preds = %do.end20.i.i, %if.else.i.i.reset_rx.exit.i_crit_edge, %do.end12.i.i
  %44 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dirty_rx.i, align 4
  %45 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32, ptr %cur_rx.i, align 8
  %46 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_ring.i, align 4
  %48 = ptrtoint ptr %rx_head_desc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %rx_head_desc.i, align 4
  %cmd_status.i.i = getelementptr %struct.netdev_desc, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %cmd_status.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 128, ptr %cmd_status.i.i, align 4
  %50 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.1.i.i = getelementptr %struct.netdev_desc, ptr %50, i32 1, i32 1
  %51 = ptrtoint ptr %cmd_status.1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 128, ptr %cmd_status.1.i.i, align 4
  %52 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.2.i.i = getelementptr %struct.netdev_desc, ptr %52, i32 2, i32 1
  %53 = ptrtoint ptr %cmd_status.2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %cmd_status.2.i.i, align 4
  %54 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.3.i.i = getelementptr %struct.netdev_desc, ptr %54, i32 3, i32 1
  %55 = ptrtoint ptr %cmd_status.3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 128, ptr %cmd_status.3.i.i, align 4
  %56 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.4.i.i = getelementptr %struct.netdev_desc, ptr %56, i32 4, i32 1
  %57 = ptrtoint ptr %cmd_status.4.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 128, ptr %cmd_status.4.i.i, align 4
  %58 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.5.i.i = getelementptr %struct.netdev_desc, ptr %58, i32 5, i32 1
  %59 = ptrtoint ptr %cmd_status.5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %cmd_status.5.i.i, align 4
  %60 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.6.i.i = getelementptr %struct.netdev_desc, ptr %60, i32 6, i32 1
  %61 = ptrtoint ptr %cmd_status.6.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 128, ptr %cmd_status.6.i.i, align 4
  %62 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.7.i.i = getelementptr %struct.netdev_desc, ptr %62, i32 7, i32 1
  %63 = ptrtoint ptr %cmd_status.7.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 128, ptr %cmd_status.7.i.i, align 4
  %64 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.8.i.i = getelementptr %struct.netdev_desc, ptr %64, i32 8, i32 1
  %65 = ptrtoint ptr %cmd_status.8.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %cmd_status.8.i.i, align 4
  %66 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.9.i.i = getelementptr %struct.netdev_desc, ptr %66, i32 9, i32 1
  %67 = ptrtoint ptr %cmd_status.9.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %cmd_status.9.i.i, align 4
  %68 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.10.i.i = getelementptr %struct.netdev_desc, ptr %68, i32 10, i32 1
  %69 = ptrtoint ptr %cmd_status.10.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 128, ptr %cmd_status.10.i.i, align 4
  %70 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.11.i.i = getelementptr %struct.netdev_desc, ptr %70, i32 11, i32 1
  %71 = ptrtoint ptr %cmd_status.11.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 128, ptr %cmd_status.11.i.i, align 4
  %72 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.12.i.i = getelementptr %struct.netdev_desc, ptr %72, i32 12, i32 1
  %73 = ptrtoint ptr %cmd_status.12.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 128, ptr %cmd_status.12.i.i, align 4
  %74 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.13.i.i = getelementptr %struct.netdev_desc, ptr %74, i32 13, i32 1
  %75 = ptrtoint ptr %cmd_status.13.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 128, ptr %cmd_status.13.i.i, align 4
  %76 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.14.i.i = getelementptr %struct.netdev_desc, ptr %76, i32 14, i32 1
  %77 = ptrtoint ptr %cmd_status.14.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 128, ptr %cmd_status.14.i.i, align 4
  %78 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.15.i.i = getelementptr %struct.netdev_desc, ptr %78, i32 15, i32 1
  %79 = ptrtoint ptr %cmd_status.15.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 128, ptr %cmd_status.15.i.i, align 4
  %80 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.16.i.i = getelementptr %struct.netdev_desc, ptr %80, i32 16, i32 1
  %81 = ptrtoint ptr %cmd_status.16.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 128, ptr %cmd_status.16.i.i, align 4
  %82 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.17.i.i = getelementptr %struct.netdev_desc, ptr %82, i32 17, i32 1
  %83 = ptrtoint ptr %cmd_status.17.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 128, ptr %cmd_status.17.i.i, align 4
  %84 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.18.i.i = getelementptr %struct.netdev_desc, ptr %84, i32 18, i32 1
  %85 = ptrtoint ptr %cmd_status.18.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 128, ptr %cmd_status.18.i.i, align 4
  %86 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.19.i.i = getelementptr %struct.netdev_desc, ptr %86, i32 19, i32 1
  %87 = ptrtoint ptr %cmd_status.19.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 128, ptr %cmd_status.19.i.i, align 4
  %88 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.20.i.i = getelementptr %struct.netdev_desc, ptr %88, i32 20, i32 1
  %89 = ptrtoint ptr %cmd_status.20.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %cmd_status.20.i.i, align 4
  %90 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.21.i.i = getelementptr %struct.netdev_desc, ptr %90, i32 21, i32 1
  %91 = ptrtoint ptr %cmd_status.21.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 128, ptr %cmd_status.21.i.i, align 4
  %92 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.22.i.i = getelementptr %struct.netdev_desc, ptr %92, i32 22, i32 1
  %93 = ptrtoint ptr %cmd_status.22.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 128, ptr %cmd_status.22.i.i, align 4
  %94 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.23.i.i = getelementptr %struct.netdev_desc, ptr %94, i32 23, i32 1
  %95 = ptrtoint ptr %cmd_status.23.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 128, ptr %cmd_status.23.i.i, align 4
  %96 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.24.i.i = getelementptr %struct.netdev_desc, ptr %96, i32 24, i32 1
  %97 = ptrtoint ptr %cmd_status.24.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 128, ptr %cmd_status.24.i.i, align 4
  %98 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.25.i.i = getelementptr %struct.netdev_desc, ptr %98, i32 25, i32 1
  %99 = ptrtoint ptr %cmd_status.25.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 128, ptr %cmd_status.25.i.i, align 4
  %100 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.26.i.i = getelementptr %struct.netdev_desc, ptr %100, i32 26, i32 1
  %101 = ptrtoint ptr %cmd_status.26.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 128, ptr %cmd_status.26.i.i, align 4
  %102 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.27.i.i = getelementptr %struct.netdev_desc, ptr %102, i32 27, i32 1
  %103 = ptrtoint ptr %cmd_status.27.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 128, ptr %cmd_status.27.i.i, align 4
  %104 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.28.i.i = getelementptr %struct.netdev_desc, ptr %104, i32 28, i32 1
  %105 = ptrtoint ptr %cmd_status.28.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 128, ptr %cmd_status.28.i.i, align 4
  %106 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.29.i.i = getelementptr %struct.netdev_desc, ptr %106, i32 29, i32 1
  %107 = ptrtoint ptr %cmd_status.29.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 128, ptr %cmd_status.29.i.i, align 4
  %108 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.30.i.i = getelementptr %struct.netdev_desc, ptr %108, i32 30, i32 1
  %109 = ptrtoint ptr %cmd_status.30.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 128, ptr %cmd_status.30.i.i, align 4
  %110 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.31.i.i = getelementptr %struct.netdev_desc, ptr %110, i32 31, i32 1
  %111 = ptrtoint ptr %cmd_status.31.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 128, ptr %cmd_status.31.i.i, align 4
  tail call fastcc void @refill_rx(ptr noundef %1) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !397
  tail call void @arm_heavy_mb() #15
  %112 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %add.ptr.i.i, align 8
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #15
  %add.ptr.i = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %114) #15, !srcloc !372
  tail call fastcc void @check_link(ptr noundef %1) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call36.i) #15
  br label %while.end.i

if.else.i:                                        ; preds = %if.then15.i
  %115 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_errors.i, align 8
  %inc46.i = add i32 %116, 1
  store i32 %inc46.i, ptr %rx_errors.i, align 8
  %and47.i = and i32 %desc_status.0212.i, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.else.i.if.end52.i_crit_edge, label %if.then49.i

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rx_over_errors.i, align 4
  %inc51.i = add i32 %118, 1
  store i32 %inc51.i, ptr %rx_over_errors.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.else.i.if.end52.i_crit_edge
  %and53.i = and i32 %desc_status.0212.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end52.i.if.end59.i_crit_edge, label %if.then55.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  %119 = ptrtoint ptr %rx_length_errors57.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_length_errors57.i, align 8
  %inc58.i = add i32 %120, 1
  store i32 %inc58.i, ptr %rx_length_errors57.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %if.end52.i.if.end59.i_crit_edge
  %and60.i = and i32 %desc_status.0212.i, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end65.i_crit_edge, label %if.then62.i

if.end59.i.if.end65.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_frame_errors.i, align 4
  %inc64.i = add i32 %122, 1
  store i32 %inc64.i, ptr %rx_frame_errors.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end65.i_crit_edge
  %and66.i = and i32 %desc_status.0212.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end65.i.cleanup.i_crit_edge, label %if.end65.i.cleanup.sink.split.i_crit_edge

if.end65.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end65.i.cleanup.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.else73.i:                                      ; preds = %if.end10.i
  %123 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_buf_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %124)
  %cmp75.i = icmp ugt i32 %sub12.i, %124
  br i1 %cmp75.i, label %if.else73.i.cleanup.i_crit_edge, label %if.else78.i

if.else73.i.cleanup.i_crit_edge:                  ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.else78.i:                                      ; preds = %if.else73.i
  %125 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %125)
  %cmp79.i = icmp slt i32 %sub12.i, %125
  br i1 %cmp79.i, label %land.lhs.true.i, label %if.else78.i.if.else93.i_crit_edge

if.else78.i.if.else93.i_crit_edge:                ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else93.i

land.lhs.true.i:                                  ; preds = %if.else78.i
  %add81.i = add nsw i32 %and11.i, -2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add81.i, i32 noundef 2592) #15
  %cmp83.not.i = icmp eq ptr %call.i.i, null
  br i1 %cmp83.not.i, label %land.lhs.true.i.if.else93.i_crit_edge, label %if.then85.i

land.lhs.true.i.if.else93.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else93.i

if.then85.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %126 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i203.i = getelementptr i8, ptr %127, i32 2
  store ptr %add.ptr.i203.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %128 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %129, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %130 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pci_dev.i, align 8
  %dev86.i = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %entry1.0214.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev86.i, i32 noundef %133, i32 noundef %18, i32 noundef 2) #15
  %arrayidx87.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 3, i32 %entry1.0214.i
  %134 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx87.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 19
  %136 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i, align 4
  %138 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i.i, align 4
  %140 = call ptr @memcpy(ptr %139, ptr %137, i32 %sub12.i)
  %call88.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub12.i) #15
  %141 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pci_dev.i, align 8
  %dev90.i = getelementptr inbounds %struct.pci_dev, ptr %142, i32 0, i32 44
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev90.i, i32 noundef %144, i32 noundef %18, i32 noundef 2) #15
  br label %if.end104.i

if.else93.i:                                      ; preds = %land.lhs.true.i.if.else93.i_crit_edge, %if.else78.i.if.else93.i_crit_edge
  %145 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pci_dev.i, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %146, i32 0, i32 44
  %arrayidx97.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %entry1.0214.i
  %147 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx97.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev95.i, i32 noundef %148, i32 noundef %add98.i, i32 noundef 2, i32 noundef 0) #15
  %arrayidx100.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 3, i32 %entry1.0214.i
  %149 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx100.i, align 4
  %call101.i = tail call ptr @skb_put(ptr noundef %150, i32 noundef %sub12.i) #15
  %151 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %arrayidx100.i, align 4
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else93.i, %if.then85.i
  %skb.0.i = phi ptr [ %call.i.i, %if.then85.i ], [ %150, %if.else93.i ]
  %call105.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %1) #15
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %152 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %call105.i, ptr %protocol.i, align 8
  %call106.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0.i) #15
  %153 = ptrtoint ptr %stats107.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %stats107.i, align 8
  %inc108.i = add i32 %154, 1
  store i32 %inc108.i, ptr %stats107.i, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end104.i, %if.end65.i.cleanup.sink.split.i_crit_edge
  %rx_crc_errors.sink221.i = phi ptr [ %rx_bytes.i, %if.end104.i ], [ %rx_crc_errors.i, %if.end65.i.cleanup.sink.split.i_crit_edge ]
  %.sink220.i = phi i32 [ %sub12.i, %if.end104.i ], [ 1, %if.end65.i.cleanup.sink.split.i_crit_edge ]
  %155 = ptrtoint ptr %rx_crc_errors.sink221.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_crc_errors.sink221.i, align 8
  %inc70.i = add i32 %156, %.sink220.i
  store i32 %inc70.i, ptr %rx_crc_errors.sink221.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.else73.i.cleanup.i_crit_edge, %if.end65.i.cleanup.i_crit_edge
  %157 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cur_rx.i, align 8
  %inc114.i = add i32 %158, 1
  store i32 %inc114.i, ptr %cur_rx.i, align 8
  %rem115.i = and i32 %inc114.i, 31
  %159 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx116.i = getelementptr %struct.netdev_desc, ptr %160, i32 %rem115.i
  %161 = ptrtoint ptr %rx_head_desc.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %arrayidx116.i, ptr %rx_head_desc.i, align 4
  %cmd_status119.i = getelementptr %struct.netdev_desc, ptr %160, i32 %rem115.i, i32 1
  %162 = ptrtoint ptr %cmd_status119.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cmd_status119.i, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #15
  %cmp.i = icmp slt i32 %164, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %reset_rx.exit.i, %if.end.i.while.end.i_crit_edge, %if.then12.while.end.i_crit_edge
  %work_done.2 = phi i32 [ %inc.i, %reset_rx.exit.i ], [ %work_done.0, %if.then12.while.end.i_crit_edge ], [ %inc.i, %cleanup.i.while.end.i_crit_edge ], [ %work_done.1, %if.end.i.while.end.i_crit_edge ]
  tail call fastcc void @refill_rx(ptr noundef %1) #15
  %165 = ptrtoint ptr %oom.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %oom.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool120.not.i = icmp eq i32 %166, 0
  br i1 %tobool120.not.i, label %do.body125.i, label %if.then121.i

if.then121.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %167 = load volatile i32, ptr @jiffies, align 128
  %add122.i = add i32 %167, 1
  %call123.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add122.i) #15
  br label %if.end13

do.body125.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !398
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 67108864) #15, !srcloc !372
  br label %if.end13

if.end13:                                         ; preds = %do.body125.i, %if.then121.i, %if.end.if.end13_crit_edge
  %work_done.3 = phi i32 [ %work_done.0, %if.end.if.end13_crit_edge ], [ %work_done.2, %if.then121.i ], [ %work_done.2, %do.body125.i ]
  %168 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %intr_status, align 8
  %and15 = and i32 %169, 960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  tail call fastcc void @netdev_tx_done(ptr noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13.if.end19_crit_edge
  %170 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %intr_status, align 8
  %and21 = and i32 %171, 52512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end25_crit_edge, label %if.then23

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  %172 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ioaddr.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %and.i71 = and i32 %171, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.then23.if.end15.i_crit_edge, label %if.then.i

if.then23.if.end15.i_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.then.i:                                        ; preds = %if.then23
  %174 = ptrtoint ptr %if_port.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %if_port.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp.i.i = icmp eq i8 %175, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i73

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %176 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %177, i32 148
  %178 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i.i) #15, !srcloc !376
  %179 = tail call i16 @llvm.bswap.i16(i16 %178) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i.i = zext i16 %179 to i32
  br label %mdio_read.exit.i

if.else.i.i73:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %180 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %phy_addr_external.i.i, align 8
  %call7.i.i = tail call fastcc i32 @miiport_read(ptr noundef %1, i32 noundef %181, i32 noundef 5) #15
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %if.else.i.i73, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %call7.i.i, %if.else.i.i73 ]
  %182 = ptrtoint ptr %if_port.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %if_port.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp.i166.i = icmp eq i8 %183, 0
  br i1 %cmp.i166.i, label %if.then.i170.i, label %if.else.i173.i

if.then.i170.i:                                   ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %184 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i168.i = getelementptr i8, ptr %185, i32 128
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i168.i) #15, !srcloc !376
  %187 = tail call i16 @llvm.bswap.i16(i16 %186) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i169.i = zext i16 %187 to i32
  br label %mdio_read.exit175.i

if.else.i173.i:                                   ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %188 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %phy_addr_external.i.i, align 8
  %call7.i172.i = tail call fastcc i32 @miiport_read(ptr noundef %1, i32 noundef %189, i32 noundef 0) #15
  br label %mdio_read.exit175.i

mdio_read.exit175.i:                              ; preds = %if.else.i173.i, %if.then.i170.i
  %retval.0.i174.i = phi i32 [ %conv6.i169.i, %if.then.i170.i ], [ %call7.i172.i, %if.else.i173.i ]
  %and4.i = and i32 %retval.0.i174.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %mdio_read.exit175.i.if.end.i78_crit_edge, label %land.lhs.true.i75

mdio_read.exit175.i.if.end.i78_crit_edge:         ; preds = %mdio_read.exit175.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i78

land.lhs.true.i75:                                ; preds = %mdio_read.exit175.i
  %190 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %msg_enable.i, align 4
  %and6.i = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i75.if.end.i78_crit_edge, label %do.end.i76

land.lhs.true.i75.if.end.i78_crit_edge:           ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i78

do.end.i76:                                       ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #17
  %192 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %advertising.i, align 8
  %conv9.i = zext i16 %193 to i32
  %conv10.i = and i32 %retval.0.i.i, 65535
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %1, i32 noundef %conv9.i, i32 noundef %conv10.i) #18
  br label %if.end.i78

if.end.i78:                                       ; preds = %do.end.i76, %land.lhs.true.i75.if.end.i78_crit_edge, %mdio_read.exit175.i.if.end.i78_crit_edge
  %add.ptr.i77 = getelementptr i8, ptr %173, i32 200
  %194 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i77) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !399
  tail call fastcc void @check_link(ptr noundef %1) #15
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i78, %if.then23.if.end15.i_crit_edge
  %and16.i79 = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i79)
  %tobool17.not.i80 = icmp eq i32 %and16.i79, 0
  br i1 %tobool17.not.i80, label %if.end15.i.if.end19.i_crit_edge, label %if.then18.i81

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then18.i81:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %195 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i177.i = getelementptr i8, ptr %196, i32 100
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i) #15, !srcloc !369
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  %199 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %rx_crc_errors.i, align 8
  %add.i.i = add i32 %200, %198
  store i32 %add.i.i, ptr %rx_crc_errors.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %196, i32 104
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #15, !srcloc !369
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  %203 = ptrtoint ptr %rx_missed_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rx_missed_errors.i.i, align 4
  %add10.i.i = add i32 %204, %202
  store i32 %add10.i.i, ptr %rx_missed_errors.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i81, %if.end15.i.if.end19.i_crit_edge
  %and20.i82 = and i32 %171, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i82)
  %tobool21.not.i83 = icmp eq i32 %and20.i82, 0
  br i1 %tobool21.not.i83, label %if.end19.i.if.end59.i89_crit_edge, label %if.then22.i

if.end19.i.if.end59.i89_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.i89

if.then22.i:                                      ; preds = %if.end19.i
  %205 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %tx_config.i, align 4
  %and23.i = and i32 %206, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %and23.i)
  %cmp.i84 = icmp ult i32 %and23.i, 46
  br i1 %cmp.i84, label %if.then25.i, label %if.else.i86

if.then25.i:                                      ; preds = %if.then22.i
  %add.i85 = add i32 %206, 2
  %207 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %add.i85, ptr %tx_config.i, align 4
  %208 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %msg_enable.i, align 4
  %and28.i = and i32 %209, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then25.i.do.body54.i_crit_edge, label %do.end33.i

if.then25.i.do.body54.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body54.i

do.end33.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #17
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %1, i32 noundef %add.i85) #18
  br label %do.body54.i

if.else.i86:                                      ; preds = %if.then22.i
  %210 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %msg_enable.i, align 4
  %and41.i = and i32 %211, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else.i86.do.body54.i_crit_edge, label %do.end46.i

if.else.i86.do.body54.i_crit_edge:                ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body54.i

do.end46.i:                                       ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #17
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %1, i32 noundef %206) #18
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.end46.i, %if.else.i86.do.body54.i_crit_edge, %do.end33.i, %if.then25.i.do.body54.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !402
  tail call void @arm_heavy_mb() #15
  %212 = ptrtoint ptr %tx_config.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tx_config.i, align 4
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #15
  %add.ptr58.i = getelementptr i8, ptr %173, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %214) #15, !srcloc !372
  br label %if.end59.i89

if.end59.i89:                                     ; preds = %do.body54.i, %if.end19.i.if.end59.i89_crit_edge
  %and60.i87 = and i32 %171, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i87)
  %tobool61.not.i88 = icmp eq i32 %and60.i87, 0
  br i1 %tobool61.not.i88, label %if.end59.i89.if.end80.i_crit_edge, label %land.lhs.true62.i

if.end59.i89.if.end80.i_crit_edge:                ; preds = %if.end59.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

land.lhs.true62.i:                                ; preds = %if.end59.i89
  %215 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %msg_enable.i, align 4
  %and64.i = and i32 %216, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %land.lhs.true62.i.if.end80.i_crit_edge, label %if.then66.i

land.lhs.true62.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80.i

if.then66.i:                                      ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr69.i = getelementptr i8, ptr %173, i32 64
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #15, !srcloc !369
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !403
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %1, i32 noundef %218) #18
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then66.i, %land.lhs.true62.i.if.end80.i_crit_edge, %if.end59.i89.if.end80.i_crit_edge
  %and81.i = and i32 %171, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.if.end102.i_crit_edge, label %if.then83.i

if.end80.i.if.end102.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102.i

if.then83.i:                                      ; preds = %if.end80.i
  %219 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %msg_enable.i, align 4
  %221 = and i32 %220, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %221)
  %.not.i = icmp eq i32 %221, 576
  br i1 %.not.i, label %do.end94.i, label %if.then83.i.if.end99.i_crit_edge

if.then83.i.if.end99.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99.i

do.end94.i:                                       ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #17
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %1) #18
  br label %if.end99.i

if.end99.i:                                       ; preds = %do.end94.i, %if.then83.i.if.end99.i_crit_edge
  %222 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc.i90 = add i32 %223, 1
  store i32 %inc.i90, ptr %rx_fifo_errors.i, align 8
  %224 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rx_errors.i, align 8
  %inc101.i = add i32 %225, 1
  store i32 %inc101.i, ptr %rx_errors.i, align 8
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end99.i, %if.end80.i.if.end102.i_crit_edge
  %and103.i = and i32 %171, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end102.i.netdev_error.exit_crit_edge, label %do.end108.i

if.end102.i.netdev_error.exit_crit_edge:          ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_error.exit

do.end108.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #17
  %call113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %1, i32 noundef %and103.i) #18
  %226 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc115.i = add i32 %227, 1
  store i32 %inc115.i, ptr %tx_fifo_errors.i, align 8
  %228 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tx_errors.i, align 4
  %inc117.i = add i32 %229, 1
  store i32 %inc117.i, ptr %tx_errors.i, align 4
  %230 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc120.i = add i32 %231, 1
  store i32 %inc120.i, ptr %rx_fifo_errors.i, align 8
  %232 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rx_errors.i, align 8
  %inc123.i = add i32 %233, 1
  store i32 %inc123.i, ptr %rx_errors.i, align 8
  br label %netdev_error.exit

netdev_error.exit:                                ; preds = %do.end108.i, %if.end102.i.netdev_error.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  br label %if.end25

if.end25:                                         ; preds = %netdev_error.exit, %if.end19.if.end25_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.3, i32 %budget)
  %cmp.not = icmp slt i32 %work_done.3, %budget
  br i1 %cmp.not, label %if.end27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end27:                                         ; preds = %if.end25
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #15, !srcloc !369
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !404
  %236 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %intr_status, align 8
  %tobool37.not = icmp eq i32 %234, 0
  br i1 %tobool37.not, label %do.end38, label %if.end27.do.body_crit_edge

if.end27.do.body_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.end38:                                         ; preds = %if.end27
  %call39 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.3) #15
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %hands_off = getelementptr i8, ptr %napi, i32 308
  %237 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool41.not = icmp eq i32 %238, 0
  br i1 %tobool41.not, label %if.then42, label %do.end38.if.end43_crit_edge

do.end38.if.end43_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then42:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !405
  tail call void @arm_heavy_mb() #15
  %239 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i93 = getelementptr i8, ptr %240, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 16777216) #15, !srcloc !372
  %241 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %242, i32 24
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !406
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end38.if.end43_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end25.cleanup_crit_edge
  ret i32 %work_done.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @natsemi_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !407
  %add.ptr6 = getelementptr i8, ptr %1, i32 64
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !408
  %add.ptr13 = getelementptr i8, ptr %1, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !409
  %add.ptr21 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !410
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #15, !srcloc !372
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !410
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 33554432) #15, !srcloc !372
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !410
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 67108864) #15, !srcloc !372
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 167772160) #15, !srcloc !372
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 201326592) #15, !srcloc !372
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 234881024) #15, !srcloc !372
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !414
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #15, !srcloc !372
  br label %for.body49

for.body49:                                       ; preds = %if.end.for.body49_crit_edge, %entry
  %i.2210 = phi i32 [ 0, %entry ], [ %inc58, %if.end.for.body49_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !415
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.end:                                           ; preds = %for.body49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #15
  %inc58 = add nuw nsw i32 %i.2210, 1
  %exitcond.not = icmp eq i32 %inc58, 400
  br i1 %exitcond.not, label %do.end64, label %if.end.for.body49_crit_edge

if.end.for.body49_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49

do.end64:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %dev, i32 noundef 2000) #18
  br label %if.end80

if.else:                                          ; preds = %for.body49
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and68 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else.if.end80_crit_edge, label %do.end73

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

do.end73:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %mul77 = mul i32 %i.2210, 5
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %dev, i32 noundef %mul77) #18
  br label %if.end80

if.end80:                                         ; preds = %do.end73, %if.else.if.end80_crit_edge, %do.end64
  %16 = and i32 %3, 520486912
  %17 = and i32 %2, 14744832
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !416
  %19 = and i32 %18, -15924481
  %20 = or i32 %19, %17
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %21 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp88 = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20)
  %masksel = select i1 %cmp88, i32 0, i32 4608
  %cfg.0 = or i32 %masksel, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !417
  tail call void @arm_heavy_mb() #15
  %24 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #15, !srcloc !372
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !418
  %26 = and i32 %25, -520486913
  %27 = or i32 %26, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !419
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %27) #15, !srcloc !372
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %5) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 33554432) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %6) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 67108864) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !422
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %7) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 167772160) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !424
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %8) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 201326592) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !424
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %9) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 234881024) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !424
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %10) #15, !srcloc !375
  %29 = and i32 %28, -20729
  %30 = and i32 %4, 20728
  %31 = or i32 %29, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !425
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %31) #15, !srcloc !372
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netdev_tx_done(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 3000
  %dirty_tx = getelementptr i8, ptr %dev, i32 3004
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_tx, align 8
  %2 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not109 = icmp eq i32 %1, %3
  br i1 %cmp.not109, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %inc60, %for.inc.for.body_crit_edge ]
  %rem = and i32 %4, 15
  %5 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring, align 8
  %cmd_status = getelementptr %struct.netdev_desc, ptr %6, i32 %rem, i32 1
  %7 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd_status, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and3 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %do.end

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %dev, i32 noundef %4, i32 noundef %11) #18
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.if.end11_crit_edge
  %12 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_ring, align 8
  %cmd_status14 = getelementptr %struct.netdev_desc, ptr %13, i32 %rem, i32 1
  %14 = ptrtoint ptr %cmd_status14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_status14, align 4
  %and15 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_packets, align 4
  %arrayidx18 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end11
  %22 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and23 = and i32 %22, 68157440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else.if.end28_crit_edge, label %if.then25

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_aborted_errors, align 8
  %inc27 = add i32 %24, 1
  store i32 %inc27, ptr %tx_aborted_errors, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.else.if.end28_crit_edge
  %and29 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_fifo_errors, align 8
  %inc33 = add i32 %26, 1
  store i32 %inc33, ptr %tx_fifo_errors, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_carrier_errors, align 4
  %inc39 = add i32 %28, 1
  store i32 %inc39, ptr %tx_carrier_errors, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %22, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.for.inc_crit_edge, label %if.then43

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_window_errors, align 8
  %inc45 = add i32 %30, 1
  store i32 %inc45, ptr %tx_window_errors, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %if.end40.for.inc_crit_edge, %if.then17
  %tx_bytes.sink112 = phi ptr [ %tx_bytes, %if.then17 ], [ %tx_errors, %if.then43 ], [ %tx_errors, %if.end40.for.inc_crit_edge ]
  %.sink111 = phi i32 [ %21, %if.then17 ], [ 1, %if.then43 ], [ 1, %if.end40.for.inc_crit_edge ]
  %31 = ptrtoint ptr %tx_bytes.sink112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_bytes.sink112, align 4
  %add = add i32 %32, %.sink111
  store i32 %add, ptr %tx_bytes.sink112, align 4
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %arrayidx51 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx51, align 4
  %arrayidx53 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem
  %37 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx53, align 4
  %len54 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len54, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev50, i32 noundef %36, i32 noundef %40, i32 noundef 1, i32 noundef 0) #15
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx53, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %42, i32 noundef 0) #15
  %43 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx53, align 4
  %44 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dirty_tx, align 4
  %inc60 = add i32 %45, 1
  store i32 %inc60, ptr %dirty_tx, align 4
  %46 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cur_tx, align 8
  %cmp.not = icmp eq i32 %47, %inc60
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
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
  br i1 %tobool.i.i.not, label %for.end.if.end67_crit_edge, label %land.lhs.true

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

land.lhs.true:                                    ; preds = %for.end
  %52 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_tx, align 8
  %54 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dirty_tx, align 4
  %sub64 = sub i32 %53, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub64)
  %cmp65 = icmp ult i32 %sub64, 6
  br i1 %cmp65, label %if.then66, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_tx_wake_queue(ptr noundef %49) #15
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true.if.end67_crit_edge, %for.end.if.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_link(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %duplex2 = getelementptr i8, ptr %dev, i32 3134
  %2 = ptrtoint ptr %duplex2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %duplex2, align 2
  %conv = zext i8 %3 to i32
  %ignore_phy = getelementptr i8, ptr %dev, i32 3024
  %4 = ptrtoint ptr %ignore_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ignore_phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.propagate_state_crit_edge

entry.propagate_state_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %propagate_state

if.end:                                           ; preds = %entry
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %6 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr3.i = getelementptr i8, ptr %1, i32 132
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  br label %mdio_read.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %9 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_addr_external.i, align 8
  %call7.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %10, i32 noundef 1) #15
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %if.else.i, %if.then.i
  %11 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i132 = icmp eq i8 %12, 0
  br i1 %cmp.i132, label %if.then.i137, label %if.else.i140

if.then.i137:                                     ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i135 = getelementptr i8, ptr %14, i32 132
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i135) #15, !srcloc !376
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i136 = zext i16 %16 to i32
  br label %mdio_read.exit142

if.else.i140:                                     ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i138 = getelementptr i8, ptr %dev, i32 3032
  %17 = ptrtoint ptr %phy_addr_external.i138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_addr_external.i138, align 8
  %call7.i139 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %18, i32 noundef 1) #15
  br label %mdio_read.exit142

mdio_read.exit142:                                ; preds = %if.else.i140, %if.then.i137
  %retval.0.i141 = phi i32 [ %conv6.i136, %if.then.i137 ], [ %call7.i139, %if.else.i140 ]
  %and = and i32 %retval.0.i141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool7.not, label %if.then8, label %if.end17

if.then8:                                         ; preds = %mdio_read.exit142
  br i1 %tobool.not.i, label %if.then10, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and11 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %do.end

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %dev) #18
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then10.if.end15_crit_edge
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 8
  %26 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %srr.i = getelementptr i8, ptr %dev, i32 3120
  %28 = ptrtoint ptr %srr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %srr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1284, i32 %29)
  %cmp3.i = icmp ugt i32 %29, 1284
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %do.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !426
  tail call void @arm_heavy_mb() #15
  %add.ptr.i145 = getelementptr i8, ptr %25, i32 204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i145, i16 256) #15, !srcloc !375
  %add.ptr7.i = getelementptr i8, ptr %25, i32 244
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !427
  %31 = and i16 %30, -8193
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #15
  %dspcfg.i = getelementptr i8, ptr %dev, i32 3124
  %33 = ptrtoint ptr %dspcfg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %dspcfg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !428
  tail call void @arm_heavy_mb() #15
  %34 = ptrtoint ptr %dspcfg.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dspcfg.i, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %36) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i145, i16 0) #15, !srcloc !375
  br label %cleanup

if.end17:                                         ; preds = %mdio_read.exit142
  br i1 %tobool.not.i, label %if.end17.if.end32_crit_edge, label %if.then19

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then19:                                        ; preds = %if.end17
  %msg_enable20 = getelementptr i8, ptr %dev, i32 3188
  %37 = ptrtoint ptr %msg_enable20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable20, align 4
  %and21 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then19.if.end31_crit_edge, label %do.end26

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #17
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev) #18
  br label %if.end31

if.end31:                                         ; preds = %do.end26, %if.then19.if.end31_crit_edge
  tail call void @netif_carrier_on(ptr noundef %dev) #15
  %39 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr.i, align 8
  %41 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not.i150 = icmp eq i8 %42, 0
  br i1 %cmp.not.i150, label %if.end.i153, label %if.end31.if.end32_crit_edge

if.end31.if.end32_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end.i153:                                      ; preds = %if.end31
  %srr.i151 = getelementptr i8, ptr %dev, i32 3120
  %43 = ptrtoint ptr %srr.i151 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %srr.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1284, i32 %44)
  %cmp3.i152 = icmp ugt i32 %44, 1284
  br i1 %cmp3.i152, label %if.end.i153.if.end32_crit_edge, label %if.end6.i

if.end.i153.if.end32_crit_edge:                   ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end6.i:                                        ; preds = %if.end.i153
  %add.ptr.i154 = getelementptr i8, ptr %40, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !430
  %46 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i155 = icmp eq i32 %46, 0
  br i1 %tobool.not.i155, label %if.end6.i.if.end32_crit_edge, label %if.then9.i

if.end6.i.if.end32_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then9.i:                                       ; preds = %if.end6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !431
  tail call void @arm_heavy_mb() #15
  %add.ptr10.i = getelementptr i8, ptr %40, i32 204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 256) #15, !srcloc !375
  %add.ptr13.i = getelementptr i8, ptr %40, i32 252
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr13.i) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !432
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10241, i16 %47)
  %48 = icmp sgt i16 %47, -10241
  br i1 %48, label %if.then29.i, label %if.then9.i.do.body49.i_crit_edge

if.then9.i.do.body49.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body49.i

if.then29.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !433
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 -6144) #15, !srcloc !375
  %add.ptr37.i = getelementptr i8, ptr %40, i32 244
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !434
  %50 = or i16 %49, 8192
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #15
  %dspcfg.i156 = getelementptr i8, ptr %dev, i32 3124
  %52 = ptrtoint ptr %dspcfg.i156 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %dspcfg.i156, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !435
  tail call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %dspcfg.i156 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dspcfg.i156, align 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr37.i, i16 %55) #15, !srcloc !375
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.then29.i, %if.then9.i.do.body49.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !436
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 0) #15, !srcloc !375
  br label %if.end32

if.end32:                                         ; preds = %do.body49.i, %if.end6.i.if.end32_crit_edge, %if.end.i153.if.end32_crit_edge, %if.end31.if.end32_crit_edge, %if.end17.if.end32_crit_edge
  %full_duplex = getelementptr i8, ptr %dev, i32 3036
  %56 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool33.not = icmp eq i32 %57, 0
  br i1 %tobool33.not, label %if.then34, label %if.end32.propagate_state_crit_edge

if.end32.propagate_state_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %propagate_state

if.then34:                                        ; preds = %if.end32
  %and36 = and i32 %retval.0.i141, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then34
  %advertising = getelementptr i8, ptr %dev, i32 3136
  %58 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %advertising, align 8
  %conv40 = zext i16 %59 to i32
  %60 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp.i158 = icmp eq i8 %61, 0
  br i1 %cmp.i158, label %if.then.i163, label %if.else.i166

if.then.i163:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %62 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i161 = getelementptr i8, ptr %63, i32 148
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i161) #15, !srcloc !376
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i162 = zext i16 %65 to i32
  br label %mdio_read.exit168

if.else.i166:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i164 = getelementptr i8, ptr %dev, i32 3032
  %66 = ptrtoint ptr %phy_addr_external.i164 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %phy_addr_external.i164, align 8
  %call7.i165 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %67, i32 noundef 5) #15
  br label %mdio_read.exit168

mdio_read.exit168:                                ; preds = %if.else.i166, %if.then.i163
  %retval.0.i167 = phi i32 [ %conv6.i162, %if.then.i163 ], [ %call7.i165, %if.else.i166 ]
  %and42 = and i32 %retval.0.i167, %conv40
  %and.i = and i32 %and42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i169 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i169, label %if.else.i170, label %mdio_read.exit168.mii_nway_result.exit_crit_edge

mdio_read.exit168.mii_nway_result.exit_crit_edge: ; preds = %mdio_read.exit168
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_nway_result.exit

if.else.i170:                                     ; preds = %mdio_read.exit168
  %and1.i = and i32 %and42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.else.i170.mii_nway_result.exit_crit_edge

if.else.i170.mii_nway_result.exit_crit_edge:      ; preds = %if.else.i170
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_nway_result.exit

if.else4.i:                                       ; preds = %if.else.i170
  %and5.i = and i32 %and42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.else4.i.mii_nway_result.exit_crit_edge

if.else4.i.mii_nway_result.exit_crit_edge:        ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_nway_result.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #17
  %and9.i = and i32 %and42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool10.not.i, i32 32, i32 64
  br label %mii_nway_result.exit

mii_nway_result.exit:                             ; preds = %if.else8.i, %if.else4.i.mii_nway_result.exit_crit_edge, %if.else.i170.mii_nway_result.exit_crit_edge, %mdio_read.exit168.mii_nway_result.exit_crit_edge
  %ret.0.i = phi i32 [ 256, %mdio_read.exit168.mii_nway_result.exit_crit_edge ], [ 512, %if.else.i170.mii_nway_result.exit_crit_edge ], [ 128, %if.else4.i.mii_nway_result.exit_crit_edge ], [ %..i, %if.else8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %ret.0.i)
  %switch.selectcmp.case1 = icmp eq i32 %ret.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %ret.0.i)
  %switch.selectcmp.case2 = icmp eq i32 %ret.0.i, 64
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %68 = zext i1 %switch.selectcmp to i32
  br label %propagate_state

if.else:                                          ; preds = %if.then34
  %69 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i172 = icmp eq i8 %70, 0
  br i1 %cmp.i172, label %if.then.i176, label %if.else.i179

if.then.i176:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i174 = getelementptr i8, ptr %72, i32 128
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i174) #15, !srcloc !376
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i175 = zext i16 %74 to i32
  br label %mdio_read.exit181

if.else.i179:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i177 = getelementptr i8, ptr %dev, i32 3032
  %75 = ptrtoint ptr %phy_addr_external.i177 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phy_addr_external.i177, align 8
  %call7.i178 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %76, i32 noundef 0) #15
  br label %mdio_read.exit181

mdio_read.exit181:                                ; preds = %if.else.i179, %if.then.i176
  %retval.0.i180 = phi i32 [ %conv6.i175, %if.then.i176 ], [ %call7.i178, %if.else.i179 ]
  %and50 = lshr i32 %retval.0.i180, 8
  %and50.lobit = and i32 %and50, 1
  br label %propagate_state

propagate_state:                                  ; preds = %mdio_read.exit181, %mii_nway_result.exit, %if.end32.propagate_state_crit_edge, %entry.propagate_state_crit_edge
  %duplex.1 = phi i32 [ %conv, %entry.propagate_state_crit_edge ], [ %57, %if.end32.propagate_state_crit_edge ], [ %and50.lobit, %mdio_read.exit181 ], [ %68, %mii_nway_result.exit ]
  %rx_config = getelementptr i8, ptr %dev, i32 3112
  %77 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_config, align 8
  %and56 = lshr i32 %78, 28
  %and56.lobit = and i32 %and56, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %duplex.1, i32 %and56.lobit)
  %tobool59.not = icmp eq i32 %duplex.1, %and56.lobit
  br i1 %tobool59.not, label %propagate_state.cleanup_crit_edge, label %if.then60

propagate_state.cleanup_crit_edge:                ; preds = %propagate_state
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then60:                                        ; preds = %propagate_state
  %msg_enable61 = getelementptr i8, ptr %dev, i32 3188
  %79 = ptrtoint ptr %msg_enable61 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_enable61, align 4
  %and62 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then60.if.end73_crit_edge, label %do.end67

if.then60.if.end73_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

do.end67:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex.1)
  %tobool71.not = icmp eq i32 %duplex.1, 0
  %cond = select i1 %tobool71.not, ptr @.str.43, ptr @.str.42
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %dev, ptr noundef nonnull %cond) #18
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %if.then60.if.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex.1)
  %tobool74.not = icmp eq i32 %duplex.1, 0
  %81 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_config, align 8
  br i1 %tobool74.not, label %if.else78, label %if.then75

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %82, 268435456
  %83 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or, ptr %rx_config, align 8
  %tx_config = getelementptr i8, ptr %dev, i32 3108
  %84 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_config, align 4
  %or77 = or i32 %85, -1073741824
  store i32 %or77, ptr %tx_config, align 4
  br label %do.body84

if.else78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %and80 = and i32 %82, -268435457
  %86 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and80, ptr %rx_config, align 8
  %tx_config81 = getelementptr i8, ptr %dev, i32 3108
  %87 = ptrtoint ptr %tx_config81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_config81, align 4
  %and82 = and i32 %88, 1073741823
  store i32 %and82, ptr %tx_config81, align 4
  br label %do.body84

do.body84:                                        ; preds = %if.else78, %if.then75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !437
  tail call void @arm_heavy_mb() #15
  %tx_config87 = getelementptr i8, ptr %dev, i32 3108
  %89 = ptrtoint ptr %tx_config87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_config87, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %add.ptr = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %91) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !438
  tail call void @arm_heavy_mb() #15
  %92 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_config, align 8
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %add.ptr92 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %94) #15, !srcloc !372
  br label %cleanup

cleanup:                                          ; preds = %do.body84, %propagate_state.cleanup_crit_edge, %do.body.i, %if.end.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge
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
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refill_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_rx = getelementptr i8, ptr %dev, i32 2992
  %dirty_rx = getelementptr i8, ptr %dev, i32 2996
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_rx, align 8
  %2 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not88 = icmp eq i32 %1, %3
  br i1 %cmp.not88, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 3008
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %4, 31
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %for.body
  %7 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_buf_sz, align 8
  %add = add i32 %8, 16
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add, i32 noundef 2592) #15
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %call.i, null
  br i1 %cmp7, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i76 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #15
  br i1 %call.i76, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !439

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev9) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev9, ptr noundef %13, i32 noundef %add) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %13 to i32
  %sub.i = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i77 = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev9, ptr noundef %add.ptr.i77, i32 noundef %and.i, i32 noundef %add, i32 noundef 2, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx11 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %rem
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev13, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then17, label %cleanup

if.then17:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #15
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  br label %for.end

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring, align 4
  %addr = getelementptr %struct.netdev_desc, ptr %28, i32 %rem, i32 2
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_buf_sz, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ring, align 4
  %cmd_status = getelementptr %struct.netdev_desc, ptr %34, i32 %rem, i32 1
  %35 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %cmd_status, align 4
  %36 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dirty_rx, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %dirty_rx, align 4
  %38 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_rx, align 8
  %cmp.not = icmp eq i32 %39, %inc
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %40 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_rx, align 8
  %42 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dirty_rx, align 4
  %sub35 = sub i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub35)
  %cmp36 = icmp eq i32 %sub35, 32
  br i1 %cmp36, label %if.then37, label %for.end.if.end42_crit_edge

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then37:                                        ; preds = %for.end
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 4
  %and = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.then37.if.end41_crit_edge, label %do.end

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

do.end:                                           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #17
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dev) #18
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.then37.if.end41_crit_edge
  %oom = getelementptr i8, ptr %dev, i32 3012
  %46 = ptrtoint ptr %oom to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %oom, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %for.end.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @miiport_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.034.i = phi i32 [ -2147483648, %entry ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.034.i)
  %tobool1.not.i = icmp eq i32 %i.034.i, 0
  %or.i = select i1 %tobool1.not.i, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #15, !srcloc !372
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  tail call void @arm_heavy_mb() #15
  %3 = or i32 %or.i, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #15, !srcloc !372
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %shr.i = lshr i32 %i.034.i, 1
  %tobool.not.i = icmp ult i32 %i.034.i, 2
  br i1 %tobool.not.i, label %mii_send_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

mii_send_bits.exit:                               ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !372
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %reg
  %or2 = or i32 %or, 6144
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 8
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %mii_send_bits.exit
  %i.034.i18 = phi i32 [ 8192, %mii_send_bits.exit ], [ %shr.i21, %for.body.i23.for.body.i23_crit_edge ]
  %and.i = and i32 %i.034.i18, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i19 = icmp eq i32 %and.i, 0
  %or.i20 = select i1 %tobool1.not.i19, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %or.i20) #15, !srcloc !372
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  tail call void @arm_heavy_mb() #15
  %9 = or i32 %or.i20, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %9) #15, !srcloc !372
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %shr.i21 = lshr i32 %i.034.i18, 1
  %tobool.not.i22 = icmp ult i32 %i.034.i18, 2
  br i1 %tobool.not.i22, label %mii_send_bits.exit24, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i23

mii_send_bits.exit24:                             ; preds = %for.body.i23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #15, !srcloc !372
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  tail call void @arm_heavy_mb() #15
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 1073741824) #15, !srcloc !372
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #15, !srcloc !372
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  %16 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %mii_send_bits.exit24.for.body_crit_edge, label %mii_send_bits.exit24.cleanup_crit_edge

mii_send_bits.exit24.cleanup_crit_edge:           ; preds = %mii_send_bits.exit24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

mii_send_bits.exit24.for.body_crit_edge:          ; preds = %mii_send_bits.exit24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mii_send_bits.exit24.for.body_crit_edge
  %retval1.034 = phi i32 [ %or5, %for.body.for.body_crit_edge ], [ 0, %mii_send_bits.exit24.for.body_crit_edge ]
  %i.033 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %mii_send_bits.exit24.for.body_crit_edge ]
  %shl3 = shl i32 %retval1.034, 1
  %17 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  tail call void @arm_heavy_mb() #15
  %add.ptr.i28 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 1073741824) #15, !srcloc !372
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #15, !srcloc !372
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  %21 = lshr i32 %19, 28
  %.lobit.i29 = and i32 %21, 1
  %or5 = or i32 %.lobit.i29, %shl3
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  tail call void @arm_heavy_mb() #15
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 1073741824) #15, !srcloc !372
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #15, !srcloc !372
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mii_send_bits.exit24.cleanup_crit_edge
  %retval.0 = phi i32 [ %or5, %for.end ], [ 0, %mii_send_bits.exit24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @switch_port_external(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !450
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and4 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.body10_crit_edge, label %do.end

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %dev) #18
  br label %do.body10

do.body10:                                        ; preds = %do.end, %if.end.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !451
  tail call void @arm_heavy_mb() #15
  %or = or i32 %3, 4608
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #15, !srcloc !372
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #15
  %phy_addr_external = getelementptr i8, ptr %dev, i32 3032
  %9 = ptrtoint ptr %phy_addr_external to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_addr_external, align 8
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp.i = icmp eq i32 %10, 31
  %spec.select.i = select i1 %cmp.i, i32 30, i32 31
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %10)
  %cmp2.i = icmp eq i32 %spec.select.i, %10
  %dec4.i = sext i1 %cmp2.i to i32
  %target.1.i = add nsw i32 %spec.select.i, %dec4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @arm_heavy_mb() #15
  %conv.i = trunc i32 %target.1.i to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %add.ptr.i30 = getelementptr i8, ptr %12, i32 228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 %13) #15, !srcloc !375
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i30) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #15
  tail call fastcc void @init_phy_fixup(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switch_port_internal(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !453
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and4 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %dev) #18
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %and10 = and i32 %3, -4609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !454
  tail call void @arm_heavy_mb() #15
  %6 = tail call i32 @llvm.bswap.i32(i32 %and10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #15, !srcloc !372
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !455
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #15
  %add.ptr23 = getelementptr i8, ptr %1, i32 128
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !457
  tail call void @arm_heavy_mb() #15
  %10 = or i16 %9, 128
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %or = zext i16 %11 to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %12) #15, !srcloc !372
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !458
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #15
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %if.end9
  %i.03 = phi i32 [ 0, %if.end9 ], [ %inc, %if.end51.for.body_crit_edge ]
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !459
  %.mask = and i16 %15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool49.not = icmp eq i16 %.mask, 0
  br i1 %tobool49.not, label %for.body.if.end65_crit_edge, label %if.end51

for.body.if.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

if.end51:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #15
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 400
  br i1 %exitcond.not, label %land.lhs.true, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

land.lhs.true:                                    ; preds = %if.end51
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and55 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %land.lhs.true.if.end65_crit_edge, label %do.end60

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

do.end60:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %dev, i32 noundef 4000) #18
  br label %if.end65

if.end65:                                         ; preds = %do.end60, %land.lhs.true.if.end65_crit_edge, %for.body.if.end65_crit_edge
  tail call fastcc void @init_phy_fixup(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_phy_fixup(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i222 = getelementptr i8, ptr %1, i32 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i222) #15, !srcloc !376
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i = zext i16 %5 to i32
  br label %mdio_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %6 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_addr_external.i, align 8
  %call7.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %7, i32 noundef 0) #15
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %conv6.i, %if.then.i ], [ %call7.i, %if.else.i ]
  %conv = trunc i32 %retval.0.i to i16
  %autoneg = getelementptr i8, ptr %dev, i32 3135
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %mdio_read.exit
  %and = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then.if.then12_crit_edge, label %lor.lhs.false

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %advertising = getelementptr i8, ptr %dev, i32 3136
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %advertising, align 8
  %conv8 = zext i16 %11 to i32
  %12 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i224 = icmp eq i8 %13, 0
  br i1 %cmp.i224, label %if.then.i228, label %if.else.i231

if.then.i228:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %15, i32 144
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #15, !srcloc !376
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i227 = zext i16 %17 to i32
  br label %mdio_read.exit233

if.else.i231:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i229 = getelementptr i8, ptr %dev, i32 3032
  %18 = ptrtoint ptr %phy_addr_external.i229 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_addr_external.i229, align 8
  %call7.i230 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %19, i32 noundef 4) #15
  br label %mdio_read.exit233

mdio_read.exit233:                                ; preds = %if.else.i231, %if.then.i228
  %retval.0.i232 = phi i32 [ %conv6.i227, %if.then.i228 ], [ %call7.i230, %if.else.i231 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i232, i32 %conv8)
  %cmp10.not = icmp eq i32 %retval.0.i232, %conv8
  br i1 %cmp10.not, label %mdio_read.exit233.if.end35_crit_edge, label %mdio_read.exit233.if.then12_crit_edge

mdio_read.exit233.if.then12_crit_edge:            ; preds = %mdio_read.exit233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

mdio_read.exit233.if.end35_crit_edge:             ; preds = %mdio_read.exit233
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then12:                                        ; preds = %mdio_read.exit233.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %conv14 = or i16 %conv, 4608
  %advertising15 = getelementptr i8, ptr %dev, i32 3136
  %20 = ptrtoint ptr %advertising15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %advertising15, align 8
  %22 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i235 = icmp eq i8 %23, 0
  br i1 %cmp.i235, label %do.body.i, label %if.else.i240

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %26 = tail call i16 @llvm.bswap.i16(i16 %21) #15
  %add.ptr3.i238 = getelementptr i8, ptr %25, i32 144
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i238, i16 %26) #15, !srcloc !375
  br label %if.end35

if.else.i240:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i239 = getelementptr i8, ptr %dev, i32 3032
  %27 = ptrtoint ptr %phy_addr_external.i239 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_addr_external.i239, align 8
  tail call fastcc void @miiport_write(ptr noundef %dev, i32 noundef %28, i32 noundef 4, i16 noundef zeroext %21) #15
  br label %if.end35

if.else:                                          ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv18 = and i16 %conv, -12545
  %speed = getelementptr i8, ptr %dev, i32 3132
  %29 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %30)
  %cmp20 = icmp eq i16 %30, 100
  %31 = or i16 %conv18, 8192
  %spec.select = select i1 %cmp20, i16 %31, i16 %conv18
  %duplex = getelementptr i8, ptr %dev, i32 3134
  %32 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp28 = icmp eq i8 %33, 1
  %34 = or i16 %spec.select, 256
  %spec.select221 = select i1 %cmp28, i16 %34, i16 %spec.select
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.else.i240, %do.body.i, %mdio_read.exit233.if.end35_crit_edge
  %tmp.1 = phi i16 [ %conv, %mdio_read.exit233.if.end35_crit_edge ], [ %spec.select221, %if.else ], [ %conv14, %do.body.i ], [ %conv14, %if.else.i240 ]
  %35 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i242 = icmp eq i8 %36, 0
  br i1 %cmp.i242, label %do.body.i245, label %if.else.i247

do.body.i245:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %39 = tail call i16 @llvm.bswap.i16(i16 %tmp.1) #15
  %add.ptr.i244 = getelementptr i8, ptr %38, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i244, i16 %39) #15, !srcloc !375
  br label %mdio_write.exit248

if.else.i247:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i246 = getelementptr i8, ptr %dev, i32 3032
  %40 = ptrtoint ptr %phy_addr_external.i246 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy_addr_external.i246, align 8
  tail call fastcc void @miiport_write(ptr noundef %dev, i32 noundef %41, i32 noundef 0, i16 noundef zeroext %tmp.1) #15
  br label %mdio_write.exit248

mdio_write.exit248:                               ; preds = %if.else.i247, %do.body.i245
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !461
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #15
  %44 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp.i250 = icmp eq i8 %45, 0
  br i1 %cmp.i250, label %if.then.i255, label %if.else.i258

if.then.i255:                                     ; preds = %mdio_write.exit248
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i253 = getelementptr i8, ptr %47, i32 136
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i253) #15, !srcloc !376
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i254 = zext i16 %49 to i32
  br label %mdio_read.exit260

if.else.i258:                                     ; preds = %mdio_write.exit248
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i256 = getelementptr i8, ptr %dev, i32 3032
  %50 = ptrtoint ptr %phy_addr_external.i256 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_addr_external.i256, align 8
  %call7.i257 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %51, i32 noundef 2) #15
  br label %mdio_read.exit260

mdio_read.exit260:                                ; preds = %if.else.i258, %if.then.i255
  %retval.0.i259 = phi i32 [ %conv6.i254, %if.then.i255 ], [ %call7.i257, %if.else.i258 ]
  %shl = shl i32 %retval.0.i259, 16
  %52 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp.i262 = icmp eq i8 %53, 0
  br i1 %cmp.i262, label %if.then.i267, label %if.else.i270

if.then.i267:                                     ; preds = %mdio_read.exit260
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i265 = getelementptr i8, ptr %55, i32 140
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i265) #15, !srcloc !376
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i266 = zext i16 %57 to i32
  br label %mdio_read.exit272

if.else.i270:                                     ; preds = %mdio_read.exit260
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i268 = getelementptr i8, ptr %dev, i32 3032
  %58 = ptrtoint ptr %phy_addr_external.i268 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phy_addr_external.i268, align 8
  %call7.i269 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %59, i32 noundef 3) #15
  br label %mdio_read.exit272

mdio_read.exit272:                                ; preds = %if.else.i270, %if.then.i267
  %retval.0.i271 = phi i32 [ %conv6.i266, %if.then.i267 ], [ %call7.i269, %if.else.i270 ]
  %add = add i32 %retval.0.i271, %shl
  %mii = getelementptr i8, ptr %dev, i32 3028
  %60 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %mii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250267, i32 %add)
  %cond170 = icmp eq i32 %add, 2250267
  br i1 %cond170, label %sw.bb, label %mdio_read.exit272.sw.epilog_crit_edge

mdio_read.exit272.sw.epilog_crit_edge:            ; preds = %mdio_read.exit272
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %mdio_read.exit272
  %61 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i274 = icmp eq i8 %62, 0
  br i1 %cmp.i274, label %if.then.i279, label %if.else.i282

if.then.i279:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr3.i277 = getelementptr i8, ptr %64, i32 212
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i277) #15, !srcloc !376
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i278 = zext i16 %66 to i32
  br label %mdio_read.exit284

if.else.i282:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i280 = getelementptr i8, ptr %dev, i32 3032
  %67 = ptrtoint ptr %phy_addr_external.i280 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %phy_addr_external.i280, align 8
  %call7.i281 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %68, i32 noundef 21) #15
  br label %mdio_read.exit284

mdio_read.exit284:                                ; preds = %if.else.i282, %if.then.i279
  %retval.0.i283 = phi i32 [ %conv6.i278, %if.then.i279 ], [ %call7.i281, %if.else.i282 ]
  %69 = trunc i32 %retval.0.i283 to i16
  %conv46 = and i16 %69, -6
  %70 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %71)
  %cmp48 = icmp eq i8 %71, 3
  %tmp.2.v = select i1 %cmp48, i16 1, i16 4
  %tmp.2 = or i16 %tmp.2.v, %conv46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp.i286 = icmp eq i8 %71, 0
  br i1 %cmp.i286, label %do.body.i290, label %if.else.i292

do.body.i290:                                     ; preds = %mdio_read.exit284
  call void @__sanitizer_cov_trace_pc() #17
  %72 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %74 = tail call i16 @llvm.bswap.i16(i16 %tmp.2) #15
  %add.ptr3.i289 = getelementptr i8, ptr %73, i32 212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i289, i16 %74) #15, !srcloc !375
  br label %sw.epilog

if.else.i292:                                     ; preds = %mdio_read.exit284
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i291 = getelementptr i8, ptr %dev, i32 3032
  %75 = ptrtoint ptr %phy_addr_external.i291 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %phy_addr_external.i291, align 8
  tail call fastcc void @miiport_write(ptr noundef %dev, i32 noundef %76, i32 noundef 21, i16 noundef zeroext %tmp.2) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i292, %do.body.i290, %mdio_read.exit272.sw.epilog_crit_edge
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !462
  %78 = and i32 %77, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not = icmp eq i32 %78, 0
  br i1 %tobool.not, label %for.cond.preheader, label %sw.epilog.cleanup163_crit_edge

sw.epilog.cleanup163_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup163

for.cond.preheader:                               ; preds = %sw.epilog
  %add.ptr70 = getelementptr i8, ptr %1, i32 204
  %add.ptr74 = getelementptr i8, ptr %1, i32 228
  %add.ptr78 = getelementptr i8, ptr %1, i32 252
  %srr = getelementptr i8, ptr %dev, i32 3120
  %add.ptr83 = getelementptr i8, ptr %1, i32 244
  %dspcfg90 = getelementptr i8, ptr %dev, i32 3124
  %add.ptr99 = getelementptr i8, ptr %1, i32 248
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0294 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 256) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !464
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 -25576) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !465
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78, i16 0) #15, !srcloc !375
  %79 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %srr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 771, i32 %80)
  %cmp79 = icmp ult i32 %80, 771
  br i1 %cmp79, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr83) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !466
  %82 = or i16 %81, 16
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i16 [ %83, %cond.false ], [ 20544, %for.body.cond.end_crit_edge ]
  %84 = ptrtoint ptr %dspcfg90 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %cond, ptr %dspcfg90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !467
  tail call void @arm_heavy_mb() #15
  %85 = ptrtoint ptr %dspcfg90 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %dspcfg90, align 4
  %87 = tail call i16 @llvm.bswap.i16(i16 %86)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr83, i16 %87) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !468
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr99, i16 -29696) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 0) #15, !srcloc !375
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !470
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 2147480) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !471
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 256) #15, !srcloc !375
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr83) #15, !srcloc !376
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !473
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70, i16 0) #15, !srcloc !375
  %92 = ptrtoint ptr %dspcfg90 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %dspcfg90, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %91)
  %cmp127 = icmp eq i16 %93, %91
  br i1 %cmp127, label %for.end, label %for.inc

for.inc:                                          ; preds = %cond.end
  %inc = add nuw nsw i32 %i.0294, 1
  %exitcond.not = icmp eq i32 %inc, 400
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cond.end
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %94 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable, align 4
  %and131 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %for.end.if.end152_crit_edge, label %if.then133

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

for.end.thread:                                   ; preds = %for.inc
  %msg_enable296 = getelementptr i8, ptr %dev, i32 3188
  %96 = ptrtoint ptr %msg_enable296 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msg_enable296, align 4
  %and131297 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131297)
  %tobool132.not298 = icmp eq i32 %and131297, 0
  br i1 %tobool132.not298, label %for.end.thread.if.end152_crit_edge, label %for.end.thread.do.end139_crit_edge

for.end.thread.do.end139_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end139

for.end.thread.if.end152_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

if.then133:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %i.0294)
  %cmp134 = icmp eq i32 %i.0294, 400
  br i1 %cmp134, label %if.then133.do.end139_crit_edge, label %do.end145

if.then133.do.end139_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end139

do.end139:                                        ; preds = %if.then133.do.end139_crit_edge, %for.end.thread.do.end139_crit_edge
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %dev, i32 noundef 4000) #18
  br label %if.end152

do.end145:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #17
  %mul149 = mul i32 %i.0294, 10
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %dev, i32 noundef %mul149) #18
  br label %if.end152

if.end152:                                        ; preds = %do.end145, %do.end139, %for.end.thread.if.end152_crit_edge, %for.end.if.end152_crit_edge
  %add.ptr155 = getelementptr i8, ptr %1, i32 200
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr155) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !475
  tail call void @arm_heavy_mb() #15
  %add.ptr162 = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr162, i16 512) #15, !srcloc !375
  br label %cleanup163

cleanup163:                                       ; preds = %if.end152, %sw.epilog.cleanup163_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @miiport_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.034.i = phi i32 [ -2147483648, %entry ], [ %shr.i, %for.body.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.034.i)
  %tobool1.not.i = icmp eq i32 %i.034.i, 0
  %or.i = select i1 %tobool1.not.i, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #15, !srcloc !372
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  tail call void @arm_heavy_mb() #15
  %3 = or i32 %or.i, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #15, !srcloc !372
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %shr.i = lshr i32 %i.034.i, 1
  %tobool.not.i = icmp ult i32 %i.034.i, 2
  br i1 %tobool.not.i, label %mii_send_bits.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

mii_send_bits.exit:                               ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !372
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %reg, 18
  %conv = zext i16 %data to i32
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %conv
  %or3 = or i32 %or2, 1342308352
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 8
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %mii_send_bits.exit
  %i.034.i8 = phi i32 [ -2147483648, %mii_send_bits.exit ], [ %shr.i11, %for.body.i13.for.body.i13_crit_edge ]
  %and.i = and i32 %i.034.i8, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i9 = icmp eq i32 %and.i, 0
  %or.i10 = select i1 %tobool1.not.i9, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %or.i10) #15, !srcloc !372
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  tail call void @arm_heavy_mb() #15
  %9 = or i32 %or.i10, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %9) #15, !srcloc !372
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %shr.i11 = lshr i32 %i.034.i8, 1
  %tobool.not.i12 = icmp ult i32 %i.034.i8, 2
  br i1 %tobool.not.i12, label %mii_send_bits.exit14, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i13

mii_send_bits.exit14:                             ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #15, !srcloc !372
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  tail call void @arm_heavy_mb() #15
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 1073741824) #15, !srcloc !372
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #15, !srcloc !372
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  tail call fastcc void @natsemi_reset(ptr noundef %dev)
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %dev, i32 noundef %5) #18
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 768, ptr noundef %add.ptr.i, i32 noundef 3264, i32 noundef 0) #15
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %10 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %rx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr %struct.netdev_desc, ptr %call.i.i, i32 32
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2312
  %11 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %tx_ring.i, align 8
  %napi = getelementptr i8, ptr %dev, i32 2712
  tail call void @napi_enable(ptr noundef %napi) #15
  tail call fastcc void @init_ring(ptr noundef %dev)
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  tail call fastcc void @init_registers(ptr noundef %dev)
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %add.ptr28 = getelementptr i8, ptr %1, i32 76
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %arrayidx = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i16
  %shl = shl nuw i16 %conv, 8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  %conv18 = zext i8 %17 to i16
  %add19 = or i16 %shl, %conv18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !477
  tail call void @arm_heavy_mb() #15
  %18 = tail call i16 @llvm.bswap.i16(i16 %add19)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 %18) #15, !srcloc !375
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %20, i32 3
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %22 to i16
  %shl.1 = shl nuw i16 %conv.1, 8
  %arrayidx17.1 = getelementptr i8, ptr %20, i32 2
  %23 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %24 to i16
  %add19.1 = or i16 %shl.1, %conv18.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !477
  tail call void @arm_heavy_mb() #15
  %25 = tail call i16 @llvm.bswap.i16(i16 %add19.1)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 %25) #15, !srcloc !375
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %29 to i16
  %shl.2 = shl nuw i16 %conv.2, 8
  %arrayidx17.2 = getelementptr i8, ptr %27, i32 4
  %30 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %31 to i16
  %add19.2 = or i16 %shl.2, %conv18.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !477
  tail call void @arm_heavy_mb() #15
  %32 = tail call i16 @llvm.bswap.i16(i16 %add19.2)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 %32) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !478
  tail call void @arm_heavy_mb() #15
  %cur_rx_mode = getelementptr i8, ptr %dev, i32 3040
  %33 = ptrtoint ptr %cur_rx_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_rx_mode, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %35) #15, !srcloc !372
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %37, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 4
  %and35 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end13.do.body50_crit_edge, label %do.end40

if.end13.do.body50_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body50

do.end40:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !369
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !479
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %dev, i32 noundef %41) #18
  br label %do.body50

do.body50:                                        ; preds = %do.end40, %if.end13.do.body50_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 2936
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @netdev_timer, i32 noundef 0, ptr noundef nonnull @.str.98, ptr noundef nonnull @netdev_open.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add53 = add i32 %42, 500
  %call54 = tail call i32 @round_jiffies(i32 noundef %add53) #15
  %expires = getelementptr i8, ptr %dev, i32 2944
  %43 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call54, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body50, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then11 ], [ 0, %do.body50 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !369
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !480
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %dev, i32 noundef %9) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end18_crit_edge, label %do.end13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %cur_tx = getelementptr i8, ptr %dev, i32 3000
  %12 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 3004
  %14 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dirty_tx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2992
  %16 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_rx, align 8
  %dirty_rx = getelementptr i8, ptr %dev, i32 2996
  %18 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_rx, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %dev, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end13, %if.end.if.end18_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2712
  tail call void @napi_disable(ptr noundef %napi) #15
  %timer = getelementptr i8, ptr %dev, i32 2936
  %call19 = tail call i32 @del_timer_sync(ptr noundef %timer) #15
  tail call void @disable_irq(i32 noundef %5) #15
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !481
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i90 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 0) #15, !srcloc !372
  %22 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !482
  %hands_off = getelementptr i8, ptr %dev, i32 3020
  %25 = ptrtoint ptr %hands_off to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %hands_off, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %5) #15
  %call21 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %26 = ptrtoint ptr %hands_off to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %hands_off, align 4
  %add.ptr26 = getelementptr i8, ptr %1, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !483
  %add.ptr32 = getelementptr i8, ptr %1, i32 200
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !485
  tail call void @arm_heavy_mb() #15
  %add.ptr39 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 33554432) #15, !srcloc !372
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 167772160) #15, !srcloc !372
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end18
  %i.036.i = phi i32 [ 0, %if.end18 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  %32 = and i32 %31, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5.i = icmp eq i32 %32, 0
  br i1 %cmp5.i, label %if.else.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #15
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %do.end10.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %dev, i32 noundef 2000) #18
  br label %natsemi_stop_rxtx.exit

if.else.i:                                        ; preds = %for.body.i
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and13.i = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else.i.natsemi_stop_rxtx.exit_crit_edge, label %do.end17.i

if.else.i.natsemi_stop_rxtx.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_stop_rxtx.exit

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul21.i = mul i32 %i.036.i, 5
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %dev, i32 noundef %mul21.i) #18
  br label %natsemi_stop_rxtx.exit

natsemi_stop_rxtx.exit:                           ; preds = %do.end17.i, %if.else.i.natsemi_stop_rxtx.exit_crit_edge, %do.end10.i
  %36 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i93 = getelementptr i8, ptr %37, i32 100
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #15, !srcloc !369
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %40 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_crc_errors.i, align 8
  %add.i = add i32 %41, %39
  store i32 %add.i, ptr %rx_crc_errors.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %37, i32 104
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #15, !srcloc !369
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %44 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_missed_errors.i, align 4
  %add10.i = add i32 %45, %43
  store i32 %add10.i, ptr %rx_missed_errors.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @netif_carrier_off(ptr noundef %dev) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call fastcc void @dump_ring(ptr noundef %dev)
  tail call fastcc void @drain_ring(ptr noundef %dev)
  %48 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %50 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_ring.i, align 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef 768, ptr noundef %51, i32 noundef %53, i32 noundef 0) #15
  %add.ptr43 = getelementptr i8, ptr %1, i32 64
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !488
  %55 = and i32 %54, -16318464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool48.not = icmp eq i32 %55, 0
  br i1 %tobool48.not, label %do.body50, label %if.then49

if.then49:                                        ; preds = %natsemi_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @enable_wol_mode(ptr noundef %dev)
  br label %if.end54

do.body50:                                        ; preds = %natsemi_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !489
  tail call void @arm_heavy_mb() #15
  %SavedClkRun = getelementptr i8, ptr %dev, i32 3116
  %56 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %SavedClkRun, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %add.ptr53 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %58) #15, !srcloc !372
  br label %if.end54

if.end54:                                         ; preds = %do.body50, %if.then49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %cur_tx = getelementptr i8, ptr %dev, i32 3000
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_tx, align 8
  %rem = and i32 %3, 15
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %arrayidx, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #15
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !439

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %8, i32 noundef %10) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i100 = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i100, i32 noundef %and.i, i32 noundef %10, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx5 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %arrayidx5, align 4
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev7, i32 noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #15
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx5, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %26 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring, align 8
  %addr = getelementptr %struct.netdev_desc, ptr %27, i32 %rem, i32 2
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %addr, align 4
  %lock = getelementptr i8, ptr %dev, i32 3144
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %hands_off = getelementptr i8, ptr %dev, i32 3020
  %29 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not = icmp eq i32 %30, 0
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %or = or i32 %32, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %34 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring, align 8
  %cmd_status = getelementptr %struct.netdev_desc, ptr %35, i32 %rem, i32 1
  %36 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %cmd_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @arm_heavy_mb() #15
  %37 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_tx, align 8
  %inc30 = add i32 %38, 1
  store i32 %inc30, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 3004
  %39 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dirty_tx, align 4
  %sub = sub i32 %inc30, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp32 = icmp ugt i32 %sub, 8
  br i1 %cmp32, label %if.then34, label %if.then22.do.body43_crit_edge

if.then22.do.body43_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

if.then34:                                        ; preds = %if.then22
  tail call fastcc void @netdev_tx_done(ptr noundef %dev)
  %41 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_tx, align 8
  %43 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dirty_tx, align 4
  %sub37 = sub i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub37)
  %cmp38 = icmp ugt i32 %sub37, 8
  br i1 %cmp38, label %if.then40, label %if.then34.do.body43_crit_edge

if.then34.do.body43_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body43

if.then40:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %45 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %do.body43

do.body43:                                        ; preds = %if.then40, %if.then34.do.body43_crit_edge, %if.then22.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !491
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #15, !srcloc !372
  br label %if.end49

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb, i32 noundef 1) #15
  %tx_dropped47 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %47 = ptrtoint ptr %tx_dropped47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_dropped47, align 4
  %inc48 = add i32 %48, 1
  store i32 %inc48, ptr %tx_dropped47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %do.body43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #15
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 4
  %and = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %do.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_tx, align 8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %dev, i32 noundef %52, i32 noundef %rem) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end49.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %hands_off = getelementptr i8, ptr %dev, i32 3020
  %0 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_ioctl(ptr nocapture noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb2_crit_edge
    i32 35145, label %sw.bb30
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external = getelementptr i8, ptr %dev, i32 3032
  %1 = ptrtoint ptr %phy_addr_external to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_addr_external, align 8
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifr_ifru.i, align 2
  %8 = and i16 %7, 31
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %sw.bb2
  %and = zext i16 %8 to i32
  %phy_addr_external7 = getelementptr i8, ptr %dev, i32 3032
  %9 = ptrtoint ptr %phy_addr_external7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_addr_external7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp8 = icmp eq i32 %10, %and
  br i1 %cmp8, label %mdio_read.exit, label %if.else

mdio_read.exit:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_num, align 2
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %13 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i118 = getelementptr i8, ptr %14, i32 128
  %15 = shl i16 %12, 2
  %16 = and i16 %15, 124
  %shl.i = zext i16 %16 to i32
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i118, i32 %shl.i
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #15, !srcloc !376
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %19 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %val_out, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %val_out15 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %20 = ptrtoint ptr %val_out15 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %val_out15, align 2
  br label %cleanup

if.else16:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i119 = getelementptr i8, ptr %dev, i32 2704
  %21 = ptrtoint ptr %ioaddr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %8)
  %cmp.i120 = icmp eq i16 %8, 31
  %spec.select.i = select i1 %cmp.i120, i32 30, i32 31
  %phy_addr_external.i121 = getelementptr i8, ptr %dev, i32 3032
  %23 = ptrtoint ptr %phy_addr_external.i121 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phy_addr_external.i121, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %24)
  %cmp2.i = icmp eq i32 %spec.select.i, %24
  %dec4.i = sext i1 %cmp2.i to i32
  %target.1.i = add nsw i32 %spec.select.i, %dec4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @arm_heavy_mb() #15
  %conv.i = trunc i32 %target.1.i to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %add.ptr.i122 = getelementptr i8, ptr %22, i32 228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i122, i16 %25) #15, !srcloc !375
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i122) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #15
  %28 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ifr_ifru.i, align 2
  %30 = and i16 %29, 31
  %and22 = zext i16 %30 to i32
  %reg_num23 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %31 = ptrtoint ptr %reg_num23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %reg_num23, align 2
  %33 = and i16 %32, 31
  %and25 = zext i16 %33 to i32
  %call26 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %and22, i32 noundef %and25)
  %conv27 = trunc i32 %call26 to i16
  %val_out28 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %34 = ptrtoint ptr %val_out28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv27, ptr %val_out28, align 2
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %if_port31 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %35 = ptrtoint ptr %if_port31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %if_port31, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp33 = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ifr_ifru.i, align 2
  %39 = and i16 %38, 31
  %and38 = zext i16 %39 to i32
  %phy_addr_external39 = getelementptr i8, ptr %dev, i32 3032
  %40 = ptrtoint ptr %phy_addr_external39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %phy_addr_external39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and38)
  %cmp40 = icmp eq i32 %41, %and38
  br i1 %cmp33, label %if.then35, label %if.else55

if.then35:                                        ; preds = %sw.bb30
  br i1 %cmp40, label %if.then42, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then42:                                        ; preds = %if.then35
  %reg_num43 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %42 = ptrtoint ptr %reg_num43 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reg_num43, align 2
  %44 = and i16 %43, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %44)
  %cmp46 = icmp eq i16 %44, 4
  br i1 %cmp46, label %if.then48, label %if.then42.mdio_write.exit_crit_edge

if.then42.mdio_write.exit_crit_edge:              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  br label %mdio_write.exit

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #17
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val_in, align 2
  %advertising = getelementptr i8, ptr %dev, i32 3136
  %47 = ptrtoint ptr %advertising to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %advertising, align 8
  br label %mdio_write.exit

mdio_write.exit:                                  ; preds = %if.then48, %if.then42.mdio_write.exit_crit_edge
  %48 = ptrtoint ptr %reg_num43 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %reg_num43, align 2
  %val_in53 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %val_in53 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %val_in53, align 2
  %ioaddr.i.i125 = getelementptr i8, ptr %dev, i32 2704
  %52 = ptrtoint ptr %ioaddr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i.i125, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %54 = tail call i16 @llvm.bswap.i16(i16 %51) #15
  %add.ptr.i126 = getelementptr i8, ptr %53, i32 128
  %55 = shl i16 %49, 2
  %56 = and i16 %55, 124
  %shl.i127 = zext i16 %56 to i32
  %add.ptr3.i128 = getelementptr i8, ptr %add.ptr.i126, i32 %shl.i127
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i128, i16 %54) #15, !srcloc !375
  br label %cleanup

if.else55:                                        ; preds = %sw.bb30
  br i1 %cmp40, label %if.then62, label %if.else55.if.end72_crit_edge

if.else55.if.end72_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then62:                                        ; preds = %if.else55
  %reg_num63 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %57 = ptrtoint ptr %reg_num63 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %reg_num63, align 2
  %59 = and i16 %58, 31
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %59)
  %cmp66 = icmp eq i16 %59, 4
  br i1 %cmp66, label %if.then68, label %if.then62.if.end72_crit_edge

if.then62.if.end72_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  %val_in69 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %val_in69 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %val_in69, align 2
  %advertising70 = getelementptr i8, ptr %dev, i32 3136
  %62 = ptrtoint ptr %advertising70 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %advertising70, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.then62.if.end72_crit_edge, %if.else55.if.end72_crit_edge
  %63 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ifr_ifru.i, align 2
  %65 = and i16 %64, 31
  %ioaddr.i.i131 = getelementptr i8, ptr %dev, i32 2704
  %66 = ptrtoint ptr %ioaddr.i.i131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr.i.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %65)
  %cmp.i132 = icmp eq i16 %65, 31
  %spec.select.i133 = select i1 %cmp.i132, i32 30, i32 31
  %68 = ptrtoint ptr %phy_addr_external39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %phy_addr_external39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i133, i32 %69)
  %cmp2.i135 = icmp eq i32 %spec.select.i133, %69
  %dec4.i136 = sext i1 %cmp2.i135 to i32
  %target.1.i137 = add nsw i32 %spec.select.i133, %dec4.i136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  tail call void @arm_heavy_mb() #15
  %conv.i138 = trunc i32 %target.1.i137 to i16
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv.i138) #15
  %add.ptr.i139 = getelementptr i8, ptr %67, i32 228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i139, i16 %70) #15, !srcloc !375
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i139) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #15
  %73 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ifr_ifru.i, align 2
  %75 = and i16 %74, 31
  %and78 = zext i16 %75 to i32
  %reg_num79 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %76 = ptrtoint ptr %reg_num79 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %reg_num79, align 2
  %78 = and i16 %77, 31
  %and81 = zext i16 %78 to i32
  %val_in82 = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %val_in82 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %val_in82, align 2
  tail call fastcc void @miiport_write(ptr noundef %dev, i32 noundef %and78, i32 noundef %and81, i16 noundef zeroext %80)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %mdio_write.exit, %if.then35.cleanup_crit_edge, %if.else16, %if.else, %mdio_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mdio_read.exit ], [ 0, %if.else ], [ 0, %if.else16 ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %mdio_write.exit ], [ 0, %if.end72 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %3 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 8
  %irq3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq3, align 4
  tail call void @disable_irq(i32 noundef %8) #15
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 167772160) #15, !srcloc !372
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.036.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  %12 = and i32 %11, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i = icmp eq i32 %12, 0
  br i1 %cmp5.i, label %if.else.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #15
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %do.end10.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %dev, i32 noundef 2000) #18
  br label %natsemi_stop_rxtx.exit

if.else.i:                                        ; preds = %for.body.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3188
  %14 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i, align 4
  %and13.i = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else.i.natsemi_stop_rxtx.exit_crit_edge, label %do.end17.i

if.else.i.natsemi_stop_rxtx.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_stop_rxtx.exit

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul21.i = mul i32 %i.036.i, 5
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %dev, i32 noundef %mul21.i) #18
  br label %natsemi_stop_rxtx.exit

natsemi_stop_rxtx.exit:                           ; preds = %do.end17.i, %if.else.i.natsemi_stop_rxtx.exit_crit_edge, %do.end10.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 3008
  %16 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz.i, align 8
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %add.i = add i32 %17, 16
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i25.for.body.i22_crit_edge, %natsemi_stop_rxtx.exit
  %i.024.i = phi i32 [ 0, %natsemi_stop_rxtx.exit ], [ %inc.i23, %if.end.i25.for.body.i22_crit_edge ]
  %18 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.i = getelementptr %struct.netdev_desc, ptr %19, i32 %i.024.i, i32 1
  %20 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cmd_status.i, align 4
  %21 = load ptr, ptr %rx_ring.i, align 4
  %addr.i = getelementptr %struct.netdev_desc, ptr %21, i32 %i.024.i, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -805249094, ptr %addr.i, align 4
  %arrayidx3.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.024.i
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i21 = icmp eq ptr %24, null
  br i1 %tobool.not.i21, label %for.body.i22.if.end.i25_crit_edge, label %if.then.i

for.body.i22.if.end.i25_crit_edge:                ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i25

if.then.i:                                        ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %arrayidx5.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.024.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx5.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4.i, i32 noundef %28, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #15
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @consume_skb(ptr noundef %30) #15
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i, %for.body.i22.if.end.i25_crit_edge
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx3.i, align 4
  %inc.i23 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 32
  br i1 %exitcond.not.i24, label %drain_rx.exit, label %if.end.i25.for.body.i22_crit_edge

if.end.i25.for.body.i22_crit_edge:                ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i22

drain_rx.exit:                                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %33)
  %cmp.i = icmp ult i32 %33, 1501
  %add.i26 = add i32 %33, 22
  %spec.select.i = select i1 %cmp.i, i32 1522, i32 %add.i26
  %34 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i, ptr %rx_buf_sz.i, align 8
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 2996
  %35 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %dirty_rx.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2992
  %36 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %cur_rx.i, align 8
  %37 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring.i, align 4
  %rx_head_desc.i = getelementptr i8, ptr %dev, i32 2988
  %39 = ptrtoint ptr %rx_head_desc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %rx_head_desc.i, align 4
  %cmd_status.i28 = getelementptr %struct.netdev_desc, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %cmd_status.i28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 128, ptr %cmd_status.i28, align 4
  %41 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.1.i = getelementptr %struct.netdev_desc, ptr %41, i32 1, i32 1
  %42 = ptrtoint ptr %cmd_status.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 128, ptr %cmd_status.1.i, align 4
  %43 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.2.i = getelementptr %struct.netdev_desc, ptr %43, i32 2, i32 1
  %44 = ptrtoint ptr %cmd_status.2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %cmd_status.2.i, align 4
  %45 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.3.i = getelementptr %struct.netdev_desc, ptr %45, i32 3, i32 1
  %46 = ptrtoint ptr %cmd_status.3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 128, ptr %cmd_status.3.i, align 4
  %47 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.4.i = getelementptr %struct.netdev_desc, ptr %47, i32 4, i32 1
  %48 = ptrtoint ptr %cmd_status.4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %cmd_status.4.i, align 4
  %49 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.5.i = getelementptr %struct.netdev_desc, ptr %49, i32 5, i32 1
  %50 = ptrtoint ptr %cmd_status.5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %cmd_status.5.i, align 4
  %51 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.6.i = getelementptr %struct.netdev_desc, ptr %51, i32 6, i32 1
  %52 = ptrtoint ptr %cmd_status.6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 128, ptr %cmd_status.6.i, align 4
  %53 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.7.i = getelementptr %struct.netdev_desc, ptr %53, i32 7, i32 1
  %54 = ptrtoint ptr %cmd_status.7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128, ptr %cmd_status.7.i, align 4
  %55 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.8.i = getelementptr %struct.netdev_desc, ptr %55, i32 8, i32 1
  %56 = ptrtoint ptr %cmd_status.8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 128, ptr %cmd_status.8.i, align 4
  %57 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.9.i = getelementptr %struct.netdev_desc, ptr %57, i32 9, i32 1
  %58 = ptrtoint ptr %cmd_status.9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 128, ptr %cmd_status.9.i, align 4
  %59 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.10.i = getelementptr %struct.netdev_desc, ptr %59, i32 10, i32 1
  %60 = ptrtoint ptr %cmd_status.10.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 128, ptr %cmd_status.10.i, align 4
  %61 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.11.i = getelementptr %struct.netdev_desc, ptr %61, i32 11, i32 1
  %62 = ptrtoint ptr %cmd_status.11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 128, ptr %cmd_status.11.i, align 4
  %63 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.12.i = getelementptr %struct.netdev_desc, ptr %63, i32 12, i32 1
  %64 = ptrtoint ptr %cmd_status.12.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 128, ptr %cmd_status.12.i, align 4
  %65 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.13.i = getelementptr %struct.netdev_desc, ptr %65, i32 13, i32 1
  %66 = ptrtoint ptr %cmd_status.13.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 128, ptr %cmd_status.13.i, align 4
  %67 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.14.i = getelementptr %struct.netdev_desc, ptr %67, i32 14, i32 1
  %68 = ptrtoint ptr %cmd_status.14.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 128, ptr %cmd_status.14.i, align 4
  %69 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.15.i = getelementptr %struct.netdev_desc, ptr %69, i32 15, i32 1
  %70 = ptrtoint ptr %cmd_status.15.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %cmd_status.15.i, align 4
  %71 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.16.i = getelementptr %struct.netdev_desc, ptr %71, i32 16, i32 1
  %72 = ptrtoint ptr %cmd_status.16.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 128, ptr %cmd_status.16.i, align 4
  %73 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.17.i = getelementptr %struct.netdev_desc, ptr %73, i32 17, i32 1
  %74 = ptrtoint ptr %cmd_status.17.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 128, ptr %cmd_status.17.i, align 4
  %75 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.18.i = getelementptr %struct.netdev_desc, ptr %75, i32 18, i32 1
  %76 = ptrtoint ptr %cmd_status.18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 128, ptr %cmd_status.18.i, align 4
  %77 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.19.i = getelementptr %struct.netdev_desc, ptr %77, i32 19, i32 1
  %78 = ptrtoint ptr %cmd_status.19.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 128, ptr %cmd_status.19.i, align 4
  %79 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.20.i = getelementptr %struct.netdev_desc, ptr %79, i32 20, i32 1
  %80 = ptrtoint ptr %cmd_status.20.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 128, ptr %cmd_status.20.i, align 4
  %81 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.21.i = getelementptr %struct.netdev_desc, ptr %81, i32 21, i32 1
  %82 = ptrtoint ptr %cmd_status.21.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 128, ptr %cmd_status.21.i, align 4
  %83 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.22.i = getelementptr %struct.netdev_desc, ptr %83, i32 22, i32 1
  %84 = ptrtoint ptr %cmd_status.22.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 128, ptr %cmd_status.22.i, align 4
  %85 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.23.i = getelementptr %struct.netdev_desc, ptr %85, i32 23, i32 1
  %86 = ptrtoint ptr %cmd_status.23.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 128, ptr %cmd_status.23.i, align 4
  %87 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.24.i = getelementptr %struct.netdev_desc, ptr %87, i32 24, i32 1
  %88 = ptrtoint ptr %cmd_status.24.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 128, ptr %cmd_status.24.i, align 4
  %89 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.25.i = getelementptr %struct.netdev_desc, ptr %89, i32 25, i32 1
  %90 = ptrtoint ptr %cmd_status.25.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %cmd_status.25.i, align 4
  %91 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.26.i = getelementptr %struct.netdev_desc, ptr %91, i32 26, i32 1
  %92 = ptrtoint ptr %cmd_status.26.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 128, ptr %cmd_status.26.i, align 4
  %93 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.27.i = getelementptr %struct.netdev_desc, ptr %93, i32 27, i32 1
  %94 = ptrtoint ptr %cmd_status.27.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 128, ptr %cmd_status.27.i, align 4
  %95 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.28.i = getelementptr %struct.netdev_desc, ptr %95, i32 28, i32 1
  %96 = ptrtoint ptr %cmd_status.28.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 128, ptr %cmd_status.28.i, align 4
  %97 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.29.i = getelementptr %struct.netdev_desc, ptr %97, i32 29, i32 1
  %98 = ptrtoint ptr %cmd_status.29.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 128, ptr %cmd_status.29.i, align 4
  %99 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.30.i = getelementptr %struct.netdev_desc, ptr %99, i32 30, i32 1
  %100 = ptrtoint ptr %cmd_status.30.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 128, ptr %cmd_status.30.i, align 4
  %101 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.31.i = getelementptr %struct.netdev_desc, ptr %101, i32 31, i32 1
  %102 = ptrtoint ptr %cmd_status.31.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 128, ptr %cmd_status.31.i, align 4
  tail call fastcc void @refill_rx(ptr noundef %dev) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !492
  tail call void @arm_heavy_mb() #15
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i, align 8
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %add.ptr = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %105) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !493
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 83886080) #15, !srcloc !372
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %8) #15
  br label %if.end

if.end:                                           ; preds = %drain_rx.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  tail call void @disable_irq(i32 noundef %5) #15
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %hands_off = getelementptr i8, ptr %dev, i32 3020
  %6 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %do.end11

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !494
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %dev, i32 noundef %11) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call fastcc void @dump_ring(ptr noundef %dev)
  tail call fastcc void @natsemi_reset(ptr noundef %dev)
  tail call fastcc void @reinit_ring(ptr noundef %dev)
  tail call fastcc void @init_registers(ptr noundef %dev)
  br label %if.end16

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %dev) #18
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %if.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %5) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 12
  %15 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp.not.i.i = icmp eq i32 %16, %14
  br i1 %cmp.not.i.i, label %if.end16.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end16.netif_trans_update.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %14, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end16.netif_trans_update.exit_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %18 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_errors, align 4
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hands_off = getelementptr i8, ptr %dev, i32 3020
  %2 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %4 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #15, !srcloc !369
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %8 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_crc_errors.i, align 8
  %add.i = add i32 %9, %7
  store i32 %add.i, ptr %rx_crc_errors.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %5, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #15, !srcloc !369
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %12 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_missed_errors.i, align 4
  %add10.i = add i32 %13, %11
  store i32 %add10.i, ptr %rx_missed_errors.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @natsemi_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #15
  %call2 = tail call i32 @intr_handler(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %ioaddr.i = getelementptr i8, ptr %dev_instance, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %hands_off = getelementptr i8, ptr %dev_instance, i32 3020
  %2 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !495
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr7 = getelementptr i8, ptr %1, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #15, !srcloc !369
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !496
  %intr_status = getelementptr i8, ptr %dev_instance, i32 3016
  %7 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %intr_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 3188
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end26_crit_edge, label %do.end

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr21 = getelementptr i8, ptr %1, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #15, !srcloc !369
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %dev_instance, i32 noundef %6, i32 noundef %11) #18
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end14.if.end26_crit_edge
  %cur_rx = getelementptr i8, ptr %dev_instance, i32 2992
  %12 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_rx, align 8
  %rem = and i32 %13, 31
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %rem
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx) #15, !srcloc !498
  %napi = getelementptr i8, ptr %dev_instance, i32 2712
  %call27 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call27, label %if.then28, label %do.end32

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !481
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #15, !srcloc !372
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !482
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %cleanup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intr_status, align 8
  %add.ptr39 = getelementptr i8, ptr %1, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #15, !srcloc !369
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !499
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %dev_instance, i32 noundef %20, i32 noundef %22) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then28, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end32 ], [ 1, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_ring(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_tx = getelementptr i8, ptr %dev, i32 3000
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 3004
  %1 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dirty_tx, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.053
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 8
  %add = add nuw nsw i32 %i.053, 1
  %rem = shl i32 %add, 4
  %add1 = and i32 %rem, 240
  %mul = or i32 %add1, 512
  %add2 = add i32 %mul, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %add2)
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 8
  %arrayidx3 = getelementptr %struct.netdev_desc, ptr %7, i32 %i.053
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx3, align 4
  %9 = load ptr, ptr %tx_ring, align 8
  %cmd_status = getelementptr %struct.netdev_desc, ptr %9, i32 %i.053, i32 1
  %10 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cmd_status, align 4
  %exitcond.not = icmp eq i32 %add, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %dirty_rx = getelementptr i8, ptr %dev, i32 2996
  %11 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %dirty_rx, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2992
  %12 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %cur_rx, align 8
  %oom = getelementptr i8, ptr %dev, i32 3012
  %13 = ptrtoint ptr %oom to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %oom, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %15)
  %cmp.i = icmp ult i32 %15, 1501
  %add.i = add i32 %15, 22
  %spec.select.i = select i1 %cmp.i, i32 1522, i32 %add.i
  %16 = getelementptr i8, ptr %dev, i32 3008
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 8
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  %18 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ring, align 4
  %rx_head_desc = getelementptr i8, ptr %dev, i32 2988
  %20 = ptrtoint ptr %rx_head_desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %rx_head_desc, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end
  %i.154 = phi i32 [ 0, %for.end ], [ %add11, %for.body9.for.body9_crit_edge ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 8
  %add11 = add nuw nsw i32 %i.154, 1
  %rem12 = shl i32 %add11, 4
  %mul13 = and i32 %rem12, 496
  %add14 = add i32 %22, %mul13
  %23 = tail call i32 @llvm.bswap.i32(i32 %add14)
  %24 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_ring, align 4
  %arrayidx16 = getelementptr %struct.netdev_desc, ptr %25, i32 %i.154
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx16, align 4
  %27 = load ptr, ptr %rx_ring, align 4
  %cmd_status20 = getelementptr %struct.netdev_desc, ptr %27, i32 %i.154, i32 1
  %28 = ptrtoint ptr %cmd_status20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %cmd_status20, align 4
  %arrayidx21 = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 3, i32 %i.154
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx21, align 4
  %exitcond55.not = icmp eq i32 %add11, 32
  br i1 %exitcond55.not, label %for.end24, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9

for.end24:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @refill_rx(ptr noundef %dev)
  tail call fastcc void @dump_ring(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_registers(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  tail call fastcc void @init_phy_fixup(ptr noundef %dev)
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !501
  tail call void @arm_heavy_mb() #15
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr4 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !502
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %add = add i32 %7, 512
  %8 = tail call i32 @llvm.bswap.i32(i32 %add)
  %add.ptr9 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #15, !srcloc !372
  %tx_config = getelementptr i8, ptr %dev, i32 3108
  %9 = ptrtoint ptr %tx_config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 284168194, ptr %tx_config, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !503
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %tx_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_config, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr14 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %12) #15, !srcloc !372
  %rx_config = getelementptr i8, ptr %dev, i32 3112
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 3008
  %13 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_buf_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %14)
  %cmp = icmp ugt i32 %14, 1518
  %spec.store.select = select i1 %cmp, i32 141557776, i32 7340048
  %15 = ptrtoint ptr %rx_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %rx_config, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %rx_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_config, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr20 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %18) #15, !srcloc !372
  %add.ptr23 = getelementptr i8, ptr %1, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #15, !srcloc !369
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %SavedClkRun = getelementptr i8, ptr %dev, i32 3116
  %21 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %SavedClkRun, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !506
  tail call void @arm_heavy_mb() #15
  %22 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %SavedClkRun, align 4
  %and = and i32 %23, -257
  %24 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %24) #15, !srcloc !372
  %25 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %SavedClkRun, align 4
  %and33 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %entry.if.end48_crit_edge, label %land.lhs.true

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

land.lhs.true:                                    ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and34 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end48_crit_edge, label %do.end39

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

do.end39:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr43 = getelementptr i8, ptr %1, i32 64
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #15, !srcloc !369
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !507
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %dev, i32 noundef %30) #18
  br label %if.end48

if.end48:                                         ; preds = %do.end39, %land.lhs.true.if.end48_crit_edge, %entry.if.end48_crit_edge
  tail call fastcc void @check_link(ptr noundef %dev)
  tail call fastcc void @__set_rx_mode(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !508
  tail call void @arm_heavy_mb() #15
  %add.ptr52 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 1707995392) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !405
  tail call void @arm_heavy_mb() #15
  %31 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i88 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 16777216) #15, !srcloc !372
  %33 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !509
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 83886080) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !510
  tail call void @arm_heavy_mb() #15
  %add.ptr60 = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 67108864) #15, !srcloc !372
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -236
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ioaddr.i = getelementptr i8, ptr %1, i32 2704
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 8
  %pci_dev = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %irq2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq2, align 4
  %msg_enable = getelementptr i8, ptr %t, i32 252
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  %lock = getelementptr i8, ptr %t, i32 208
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  br i1 %cmp, label %if.then6, label %if.else48

if.then6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !511
  tail call void @arm_heavy_mb() #15
  %add.ptr10 = getelementptr i8, ptr %3, i32 204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 256) #15, !srcloc !375
  %add.ptr11 = getelementptr i8, ptr %3, i32 244
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !513
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 0) #15, !srcloc !375
  %dspcfg_workaround = getelementptr i8, ptr %t, i32 192
  %13 = ptrtoint ptr %dspcfg_workaround to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dspcfg_workaround, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %if.then6.if.else45_crit_edge, label %land.lhs.true

if.then6.if.else45_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else45

land.lhs.true:                                    ; preds = %if.then6
  %15 = tail call i16 @llvm.bswap.i16(i16 %12)
  %dspcfg21 = getelementptr i8, ptr %t, i32 188
  %16 = ptrtoint ptr %dspcfg21 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dspcfg21, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp23.not = icmp eq i16 %15, %17
  br i1 %cmp23.not, label %land.lhs.true.if.else45_crit_edge, label %if.then25

land.lhs.true.if.else45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else45

if.then25:                                        ; preds = %land.lhs.true
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br i1 %tobool.i.i.not, label %if.then27, label %if.then25.if.end51_crit_edge

if.then25.if.end51_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then27:                                        ; preds = %if.then25
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and30 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then27.if.end40_crit_edge, label %do.end35

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

do.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %1) #18
  br label %if.end40

if.end40:                                         ; preds = %do.end35, %if.then27.if.end40_crit_edge
  tail call void @disable_irq(i32 noundef %7) #15
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 167772160) #15, !srcloc !372
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end40
  %i.036.i = phi i32 [ 0, %if.end40 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  %27 = and i32 %26, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.i = icmp eq i32 %27, 0
  br i1 %cmp5.i, label %if.else.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #15
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %do.end10.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %1, i32 noundef 2000) #18
  br label %natsemi_stop_rxtx.exit

if.else.i:                                        ; preds = %for.body.i
  %msg_enable.i = getelementptr i8, ptr %1, i32 3188
  %29 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i, align 4
  %and13.i = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else.i.natsemi_stop_rxtx.exit_crit_edge, label %do.end17.i

if.else.i.natsemi_stop_rxtx.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_stop_rxtx.exit

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul21.i = mul i32 %i.036.i, 5
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %1, i32 noundef %mul21.i) #18
  br label %natsemi_stop_rxtx.exit

natsemi_stop_rxtx.exit:                           ; preds = %do.end17.i, %if.else.i.natsemi_stop_rxtx.exit_crit_edge, %do.end10.i
  tail call fastcc void @dump_ring(ptr noundef %1)
  tail call fastcc void @reinit_ring(ptr noundef %1)
  tail call fastcc void @init_registers(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %7) #15
  br label %if.end51

if.else45:                                        ; preds = %land.lhs.true.if.else45_crit_edge, %if.then6.if.else45_crit_edge
  tail call fastcc void @check_link(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %if.end51

if.else48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @check_link(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.else45, %natsemi_stop_rxtx.exit, %if.then25.if.end51_crit_edge
  %next_tick.1 = phi i32 [ 500, %if.else48 ], [ 500, %natsemi_stop_rxtx.exit ], [ 500, %if.else45 ], [ 100, %if.then25.if.end51_crit_edge ]
  %oom = getelementptr i8, ptr %t, i32 76
  %31 = ptrtoint ptr %oom to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool52.not = icmp eq i32 %32, 0
  br i1 %tobool52.not, label %if.end51.if.then67_crit_edge, label %if.then53

if.end51.if.then67_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then67

if.then53:                                        ; preds = %if.end51
  tail call void @disable_irq(i32 noundef %7) #15
  %33 = ptrtoint ptr %oom to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %oom, align 4
  tail call fastcc void @refill_rx(ptr noundef %1)
  tail call void @enable_irq(i32 noundef %7) #15
  %34 = ptrtoint ptr %oom to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool56.not = icmp eq i32 %35, 0
  br i1 %tobool56.not, label %do.body58, label %if.else70

do.body58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !514
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 67108864) #15, !srcloc !372
  br label %if.then67

if.then67:                                        ; preds = %do.body58, %if.end51.if.then67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, %next_tick.1
  %call68 = tail call i32 @round_jiffies(i32 noundef %add) #15
  br label %if.end74

if.else70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add72 = add i32 %37, 1
  br label %if.end74

if.end74:                                         ; preds = %if.else70, %if.then67
  %add72.sink = phi i32 [ %add72, %if.else70 ], [ %call68, %if.then67 ]
  %call73 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add72.sink) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ring(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %3) #18
  br label %do.end4

do.end4:                                          ; preds = %do.end4.do.end4_crit_edge, %if.then
  %i.056 = phi i32 [ 0, %if.then ], [ %inc, %do.end4.do.end4_crit_edge ]
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.netdev_desc, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %cmd_status = getelementptr %struct.netdev_desc, ptr %5, i32 %i.056, i32 1
  %8 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_status, align 4
  %addr = getelementptr %struct.netdev_desc, ptr %5, i32 %i.056, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %i.056, i32 noundef %7, i32 noundef %9, i32 noundef %11) #18
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end14, label %do.end4.do.end4_crit_edge

do.end4.do.end4_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end14:                                         ; preds = %do.end4
  %rx_ring = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %13) #18
  br label %do.end22

do.end22:                                         ; preds = %do.end22.do.end22_crit_edge, %do.end14
  %i.157 = phi i32 [ 0, %do.end14 ], [ %inc35, %do.end22.do.end22_crit_edge ]
  %14 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring, align 4
  %arrayidx25 = getelementptr %struct.netdev_desc, ptr %15, i32 %i.157
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx25, align 4
  %cmd_status29 = getelementptr %struct.netdev_desc, ptr %15, i32 %i.157, i32 1
  %18 = ptrtoint ptr %cmd_status29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_status29, align 4
  %addr32 = getelementptr %struct.netdev_desc, ptr %15, i32 %i.157, i32 2
  %20 = ptrtoint ptr %addr32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr32, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %i.157, i32 noundef %17, i32 noundef %19, i32 noundef %21) #18
  %inc35 = add nuw nsw i32 %i.157, 1
  %exitcond58.not = icmp eq i32 %inc35, 32
  br i1 %exitcond58.not, label %do.end22.if.end_crit_edge, label %do.end22.do.end22_crit_edge

do.end22.do.end22_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

do.end22.if.end_crit_edge:                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.end22.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_rx_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %mc_filter = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mc_filter) #15
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.body68_crit_edge

entry.do.body68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %5)
  %cmp = icmp slt i32 %5, 101
  %and3 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.else6, label %if.else.do.body68_crit_edge

if.else.do.body68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

if.else6:                                         ; preds = %if.else
  %6 = call ptr @memset(ptr %mc_filter, i32 0, i32 64)
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0101 = load ptr, ptr %mc, align 4
  %cmp11.not102 = icmp eq ptr %ha.0101, %mc
  br i1 %cmp11.not102, label %if.else6.for.cond48.preheader_crit_edge, label %if.else6.cond.end_crit_edge

if.else6.cond.end_crit_edge:                      ; preds = %if.else6
  br label %cond.end

if.else6.for.cond48.preheader_crit_edge:          ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %cond.end.for.cond48.preheader_crit_edge, %if.else6.for.cond48.preheader_crit_edge
  %add.ptr52 = getelementptr i8, ptr %1, i32 72
  %add.ptr63 = getelementptr i8, ptr %1, i32 76
  br label %do.body

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else6.cond.end_crit_edge
  %ha.0103 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0101, %if.else6.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0103, i32 0, i32 2
  %call13 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %8 = lshr i32 %call13, 8
  %conv4.i.i = and i32 %8, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %9 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv6.i.i, 16
  %12 = and i32 %call13, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %14 to i32
  %15 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %11, %15
  %shr37 = lshr i32 %or.i13.i, 23
  %and39 = and i32 %shr37, 7
  %shl40 = shl nuw nsw i32 1, %and39
  %div100 = lshr i32 %conv2.i.i, 2
  %arrayidx = getelementptr [64 x i8], ptr %mc_filter, i32 0, i32 %div100
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %18 = trunc i32 %shl40 to i8
  %conv42 = or i8 %17, %18
  store i8 %conv42, ptr %arrayidx, align 1
  %19 = ptrtoint ptr %ha.0103 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0 = load ptr, ptr %ha.0103, align 4
  %cmp11.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp11.not, label %cond.end.for.cond48.preheader_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.end.for.cond48.preheader_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond48.preheader

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond48.preheader
  %i.0104 = phi i32 [ 0, %for.cond48.preheader ], [ %add65, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !515
  tail call void @arm_heavy_mb() #15
  %add = add nuw nsw i32 %i.0104, 512
  %20 = tail call i32 @llvm.bswap.i32(i32 %add)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %20) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !516
  tail call void @arm_heavy_mb() #15
  %add56 = or i32 %i.0104, 1
  %arrayidx57 = getelementptr [64 x i8], ptr %mc_filter, i32 0, i32 %add56
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %22 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %arrayidx60 = getelementptr [64 x i8], ptr %mc_filter, i32 0, i32 %i.0104
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %24 to i32
  %add62 = or i32 %shl59, %conv61
  %25 = tail call i32 @llvm.bswap.i32(i32 %add62)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %25) #15, !srcloc !372
  %add65 = add nuw nsw i32 %i.0104, 2
  %cmp49 = icmp ult i32 %i.0104, 62
  br i1 %cmp49, label %do.body.do.body_crit_edge, label %do.body.do.body68_crit_edge

do.body.do.body68_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body68

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body68:                                        ; preds = %do.body.do.body68_crit_edge, %if.else.do.body68_crit_edge, %entry.do.body68_crit_edge
  %rx_mode.0 = phi i32 [ -134217728, %entry.do.body68_crit_edge ], [ -402653184, %if.else.do.body68_crit_edge ], [ -937426944, %do.body.do.body68_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !517
  tail call void @arm_heavy_mb() #15
  %26 = tail call i32 @llvm.bswap.i32(i32 %rx_mode.0)
  %add.ptr71 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %26) #15, !srcloc !372
  %cur_rx_mode = getelementptr i8, ptr %dev, i32 3040
  %27 = ptrtoint ptr %cur_rx_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rx_mode.0, ptr %cur_rx_mode, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mc_filter) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reinit_ring(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2984
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.022.i = phi i32 [ 0, %entry ], [ %inc9.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 5, i32 %i.022.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %arrayidx2.i = getelementptr %struct.netdev_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.022.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #15
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %9) #15
  %10 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %inc9.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 16
  br i1 %exitcond.not.i, label %drain_tx.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

drain_tx.exit:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %cur_tx = getelementptr i8, ptr %dev, i32 3000
  %13 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cur_tx, align 8
  %dirty_tx = getelementptr i8, ptr %dev, i32 3004
  %14 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dirty_tx, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2312
  %15 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ring, align 8
  %cmd_status = getelementptr %struct.netdev_desc, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cmd_status, align 4
  %18 = load ptr, ptr %tx_ring, align 8
  %cmd_status.1 = getelementptr %struct.netdev_desc, ptr %18, i32 1, i32 1
  %19 = ptrtoint ptr %cmd_status.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cmd_status.1, align 4
  %20 = load ptr, ptr %tx_ring, align 8
  %cmd_status.2 = getelementptr %struct.netdev_desc, ptr %20, i32 2, i32 1
  %21 = ptrtoint ptr %cmd_status.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cmd_status.2, align 4
  %22 = load ptr, ptr %tx_ring, align 8
  %cmd_status.3 = getelementptr %struct.netdev_desc, ptr %22, i32 3, i32 1
  %23 = ptrtoint ptr %cmd_status.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cmd_status.3, align 4
  %24 = load ptr, ptr %tx_ring, align 8
  %cmd_status.4 = getelementptr %struct.netdev_desc, ptr %24, i32 4, i32 1
  %25 = ptrtoint ptr %cmd_status.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd_status.4, align 4
  %26 = load ptr, ptr %tx_ring, align 8
  %cmd_status.5 = getelementptr %struct.netdev_desc, ptr %26, i32 5, i32 1
  %27 = ptrtoint ptr %cmd_status.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_status.5, align 4
  %28 = load ptr, ptr %tx_ring, align 8
  %cmd_status.6 = getelementptr %struct.netdev_desc, ptr %28, i32 6, i32 1
  %29 = ptrtoint ptr %cmd_status.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmd_status.6, align 4
  %30 = load ptr, ptr %tx_ring, align 8
  %cmd_status.7 = getelementptr %struct.netdev_desc, ptr %30, i32 7, i32 1
  %31 = ptrtoint ptr %cmd_status.7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cmd_status.7, align 4
  %32 = load ptr, ptr %tx_ring, align 8
  %cmd_status.8 = getelementptr %struct.netdev_desc, ptr %32, i32 8, i32 1
  %33 = ptrtoint ptr %cmd_status.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cmd_status.8, align 4
  %34 = load ptr, ptr %tx_ring, align 8
  %cmd_status.9 = getelementptr %struct.netdev_desc, ptr %34, i32 9, i32 1
  %35 = ptrtoint ptr %cmd_status.9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cmd_status.9, align 4
  %36 = load ptr, ptr %tx_ring, align 8
  %cmd_status.10 = getelementptr %struct.netdev_desc, ptr %36, i32 10, i32 1
  %37 = ptrtoint ptr %cmd_status.10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmd_status.10, align 4
  %38 = load ptr, ptr %tx_ring, align 8
  %cmd_status.11 = getelementptr %struct.netdev_desc, ptr %38, i32 11, i32 1
  %39 = ptrtoint ptr %cmd_status.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cmd_status.11, align 4
  %40 = load ptr, ptr %tx_ring, align 8
  %cmd_status.12 = getelementptr %struct.netdev_desc, ptr %40, i32 12, i32 1
  %41 = ptrtoint ptr %cmd_status.12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cmd_status.12, align 4
  %42 = load ptr, ptr %tx_ring, align 8
  %cmd_status.13 = getelementptr %struct.netdev_desc, ptr %42, i32 13, i32 1
  %43 = ptrtoint ptr %cmd_status.13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cmd_status.13, align 4
  %44 = load ptr, ptr %tx_ring, align 8
  %cmd_status.14 = getelementptr %struct.netdev_desc, ptr %44, i32 14, i32 1
  %45 = ptrtoint ptr %cmd_status.14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cmd_status.14, align 4
  %46 = load ptr, ptr %tx_ring, align 8
  %cmd_status.15 = getelementptr %struct.netdev_desc, ptr %46, i32 15, i32 1
  %47 = ptrtoint ptr %cmd_status.15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cmd_status.15, align 4
  %dirty_rx.i = getelementptr i8, ptr %dev, i32 2996
  %48 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %dirty_rx.i, align 4
  %cur_rx.i = getelementptr i8, ptr %dev, i32 2992
  %49 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %cur_rx.i, align 8
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %50 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_ring.i, align 4
  %rx_head_desc.i = getelementptr i8, ptr %dev, i32 2988
  %52 = ptrtoint ptr %rx_head_desc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %rx_head_desc.i, align 4
  %cmd_status.i = getelementptr %struct.netdev_desc, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %cmd_status.i, align 4
  %54 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.1.i = getelementptr %struct.netdev_desc, ptr %54, i32 1, i32 1
  %55 = ptrtoint ptr %cmd_status.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 128, ptr %cmd_status.1.i, align 4
  %56 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.2.i = getelementptr %struct.netdev_desc, ptr %56, i32 2, i32 1
  %57 = ptrtoint ptr %cmd_status.2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 128, ptr %cmd_status.2.i, align 4
  %58 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.3.i = getelementptr %struct.netdev_desc, ptr %58, i32 3, i32 1
  %59 = ptrtoint ptr %cmd_status.3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 128, ptr %cmd_status.3.i, align 4
  %60 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.4.i = getelementptr %struct.netdev_desc, ptr %60, i32 4, i32 1
  %61 = ptrtoint ptr %cmd_status.4.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 128, ptr %cmd_status.4.i, align 4
  %62 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.5.i = getelementptr %struct.netdev_desc, ptr %62, i32 5, i32 1
  %63 = ptrtoint ptr %cmd_status.5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 128, ptr %cmd_status.5.i, align 4
  %64 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.6.i = getelementptr %struct.netdev_desc, ptr %64, i32 6, i32 1
  %65 = ptrtoint ptr %cmd_status.6.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %cmd_status.6.i, align 4
  %66 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.7.i = getelementptr %struct.netdev_desc, ptr %66, i32 7, i32 1
  %67 = ptrtoint ptr %cmd_status.7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %cmd_status.7.i, align 4
  %68 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.8.i = getelementptr %struct.netdev_desc, ptr %68, i32 8, i32 1
  %69 = ptrtoint ptr %cmd_status.8.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 128, ptr %cmd_status.8.i, align 4
  %70 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.9.i = getelementptr %struct.netdev_desc, ptr %70, i32 9, i32 1
  %71 = ptrtoint ptr %cmd_status.9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 128, ptr %cmd_status.9.i, align 4
  %72 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.10.i = getelementptr %struct.netdev_desc, ptr %72, i32 10, i32 1
  %73 = ptrtoint ptr %cmd_status.10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 128, ptr %cmd_status.10.i, align 4
  %74 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.11.i = getelementptr %struct.netdev_desc, ptr %74, i32 11, i32 1
  %75 = ptrtoint ptr %cmd_status.11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 128, ptr %cmd_status.11.i, align 4
  %76 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.12.i = getelementptr %struct.netdev_desc, ptr %76, i32 12, i32 1
  %77 = ptrtoint ptr %cmd_status.12.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 128, ptr %cmd_status.12.i, align 4
  %78 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.13.i = getelementptr %struct.netdev_desc, ptr %78, i32 13, i32 1
  %79 = ptrtoint ptr %cmd_status.13.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 128, ptr %cmd_status.13.i, align 4
  %80 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.14.i = getelementptr %struct.netdev_desc, ptr %80, i32 14, i32 1
  %81 = ptrtoint ptr %cmd_status.14.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 128, ptr %cmd_status.14.i, align 4
  %82 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.15.i = getelementptr %struct.netdev_desc, ptr %82, i32 15, i32 1
  %83 = ptrtoint ptr %cmd_status.15.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 128, ptr %cmd_status.15.i, align 4
  %84 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.16.i = getelementptr %struct.netdev_desc, ptr %84, i32 16, i32 1
  %85 = ptrtoint ptr %cmd_status.16.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 128, ptr %cmd_status.16.i, align 4
  %86 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.17.i = getelementptr %struct.netdev_desc, ptr %86, i32 17, i32 1
  %87 = ptrtoint ptr %cmd_status.17.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 128, ptr %cmd_status.17.i, align 4
  %88 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.18.i = getelementptr %struct.netdev_desc, ptr %88, i32 18, i32 1
  %89 = ptrtoint ptr %cmd_status.18.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 128, ptr %cmd_status.18.i, align 4
  %90 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.19.i = getelementptr %struct.netdev_desc, ptr %90, i32 19, i32 1
  %91 = ptrtoint ptr %cmd_status.19.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 128, ptr %cmd_status.19.i, align 4
  %92 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.20.i = getelementptr %struct.netdev_desc, ptr %92, i32 20, i32 1
  %93 = ptrtoint ptr %cmd_status.20.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 128, ptr %cmd_status.20.i, align 4
  %94 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.21.i = getelementptr %struct.netdev_desc, ptr %94, i32 21, i32 1
  %95 = ptrtoint ptr %cmd_status.21.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 128, ptr %cmd_status.21.i, align 4
  %96 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.22.i = getelementptr %struct.netdev_desc, ptr %96, i32 22, i32 1
  %97 = ptrtoint ptr %cmd_status.22.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 128, ptr %cmd_status.22.i, align 4
  %98 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.23.i = getelementptr %struct.netdev_desc, ptr %98, i32 23, i32 1
  %99 = ptrtoint ptr %cmd_status.23.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 128, ptr %cmd_status.23.i, align 4
  %100 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.24.i = getelementptr %struct.netdev_desc, ptr %100, i32 24, i32 1
  %101 = ptrtoint ptr %cmd_status.24.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 128, ptr %cmd_status.24.i, align 4
  %102 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.25.i = getelementptr %struct.netdev_desc, ptr %102, i32 25, i32 1
  %103 = ptrtoint ptr %cmd_status.25.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 128, ptr %cmd_status.25.i, align 4
  %104 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.26.i = getelementptr %struct.netdev_desc, ptr %104, i32 26, i32 1
  %105 = ptrtoint ptr %cmd_status.26.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 128, ptr %cmd_status.26.i, align 4
  %106 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.27.i = getelementptr %struct.netdev_desc, ptr %106, i32 27, i32 1
  %107 = ptrtoint ptr %cmd_status.27.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 128, ptr %cmd_status.27.i, align 4
  %108 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.28.i = getelementptr %struct.netdev_desc, ptr %108, i32 28, i32 1
  %109 = ptrtoint ptr %cmd_status.28.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 128, ptr %cmd_status.28.i, align 4
  %110 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.29.i = getelementptr %struct.netdev_desc, ptr %110, i32 29, i32 1
  %111 = ptrtoint ptr %cmd_status.29.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 128, ptr %cmd_status.29.i, align 4
  %112 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.30.i = getelementptr %struct.netdev_desc, ptr %112, i32 30, i32 1
  %113 = ptrtoint ptr %cmd_status.30.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 128, ptr %cmd_status.30.i, align 4
  %114 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.31.i = getelementptr %struct.netdev_desc, ptr %114, i32 31, i32 1
  %115 = ptrtoint ptr %cmd_status.31.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 128, ptr %cmd_status.31.i, align 4
  tail call fastcc void @refill_rx(ptr noundef %dev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drain_ring(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 3008
  %0 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_buf_sz.i, align 8
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2984
  %add.i = add i32 %1, 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.024.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring.i, align 4
  %cmd_status.i = getelementptr %struct.netdev_desc, ptr %3, i32 %i.024.i, i32 1
  %4 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cmd_status.i, align 4
  %5 = load ptr, ptr %rx_ring.i, align 4
  %addr.i = getelementptr %struct.netdev_desc, ptr %5, i32 %i.024.i, i32 2
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -805249094, ptr %addr.i, align 4
  %arrayidx3.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 3, i32 %i.024.i
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev.i, align 8
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %arrayidx5.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 4, i32 %i.024.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4.i, i32 noundef %12, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #15
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @consume_skb(ptr noundef %14) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %drain_rx.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

drain_rx.exit:                                    ; preds = %if.end.i
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  br label %for.body.i5

for.body.i5:                                      ; preds = %if.end.i9.for.body.i5_crit_edge, %drain_rx.exit
  %i.022.i = phi i32 [ 0, %drain_rx.exit ], [ %inc9.i, %if.end.i9.for.body.i5_crit_edge ]
  %arrayidx.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.022.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i4 = icmp eq ptr %17, null
  br i1 %tobool.not.i4, label %for.body.i5.if.end.i9_crit_edge, label %if.then.i7

for.body.i5.if.end.i9_crit_edge:                  ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i9

if.then.i7:                                       ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %arrayidx2.i = getelementptr %struct.netdev_private, ptr %add.ptr.i.i, i32 0, i32 6, i32 %i.022.i
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef %25) #15
  %26 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dropped.i, align 4
  %inc.i6 = add i32 %27, 1
  store i32 %inc.i6, ptr %tx_dropped.i, align 4
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.then.i7, %for.body.i5.if.end.i9_crit_edge
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i, align 4
  %inc9.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i8 = icmp eq i32 %inc9.i, 16
  br i1 %exitcond.not.i8, label %drain_tx.exit, label %if.end.i9.for.body.i5_crit_edge

if.end.i9.for.body.i5_crit_edge:                  ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i5

drain_tx.exit:                                    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_wol_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %dev) #18
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !518
  tail call void @arm_heavy_mb() #15
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #15, !srcloc !372
  %add.ptr6 = getelementptr i8, ptr %1, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !519
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !520
  tail call void @arm_heavy_mb() #15
  %SavedClkRun = getelementptr i8, ptr %dev, i32 3116
  %5 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %SavedClkRun, align 4
  %or13 = or i32 %6, 33024
  %7 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %add.ptr14 = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %7) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !521
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 67108864) #15, !srcloc !372
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.140, i32 noundef 32) #15
  %pci_dev = getelementptr i8, ptr %dev, i32 2984
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_regs_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 304
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %1 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr.i.i, align 8
  br label %for.body.i

for.cond3.preheader.i:                            ; preds = %for.body.i
  %if_port.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %phy_addr_external.i.i = getelementptr i8, ptr %dev, i32 3032
  br label %for.body5.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.01.i, 2
  %add.ptr.i5 = getelementptr i8, ptr %2, i32 %mul.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #15, !srcloc !369
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !522
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.01.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond3.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body5.i:                                      ; preds = %mdio_read.exit.i.for.body5.i_crit_edge, %for.cond3.preheader.i
  %i.12.i = phi i32 [ 32, %for.cond3.preheader.i ], [ %inc9.i, %mdio_read.exit.i.for.body5.i_crit_edge ]
  %and.i = and i32 %i.12.i, 31
  %6 = ptrtoint ptr %if_port.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_port.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 128
  %shl.i.i = shl nuw nsw i32 %and.i, 2
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i.i) #15, !srcloc !376
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i.i = zext i16 %11 to i32
  br label %mdio_read.exit.i

if.else.i.i:                                      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %phy_addr_external.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_addr_external.i.i, align 8
  %call7.i.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %13, i32 noundef %and.i) #15
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %call7.i.i, %if.else.i.i ]
  %arrayidx7.i = getelementptr i32, ptr %buf, i32 %i.12.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i, ptr %arrayidx7.i, align 4
  %inc9.i = add nuw nsw i32 %i.12.i, 1
  %exitcond5.not.i = icmp eq i32 %inc9.i, 64
  br i1 %exitcond5.not.i, label %do.body.i, label %mdio_read.exit.i.for.body5.i_crit_edge

mdio_read.exit.i.for.body5.i_crit_edge:           ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

do.body.i:                                        ; preds = %mdio_read.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !523
  tail call void @arm_heavy_mb() #15
  %add.ptr11.i = getelementptr i8, ptr %2, i32 204
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 256) #15, !srcloc !375
  %add.ptr14.i = getelementptr i8, ptr %2, i32 228
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i) #15, !srcloc !376
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !524
  %conv.i = zext i16 %16 to i32
  %arrayidx19.i = getelementptr i32, ptr %buf, i32 64
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %arrayidx19.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %2, i32 252
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22.i) #15, !srcloc !376
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !525
  %conv26.i = zext i16 %19 to i32
  %arrayidx28.i = getelementptr i32, ptr %buf, i32 65
  %20 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv26.i, ptr %arrayidx28.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %2, i32 244
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31.i) #15, !srcloc !376
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !526
  %conv35.i = zext i16 %22 to i32
  %arrayidx37.i = getelementptr i32, ptr %buf, i32 66
  %23 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv35.i, ptr %arrayidx37.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %2, i32 248
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr40.i) #15, !srcloc !376
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !527
  %conv44.i = zext i16 %25 to i32
  %arrayidx46.i = getelementptr i32, ptr %buf, i32 67
  %26 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv44.i, ptr %arrayidx46.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !528
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 0) #15, !srcloc !375
  %add.ptr53.i = getelementptr i8, ptr %2, i32 72
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !529
  %add.ptr68.i = getelementptr i8, ptr %2, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 0) #15, !srcloc !372
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.i = zext i16 %29 to i32
  %arrayidx74.i = getelementptr i32, ptr %buf, i32 68
  %30 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv72.i, ptr %arrayidx74.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 33554432) #15, !srcloc !372
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.1.i = zext i16 %32 to i32
  %arrayidx74.1.i = getelementptr i32, ptr %buf, i32 69
  %33 = ptrtoint ptr %arrayidx74.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv72.1.i, ptr %arrayidx74.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 67108864) #15, !srcloc !372
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.2.i = zext i16 %35 to i32
  %arrayidx74.2.i = getelementptr i32, ptr %buf, i32 70
  %36 = ptrtoint ptr %arrayidx74.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv72.2.i, ptr %arrayidx74.2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 100663296) #15, !srcloc !372
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.3.i = zext i16 %38 to i32
  %arrayidx74.3.i = getelementptr i32, ptr %buf, i32 71
  %39 = ptrtoint ptr %arrayidx74.3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv72.3.i, ptr %arrayidx74.3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 134217728) #15, !srcloc !372
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.4.i = zext i16 %41 to i32
  %arrayidx74.4.i = getelementptr i32, ptr %buf, i32 72
  %42 = ptrtoint ptr %arrayidx74.4.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv72.4.i, ptr %arrayidx74.4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 167772160) #15, !srcloc !372
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.5.i = zext i16 %44 to i32
  %arrayidx74.5.i = getelementptr i32, ptr %buf, i32 73
  %45 = ptrtoint ptr %arrayidx74.5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv72.5.i, ptr %arrayidx74.5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 201326592) #15, !srcloc !372
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.6.i = zext i16 %47 to i32
  %arrayidx74.6.i = getelementptr i32, ptr %buf, i32 74
  %48 = ptrtoint ptr %arrayidx74.6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv72.6.i, ptr %arrayidx74.6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !530
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 234881024) #15, !srcloc !372
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68.i) #15, !srcloc !376
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !531
  %conv72.7.i = zext i16 %50 to i32
  %arrayidx74.7.i = getelementptr i32, ptr %buf, i32 75
  %51 = ptrtoint ptr %arrayidx74.7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv72.7.i, ptr %arrayidx74.7.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !532
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %27) #15, !srcloc !372
  %arrayidx82.i = getelementptr i32, ptr %buf, i32 4
  %52 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx82.i, align 4
  %arrayidx83.i = getelementptr i32, ptr %buf, i32 5
  %54 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx83.i, align 4
  %and84.i = and i32 %55, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool.not.i, label %do.body.i.netdev_get_regs.exit_crit_edge, label %do.end87.i

do.body.i.netdev_get_regs.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_get_regs.exit

do.end87.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %dev, i32 noundef %and84.i) #18
  br label %netdev_get_regs.exit

netdev_get_regs.exit:                             ; preds = %do.end87.i, %do.body.i.netdev_get_regs.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_wol(ptr noundef %dev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %0 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #15, !srcloc !369
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !533
  %4 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %supported, align 4
  %srr.i = getelementptr i8, ptr %dev, i32 3120
  %5 = ptrtoint ptr %srr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %srr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1026
  %spec.store.select.i = select i1 %cmp.i, i32 127, i32 63
  %7 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select.i, ptr %supported, align 4
  %8 = and i32 %3, 7
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %wolopts, align 4
  %and17.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %entry.if.end21.i_crit_edge, label %if.then19.i

entry.if.end21.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21.i

if.then19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  %or20.i = or i32 %11, 8
  store i32 %or20.i, ptr %wolopts, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %entry.if.end21.i_crit_edge
  %and22.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end26.i_crit_edge, label %if.then24.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wolopts, align 4
  %or25.i = or i32 %13, 16
  store i32 %or25.i, ptr %wolopts, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end26.i_crit_edge
  %and27.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end31.i_crit_edge, label %if.then29.i

if.end26.i.if.end31.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wolopts, align 4
  %or30.i = or i32 %15, 32
  store i32 %or30.i, ptr %wolopts, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end31.i_crit_edge
  %and32.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.netdev_get_wol.exit_crit_edge, label %if.then34.i

if.end31.i.netdev_get_wol.exit_crit_edge:         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_get_wol.exit

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wolopts, align 4
  %or35.i = or i32 %17, 64
  store i32 %or35.i, ptr %wolopts, align 4
  br label %netdev_get_wol.exit

netdev_get_wol.exit:                              ; preds = %if.then34.i, %if.end31.i.netdev_get_wol.exit_crit_edge
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %18 = ptrtoint ptr %srr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027, i32 %19)
  %cmp.i11 = icmp ult i32 %19, 1027
  br i1 %cmp.i11, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %netdev_get_wol.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx.i, align 2
  %arrayidx2.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %arrayidx2.i, align 2
  %22 = ptrtoint ptr %sopass to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %sopass, align 2
  br label %netdev_get_sopass.exit

if.end.i:                                         ; preds = %netdev_get_wol.exit
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %24, i32 72
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !534
  %26 = and i32 %25, 16580607
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !535
  tail call void @arm_heavy_mb() #15
  %or.i = or i32 %27, 10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %28) #15, !srcloc !372
  %add.ptr9.i = getelementptr i8, ptr %24, i32 76
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #15, !srcloc !376
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !536
  %31 = ptrtoint ptr %sopass to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sopass, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !537
  tail call void @arm_heavy_mb() #15
  %or17.i = or i32 %27, 12
  %32 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %32) #15, !srcloc !372
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #15, !srcloc !376
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !538
  %arrayidx25.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx25.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !539
  tail call void @arm_heavy_mb() #15
  %or29.i = or i32 %27, 14
  %36 = tail call i32 @llvm.bswap.i32(i32 %or29.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %36) #15, !srcloc !372
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #15, !srcloc !376
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !540
  %arrayidx37.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx37.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !541
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %26) #15, !srcloc !372
  br label %netdev_get_sopass.exit

netdev_get_sopass.exit:                           ; preds = %if.end.i, %if.then.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !542
  %5 = and i32 %4, 16318463
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #15
  %and25.i = shl i32 %1, 4
  %7 = and i32 %and25.i, 512
  %8 = and i32 %1, 31
  %9 = or i32 %7, %8
  %10 = or i32 %9, %6
  %srr.i = getelementptr i8, ptr %dev, i32 3120
  %11 = ptrtoint ptr %srr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027, i32 %12)
  %cmp.i = icmp ult i32 %12, 1027
  %and31.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %or.cond.i = or i1 %tobool32.not.i, %cmp.i
  %or34.i = or i32 %10, 1024
  %data.6.i = select i1 %or.cond.i, i32 %10, i32 %or34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !543
  tail call void @arm_heavy_mb() #15
  %13 = tail call i32 @llvm.bswap.i32(i32 %data.6.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %13) #15, !srcloc !372
  %14 = ptrtoint ptr %srr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027, i32 %15)
  %cmp.i10 = icmp ult i32 %15, 1027
  br i1 %cmp.i10, label %entry.netdev_set_sopass.exit_crit_edge, label %if.end.i

entry.netdev_set_sopass.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_sopass.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %16 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !544
  %19 = and i32 %18, 16580479
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !545
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %19) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !546
  tail call void @arm_heavy_mb() #15
  %or.i = or i32 %20, 10
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %21) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !547
  tail call void @arm_heavy_mb() #15
  %22 = ptrtoint ptr %sopass to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sopass, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #15
  %add.ptr13.i = getelementptr i8, ptr %17, i32 76
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %24) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !548
  tail call void @arm_heavy_mb() #15
  %or17.i = or i32 %20, 12
  %25 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %25) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !549
  tail call void @arm_heavy_mb() #15
  %arrayidx22.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx22.i, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %28) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !550
  tail call void @arm_heavy_mb() #15
  %or27.i = or i32 %20, 14
  %29 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %29) #15, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !551
  tail call void @arm_heavy_mb() #15
  %arrayidx32.i = getelementptr %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx32.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %32) #15, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !552
  tail call void @arm_heavy_mb() #15
  %or37.i = or i32 %20, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or37.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %33) #15, !srcloc !372
  br label %netdev_set_sopass.exit

netdev_set_sopass.exit:                           ; preds = %if.end.i, %entry.netdev_set_sopass.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3188
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nway_reset(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %0 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #15, !srcloc !376
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i = zext i16 %5 to i32
  br label %mdio_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %6 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_addr_external.i, align 8
  %call7.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %7, i32 noundef 0) #15
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %conv6.i, %if.then.i ], [ %call7.i, %if.else.i ]
  %and = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mdio_read.exit.if.end_crit_edge, label %if.then

mdio_read.exit.if.end_crit_edge:                  ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %mdio_read.exit
  %8 = trunc i32 %retval.0.i to i16
  %conv = or i16 %8, 512
  %9 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i5 = icmp eq i8 %10, 0
  br i1 %cmp.i5, label %do.body.i, label %if.else.i9

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i6 = getelementptr i8, ptr %dev, i32 2704
  %11 = ptrtoint ptr %ioaddr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i.i6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv) #15
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7, i16 %13) #15, !srcloc !375
  br label %if.end

if.else.i9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i8 = getelementptr i8, ptr %dev, i32 3032
  %14 = ptrtoint ptr %phy_addr_external.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_addr_external.i8, align 8
  tail call fastcc void @miiport_write(ptr noundef %dev, i32 noundef %15, i32 noundef 0, i16 noundef zeroext %conv) #15
  br label %if.end

if.end:                                           ; preds = %if.else.i9, %do.body.i, %mdio_read.exit.if.end_crit_edge
  %r.0 = phi i32 [ -22, %mdio_read.exit.if.end_crit_edge ], [ 0, %do.body.i ], [ 0, %if.else.i9 ]
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %0 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 132
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #15, !srcloc !376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  br label %mdio_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %5 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_addr_external.i, align 8
  %call7.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %6, i32 noundef 1) #15
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %if.else.i, %if.then.i
  %7 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i4 = icmp eq i8 %8, 0
  br i1 %cmp.i4, label %if.then.i9, label %if.else.i12

if.then.i9:                                       ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i5 = getelementptr i8, ptr %dev, i32 2704
  %9 = ptrtoint ptr %ioaddr.i.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i.i5, align 8
  %add.ptr3.i7 = getelementptr i8, ptr %10, i32 132
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i7) #15, !srcloc !376
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i8 = zext i16 %12 to i32
  br label %mdio_read.exit14

if.else.i12:                                      ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  %phy_addr_external.i10 = getelementptr i8, ptr %dev, i32 3032
  %13 = ptrtoint ptr %phy_addr_external.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_addr_external.i10, align 8
  %call7.i11 = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %14, i32 noundef 1) #15
  br label %mdio_read.exit14

mdio_read.exit14:                                 ; preds = %if.else.i12, %if.then.i9
  %retval.0.i13 = phi i32 [ %conv6.i8, %if.then.i9 ], [ %call7.i11, %if.else.i12 ]
  %and = lshr i32 %retval.0.i13, 2
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_eeprom_len(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_size = getelementptr i8, ptr %dev, i32 3192
  %0 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom_size, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_size = getelementptr i8, ptr %dev, i32 3192
  %0 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2101259, ptr %magic, align 4
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %ioaddr.i.i = getelementptr i8, ptr %dev, i32 2704
  %3 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i.i, align 8
  %5 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eeprom_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp23.i = icmp sgt i32 %6, 1
  br i1 %cmp23.i, label %if.end.for.body.i_crit_edge, label %if.end.netdev_get_eeprom.exit_crit_edge

if.end.netdev_get_eeprom.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_get_eeprom.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call2.i = tail call fastcc i32 @eeprom_read(ptr noundef %4, i32 noundef %i.024.i) #15
  %arrayidx.i = getelementptr i16, ptr %call9.i, i32 %i.024.i
  %trunc.i = trunc i32 %call2.i to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i) #15
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %rev.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %8 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eeprom_size, align 8
  %div.i = sdiv i32 %9, 2
  %cmp.i18 = icmp slt i32 %inc.i, %div.i
  br i1 %cmp.i18, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netdev_get_eeprom.exit_crit_edge

for.body.i.netdev_get_eeprom.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_get_eeprom.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netdev_get_eeprom.exit:                           ; preds = %for.body.i.netdev_get_eeprom.exit_crit_edge, %if.end.netdev_get_eeprom.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %11
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %13)
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup

cleanup:                                          ; preds = %netdev_get_eeprom.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %netdev_get_eeprom.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %0 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %if_port.i, align 2
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %port.i, align 1
  %speed.i = getelementptr i8, ptr %dev, i32 3132
  %3 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %speed.i, align 4
  %conv.i = zext i16 %4 to i32
  %speed2.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i, ptr %speed2.i, align 4
  %duplex.i = getelementptr i8, ptr %dev, i32 3134
  %6 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex.i, align 2
  %duplex4.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %8 = ptrtoint ptr %duplex4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %duplex4.i, align 4
  %autoneg.i = getelementptr i8, ptr %dev, i32 3135
  %9 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autoneg.i, align 1
  %autoneg6.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %11 = ptrtoint ptr %autoneg6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %autoneg6.i, align 1
  %advertising7.i = getelementptr i8, ptr %dev, i32 3136
  %12 = ptrtoint ptr %advertising7.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %advertising7.i, align 8
  %14 = lshr i16 %13, 5
  %15 = and i16 %14, 15
  %16 = zext i16 %15 to i32
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %17 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phy_addr_external.i, align 8
  %conv30.i = trunc i32 %18 to i8
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 4
  %19 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv30.i, ptr %phy_address.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch.selectcmp.i = icmp eq i8 %1, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 512, i32 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %switch.selectcmp12.i = icmp eq i8 %1, 3
  %switch.select13.i = select i1 %switch.selectcmp12.i, i32 1024, i32 %switch.select.i
  %or39.i = or i32 %switch.select13.i, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %if.then44.i, label %entry.netdev_get_ecmd.exit_crit_edge

entry.netdev_get_ecmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_get_ecmd.exit

if.then44.i:                                      ; preds = %entry
  %or45.i = or i32 %or39.i, 64
  %20 = ptrtoint ptr %advertising7.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %advertising7.i, align 8
  %conv47.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %if_port.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %if_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.i.i = icmp eq i8 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #17
  %ioaddr.i.i.i = getelementptr i8, ptr %dev, i32 2704
  %24 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i.i.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %25, i32 148
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i.i) #15, !srcloc !376
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %conv6.i.i = zext i16 %27 to i32
  br label %mdio_read.exit.i

if.else.i.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_addr_external.i, align 8
  %call7.i.i = tail call fastcc i32 @miiport_read(ptr noundef %dev, i32 noundef %29, i32 noundef 5) #15
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %call7.i.i, %if.else.i.i ]
  %and49.i = and i32 %retval.0.i.i, %conv47.i
  %and.i.i = and i32 %and49.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i3.i, label %mdio_read.exit.i.if.end73.sink.split.i_crit_edge

mdio_read.exit.i.if.end73.sink.split.i_crit_edge: ; preds = %mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.sink.split.i

if.else.i3.i:                                     ; preds = %mdio_read.exit.i
  %and1.i.i = and i32 %and49.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else4.i.i, label %if.else.i3.i.if.else69.i_crit_edge

if.else.i3.i.if.else69.i_crit_edge:               ; preds = %if.else.i3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69.i

if.else4.i.i:                                     ; preds = %if.else.i3.i
  %and5.i.i = and i32 %and49.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else8.i.i, label %if.else4.i.i.if.else69.i_crit_edge

if.else4.i.i.if.else69.i_crit_edge:               ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  %and9.i.i = and i32 %and49.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else8.i.i.if.else69.i_crit_edge, label %if.else8.i.i.if.end73.sink.split.i_crit_edge

if.else8.i.i.if.end73.sink.split.i_crit_edge:     ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.sink.split.i

if.else8.i.i.if.else69.i_crit_edge:               ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else69.i

if.else69.i:                                      ; preds = %if.else8.i.i.if.else69.i_crit_edge, %if.else4.i.i.if.else69.i_crit_edge, %if.else.i3.i.if.else69.i_crit_edge
  %30 = phi i32 [ 100, %if.else4.i.i.if.else69.i_crit_edge ], [ 10, %if.else.i3.i.if.else69.i_crit_edge ], [ 10, %if.else8.i.i.if.else69.i_crit_edge ]
  br label %if.end73.sink.split.i

if.end73.sink.split.i:                            ; preds = %if.else69.i, %if.else8.i.i.if.end73.sink.split.i_crit_edge, %mdio_read.exit.i.if.end73.sink.split.i_crit_edge
  %storemerge.sink.i = phi i32 [ %30, %if.else69.i ], [ 100, %mdio_read.exit.i.if.end73.sink.split.i_crit_edge ], [ 10, %if.else8.i.i.if.end73.sink.split.i_crit_edge ]
  %.sink11.i = phi i8 [ 0, %if.else69.i ], [ 1, %mdio_read.exit.i.if.end73.sink.split.i_crit_edge ], [ 1, %if.else8.i.i.if.end73.sink.split.i_crit_edge ]
  %31 = ptrtoint ptr %speed2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge.sink.i, ptr %speed2.i, align 4
  %32 = ptrtoint ptr %duplex4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink11.i, ptr %duplex4.i, align 4
  br label %netdev_get_ecmd.exit

netdev_get_ecmd.exit:                             ; preds = %if.end73.sink.split.i, %entry.netdev_get_ecmd.exit_crit_edge
  %advertising.5.i = phi i32 [ %or39.i, %entry.netdev_get_ecmd.exit_crit_edge ], [ %or45.i, %if.end73.sink.split.i ]
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i, i32 noundef 1743) #15
  %advertising76.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising76.i, i32 noundef %advertising.5.i) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  %advertising.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising.i) #15
  %0 = ptrtoint ptr %advertising.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %advertising.i, align 4, !annotation !368
  %advertising1.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %ecmd, i32 0, i32 1, i32 1
  %call2.i = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising.i, ptr noundef %advertising1.i) #15
  %port.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 3
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %2, label %entry.netdev_set_ecmd.exit_crit_edge [
    i8 0, label %entry.if.end.i_crit_edge
    i8 2, label %entry.if.end.i_crit_edge5
    i8 3, label %entry.if.end.i_crit_edge6
  ]

entry.if.end.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

entry.if.end.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

entry.netdev_set_ecmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge5, %entry.if.end.i_crit_edge6
  %autoneg.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg.i, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %5, label %if.end.i.netdev_set_ecmd.exit_crit_edge [
    i8 1, label %if.then19.i
    i8 0, label %if.then29.i
  ]

if.end.i.netdev_set_ecmd.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.then19.i:                                      ; preds = %if.end.i
  %7 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %advertising.i, align 4
  %and.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20.i = icmp eq i32 %and.i, 0
  br i1 %cmp20.i, label %if.then19.i.netdev_set_ecmd.exit_crit_edge, label %if.end53.i

if.then19.i.netdev_set_ecmd.exit_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.then29.i:                                      ; preds = %if.end.i
  %speed31.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %9 = ptrtoint ptr %speed31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed31.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %10, label %if.then29.i.netdev_set_ecmd.exit_crit_edge [
    i32 10, label %if.then29.i.if.end38.i_crit_edge
    i32 100, label %if.then29.i.if.end38.i_crit_edge7
  ]

if.then29.i.if.end38.i_crit_edge7:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then29.i.if.end38.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38.i

if.then29.i.netdev_set_ecmd.exit_crit_edge:       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.end38.i:                                       ; preds = %if.then29.i.if.end38.i_crit_edge, %if.then29.i.if.end38.i_crit_edge7
  %duplex.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %12 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch.i = icmp ult i8 %13, 2
  br i1 %switch.i, label %if.end53.thread.i, label %if.end38.i.netdev_set_ecmd.exit_crit_edge

if.end38.i.netdev_set_ecmd.exit_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.end53.i:                                       ; preds = %if.then19.i
  %ignore_phy.i = getelementptr i8, ptr %dev, i32 3024
  %14 = ptrtoint ptr %ignore_phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ignore_phy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end53.i.if.end66.i_crit_edge, label %if.end53.i.netdev_set_ecmd.exit_crit_edge

if.end53.i.netdev_set_ecmd.exit_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.end53.i.if.end66.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66.i

if.end53.thread.i:                                ; preds = %if.end38.i
  %ignore_phy176.i = getelementptr i8, ptr %dev, i32 3024
  %16 = ptrtoint ptr %ignore_phy176.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ignore_phy176.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not177.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp63.i = icmp eq i8 %2, 0
  %or.cond.i = select i1 %tobool.not177.i, i1 %cmp63.i, i1 false
  br i1 %or.cond.i, label %if.end53.thread.i.netdev_set_ecmd.exit_crit_edge, label %if.end53.thread.i.if.end66.i_crit_edge

if.end53.thread.i.if.end66.i_crit_edge:           ; preds = %if.end53.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66.i

if.end53.thread.i.netdev_set_ecmd.exit_crit_edge: ; preds = %if.end53.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netdev_set_ecmd.exit

if.end66.i:                                       ; preds = %if.end53.thread.i.if.end66.i_crit_edge, %if.end53.i.if.end66.i_crit_edge
  %if_port.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %18 = ptrtoint ptr %if_port.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %2, ptr %if_port.i, align 2
  %19 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg.i, align 1
  %autoneg71.i = getelementptr i8, ptr %dev, i32 3135
  %21 = ptrtoint ptr %autoneg71.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %autoneg71.i, align 1
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 4
  %22 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %phy_address.i, align 2
  %24 = and i8 %23, 31
  %and74.i = zext i8 %24 to i32
  %phy_addr_external.i = getelementptr i8, ptr %dev, i32 3032
  %25 = ptrtoint ptr %phy_addr_external.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and74.i, ptr %phy_addr_external.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp77.i = icmp eq i8 %20, 1
  br i1 %cmp77.i, label %if.then79.i, label %if.else115.i

if.then79.i:                                      ; preds = %if.end66.i
  %advertising80.i = getelementptr i8, ptr %dev, i32 3136
  %26 = ptrtoint ptr %advertising80.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %advertising80.i, align 8
  %28 = and i16 %27, -993
  store i16 %28, ptr %advertising80.i, align 8
  %29 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %advertising.i, align 4
  %and84.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.then79.i.if.end90.i_crit_edge, label %if.then86.i

if.then79.i.if.end90.i_crit_edge:                 ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90.i

if.then86.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = or i16 %28, 32
  %32 = ptrtoint ptr %advertising80.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %advertising80.i, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %if.then79.i.if.end90.i_crit_edge
  %and91.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %if.end90.i.if.end98.i_crit_edge, label %if.then93.i

if.end90.i.if.end98.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98.i

if.then93.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %advertising80.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %advertising80.i, align 8
  %35 = or i16 %34, 64
  store i16 %35, ptr %advertising80.i, align 8
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then93.i, %if.end90.i.if.end98.i_crit_edge
  %and99.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end98.i.if.end106.i_crit_edge, label %if.then101.i

if.end98.i.if.end106.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106.i

if.then101.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %advertising80.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %advertising80.i, align 8
  %38 = or i16 %37, 128
  store i16 %38, ptr %advertising80.i, align 8
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then101.i, %if.end98.i.if.end106.i_crit_edge
  %and107.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %if.end106.i.if.end129.i_crit_edge, label %if.then109.i

if.end106.i.if.end129.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129.i

if.then109.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %advertising80.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %advertising80.i, align 8
  %41 = or i16 %40, 256
  store i16 %41, ptr %advertising80.i, align 8
  br label %if.end129.i

if.else115.i:                                     ; preds = %if.end66.i
  %speed117.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  %42 = ptrtoint ptr %speed117.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed117.i, align 4
  %conv118.i = trunc i32 %43 to i16
  %speed119.i = getelementptr i8, ptr %dev, i32 3132
  %44 = ptrtoint ptr %speed119.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv118.i, ptr %speed119.i, align 4
  %duplex121.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 2
  %45 = ptrtoint ptr %duplex121.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %duplex121.i, align 4
  %duplex122.i = getelementptr i8, ptr %dev, i32 3134
  %47 = ptrtoint ptr %duplex122.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %duplex122.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp125.i = icmp eq i8 %46, 0
  br i1 %cmp125.i, label %if.then127.i, label %if.else115.i.if.end129.i_crit_edge

if.else115.i.if.end129.i_crit_edge:               ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129.i

if.then127.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #17
  %full_duplex.i = getelementptr i8, ptr %dev, i32 3036
  %48 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %full_duplex.i, align 4
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then127.i, %if.else115.i.if.end129.i_crit_edge, %if.then109.i, %if.end106.i.if.end129.i_crit_edge
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp133.i = icmp eq i8 %50, 0
  br i1 %cmp133.i, label %if.then135.i, label %if.else137.i

if.then135.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @switch_port_internal(ptr noundef %dev) #15
  br label %if.end139.i

if.else137.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #17
  %call138.i = call fastcc i32 @switch_port_external(ptr noundef %dev) #15
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.else137.i, %if.then135.i
  call fastcc void @init_phy_fixup(ptr noundef %dev) #15
  call fastcc void @check_link(ptr noundef %dev) #15
  br label %netdev_set_ecmd.exit

netdev_set_ecmd.exit:                             ; preds = %if.end139.i, %if.end53.thread.i.netdev_set_ecmd.exit_crit_edge, %if.end53.i.netdev_set_ecmd.exit_crit_edge, %if.end38.i.netdev_set_ecmd.exit_crit_edge, %if.then29.i.netdev_set_ecmd.exit_crit_edge, %if.then19.i.netdev_set_ecmd.exit_crit_edge, %if.end.i.netdev_set_ecmd.exit_crit_edge, %entry.netdev_set_ecmd.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end139.i ], [ -22, %entry.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.then19.i.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.end38.i.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.then29.i.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.end.i.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.end53.thread.i.netdev_set_ecmd.exit_crit_edge ], [ -22, %if.end53.i.netdev_set_ecmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising.i) #15
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret i32 %retval.1.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_show_dspcfg_workaround(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dspcfg_workaround = getelementptr i8, ptr %dev, i32 2024
  %0 = ptrtoint ptr %dspcfg_workaround to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dspcfg_workaround, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.155, ptr @.str.154
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.153, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_set_dspcfg_workaround(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %count, -1
  %call1 = tail call i32 @strncmp(ptr noundef nonnull @.str.154, ptr noundef %buf, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %lor.lhs.false

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @strncmp(ptr noundef nonnull @.str.156, ptr noundef %buf, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false.do.body15_crit_edge, label %if.else

lor.lhs.false.do.body15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

if.else:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @strncmp(ptr noundef nonnull @.str.155, ptr noundef %buf, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.do.body15_crit_edge, label %lor.lhs.false8

if.else.do.body15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

lor.lhs.false8:                                   ; preds = %if.else
  %call10 = tail call i32 @strncmp(ptr noundef nonnull @.str.147, ptr noundef %buf, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false8.do.body15_crit_edge, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false8.do.body15_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

do.body15:                                        ; preds = %lor.lhs.false8.do.body15_crit_edge, %if.else.do.body15_crit_edge, %lor.lhs.false.do.body15_crit_edge, %entry.do.body15_crit_edge
  %new_setting.0 = phi i32 [ 1, %lor.lhs.false.do.body15_crit_edge ], [ 1, %entry.do.body15_crit_edge ], [ 0, %lor.lhs.false8.do.body15_crit_edge ], [ 0, %if.else.do.body15_crit_edge ]
  %lock = getelementptr i8, ptr %dev, i32 2040
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %dspcfg_workaround = getelementptr i8, ptr %dev, i32 2024
  %0 = ptrtoint ptr %dspcfg_workaround to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_setting.0, ptr %dspcfg_workaround, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %lor.lhs.false8.cleanup_crit_edge
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr.i = getelementptr i8, ptr %1, i32 2704
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 8
  tail call void @rtnl_lock() #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then:                                          ; preds = %entry
  %pci_dev = getelementptr i8, ptr %1, i32 2984
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %irq4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq4, align 4
  %timer = getelementptr i8, ptr %1, i32 2936
  %call5 = tail call i32 @del_timer_sync(ptr noundef %timer) #15
  tail call void @disable_irq(i32 noundef %9) #15
  %lock = getelementptr i8, ptr %1, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !481
  tail call void @arm_heavy_mb() #15
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #15, !srcloc !372
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !482
  %hands_off = getelementptr i8, ptr %1, i32 3020
  %15 = ptrtoint ptr %hands_off to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %hands_off, align 4
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 167772160) #15, !srcloc !372
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.036.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  %19 = and i32 %18, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.i = icmp eq i32 %19, 0
  br i1 %cmp5.i, label %if.else.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #15
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %do.end10.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %1, i32 noundef 2000) #18
  br label %natsemi_stop_rxtx.exit

if.else.i:                                        ; preds = %for.body.i
  %msg_enable.i = getelementptr i8, ptr %1, i32 3188
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 4
  %and13.i = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %if.else.i.natsemi_stop_rxtx.exit_crit_edge, label %do.end17.i

if.else.i.natsemi_stop_rxtx.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %natsemi_stop_rxtx.exit

do.end17.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul21.i = mul i32 %i.036.i, 5
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %1, i32 noundef %mul21.i) #18
  br label %natsemi_stop_rxtx.exit

natsemi_stop_rxtx.exit:                           ; preds = %do.end17.i, %if.else.i.natsemi_stop_rxtx.exit_crit_edge, %do.end10.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %9) #15
  %napi = getelementptr i8, ptr %1, i32 2712
  tail call void @napi_disable(ptr noundef %napi) #15
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i32 = getelementptr i8, ptr %26, i32 100
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #15, !srcloc !369
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %29 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_crc_errors.i, align 8
  %add.i = add i32 %30, %28
  store i32 %add.i, ptr %rx_crc_errors.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %26, i32 104
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #15, !srcloc !369
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %33 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_missed_errors.i, align 4
  %add10.i = add i32 %34, %32
  store i32 %add10.i, ptr %rx_missed_errors.i, align 4
  tail call fastcc void @drain_ring(ptr noundef %1)
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !553
  %36 = and i32 %35, -16318464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %do.body, label %if.then9

if.then9:                                         ; preds = %natsemi_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @enable_wol_mode(ptr noundef %1)
  br label %if.end11

do.body:                                          ; preds = %natsemi_stop_rxtx.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !554
  tail call void @arm_heavy_mb() #15
  %SavedClkRun = getelementptr i8, ptr %1, i32 3116
  %37 = ptrtoint ptr %SavedClkRun to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %SavedClkRun, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add.ptr10 = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %39) #15, !srcloc !372
  br label %if.end11

if.end11:                                         ; preds = %do.body, %if.then9, %entry.if.end11_crit_edge
  tail call void @netif_device_detach(ptr noundef %1) #15
  tail call void @rtnl_unlock() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @natsemi_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i37.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i37.not, label %if.end.if.end21_crit_edge, label %if.then4

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then4:                                         ; preds = %if.end
  %hands_off = getelementptr i8, ptr %1, i32 3020
  %7 = ptrtoint ptr %hands_off to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hands_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body10, label %do.end16, !prof !555

do.body10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/natsemi/natsemi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3335, 0\0A.popsection", ""() #15, !srcloc !556
  unreachable

do.end16:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %pci_dev = getelementptr i8, ptr %1, i32 2984
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 8
  %irq5 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq5, align 4
  %napi = getelementptr i8, ptr %1, i32 2712
  tail call void @napi_enable(ptr noundef %napi) #15
  tail call fastcc void @natsemi_reset(ptr noundef %1)
  tail call fastcc void @init_ring(ptr noundef %1)
  tail call void @disable_irq(i32 noundef %12) #15
  %lock = getelementptr i8, ptr %1, i32 3144
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %13 = ptrtoint ptr %hands_off to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hands_off, align 4
  tail call fastcc void @init_registers(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  tail call void @enable_irq(i32 noundef %12) #15
  %timer = getelementptr i8, ptr %1, i32 2936
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 100
  %call19 = tail call i32 @round_jiffies(i32 noundef %add) #15
  %call20 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %call19) #15
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %if.end.if.end21_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #15
  br label %out

out:                                              ; preds = %if.end21, %entry.out_crit_edge
  tail call void @rtnl_unlock() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 172)
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
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !320, !322, !323, !324, !326, !328, !330, !331, !332, !333, !335, !336, !337, !338, !339, !340, !341, !342, !344, !345, !346, !348, !349, !351, !353, !355, !357}
!llvm.module.flags = !{!359, !360, !361, !362, !363, !364, !365, !366}
!llvm.ident = !{!367}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 136, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 137, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 138, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__param_mtu, !8, !"__param_mtu", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 140, i32 1}
!9 = !{ptr @__UNIQUE_ID_mtutype347, !8, !"__UNIQUE_ID_mtutype347", i1 false, i1 false}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 141, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype348, !11, !"__UNIQUE_ID_debugtype348", i1 false, i1 false}
!13 = !{ptr @__param_rx_copybreak, !14, !"__param_rx_copybreak", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 142, i32 1}
!15 = !{ptr @__UNIQUE_ID_rx_copybreaktype349, !14, !"__UNIQUE_ID_rx_copybreaktype349", i1 false, i1 false}
!16 = !{ptr @__param_dspcfg_workaround, !17, !"__param_dspcfg_workaround", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 143, i32 1}
!18 = !{ptr @__UNIQUE_ID_dspcfg_workaroundtype350, !17, !"__UNIQUE_ID_dspcfg_workaroundtype350", i1 false, i1 false}
!19 = !{ptr @__param_options, !20, !"__param_options", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 144, i32 1}
!21 = !{ptr @__UNIQUE_ID_optionstype351, !20, !"__UNIQUE_ID_optionstype351", i1 false, i1 false}
!22 = !{ptr @__param_full_duplex, !23, !"__param_full_duplex", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 145, i32 1}
!24 = !{ptr @__UNIQUE_ID_full_duplextype352, !23, !"__UNIQUE_ID_full_duplextype352", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_mtu353, !26, !"__UNIQUE_ID_mtu353", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 146, i32 1}
!27 = !{ptr @__UNIQUE_ID_debug354, !28, !"__UNIQUE_ID_debug354", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 147, i32 1}
!29 = !{ptr @__UNIQUE_ID_rx_copybreak355, !30, !"__UNIQUE_ID_rx_copybreak355", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 148, i32 1}
!31 = !{ptr @__UNIQUE_ID_dspcfg_workaround356, !32, !"__UNIQUE_ID_dspcfg_workaround356", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 150, i32 1}
!33 = !{ptr @__UNIQUE_ID_options357, !34, !"__UNIQUE_ID_options357", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 151, i32 1}
!35 = !{ptr @__UNIQUE_ID_full_duplex358, !36, !"__UNIQUE_ID_full_duplex358", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 153, i32 1}
!37 = !{ptr @__initcall__kmod_natsemi__359_3383_natsemi_init_mod6, !38, !"__initcall__kmod_natsemi__359_3383_natsemi_init_mod6", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3383, i32 1}
!39 = !{ptr @__exitcall_natsemi_exit_mod, !40, !"__exitcall_natsemi_exit_mod", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3384, i32 1}
!41 = !{ptr @mtu, !42, !"mtu", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 74, i32 12}
!43 = !{ptr @rx_copybreak, !44, !"rx_copybreak", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 82, i32 12}
!45 = !{ptr @__param_str_mtu, !8, !"__param_str_mtu", i1 false, i1 false}
!46 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!47 = !{ptr @debug, !48, !"debug", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 72, i32 12}
!49 = !{ptr @__param_str_rx_copybreak, !14, !"__param_str_rx_copybreak", i1 false, i1 false}
!50 = !{ptr @__param_str_dspcfg_workaround, !17, !"__param_str_dspcfg_workaround", i1 false, i1 false}
!51 = !{ptr @dspcfg_workaround, !52, !"dspcfg_workaround", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 84, i32 12}
!53 = !{ptr @__param_str_options, !20, !"__param_str_options", i1 false, i1 false}
!54 = !{ptr @__param_arr_options, !20, !"__param_arr_options", i1 false, i1 false}
!55 = !{ptr @options, !56, !"options", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 92, i32 12}
!57 = !{ptr @__param_str_full_duplex, !23, !"__param_str_full_duplex", i1 false, i1 false}
!58 = !{ptr @__param_arr_full_duplex, !23, !"__param_arr_full_duplex", i1 false, i1 false}
!59 = !{ptr @full_duplex, !60, !"full_duplex", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 93, i32 12}
!61 = !{ptr @.str, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3361, i32 11}
!63 = !{ptr @natsemi_driver, !64, !"natsemi_driver", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3360, i32 26}
!65 = !{ptr @natsemi_pci_tbl, !66, !"natsemi_pci_tbl", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 250, i32 35}
!67 = !{ptr @natsemi_probe1.find_cnt, !68, !"find_cnt", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 807, i32 13}
!69 = !{ptr @natsemi_probe1.printed_version, !70, !"printed_version", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 818, i32 13}
!71 = !{ptr @.str.1, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 820, i32 3}
!73 = !{ptr @.str.2, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @natsemi_probe1._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @natsemi_probe1._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @natsemi_probe1.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 878, i32 2}
!78 = !{ptr @.str.3, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.5, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 924, i32 4}
!81 = !{ptr @natsemi_probe1._entry.4, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @natsemi_probe1._entry_ptr.6, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.8, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 948, i32 3}
!85 = !{ptr @natsemi_probe1._entry.7, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @natsemi_probe1._entry_ptr.9, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 959, i32 3}
!89 = !{ptr @natsemi_probe1._entry.10, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @natsemi_probe1._entry_ptr.12, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.14, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 965, i32 4}
!93 = !{ptr @natsemi_probe1._entry.13, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @natsemi_probe1._entry_ptr.15, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 967, i32 4}
!97 = !{ptr @natsemi_probe1._entry.16, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @natsemi_probe1._entry_ptr.18, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 969, i32 4}
!101 = !{ptr @natsemi_probe1._entry.19, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @natsemi_probe1._entry_ptr.21, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @version, !104, !"version", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 130, i32 19}
!105 = !{ptr @.str.22, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2235, i32 4}
!107 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @natsemi_poll._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @natsemi_poll._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2292, i32 4}
!112 = !{ptr @.str.25, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @netdev_rx._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @netdev_rx._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.27, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2309, i32 6}
!117 = !{ptr @netdev_rx._entry.26, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @netdev_rx._entry_ptr.28, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.29, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1480, i32 3}
!121 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @reset_rx._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @reset_rx._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.32, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1483, i32 3}
!126 = !{ptr @reset_rx._entry.31, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @reset_rx._entry_ptr.33, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.34, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1665, i32 5}
!130 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @check_link._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @check_link._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1674, i32 4}
!135 = !{ptr @check_link._entry.36, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @check_link._entry_ptr.38, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.40, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1694, i32 4}
!139 = !{ptr @check_link._entry.39, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @check_link._entry_ptr.41, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1955, i32 4}
!145 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @refill_rx._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @refill_rx._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!150 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2150, i32 4}
!154 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @netdev_tx_done._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @netdev_tx_done._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2406, i32 4}
!159 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @netdev_error._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @netdev_error._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2423, i32 5}
!164 = !{ptr @netdev_error._entry.52, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @netdev_error._entry_ptr.54, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2428, i32 5}
!168 = !{ptr @netdev_error._entry.55, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @netdev_error._entry_ptr.57, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.59, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2436, i32 3}
!172 = !{ptr @netdev_error._entry.58, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @netdev_error._entry_ptr.60, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.62, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2441, i32 4}
!176 = !{ptr @netdev_error._entry.61, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @netdev_error._entry_ptr.63, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2449, i32 3}
!180 = !{ptr @netdev_error._entry.64, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @netdev_error._entry_ptr.66, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 246, i32 4}
!184 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 247, i32 4}
!186 = !{ptr @natsemi_pci_info, !187, !"natsemi_pci_info", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 245, i32 3}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1501, i32 3}
!190 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @natsemi_reload_eeprom._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @natsemi_reload_eeprom._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1504, i32 3}
!195 = !{ptr @natsemi_reload_eeprom._entry.71, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @natsemi_reload_eeprom._entry_ptr.73, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1430, i32 3}
!199 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @natsemi_reset._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @natsemi_reset._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.77, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1433, i32 3}
!204 = !{ptr @natsemi_reset._entry.76, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @natsemi_reset._entry_ptr.78, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1367, i32 5}
!208 = !{ptr @.str.80, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @find_mii._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @find_mii._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1269, i32 3}
!213 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @switch_port_external._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @switch_port_external._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1240, i32 4}
!218 = !{ptr @.str.84, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @init_phy_fixup._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @init_phy_fixup._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.86, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1244, i32 4}
!223 = !{ptr @init_phy_fixup._entry.85, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @init_phy_fixup._entry_ptr.87, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1304, i32 3}
!227 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @switch_port_internal._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @switch_port_internal._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.91, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1325, i32 3}
!232 = !{ptr @switch_port_internal._entry.90, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @switch_port_internal._entry_ptr.92, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @natsemi_netdev_ops, !235, !"natsemi_netdev_ops", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 786, i32 36}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1544, i32 3}
!238 = !{ptr @.str.94, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @netdev_open._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @netdev_open._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.96, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1569, i32 3}
!243 = !{ptr @netdev_open._entry.95, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @netdev_open._entry_ptr.97, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @netdev_open.__key, !246, !"__key", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1573, i32 2}
!247 = !{ptr @.str.98, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2203, i32 3}
!250 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @intr_handler._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @intr_handler._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.102, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2215, i32 3}
!255 = !{ptr @intr_handler._entry.101, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @intr_handler._entry_ptr.103, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1866, i32 3}
!259 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @dump_ring._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @dump_ring._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.107, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1868, i32 4}
!264 = !{ptr @dump_ring._entry.106, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @dump_ring._entry_ptr.108, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.110, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1873, i32 3}
!268 = !{ptr @dump_ring._entry.109, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @dump_ring._entry_ptr.111, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @dump_ring._entry.112, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1875, i32 4}
!272 = !{ptr @dump_ring._entry_ptr.113, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.114, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1761, i32 3}
!275 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @init_registers._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @init_registers._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.116, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1801, i32 3}
!280 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @netdev_timer._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @netdev_timer._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.119, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1817, i32 6}
!285 = !{ptr @netdev_timer._entry.118, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @netdev_timer._entry_ptr.120, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1522, i32 3}
!289 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @natsemi_stop_rxtx._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @natsemi_stop_rxtx._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1525, i32 3}
!294 = !{ptr @natsemi_stop_rxtx._entry.123, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @natsemi_stop_rxtx._entry_ptr.125, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3166, i32 3}
!298 = !{ptr @.str.127, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @netdev_close._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @netdev_close._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.129, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3170, i32 3}
!303 = !{ptr @netdev_close._entry.128, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @netdev_close._entry_ptr.130, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.131, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3132, i32 3}
!307 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @enable_wol_mode._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @enable_wol_mode._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2135, i32 3}
!312 = !{ptr @.str.134, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @start_tx._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @start_tx._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.135, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1893, i32 4}
!317 = !{ptr @.str.136, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @ns_tx_timeout._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @ns_tx_timeout._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 1903, i32 3}
!322 = !{ptr @ns_tx_timeout._entry.137, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @ns_tx_timeout._entry_ptr.139, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @ethtool_ops, !325, !"ethtool_ops", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2688, i32 33}
!326 = !{ptr @.str.140, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 2570, i32 25}
!328 = !{ptr @.str.141, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3039, i32 3}
!330 = !{ptr @.str.142, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @netdev_get_regs._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @netdev_get_regs._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.143, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 766, i32 3}
!335 = !{ptr @.str.144, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @natsemi_init_media._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @natsemi_init_media._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.145, !334, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.146, !334, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.147, !334, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.148, !334, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.150, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 779, i32 3}
!344 = !{ptr @natsemi_init_media._entry.149, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @natsemi_init_media._entry_ptr.151, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.152, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 666, i32 1}
!348 = !{ptr @dev_attr_dspcfg_workaround, !347, !"dev_attr_dspcfg_workaround", i1 false, i1 false}
!349 = !{ptr @.str.153, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 674, i32 22}
!351 = !{ptr @.str.154, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 674, i32 54}
!353 = !{ptr @.str.155, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 674, i32 61}
!355 = !{ptr @.str.156, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 686, i32 56}
!357 = !{ptr @natsemi_pm_ops, !358, !"natsemi_pm_ops", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/natsemi/natsemi.c", i32 3358, i32 8}
!359 = !{i32 1, !"wchar_size", i32 2}
!360 = !{i32 1, !"min_enum_size", i32 4}
!361 = !{i32 8, !"branch-target-enforcement", i32 0}
!362 = !{i32 8, !"sign-return-address", i32 0}
!363 = !{i32 8, !"sign-return-address-all", i32 0}
!364 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!365 = !{i32 7, !"uwtable", i32 1}
!366 = !{i32 7, !"frame-pointer", i32 2}
!367 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!368 = !{!"auto-init"}
!369 = !{i64 5134507}
!370 = !{i64 2156668466}
!371 = !{i64 2156732435}
!372 = !{i64 5134089}
!373 = !{i64 2156733674}
!374 = !{i64 2156659317}
!375 = !{i64 5133469}
!376 = !{i64 5133669}
!377 = !{i64 2156659982}
!378 = !{i64 2156689776}
!379 = !{i64 2156670662}
!380 = !{i64 2156678747}
!381 = !{i64 2156679200}
!382 = !{i64 2156679846}
!383 = !{i64 2156680068}
!384 = !{i64 2156680756}
!385 = !{i64 2156680970}
!386 = !{i64 2156681634}
!387 = !{i64 2156681862}
!388 = !{i64 2156682568}
!389 = !{i64 2156683014}
!390 = !{i64 2156683228}
!391 = !{i64 2156683892}
!392 = !{i64 2156684124}
!393 = !{i64 2156684527}
!394 = !{i64 2156798704}
!395 = !{i64 2156727780}
!396 = !{i64 2156728464}
!397 = !{i64 2156807973}
!398 = !{i64 2156808699}
!399 = !{i64 2156811276}
!400 = !{i64 2156821225}
!401 = !{i64 2156821711}
!402 = !{i64 2156815108}
!403 = !{i64 2156815947}
!404 = !{i64 2156799198}
!405 = !{i64 2156657300}
!406 = !{i64 2156658005}
!407 = !{i64 2156715741}
!408 = !{i64 2156716228}
!409 = !{i64 2156716736}
!410 = !{i64 2156716965}
!411 = !{i64 2156717646}
!412 = !{i64 2156717870}
!413 = !{i64 2156718569}
!414 = !{i64 2156718788}
!415 = !{i64 2156719466}
!416 = !{i64 2156723709}
!417 = !{i64 2156723939}
!418 = !{i64 2156724594}
!419 = !{i64 2156724813}
!420 = !{i64 2156725491}
!421 = !{i64 2156725720}
!422 = !{i64 2156726123}
!423 = !{i64 2156726544}
!424 = !{i64 2156726965}
!425 = !{i64 2156727381}
!426 = !{i64 2156750395}
!427 = !{i64 2156751039}
!428 = !{i64 2156751263}
!429 = !{i64 2156751666}
!430 = !{i64 2156747656}
!431 = !{i64 2156747865}
!432 = !{i64 2156748509}
!433 = !{i64 2156748727}
!434 = !{i64 2156749381}
!435 = !{i64 2156749605}
!436 = !{i64 2156750008}
!437 = !{i64 2156757136}
!438 = !{i64 2156757565}
!439 = !{!"branch_weights", i32 2000, i32 1}
!440 = !{i64 2156686687}
!441 = !{i64 2156687383}
!442 = !{i64 2156687615}
!443 = !{i64 2156688356}
!444 = !{i64 2156688566}
!445 = !{i64 2156689241}
!446 = !{i64 2156684907}
!447 = !{i64 2156685585}
!448 = !{i64 2156685795}
!449 = !{i64 2156686470}
!450 = !{i64 2156701667}
!451 = !{i64 2156703610}
!452 = !{i64 2156704359}
!453 = !{i64 2156705389}
!454 = !{i64 2156707306}
!455 = !{i64 2156707977}
!456 = !{i64 2156709060}
!457 = !{i64 2156709310}
!458 = !{i64 2156710023}
!459 = !{i64 2156711116}
!460 = !{i64 2156690007}
!461 = !{i64 2156690780}
!462 = !{i64 2156691836}
!463 = !{i64 2156692049}
!464 = !{i64 2156692437}
!465 = !{i64 2156692835}
!466 = !{i64 2156693507}
!467 = !{i64 2156693726}
!468 = !{i64 2156694141}
!469 = !{i64 2156694531}
!470 = !{i64 2156695191}
!471 = !{i64 2156695942}
!472 = !{i64 2156696586}
!473 = !{i64 2156696795}
!474 = !{i64 2156700758}
!475 = !{i64 2156700979}
!476 = !{i64 2156743613}
!477 = !{i64 2156744010}
!478 = !{i64 2156744419}
!479 = !{i64 2156746877}
!480 = !{i64 2156854608}
!481 = !{i64 2156658396}
!482 = !{i64 2156659101}
!483 = !{i64 2156856980}
!484 = !{i64 2156857478}
!485 = !{i64 2156857701}
!486 = !{i64 2156737252}
!487 = !{i64 2156737942}
!488 = !{i64 2156858379}
!489 = !{i64 2156858603}
!490 = !{i64 2156785021}
!491 = !{i64 2156785241}
!492 = !{i64 2156827439}
!493 = !{i64 2156827863}
!494 = !{i64 2156779370}
!495 = !{i64 2156790240}
!496 = !{i64 2156790734}
!497 = !{i64 2156793037}
!498 = !{i64 931988}
!499 = !{i64 2156795236}
!500 = !{i64 2156758264}
!501 = !{i64 2156758488}
!502 = !{i64 2156758952}
!503 = !{i64 2156759505}
!504 = !{i64 2156759947}
!505 = !{i64 2156760630}
!506 = !{i64 2156760867}
!507 = !{i64 2156763247}
!508 = !{i64 2156763479}
!509 = !{i64 2156763896}
!510 = !{i64 2156764316}
!511 = !{i64 2156767573}
!512 = !{i64 2156768207}
!513 = !{i64 2156768414}
!514 = !{i64 2156770562}
!515 = !{i64 2156826068}
!516 = !{i64 2156826518}
!517 = !{i64 2156827024}
!518 = !{i64 2156850286}
!519 = !{i64 2156850934}
!520 = !{i64 2156851182}
!521 = !{i64 2156851677}
!522 = !{i64 2156841677}
!523 = !{i64 2156841892}
!524 = !{i64 2156842536}
!525 = !{i64 2156843014}
!526 = !{i64 2156843492}
!527 = !{i64 2156843966}
!528 = !{i64 2156844175}
!529 = !{i64 2156844843}
!530 = !{i64 2156845063}
!531 = !{i64 2156845744}
!532 = !{i64 2156845963}
!533 = !{i64 2156829841}
!534 = !{i64 2156834376}
!535 = !{i64 2156834601}
!536 = !{i64 2156835303}
!537 = !{i64 2156835528}
!538 = !{i64 2156836230}
!539 = !{i64 2156836455}
!540 = !{i64 2156837157}
!541 = !{i64 2156837376}
!542 = !{i64 2156828904}
!543 = !{i64 2156829187}
!544 = !{i64 2156830483}
!545 = !{i64 2156830702}
!546 = !{i64 2156831109}
!547 = !{i64 2156831531}
!548 = !{i64 2156831947}
!549 = !{i64 2156832369}
!550 = !{i64 2156832785}
!551 = !{i64 2156833207}
!552 = !{i64 2156833634}
!553 = !{i64 2156859426}
!554 = !{i64 2156859650}
!555 = !{!"branch_weights", i32 1, i32 2000}
!556 = !{i64 2156860267, i64 2156860771, i64 2156860304, i64 2156860360, i64 2156860394, i64 2156860418, i64 2156860459, i64 2156860480, i64 2156860508, i64 2156860542}
