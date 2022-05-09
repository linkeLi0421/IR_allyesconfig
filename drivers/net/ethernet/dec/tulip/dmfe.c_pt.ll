; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/dmfe.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/dmfe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rx_desc = type { i32, i32, i32, i32, ptr, ptr, [8 x i8] }
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
%struct.tx_desc = type { i32, i32, i32, i32, ptr, ptr, [8 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.dmfe_board_info = type { i32, i8, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author345 = internal constant [48 x i8] c"dmfe.author=Sten Wang, sten_wang@davicom.com.tw\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [53 x i8] c"dmfe.description=Davicom DM910X fast ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [46 x i8] c"dmfe.file=drivers/net/ethernet/dec/tulip/dmfe\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [17 x i8] c"dmfe.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"dmfe.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype349 = internal constant [24 x i8] c"dmfe.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_mode = internal constant [10 x i8] c"dmfe.mode\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@mode = internal global { i8, [31 x i8] } { i8 8, [31 x i8] zeroinitializer }, align 32
@__param_mode = internal constant %struct.kernel_param { ptr @__param_str_mode, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mode } }, section "__param", align 4
@__UNIQUE_ID_modetype350 = internal constant [24 x i8] c"dmfe.parmtype=mode:byte\00", section ".modinfo", align 1
@__param_str_cr6set = internal constant [12 x i8] c"dmfe.cr6set\00", align 1
@cr6set = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cr6set = internal constant %struct.kernel_param { ptr @__param_str_cr6set, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @cr6set } }, section "__param", align 4
@__UNIQUE_ID_cr6settype351 = internal constant [25 x i8] c"dmfe.parmtype=cr6set:int\00", section ".modinfo", align 1
@__param_str_chkmode = internal constant [13 x i8] c"dmfe.chkmode\00", align 1
@chkmode = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_chkmode = internal constant %struct.kernel_param { ptr @__param_str_chkmode, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @chkmode } }, section "__param", align 4
@__UNIQUE_ID_chkmodetype352 = internal constant [27 x i8] c"dmfe.parmtype=chkmode:byte\00", section ".modinfo", align 1
@__param_str_HPNA_mode = internal constant [15 x i8] c"dmfe.HPNA_mode\00", align 1
@HPNA_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_HPNA_mode = internal constant %struct.kernel_param { ptr @__param_str_HPNA_mode, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @HPNA_mode } }, section "__param", align 4
@__UNIQUE_ID_HPNA_modetype353 = internal constant [29 x i8] c"dmfe.parmtype=HPNA_mode:byte\00", section ".modinfo", align 1
@__param_str_HPNA_rx_cmd = internal constant [17 x i8] c"dmfe.HPNA_rx_cmd\00", align 1
@HPNA_rx_cmd = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_HPNA_rx_cmd = internal constant %struct.kernel_param { ptr @__param_str_HPNA_rx_cmd, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @HPNA_rx_cmd } }, section "__param", align 4
@__UNIQUE_ID_HPNA_rx_cmdtype354 = internal constant [31 x i8] c"dmfe.parmtype=HPNA_rx_cmd:byte\00", section ".modinfo", align 1
@__param_str_HPNA_tx_cmd = internal constant [17 x i8] c"dmfe.HPNA_tx_cmd\00", align 1
@HPNA_tx_cmd = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_HPNA_tx_cmd = internal constant %struct.kernel_param { ptr @__param_str_HPNA_tx_cmd, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @HPNA_tx_cmd } }, section "__param", align 4
@__UNIQUE_ID_HPNA_tx_cmdtype355 = internal constant [31 x i8] c"dmfe.parmtype=HPNA_tx_cmd:byte\00", section ".modinfo", align 1
@__param_str_HPNA_NoiseFloor = internal constant [21 x i8] c"dmfe.HPNA_NoiseFloor\00", align 1
@HPNA_NoiseFloor = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_HPNA_NoiseFloor = internal constant %struct.kernel_param { ptr @__param_str_HPNA_NoiseFloor, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @HPNA_NoiseFloor } }, section "__param", align 4
@__UNIQUE_ID_HPNA_NoiseFloortype356 = internal constant [35 x i8] c"dmfe.parmtype=HPNA_NoiseFloor:byte\00", section ".modinfo", align 1
@__param_str_SF_mode = internal constant [13 x i8] c"dmfe.SF_mode\00", align 1
@SF_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_SF_mode = internal constant %struct.kernel_param { ptr @__param_str_SF_mode, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @SF_mode } }, section "__param", align 4
@__UNIQUE_ID_SF_modetype357 = internal constant [27 x i8] c"dmfe.parmtype=SF_mode:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_debug358 = internal constant [54 x i8] c"dmfe.parm=debug:Davicom DM9xxx enable debugging (0-1)\00", section ".modinfo", align 1
@__UNIQUE_ID_mode359 = internal constant [80 x i8] c"dmfe.parm=mode:Davicom DM9xxx: Bit 0: 10/100Mbps, bit 2: duplex, bit 8: HomePNA\00", section ".modinfo", align 1
@__UNIQUE_ID_SF_mode360 = internal constant [108 x i8] c"dmfe.parm=SF_mode:Davicom DM9xxx special function (bit 0: VLAN, bit 1 Flow Control, bit 2: TX pause packet)\00", section ".modinfo", align 1
@dmfe_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dmfe_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013dmfe: %s %lx\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dmfe_cleanup_module\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/dec/tulip/dmfe.c\00", [58 x i8] zeroinitializer }, align 32
@dmfe_cleanup_module._entry_ptr = internal global ptr @dmfe_cleanup_module._entry, section ".printk_index", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmfe_cleanup_module() \00", [41 x i8] zeroinitializer }, align 32
@dmfe_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @dmfe_pci_tbl, ptr @dmfe_init_one, ptr @dmfe_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dmfe_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_dmfe__361_2217_dmfe_init_module6 = internal global ptr @dmfe_init_module, section ".initcall6.init", align 4
@__exitcall_dmfe_cleanup_module = internal global ptr @dmfe_cleanup_module, section ".exitcall.exit", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmfe\00", [27 x i8] zeroinitializer }, align 32
@dmfe_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4738, i32 37170, i32 -1, i32 -1, i32 0, i32 0, i32 -1858989438, i32 0 }, %struct.pci_device_id { i32 4738, i32 37122, i32 -1, i32 -1, i32 0, i32 0, i32 -1862135166, i32 0 }, %struct.pci_device_id { i32 4738, i32 37120, i32 -1, i32 -1, i32 0, i32 0, i32 -1862266238, i32 0 }, %struct.pci_device_id { i32 4738, i32 36873, i32 -1, i32 -1, i32 0, i32 0, i32 -1878453630, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dmfe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dmfe_suspend, ptr @dmfe_resume, ptr @dmfe_suspend, ptr @dmfe_resume, ptr @dmfe_suspend, ptr @dmfe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dmfe_init_one\00", [18 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr = internal global ptr @dmfe_init_one._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmfe_init_one()\00", [16 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014dmfe: 32-bit PCI DMA not available\0A\00", [58 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr.9 = internal global ptr @dmfe_init_one._entry.7, section ".printk_index", align 4
@dmfe_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013dmfe: I/O base is zero\0A\00", [38 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr.12 = internal global ptr @dmfe_init_one._entry.10, section ".printk_index", align 4
@dmfe_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dmfe: Allocated I/O size too small\0A\00", [58 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr.15 = internal global ptr @dmfe_init_one._entry.13, section ".printk_index", align 4
@dmfe_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dmfe: Failed to request PCI regions\0A\00", [57 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr.18 = internal global ptr @dmfe_init_one._entry.16, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @dmfe_open, ptr @dmfe_stop, ptr @dmfe_start_xmit, ptr null, ptr null, ptr null, ptr @dmfe_set_filter_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @poll_dmfe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dmfe_ethtool_get_drvinfo, ptr null, ptr null, ptr @dmfe_ethtool_get_wol, ptr @dmfe_ethtool_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@dmfe_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&db->lock\00", [22 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 487, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Davicom DM%04lx at pci%s, %pM, irq %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dmfe_init_one._entry_ptr.24 = internal global ptr @dmfe_init_one._entry.20, section ".printk_index", align 4
@dmfe_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmfe_open\00", [22 x i8] zeroinitializer }, align 32
@dmfe_open._entry_ptr = internal global ptr @dmfe_open._entry, section ".printk_index", align 4
@dmfe_cr6_user_set = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dmfe_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&db->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dmfe_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.27, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmfe_interrupt\00", [17 x i8] zeroinitializer }, align 32
@dmfe_interrupt._entry_ptr = internal global ptr @dmfe_interrupt._entry, section ".printk_index", align 4
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmfe_interrupt()\00", [47 x i8] zeroinitializer }, align 32
@dmfe_interrupt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.27, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_interrupt._entry_ptr.30 = internal global ptr @dmfe_interrupt._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"System bus error happen. CR5=\00", [34 x i8] zeroinitializer }, align 32
@dmfe_rx_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmfe_rx_packet\00", [17 x i8] zeroinitializer }, align 32
@dmfe_rx_packet._entry_ptr = internal global ptr @dmfe_rx_packet._entry, section ".printk_index", align 4
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reuse SK buffer, rdes0\00", [41 x i8] zeroinitializer }, align 32
@dmfe_rx_packet._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_rx_packet._entry_ptr.35 = internal global ptr @dmfe_rx_packet._entry.34, section ".printk_index", align 4
@dmfe_reuse_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.36, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmfe_reuse_skb\00", [17 x i8] zeroinitializer }, align 32
@dmfe_reuse_skb._entry_ptr = internal global ptr @dmfe_reuse_skb._entry, section ".printk_index", align 4
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SK Buffer reuse method error\00", [35 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dmfe_init_dm910x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.40, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmfe_init_dm910x\00", [47 x i8] zeroinitializer }, align 32
@dmfe_init_dm910x._entry_ptr = internal global ptr @dmfe_init_dm910x._entry, section ".printk_index", align 4
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmfe_init_dm910x()\00", [45 x i8] zeroinitializer }, align 32
@dmfe_media_mode = internal global { i8, [31 x i8] } { i8 8, [31 x i8] zeroinitializer }, align 32
@dmfe_parse_srom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.42, ptr @.str.2, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmfe_parse_srom\00", [16 x i8] zeroinitializer }, align 32
@dmfe_parse_srom._entry_ptr = internal global ptr @dmfe_parse_srom._entry, section ".printk_index", align 4
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmfe_parse_srom() \00", [45 x i8] zeroinitializer }, align 32
@dmfe_descriptor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmfe_descriptor_init\00", [43 x i8] zeroinitializer }, align 32
@dmfe_descriptor_init._entry_ptr = internal global ptr @dmfe_descriptor_init._entry, section ".printk_index", align 4
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmfe_descriptor_init()\00", [41 x i8] zeroinitializer }, align 32
@send_filter_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_filter_frame\00", [46 x i8] zeroinitializer }, align 32
@send_filter_frame._entry_ptr = internal global ptr @send_filter_frame._entry, section ".printk_index", align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_filter_frame()\00", [44 x i8] zeroinitializer }, align 32
@dmfe_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmfe_timer\00", [21 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr = internal global ptr @dmfe_timer._entry, section ".printk_index", align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmfe_timer()\00", [19 x i8] zeroinitializer }, align 32
@dmfe_timer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.2, i32 1169, ptr @.str.52, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tx timeout - resetting\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.53 = internal global ptr @dmfe_timer._entry.50, section ".printk_index", align 4
@dmfe_timer._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.55 = internal global ptr @dmfe_timer._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dynamic Reset device\00", [43 x i8] zeroinitializer }, align 32
@dmfe_timer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.58 = internal global ptr @dmfe_timer._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PHY and chip report different link status\00", [54 x i8] zeroinitializer }, align 32
@dmfe_timer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.61 = internal global ptr @dmfe_timer._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link Failed\00", [20 x i8] zeroinitializer }, align 32
@dmfe_timer._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.64 = internal global ptr @dmfe_timer._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Link link OK\00", [19 x i8] zeroinitializer }, align 32
@dmfe_timer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.48, ptr @.str.2, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dmfe: Change Speed to %sMhz %s duplex\0A\00", [55 x i8] zeroinitializer }, align 32
@dmfe_timer._entry_ptr.68 = internal global ptr @dmfe_timer._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@dmfe_dynamic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.73, ptr @.str.2, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmfe_dynamic_reset\00", [45 x i8] zeroinitializer }, align 32
@dmfe_dynamic_reset._entry_ptr = internal global ptr @dmfe_dynamic_reset._entry, section ".printk_index", align 4
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmfe_dynamic_reset()\00", [43 x i8] zeroinitializer }, align 32
@dmfe_free_rxbuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dmfe_free_rxbuffer\00", [45 x i8] zeroinitializer }, align 32
@dmfe_free_rxbuffer._entry_ptr = internal global ptr @dmfe_free_rxbuffer._entry, section ".printk_index", align 4
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmfe_free_rxbuffer()\00", [43 x i8] zeroinitializer }, align 32
@dmfe_sense_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.77, ptr @.str.2, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmfe_sense_speed\00", [47 x i8] zeroinitializer }, align 32
@dmfe_sense_speed._entry_ptr = internal global ptr @dmfe_sense_speed._entry, section ".printk_index", align 4
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link Failed :\00", [18 x i8] zeroinitializer }, align 32
@dmfe_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.79, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmfe_stop\00", [22 x i8] zeroinitializer }, align 32
@dmfe_stop._entry_ptr = internal global ptr @dmfe_stop._entry, section ".printk_index", align 4
@dmfe_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.80, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmfe_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@dmfe_start_xmit._entry_ptr = internal global ptr @dmfe_start_xmit._entry, section ".printk_index", align 4
@dmfe_start_xmit._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013dmfe: big packet = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dmfe_start_xmit._entry_ptr.83 = internal global ptr @dmfe_start_xmit._entry.81, section ".printk_index", align 4
@dmfe_start_xmit._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013dmfe: No Tx resource %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@dmfe_start_xmit._entry_ptr.86 = internal global ptr @dmfe_start_xmit._entry.84, section ".printk_index", align 4
@dmfe_set_filter_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.87, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmfe_set_filter_mode\00", [43 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry_ptr = internal global ptr @dmfe_set_filter_mode._entry, section ".printk_index", align 4
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmfe_set_filter_mode()\00", [41 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.87, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry_ptr.90 = internal global ptr @dmfe_set_filter_mode._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Enable PROM Mode\00", [47 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.87, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry_ptr.93 = internal global ptr @dmfe_set_filter_mode._entry.92, section ".printk_index", align 4
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pass all multicast address\00", [37 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.87, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_set_filter_mode._entry_ptr.96 = internal global ptr @dmfe_set_filter_mode._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set multicast address\00", [42 x i8] zeroinitializer }, align 32
@dmfe_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.98, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmfe_remove_one\00", [16 x i8] zeroinitializer }, align 32
@dmfe_remove_one._entry_ptr = internal global ptr @dmfe_remove_one._entry, section ".printk_index", align 4
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dmfe_remove_one()\00", [46 x i8] zeroinitializer }, align 32
@dmfe_remove_one._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.98, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dmfe_remove_one._entry_ptr.101 = internal global ptr @dmfe_remove_one._entry.100, section ".printk_index", align 4
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmfe_remove_one() exit\00", [41 x i8] zeroinitializer }, align 32
@dmfe_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.103, ptr @.str.2, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmfe_init_module\00", [47 x i8] zeroinitializer }, align 32
@dmfe_init_module._entry_ptr = internal global ptr @dmfe_init_module._entry, section ".printk_index", align 4
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_module() \00", [17 x i8] zeroinitializer }, align 32
@switch.table.dmfe_init_dm910x = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 2308, i16 2560, i16 1286, i16 1538], [24 x i8] zeroinitializer }, align 32
@switch.table.dmfe_timer = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\04\00\01\00\00\00\05", [24 x i8] zeroinitializer }, align 32
@switch.table.dmfe_timer.105 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 8192, i16 0, i16 0, i16 256, i16 8448], [22 x i8] zeroinitializer }, align 32
@switch.table.dmfe_timer.106 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2560, i32 2304, i32 1536, i32 1280], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 4, i64 5, i64 16]
@__sancov_gen_cov_switch_values.107 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 8, i64 256, i64 512]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 47360, i64 47361]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 2432832130, i64 2435977858]
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 286, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 288, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"cr6set\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 287, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [8 x i8] c"chkmode\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 289, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [10 x i8] c"HPNA_mode\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 290, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"HPNA_rx_cmd\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 291, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"HPNA_tx_cmd\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 292, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"HPNA_NoiseFloor\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 293, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [8 x i8] c"SF_mode\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 294, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"dmfe_debug\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 281, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2213, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"dmfe_driver\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2131, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2132, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"dmfe_pci_tbl\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2078, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"dmfe_pm_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2129, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 359, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 384, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 395, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 401, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 416, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 336, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1104, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 463, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 485, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 549, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"dmfe_cr6_user_set\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 283, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 585, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 786, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 804, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 967, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1020, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1342, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 326, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 605, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [16 x i8] c"dmfe_media_mode\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 282, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1906, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1362, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1483, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1127, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1169, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1174, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1217, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1223, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1241, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1246, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1279, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1314, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1652, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 742, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 674, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 678, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 691, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1041, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1045, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1053, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 1060, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 518, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 534, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.482 = private constant [41 x i8] c"../drivers/net/ethernet/dec/tulip/dmfe.c\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 2168, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [30 x i8] c"switch.table.dmfe_init_dm910x\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [24 x i8] c"switch.table.dmfe_timer\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [28 x i8] c"switch.table.dmfe_timer.105\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [28 x i8] c"switch.table.dmfe_timer.106\00", align 1
@llvm.compiler.used = appending global [194 x ptr] [ptr @__UNIQUE_ID_HPNA_NoiseFloortype356, ptr @__UNIQUE_ID_HPNA_modetype353, ptr @__UNIQUE_ID_HPNA_rx_cmdtype354, ptr @__UNIQUE_ID_HPNA_tx_cmdtype355, ptr @__UNIQUE_ID_SF_mode360, ptr @__UNIQUE_ID_SF_modetype357, ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_chkmodetype352, ptr @__UNIQUE_ID_cr6settype351, ptr @__UNIQUE_ID_debug358, ptr @__UNIQUE_ID_debugtype349, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_mode359, ptr @__UNIQUE_ID_modetype350, ptr @__exitcall_dmfe_cleanup_module, ptr @__initcall__kmod_dmfe__361_2217_dmfe_init_module6, ptr @__param_HPNA_NoiseFloor, ptr @__param_HPNA_mode, ptr @__param_HPNA_rx_cmd, ptr @__param_HPNA_tx_cmd, ptr @__param_SF_mode, ptr @__param_chkmode, ptr @__param_cr6set, ptr @__param_debug, ptr @__param_mode, ptr @dmfe_cleanup_module, ptr @dmfe_cleanup_module._entry, ptr @dmfe_cleanup_module._entry_ptr, ptr @dmfe_descriptor_init._entry, ptr @dmfe_descriptor_init._entry_ptr, ptr @dmfe_dynamic_reset._entry, ptr @dmfe_dynamic_reset._entry_ptr, ptr @dmfe_free_rxbuffer._entry, ptr @dmfe_free_rxbuffer._entry_ptr, ptr @dmfe_init_dm910x._entry, ptr @dmfe_init_dm910x._entry_ptr, ptr @dmfe_init_module._entry, ptr @dmfe_init_module._entry_ptr, ptr @dmfe_init_one._entry, ptr @dmfe_init_one._entry.10, ptr @dmfe_init_one._entry.13, ptr @dmfe_init_one._entry.16, ptr @dmfe_init_one._entry.20, ptr @dmfe_init_one._entry.7, ptr @dmfe_init_one._entry_ptr, ptr @dmfe_init_one._entry_ptr.12, ptr @dmfe_init_one._entry_ptr.15, ptr @dmfe_init_one._entry_ptr.18, ptr @dmfe_init_one._entry_ptr.24, ptr @dmfe_init_one._entry_ptr.9, ptr @dmfe_interrupt._entry, ptr @dmfe_interrupt._entry.29, ptr @dmfe_interrupt._entry_ptr, ptr @dmfe_interrupt._entry_ptr.30, ptr @dmfe_open._entry, ptr @dmfe_open._entry_ptr, ptr @dmfe_parse_srom._entry, ptr @dmfe_parse_srom._entry_ptr, ptr @dmfe_remove_one._entry, ptr @dmfe_remove_one._entry.100, ptr @dmfe_remove_one._entry_ptr, ptr @dmfe_remove_one._entry_ptr.101, ptr @dmfe_reuse_skb._entry, ptr @dmfe_reuse_skb._entry_ptr, ptr @dmfe_rx_packet._entry, ptr @dmfe_rx_packet._entry.34, ptr @dmfe_rx_packet._entry_ptr, ptr @dmfe_rx_packet._entry_ptr.35, ptr @dmfe_sense_speed._entry, ptr @dmfe_sense_speed._entry_ptr, ptr @dmfe_set_filter_mode._entry, ptr @dmfe_set_filter_mode._entry.89, ptr @dmfe_set_filter_mode._entry.92, ptr @dmfe_set_filter_mode._entry.95, ptr @dmfe_set_filter_mode._entry_ptr, ptr @dmfe_set_filter_mode._entry_ptr.90, ptr @dmfe_set_filter_mode._entry_ptr.93, ptr @dmfe_set_filter_mode._entry_ptr.96, ptr @dmfe_start_xmit._entry, ptr @dmfe_start_xmit._entry.81, ptr @dmfe_start_xmit._entry.84, ptr @dmfe_start_xmit._entry_ptr, ptr @dmfe_start_xmit._entry_ptr.83, ptr @dmfe_start_xmit._entry_ptr.86, ptr @dmfe_stop._entry, ptr @dmfe_stop._entry_ptr, ptr @dmfe_timer._entry, ptr @dmfe_timer._entry.50, ptr @dmfe_timer._entry.54, ptr @dmfe_timer._entry.57, ptr @dmfe_timer._entry.60, ptr @dmfe_timer._entry.63, ptr @dmfe_timer._entry.66, ptr @dmfe_timer._entry_ptr, ptr @dmfe_timer._entry_ptr.53, ptr @dmfe_timer._entry_ptr.55, ptr @dmfe_timer._entry_ptr.58, ptr @dmfe_timer._entry_ptr.61, ptr @dmfe_timer._entry_ptr.64, ptr @dmfe_timer._entry_ptr.68, ptr @send_filter_frame._entry, ptr @send_filter_frame._entry_ptr, ptr @debug, ptr @mode, ptr @cr6set, ptr @chkmode, ptr @HPNA_mode, ptr @HPNA_rx_cmd, ptr @HPNA_tx_cmd, ptr @HPNA_NoiseFloor, ptr @SF_mode, ptr @dmfe_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dmfe_driver, ptr @.str.4, ptr @dmfe_pci_tbl, ptr @dmfe_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @netdev_ops, ptr @netdev_ethtool_ops, ptr @dmfe_init_one.__key, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @dmfe_cr6_user_set, ptr @dmfe_open.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @dmfe_media_mode, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @switch.table.dmfe_init_dm910x, ptr @switch.table.dmfe_timer, ptr @switch.table.dmfe_timer.105, ptr @switch.table.dmfe_timer.106], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr6set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chkmode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HPNA_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HPNA_rx_cmd to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HPNA_tx_cmd to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HPNA_NoiseFloor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SF_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_one._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_cr6_user_set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_interrupt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_rx_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_rx_packet._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_reuse_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_dm910x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_media_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_parse_srom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_descriptor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_filter_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_timer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_dynamic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_free_rxbuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_sense_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_start_xmit._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_start_xmit._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_set_filter_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_set_filter_mode._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_set_filter_mode._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_set_filter_mode._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_remove_one._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmfe_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmfe_init_dm910x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmfe_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmfe_timer.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dmfe_timer.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dmfe_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @debug, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %1) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @dmfe_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @debug, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.104, i32 noundef %1) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %do.end3.if.end6_crit_edge, label %if.then5

do.end3.if.end6_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %2, ptr @dmfe_debug, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end3.if.end6_crit_edge
  %3 = load i32, ptr @cr6set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %3, ptr @dmfe_cr6_user_set, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %4 = load i8, ptr @mode, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end9.sw.epilog_crit_edge [
    i8 0, label %if.end9.sw.bb_crit_edge
    i8 1, label %if.end9.sw.bb_crit_edge36
    i8 4, label %if.end9.sw.bb_crit_edge37
    i8 5, label %if.end9.sw.bb_crit_edge38
    i8 16, label %if.end9.sw.bb_crit_edge39
  ]

if.end9.sw.bb_crit_edge39:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.bb_crit_edge38:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.bb_crit_edge37:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.bb_crit_edge36:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge36, %if.end9.sw.bb_crit_edge37, %if.end9.sw.bb_crit_edge38, %if.end9.sw.bb_crit_edge39
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end9.sw.epilog_crit_edge
  %storemerge = phi i8 [ %4, %sw.bb ], [ 8, %if.end9.sw.epilog_crit_edge ]
  store i8 %storemerge, ptr @dmfe_media_mode, align 1
  %6 = load i8, ptr @HPNA_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp = icmp ugt i8 %6, 4
  br i1 %cmp, label %if.then12, label %sw.epilog.if.end13_crit_edge

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @HPNA_mode, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %sw.epilog.if.end13_crit_edge
  %7 = load i8, ptr @HPNA_rx_cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp15 = icmp ugt i8 %7, 1
  br i1 %cmp15, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @HPNA_rx_cmd, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %8 = load i8, ptr @HPNA_tx_cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp20 = icmp ugt i8 %8, 1
  br i1 %cmp20, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @HPNA_tx_cmd, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %9 = load i8, ptr @HPNA_NoiseFloor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %9)
  %cmp25 = icmp ugt i8 %9, 15
  br i1 %cmp25, label %if.then27, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @HPNA_NoiseFloor, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %call29 = tail call i32 @__pci_register_driver(ptr noundef nonnull @dmfe_driver, ptr noundef null, ptr noundef nonnull @.str.4) #10
  %10 = tail call i32 @llvm.smin.i32(i32 %call29, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #3 align 64 {
entry:
  %pci_pmr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_pmr) #10
  %0 = ptrtoint ptr %pci_pmr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pci_pmr, align 4, !annotation !286
  %1 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 0) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 392, i32 noundef 1, i32 noundef 1) #10
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev8 = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev7, ptr %parent, align 8
  %call10 = tail call i32 @dma_set_mask(ptr noundef %dev7, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %err_out_free

if.end18:                                         ; preds = %if.end6
  %call19 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_out_free_crit_edge

if.end18.err_out_free_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free

if.end22:                                         ; preds = %if.end18
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool23.not = icmp eq i32 %4, 0
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %err_out_disable

if.end30:                                         ; preds = %if.end22
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp33 = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp33, i32 0, i32 %add
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv = zext i16 %8 to i32
  %shl = shl nuw i32 %conv, 16
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vendor, align 8
  %conv40 = zext i16 %10 to i32
  %or = or i32 %shl, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %or)
  %cmp41 = icmp eq i32 %or, -1858989438
  br i1 %cmp41, label %if.end30.lor.end_crit_edge, label %lor.rhs

if.end30.lor.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %12)
  %cmp44 = icmp ugt i8 %12, 47
  %phi.sel = select i1 %cmp44, i32 256, i32 128
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end30.lor.end_crit_edge
  %13 = phi i32 [ 256, %if.end30.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %13)
  %cmp47 = icmp ult i32 %cond, %13
  br i1 %cmp47, label %do.end52, label %if.end55

do.end52:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %err_out_disable

if.end55:                                         ; preds = %lor.end
  %call56 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %err_out_disable

if.end64:                                         ; preds = %if.end55
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %desc_pool_dma_ptr = getelementptr i8, ptr %call4, i32 2396
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev7, i32 noundef 1568, ptr noundef %desc_pool_dma_ptr, i32 noundef 3264, i32 noundef 0) #10
  %desc_pool_ptr = getelementptr i8, ptr %call4, i32 2416
  %14 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %desc_pool_ptr, align 4
  %tobool69.not = icmp eq ptr %call.i, null
  br i1 %tobool69.not, label %if.end64.err_out_res_crit_edge, label %if.end71

if.end64.err_out_res_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_res

if.end71:                                         ; preds = %if.end64
  %buf_pool_dma_ptr = getelementptr i8, ptr %call4, i32 2388
  %call.i205 = tail call ptr @dma_alloc_attrs(ptr noundef %dev7, i32 noundef 24580, ptr noundef %buf_pool_dma_ptr, i32 noundef 3264, i32 noundef 0) #10
  %buf_pool_ptr = getelementptr i8, ptr %call4, i32 2408
  %15 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i205, ptr %buf_pool_ptr, align 4
  %tobool75.not = icmp eq ptr %call.i205, null
  br i1 %tobool75.not, label %if.end71.err_out_free_desc_crit_edge, label %if.end77

if.end71.err_out_free_desc_crit_edge:             ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free_desc

if.end77:                                         ; preds = %if.end71
  %16 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_pool_ptr, align 4
  %first_tx_desc = getelementptr i8, ptr %call4, i32 2420
  %18 = ptrtoint ptr %first_tx_desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %first_tx_desc, align 4
  %19 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_pool_dma_ptr, align 4
  %first_tx_desc_dma = getelementptr i8, ptr %call4, i32 2400
  %21 = ptrtoint ptr %first_tx_desc_dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %first_tx_desc_dma, align 4
  %buf_pool_start = getelementptr i8, ptr %call4, i32 2412
  %22 = ptrtoint ptr %buf_pool_start to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i205, ptr %buf_pool_start, align 4
  %23 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_pool_dma_ptr, align 4
  %buf_pool_dma_start = getelementptr i8, ptr %call4, i32 2392
  %25 = ptrtoint ptr %buf_pool_dma_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %buf_pool_dma_start, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr.i, align 4
  %call82 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #10
  %ioaddr = getelementptr i8, ptr %call4, i32 2364
  %29 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call82, ptr %ioaddr, align 4
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %if.end77.err_out_free_buf_crit_edge, label %if.end86

if.end77.err_out_free_buf_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out_free_buf

if.end86:                                         ; preds = %if.end77
  %revision87 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %30 = ptrtoint ptr %revision87 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %revision87, align 4
  %chip_revision = getelementptr i8, ptr %call4, i32 2308
  %32 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %chip_revision, align 4
  %wol_mode = getelementptr i8, ptr %call4, i32 2478
  %33 = ptrtoint ptr %wol_mode to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %wol_mode, align 2
  %pdev88 = getelementptr i8, ptr %call4, i32 2316
  %34 = ptrtoint ptr %pdev88 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdev, ptr %pdev88, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %36 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %37 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  tail call void @netif_carrier_off(ptr noundef nonnull %call4) #10
  %lock = getelementptr i8, ptr %call4, i32 2320
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @dmfe_init_one.__key, i16 noundef signext 3) #10
  %call93 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %pci_pmr) #10
  %38 = ptrtoint ptr %pci_pmr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pci_pmr, align 4
  %and = and i32 %39, 458752
  store i32 %and, ptr %pci_pmr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and)
  %cmp94 = icmp eq i32 %and, 65536
  br i1 %cmp94, label %land.lhs.true, label %if.end86.if.else_crit_edge

if.end86.if.else_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end86
  %40 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %41)
  %cmp98 = icmp eq i8 %41, 49
  br i1 %cmp98, label %land.lhs.true.if.end102_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end86.if.else_crit_edge
  br label %if.end102

if.end102:                                        ; preds = %if.else, %land.lhs.true.if.end102_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end102_crit_edge ]
  %chip_type101 = getelementptr i8, ptr %call4, i32 2471
  %42 = ptrtoint ptr %chip_type101 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.sink, ptr %chip_type101, align 1
  %srom = getelementptr i8, ptr %call4, i32 2568
  br label %for.body

for.body:                                         ; preds = %read_srom_word.exit.for.body_crit_edge, %if.end102
  %i.0207 = phi i32 [ 0, %if.end102 ], [ %inc, %read_srom_word.exit.for.body_crit_edge ]
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i206 = getelementptr i8, ptr %44, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 4718592) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 21495808) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 88604672) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 122159104) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 88604672) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 88604672) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 122159104) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 88604672) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 21495808) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 55050240) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 21495808) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 1073740) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.040.i = phi i32 [ 5, %for.body ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.040.i
  %and.i = and i32 %shl.i, %i.0207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = select i1 %tobool.not.i, i16 0, i16 4
  %conv2.i = zext i16 %conv.i to i32
  %or.i.i = or i32 %conv2.i, 18433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  %56 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %56) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 1073740) #10
  %or.1.i.i = or i32 %conv2.i, 18435
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  %58 = call i32 @llvm.bswap.i32(i32 %or.1.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %58) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 1073740) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %56) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 1073740) #10
  %dec.i = add nsw i32 %i.040.i, -1
  %cmp.not.i = icmp eq i32 %i.040.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 21495808) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 1073740) #10
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.end.i
  %i.142.i = phi i32 [ 16, %for.end.i ], [ %dec18.i, %for.body7.i.for.body7.i_crit_edge ]
  %srom_data.141.i = phi i16 [ %conv.i, %for.end.i ], [ %conv15.i, %for.body7.i.for.body7.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 55050240) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 1073740) #10
  %conv9.i = zext i16 %srom_data.141.i to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 1
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #10, !srcloc !289
  %64 = lshr i32 %63, 27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %and12.lobit.i = and i32 %64, 1
  %or.i = or i32 %and12.lobit.i, %shl10.i
  %conv15.i = trunc i32 %or.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 21495808) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %65(i32 noundef 1073740) #10
  %dec18.i = add nsw i32 %i.142.i, -1
  %cmp5.i = icmp ugt i32 %i.142.i, 1
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %read_srom_word.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

read_srom_word.exit:                              ; preds = %for.body7.i
  %conv15.i.le = trunc i32 %or.i to i16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 4718592) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 1073740) #10
  %67 = call i16 @llvm.bswap.i16(i16 %conv15.i.le)
  %arrayidx107 = getelementptr i16, ptr %srom, i32 %i.0207
  %68 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %arrayidx107, align 2
  %inc = add nuw nsw i32 %i.0207, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %read_srom_word.exit.for.body_crit_edge

read_srom_word.exit.for.body_crit_edge:           ; preds = %read_srom_word.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %read_srom_word.exit
  %arrayidx109 = getelementptr i8, ptr %call4, i32 2588
  call void @dev_addr_mod(ptr noundef %call4, i32 noundef 0, ptr noundef %arrayidx109, i32 noundef 6) #10
  %call110 = call i32 @register_netdev(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.end116, label %err_out_unmap

do.end116:                                        ; preds = %for.end
  %69 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %driver_data, align 4
  %shr = lshr i32 %70, 16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %71 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end116.pci_name.exit_crit_edge

do.end116.pci_name.exit_crit_edge:                ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev7, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end116.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %74, %if.end.i.i ], [ %72, %do.end116.pci_name.exit_crit_edge ]
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 86
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.21, i32 noundef %shr, ptr noundef %retval.0.i.i, ptr noundef %76, i32 noundef %78) #13
  call void @pci_set_master(ptr noundef %pdev) #10
  br label %cleanup

err_out_unmap:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %80) #10
  br label %err_out_free_buf

err_out_free_buf:                                 ; preds = %err_out_unmap, %if.end77.err_out_free_buf_crit_edge
  %err.0 = phi i32 [ %call110, %err_out_unmap ], [ -12, %if.end77.err_out_free_buf_crit_edge ]
  %81 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buf_pool_ptr, align 4
  %83 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buf_pool_dma_ptr, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 24580, ptr noundef %82, i32 noundef %84, i32 noundef 0) #10
  br label %err_out_free_desc

err_out_free_desc:                                ; preds = %err_out_free_buf, %if.end71.err_out_free_desc_crit_edge
  %err.1 = phi i32 [ %err.0, %err_out_free_buf ], [ -12, %if.end71.err_out_free_desc_crit_edge ]
  %85 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %desc_pool_ptr, align 4
  %87 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %desc_pool_dma_ptr, align 4
  call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 1568, ptr noundef %86, i32 noundef %88, i32 noundef 0) #10
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_free_desc, %if.end64.err_out_res_crit_edge
  %err.2 = phi i32 [ %err.1, %err_out_free_desc ], [ -12, %if.end64.err_out_res_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_res, %do.end61, %do.end52, %do.end27
  %err.3 = phi i32 [ -19, %do.end52 ], [ -19, %do.end61 ], [ %err.2, %err_out_res ], [ -19, %do.end27 ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_disable, %if.end18.err_out_free_crit_edge, %do.end15
  %err.4 = phi i32 [ -19, %do.end15 ], [ %call19, %if.end18.err_out_free_crit_edge ], [ %err.3, %err_out_disable ]
  call void @free_netdev(ptr noundef nonnull %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %pci_name.exit, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_out_free ], [ 0, %pci_name.exit ], [ -12, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_pmr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmfe_remove_one(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end5.do.body14_crit_edge, label %if.then7

do.end5.do.body14_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #10
  %pdev8 = getelementptr i8, ptr %1, i32 2316
  %3 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev8, align 4
  %ioaddr = getelementptr i8, ptr %1, i32 2364
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 4
  tail call void @pci_iounmap(ptr noundef %4, ptr noundef %6) #10
  %7 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev8, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %desc_pool_ptr = getelementptr i8, ptr %1, i32 2416
  %9 = ptrtoint ptr %desc_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_pool_ptr, align 4
  %desc_pool_dma_ptr = getelementptr i8, ptr %1, i32 2396
  %11 = ptrtoint ptr %desc_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_pool_dma_ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 1568, ptr noundef %10, i32 noundef %12, i32 noundef 0) #10
  %13 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev8, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %buf_pool_ptr = getelementptr i8, ptr %1, i32 2408
  %15 = ptrtoint ptr %buf_pool_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf_pool_ptr, align 4
  %buf_pool_dma_ptr = getelementptr i8, ptr %1, i32 2388
  %17 = ptrtoint ptr %buf_pool_dma_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_pool_dma_ptr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12, i32 noundef 24580, ptr noundef %16, i32 noundef %18, i32 noundef 0) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @free_netdev(ptr noundef nonnull %1) #10
  br label %do.body14

do.body14:                                        ; preds = %if.then7, %do.end5.do.body14_crit_edge
  %19 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %do.body14.do.end24_crit_edge, label %do.end19

do.body14.do.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.102, i32 noundef 0) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.body14.do.end24_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %4 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @dmfe_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end5
  %5 = load i32, ptr @dmfe_cr6_user_set, align 4
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %6 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_packet_cnt, align 4
  %tx_queue_cnt = getelementptr i8, ptr %dev, i32 2448
  %7 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx_queue_cnt, align 4
  %rx_avail_cnt = getelementptr i8, ptr %dev, i32 2452
  %8 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_avail_cnt, align 4
  %wait_reset = getelementptr i8, ptr %dev, i32 2475
  %9 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %wait_reset, align 1
  %first_in_callback = getelementptr i8, ptr %dev, i32 2477
  %10 = ptrtoint ptr %first_in_callback to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %first_in_callback, align 1
  %NIC_capability = getelementptr i8, ptr %dev, i32 2466
  %11 = ptrtoint ptr %NIC_capability to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 15, ptr %NIC_capability, align 2
  %PHY_reg4 = getelementptr i8, ptr %dev, i32 2468
  %12 = ptrtoint ptr %PHY_reg4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 480, ptr %PHY_reg4, align 4
  %13 = load i8, ptr @chkmode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %lor.lhs.false

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

lor.lhs.false:                                    ; preds = %if.end9
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %15)
  %cmp = icmp eq i32 %15, -1858989438
  br i1 %cmp, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %chip_revision = getelementptr i8, ptr %dev, i32 2308
  %16 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %17)
  %cmp12 = icmp ugt i8 %17, 47
  br i1 %cmp12, label %lor.lhs.false11.if.end21_crit_edge, label %if.else

lor.lhs.false11.if.end21_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %if.else, %lor.lhs.false11.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %.sink55 = phi i32 [ 2621440, %if.else ], [ 540672, %lor.lhs.false11.if.end21_crit_edge ], [ 540672, %lor.lhs.false.if.end21_crit_edge ], [ 540672, %if.end9.if.end21_crit_edge ]
  %.sink54 = phi i32 [ 0, %if.else ], [ 14680064, %lor.lhs.false11.if.end21_crit_edge ], [ 14680064, %lor.lhs.false.if.end21_crit_edge ], [ 14680064, %if.end9.if.end21_crit_edge ]
  %.sink = phi i8 [ 1, %if.else ], [ 4, %lor.lhs.false11.if.end21_crit_edge ], [ 4, %lor.lhs.false.if.end21_crit_edge ], [ 4, %if.end9.if.end21_crit_edge ]
  %or18 = or i32 %5, %.sink55
  %18 = ptrtoint ptr %cr6_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or18, ptr %cr6_data, align 4
  %cr0_data19 = getelementptr i8, ptr %dev, i32 2368
  %19 = ptrtoint ptr %cr0_data19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink54, ptr %cr0_data19, align 4
  %dm910x_chk_mode20 = getelementptr i8, ptr %dev, i32 2476
  %20 = ptrtoint ptr %dm910x_chk_mode20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %dm910x_chk_mode20, align 4
  tail call fastcc void @dmfe_init_dm910x(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %22) #10
  %timer = getelementptr i8, ptr %dev, i32 2480
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dmfe_timer, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @dmfe_open.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %23, 300
  %expires = getelementptr i8, ptr %dev, i32 2488
  %24 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add25, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end5.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.79, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %timer = getelementptr i8, ptr %dev, i32 2480
  %call6 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #10
  %phy_addr = getelementptr i8, ptr %dev, i32 2474
  %6 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %phy_addr, align 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %1, i8 noundef zeroext %7, i8 noundef zeroext 0, i16 noundef zeroext -32768, i32 noundef %9)
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #10
  %14 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end5.do.end2.i_crit_edge, label %do.end.i

do.end5.do.end2.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, i32 noundef 0) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end5.do.end2.i_crit_edge
  %rx_avail_cnt.i = getelementptr i8, ptr %dev, i32 2452
  %15 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_avail_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not11.i = icmp eq i32 %16, 0
  br i1 %tobool3.not11.i, label %do.end2.i.dmfe_free_rxbuffer.exit_crit_edge, label %while.body.lr.ph.i

do.end2.i.dmfe_free_rxbuffer.exit_crit_edge:      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_free_rxbuffer.exit

while.body.lr.ph.i:                               ; preds = %do.end2.i
  %rx_ready_ptr.i = getelementptr i8, ptr %dev, i32 2440
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_ready_ptr.i, align 4
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call void @consume_skb(ptr noundef %20) #10
  %21 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ready_ptr.i, align 4
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_rx_desc.i, align 4
  store ptr %24, ptr %rx_ready_ptr.i, align 4
  %25 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_avail_cnt.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %rx_avail_cnt.i, align 4
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.dmfe_free_rxbuffer.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.dmfe_free_rxbuffer.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_free_rxbuffer.exit

dmfe_free_rxbuffer.exit:                          ; preds = %while.body.i.dmfe_free_rxbuffer.exit_crit_edge, %do.end2.i.dmfe_free_rxbuffer.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.80, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %4)
  %cmp = icmp ugt i32 %4, 1514
  br i1 %cmp, label %do.end9, label %if.end14

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %conv12 = and i32 %4, 65535
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv12) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end14:                                         ; preds = %do.end5
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tx_queue_cnt = getelementptr i8, ptr %dev, i32 2448
  %7 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp26 = icmp ugt i32 %8, 13
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  %9 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_queue_cnt, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %10) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !288
  %tx_insert_ptr = getelementptr i8, ptr %dev, i32 2424
  %11 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_insert_ptr, align 4
  %tx_buf_ptr = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %tx_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_buf_ptr, align 16
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = call ptr @memcpy(ptr %14, ptr %18, i32 %16)
  %20 = load i32, ptr %len, align 4
  %or = or i32 %20, -520093696
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %tdes1 = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %tdes1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tdes1, align 4
  %next_tx_desc = getelementptr inbounds %struct.tx_desc, ptr %12, i32 0, i32 5
  %23 = ptrtoint ptr %next_tx_desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_tx_desc, align 4
  %25 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %tx_insert_ptr, align 4
  %26 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool41.not = icmp eq i32 %27, 0
  br i1 %tobool41.not, label %land.lhs.true, label %if.end36.if.else_crit_edge

if.end36.if.else_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end36
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %28 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp42 = icmp eq i32 %29, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then44:                                        ; preds = %land.lhs.true
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %12, align 32
  %31 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_packet_cnt, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tx_packet_cnt, align 4
  %add.ptr46 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777216) #10, !srcloc !288
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 12
  %36 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp.not.i.i = icmp eq i32 %37, %35
  br i1 %cmp.not.i.i, label %if.then44.if.end50_crit_edge, label %do.body5.i.i

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

do.body5.i.i:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 %35, ptr %trans_start.i.i, align 16
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end36.if.else_crit_edge
  %inc48 = add i32 %27, 1
  %39 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc48, ptr %tx_queue_cnt, align 4
  %add.ptr49 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #10, !srcloc !288
  br label %if.end50

if.end50:                                         ; preds = %if.else, %do.body5.i.i, %if.then44.if.end50_crit_edge
  %40 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %41)
  %cmp52 = icmp ult i32 %41, 14
  br i1 %cmp52, label %if.then54, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %43) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end50.if.end55_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  %cr7_data = getelementptr i8, ptr %dev, i32 2380
  %44 = ptrtoint ptr %cr7_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cr7_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %46) #10, !srcloc !288
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then28, %do.end9
  %retval.0 = phi i32 [ 0, %do.end9 ], [ 16, %if.then28 ], [ 0, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmfe_set_filter_mode(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.88, i32 noundef 0) #13
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2320
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %flags14 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags14, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end30, label %do.body17

do.body17:                                        ; preds = %do.body6
  %5 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  br i1 %tobool18.not, label %do.body17.do.end27_crit_edge, label %do.end22

do.body17.do.end27_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.91, i32 noundef 0) #13
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body17.do.end27_crit_edge
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %6 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr6_data, align 4
  %or = or i32 %7, 72
  store i32 %or, ptr %cr6_data, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2364
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %and.i = and i32 %or, -8195
  %add.ptr.i90 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %10) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %12) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #10
  br label %cleanup

if.end30:                                         ; preds = %do.body6
  %and32 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp ne i32 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp34 = icmp sgt i32 %1, 14
  %or.cond = select i1 %tobool33.not, i1 true, i1 %cmp34
  %14 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool38.not = icmp eq i32 %14, 0
  br i1 %or.cond, label %do.body37, label %do.body54

do.body37:                                        ; preds = %if.end30
  br i1 %tobool38.not, label %do.body37.do.end47_crit_edge, label %do.end42

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end47

do.end42:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.94, i32 noundef %1) #13
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body37.do.end47_crit_edge
  %cr6_data48 = getelementptr i8, ptr %dev, i32 2376
  %15 = ptrtoint ptr %cr6_data48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr6_data48, align 4
  %and49 = and i32 %16, -201
  %or51 = or i32 %and49, 128
  store i32 %or51, ptr %cr6_data48, align 4
  br label %cleanup

do.body54:                                        ; preds = %if.end30
  br i1 %tobool38.not, label %do.body54.do.end64_crit_edge, label %do.end59

do.body54.do.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end64

do.end59:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.97, i32 noundef %1) #13
  br label %do.end64

do.end64:                                         ; preds = %do.end59, %do.body54.do.end64_crit_edge
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %18)
  %cmp65 = icmp eq i32 %18, -1858989438
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dm9132_id_table(ptr noundef %dev)
  br label %cleanup

if.else:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @send_filter_frame(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then67, %do.end47, %do.end27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_dmfe(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #10
  %call2 = tail call i32 @dmfe_interrupt(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev_id, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %do.end

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, i32 noundef 0) #13
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %lock = getelementptr i8, ptr %dev_id, i32 2320
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !289
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %cr5_data = getelementptr i8, ptr %dev_id, i32 2372
  %5 = ptrtoint ptr %cr5_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cr5_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #10, !srcloc !288
  %6 = ptrtoint ptr %cr5_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr5_data, align 4
  %and = and i32 %7, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body7.cleanup_crit_edge, label %if.end22

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %do.body7
  %add.ptr23 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #10, !srcloc !288
  %8 = ptrtoint ptr %cr5_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr5_data, align 4
  %and25 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end41, label %do.body28

do.body28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, i32 noundef %9) #13
  %reset_fatal = getelementptr i8, ptr %dev_id, i32 2560
  %10 = ptrtoint ptr %reset_fatal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_fatal, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %reset_fatal, align 4
  %wait_reset = getelementptr i8, ptr %dev_id, i32 2475
  %12 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %wait_reset, align 1
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  %and43 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %land.lhs.true

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end41
  %rx_avail_cnt = getelementptr i8, ptr %dev_id, i32 2452
  %13 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_avail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool45.not = icmp eq i32 %14, 0
  br i1 %tobool45.not, label %land.lhs.true.if.end47_crit_edge, label %while.body.lr.ph.i

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

while.body.lr.ph.i:                               ; preds = %land.lhs.true
  %rx_ready_ptr.i = getelementptr i8, ptr %dev_id, i32 2440
  %15 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %rxptr.0146.i = load ptr, ptr %rx_ready_ptr.i, align 4
  %interval_rx_cnt.i = getelementptr i8, ptr %dev_id, i32 2456
  %pdev.i = getelementptr i8, ptr %dev_id, i32 2316
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %rx_length_errors.c.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 10
  %cr6_data.i = getelementptr i8, ptr %dev_id, i32 2376
  %dm910x_chk_mode.i = getelementptr i8, ptr %dev_id, i32 2476
  %stats70.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end89.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = phi i32 [ %14, %while.body.lr.ph.i ], [ %72, %if.end89.i.while.body.i_crit_edge ]
  %rxptr.0148.i = phi ptr [ %rxptr.0146.i, %while.body.lr.ph.i ], [ %rxptr.0.i, %if.end89.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %rxptr.0148.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxptr.0148.i, align 32
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool2.not.i = icmp sgt i32 %19, -1
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.dmfe_rx_packet.exit_crit_edge

while.body.i.dmfe_rx_packet.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_rx_packet.exit

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i32 %16, -1
  %20 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i, ptr %rx_avail_cnt, align 4
  %21 = ptrtoint ptr %interval_rx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interval_rx_cnt.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %interval_rx_cnt.i, align 4
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %rdes2.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0148.i, i32 0, i32 2
  %25 = ptrtoint ptr %rdes2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rdes2.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4.i, i32 noundef %27, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  %and5.i = and i32 %19, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and5.i)
  %cmp.not.i = icmp eq i32 %and5.i, 768
  br i1 %cmp.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  %28 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %19) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0148.i, i32 0, i32 4
  %29 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call fastcc void @dmfe_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %30) #10
  br label %if.end89.i

if.else.i:                                        ; preds = %if.end.i
  %shr.i = lshr i32 %19, 16
  %and13.i = and i32 %shr.i, 16383
  %sub.i = add nsw i32 %and13.i, -4
  %and14.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.if.then42.i_crit_edge, label %if.then16.i

if.else.i.if.then42.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then16.i:                                      ; preds = %if.else.i
  %31 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_errors.i, align 8
  %inc17.i = add i32 %32, 1
  store i32 %inc17.i, ptr %rx_errors.i, align 8
  %and18.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.then16.i.if.end23.i_crit_edge, label %if.then20.i

if.then16.i.if.end23.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc22.i = add i32 %34, 1
  store i32 %inc22.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.then16.i.if.end23.i_crit_edge
  %and24.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_crc_errors.i, align 8
  %inc28.i = add i32 %36, 1
  store i32 %inc28.i, ptr %rx_crc_errors.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  %and30.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.lor.lhs.false.i_crit_edge, label %lor.lhs.false.critedge143.i

if.end29.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.critedge143.i:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %rx_length_errors.c.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_length_errors.c.i, align 8
  %inc34.c.i = add i32 %38, 1
  store i32 %inc34.c.i, ptr %rx_length_errors.c.i, align 8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %lor.lhs.false.critedge143.i, %if.end29.i.lor.lhs.false.i_crit_edge
  %39 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cr6_data.i, align 4
  %and39.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp ne i32 %and39.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and13.i)
  %cmp41.i = icmp ugt i32 %and13.i, 10
  %or.cond.i = select i1 %tobool40.not.i, i1 %cmp41.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then42.i_crit_edge, label %do.body76.i

lor.lhs.false.i.if.then42.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42.i

if.then42.i:                                      ; preds = %lor.lhs.false.i.if.then42.i_crit_edge, %if.else.i.if.then42.i_crit_edge
  %rx_skb_ptr43.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0148.i, i32 0, i32 4
  %41 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_skb_ptr43.i, align 16
  %43 = ptrtoint ptr %dm910x_chk_mode.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dm910x_chk_mode.i, align 4
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool45.not.i = icmp eq i8 %45, 0
  br i1 %tobool45.not.i, label %if.then42.i.if.else54.i_crit_edge, label %land.lhs.true46.i

if.then42.i.if.else54.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

land.lhs.true46.i:                                ; preds = %if.then42.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %47, i32 noundef %sub.i) #14
  %spec.select.i.i = xor i32 %call.i.i, -1
  %add.ptr.i101 = getelementptr i8, ptr %47, i32 %sub.i
  %48 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %spec.select.i.i)
  %cmp49.not.i = icmp eq i32 %49, %spec.select.i.i
  br i1 %cmp49.not.i, label %land.lhs.true46.i.if.else54.i_crit_edge, label %if.then51.i

land.lhs.true46.i.if.else54.i_crit_edge:          ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

if.then51.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dmfe_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %42) #10
  %50 = ptrtoint ptr %dm910x_chk_mode.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %dm910x_chk_mode.i, align 4
  br label %if.end89.i

if.else54.i:                                      ; preds = %land.lhs.true46.i.if.else54.i_crit_edge, %if.then42.i.if.else54.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %and13.i)
  %cmp55.i = icmp ult i32 %and13.i, 104
  br i1 %cmp55.i, label %land.lhs.true57.i, label %if.else54.i.if.else65.i_crit_edge

if.else54.i.if.else65.i_crit_edge:                ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65.i

land.lhs.true57.i:                                ; preds = %if.else54.i
  %add.i = add nsw i32 %and13.i, -2
  %call.i144.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef %add.i, i32 noundef 2592) #10
  %cmp59.not.i = icmp eq ptr %call.i144.i, null
  br i1 %cmp59.not.i, label %land.lhs.true57.i.if.else65.i_crit_edge, label %if.then61.i

land.lhs.true57.i.if.else65.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else65.i

if.then61.i:                                      ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i144.i, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i144.i, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %54, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %55 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_skb_ptr43.i, align 16
  %call63.i = tail call ptr @skb_put(ptr noundef nonnull %call.i144.i, i32 noundef %sub.i) #10
  %data.i145.i = getelementptr inbounds %struct.sk_buff, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %data.i145.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i145.i, align 4
  %59 = call ptr @memcpy(ptr %call63.i, ptr %58, i32 %sub.i)
  %60 = ptrtoint ptr %rx_skb_ptr43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb_ptr43.i, align 16
  tail call fastcc void @dmfe_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %61) #10
  br label %if.end67.i

if.else65.i:                                      ; preds = %land.lhs.true57.i.if.else65.i_crit_edge, %if.else54.i.if.else65.i_crit_edge
  %call66.i = tail call ptr @skb_put(ptr noundef %42, i32 noundef %sub.i) #10
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else65.i, %if.then61.i
  %skb.0.i = phi ptr [ %call.i144.i, %if.then61.i ], [ %42, %if.else65.i ]
  %call68.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0.i, ptr noundef %dev_id) #10
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 15, i32 0, i32 18
  %62 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %call68.i, ptr %protocol.i, align 8
  %call69.i = tail call i32 @netif_rx(ptr noundef %skb.0.i) #10
  %63 = ptrtoint ptr %stats70.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stats70.i, align 8
  %inc71.i = add i32 %64, 1
  store i32 %inc71.i, ptr %stats70.i, align 8
  %65 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_bytes.i, align 8
  %add73.i = add i32 %66, %sub.i
  store i32 %add73.i, ptr %rx_bytes.i, align 8
  br label %if.end89.i

do.body76.i:                                      ; preds = %lor.lhs.false.i
  %67 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool77.not.i = icmp eq i32 %67, 0
  br i1 %tobool77.not.i, label %do.body76.i.do.end86.i_crit_edge, label %do.end81.i

do.body76.i.do.end86.i_crit_edge:                 ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

do.end81.i:                                       ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #12
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %19) #13
  br label %do.end86.i

do.end86.i:                                       ; preds = %do.end81.i, %do.body76.i.do.end86.i_crit_edge
  %rx_skb_ptr87.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0148.i, i32 0, i32 4
  %68 = ptrtoint ptr %rx_skb_ptr87.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_skb_ptr87.i, align 16
  tail call fastcc void @dmfe_reuse_skb(ptr noundef %add.ptr.i, ptr noundef %69) #10
  br label %if.end89.i

if.end89.i:                                       ; preds = %do.end86.i, %if.end67.i, %if.then51.i, %do.end12.i
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %rxptr.0148.i, i32 0, i32 5
  %70 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %rxptr.0.i = load ptr, ptr %next_rx_desc.i, align 4
  %71 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_avail_cnt, align 4
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %if.end89.i.dmfe_rx_packet.exit_crit_edge, label %if.end89.i.while.body.i_crit_edge

if.end89.i.while.body.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end89.i.dmfe_rx_packet.exit_crit_edge:         ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_rx_packet.exit

dmfe_rx_packet.exit:                              ; preds = %if.end89.i.dmfe_rx_packet.exit_crit_edge, %while.body.i.dmfe_rx_packet.exit_crit_edge
  %rxptr.0.lcssa.i = phi ptr [ %rxptr.0148.i, %while.body.i.dmfe_rx_packet.exit_crit_edge ], [ %rxptr.0.i, %if.end89.i.dmfe_rx_packet.exit_crit_edge ]
  %73 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %rxptr.0.lcssa.i, ptr %rx_ready_ptr.i, align 4
  br label %if.end47

if.end47:                                         ; preds = %dmfe_rx_packet.exit, %land.lhs.true.if.end47_crit_edge, %if.end41.if.end47_crit_edge
  %rx_avail_cnt48 = getelementptr i8, ptr %dev_id, i32 2452
  %74 = ptrtoint ptr %rx_avail_cnt48 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_avail_cnt48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %75)
  %cmp49 = icmp ult i32 %75, 32
  br i1 %cmp49, label %if.then51, label %if.end47.if.end52_crit_edge

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @allocate_rx_buffer(ptr noundef %dev_id)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end47.if.end52_crit_edge
  %76 = ptrtoint ptr %cr5_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cr5_data, align 4
  %and54 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end57_crit_edge, label %if.then56

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %if.end52
  %78 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr1, align 4
  %tx_remove_ptr.i = getelementptr i8, ptr %dev_id, i32 2428
  %tx_packet_cnt.i = getelementptr i8, ptr %dev_id, i32 2444
  %80 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %txptr.0112.i = load ptr, ptr %tx_remove_ptr.i, align 4
  %81 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_packet_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not113.i = icmp eq i32 %82, 0
  br i1 %tobool.not113.i, label %if.then56.land.lhs.true.i_crit_edge, label %while.body.lr.ph.i104

if.then56.land.lhs.true.i_crit_edge:              ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

while.body.lr.ph.i104:                            ; preds = %if.then56
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_fifo_underrun.i = getelementptr i8, ptr %dev_id, i32 2528
  %cr6_data.i102 = getelementptr i8, ptr %dev_id, i32 2376
  %add.ptr.i.i103 = getelementptr i8, ptr %79, i32 48
  %tx_excessive_collision.i = getelementptr i8, ptr %dev_id, i32 2544
  %tx_late_collision.i = getelementptr i8, ptr %dev_id, i32 2540
  %tx_no_carrier.i = getelementptr i8, ptr %dev_id, i32 2536
  %tx_loss_carrier.i = getelementptr i8, ptr %dev_id, i32 2532
  %tx_jabber_timeout.i = getelementptr i8, ptr %dev_id, i32 2548
  br label %while.body.i105

while.body.i105:                                  ; preds = %if.end54.i.while.body.i105_crit_edge, %while.body.lr.ph.i104
  %83 = phi i32 [ %82, %while.body.lr.ph.i104 ], [ %120, %if.end54.i.while.body.i105_crit_edge ]
  %txptr.0114.i = phi ptr [ %txptr.0112.i, %while.body.lr.ph.i104 ], [ %txptr.0.i, %if.end54.i.while.body.i105_crit_edge ]
  %84 = ptrtoint ptr %txptr.0114.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %txptr.0114.i, align 32
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %tobool3.not.i = icmp sgt i32 %86, -1
  br i1 %tobool3.not.i, label %if.end.i109, label %while.end.i

if.end.i109:                                      ; preds = %while.body.i105
  %dec.i106 = add i32 %83, -1
  %87 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %dec.i106, ptr %tx_packet_cnt.i, align 4
  %88 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_packets.i, align 4
  %inc.i107 = add i32 %89, 1
  store i32 %inc.i107, ptr %tx_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %85)
  %cmp.not.i108 = icmp eq i32 %85, -129
  br i1 %cmp.not.i108, label %if.end.i109.if.end54.i_crit_edge, label %if.then5.i

if.end.i109.if.end54.i_crit_edge:                 ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.i

if.then5.i:                                       ; preds = %if.end.i109
  %shr.i110 = lshr i32 %86, 3
  %and6.i = and i32 %shr.i110, 15
  %90 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %collisions.i, align 4
  %add.i111 = add i32 %91, %and6.i
  store i32 %add.i111, ptr %collisions.i, align 4
  %tdes1.i = getelementptr inbounds %struct.tx_desc, ptr %txptr.0114.i, i32 0, i32 1
  %92 = ptrtoint ptr %tdes1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tdes1.i, align 4
  %94 = and i32 %93, -16318464
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  %96 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_bytes.i, align 4
  %add10.i = add i32 %95, %97
  store i32 %add10.i, ptr %tx_bytes.i, align 4
  %and11.i = and i32 %86, 17154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then5.i.if.end54.ithread-pre-split_crit_edge, label %if.then13.i

if.then5.i.if.end54.ithread-pre-split_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.ithread-pre-split

if.then13.i:                                      ; preds = %if.then5.i
  %98 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_errors.i, align 4
  %inc15.i = add i32 %99, 1
  store i32 %inc15.i, ptr %tx_errors.i, align 4
  %and16.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.then13.i.if.end27.i_crit_edge, label %if.then18.i

if.then13.i.if.end27.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then18.i:                                      ; preds = %if.then13.i
  %100 = ptrtoint ptr %tx_fifo_underrun.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_fifo_underrun.i, align 4
  %inc19.i = add i32 %101, 1
  store i32 %inc19.i, ptr %tx_fifo_underrun.i, align 4
  %102 = ptrtoint ptr %cr6_data.i102 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cr6_data.i102, align 4
  %and20.i = and i32 %103, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.then18.i.if.end27.i_crit_edge

if.then18.i.if.end27.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %103, 2097152
  %104 = ptrtoint ptr %cr6_data.i102 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or.i, ptr %cr6_data.i102, align 4
  %and.i.i = and i32 %or.i, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 %105) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 %107) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 1073740) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.then18.i.if.end27.i_crit_edge, %if.then13.i.if.end27.i_crit_edge
  %and28.i = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end27.i.if.end32.i_crit_edge, label %if.then30.i

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %tx_excessive_collision.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_excessive_collision.i, align 4
  %inc31.i = add i32 %110, 1
  store i32 %inc31.i, ptr %tx_excessive_collision.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end32.i_crit_edge
  %and33.i = and i32 %86, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end37.i_crit_edge, label %if.then35.i

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %tx_late_collision.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tx_late_collision.i, align 4
  %inc36.i = add i32 %112, 1
  store i32 %inc36.i, ptr %tx_late_collision.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end37.i_crit_edge
  %and38.i = and i32 %86, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end42.i_crit_edge, label %if.then40.i

if.end37.i.if.end42.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %tx_no_carrier.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_no_carrier.i, align 4
  %inc41.i = add i32 %114, 1
  store i32 %inc41.i, ptr %tx_no_carrier.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end42.i_crit_edge
  %and43.i = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end47.i_crit_edge, label %if.then45.i

if.end42.i.if.end47.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %tx_loss_carrier.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_loss_carrier.i, align 4
  %inc46.i = add i32 %116, 1
  store i32 %inc46.i, ptr %tx_loss_carrier.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end47.i_crit_edge
  %and48.i = and i32 %86, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.end47.i.if.end54.ithread-pre-split_crit_edge, label %if.then50.i

if.end47.i.if.end54.ithread-pre-split_crit_edge:  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54.ithread-pre-split

if.then50.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %tx_jabber_timeout.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_jabber_timeout.i, align 4
  %inc51.i = add i32 %118, 1
  store i32 %inc51.i, ptr %tx_jabber_timeout.i, align 4
  br label %if.end54.ithread-pre-split

if.end54.ithread-pre-split:                       ; preds = %if.then50.i, %if.end47.i.if.end54.ithread-pre-split_crit_edge, %if.then5.i.if.end54.ithread-pre-split_crit_edge
  %119 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pr = load i32, ptr %tx_packet_cnt.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end54.ithread-pre-split, %if.end.i109.if.end54.i_crit_edge
  %120 = phi i32 [ %.pr, %if.end54.ithread-pre-split ], [ %dec.i106, %if.end.i109.if.end54.i_crit_edge ]
  %next_tx_desc.i = getelementptr inbounds %struct.tx_desc, ptr %txptr.0114.i, i32 0, i32 5
  %121 = ptrtoint ptr %next_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %txptr.0.i = load ptr, ptr %next_tx_desc.i, align 4
  %tobool.not.i112 = icmp eq i32 %120, 0
  br i1 %tobool.not.i112, label %if.end54.i.land.lhs.true.i_crit_edge, label %if.end54.i.while.body.i105_crit_edge

if.end54.i.while.body.i105_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i105

if.end54.i.land.lhs.true.i_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

while.end.i:                                      ; preds = %while.body.i105
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %txptr.0114.i, ptr %tx_remove_ptr.i, align 4
  br label %if.end65.i

land.lhs.true.i:                                  ; preds = %if.end54.i.land.lhs.true.i_crit_edge, %if.then56.land.lhs.true.i_crit_edge
  %txptr.0.lcssa.i = phi ptr [ %txptr.0112.i, %if.then56.land.lhs.true.i_crit_edge ], [ %txptr.0.i, %if.end54.i.land.lhs.true.i_crit_edge ]
  %123 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %txptr.0.lcssa.i, ptr %tx_remove_ptr.i, align 4
  %tx_queue_cnt.i = getelementptr i8, ptr %dev_id, i32 2448
  %124 = ptrtoint ptr %tx_queue_cnt.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_queue_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool58.not.i = icmp eq i32 %125, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.if.end65.i_crit_edge, label %if.then59.i

land.lhs.true.i.if.end65.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  %126 = ptrtoint ptr %txptr.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 128, ptr %txptr.0.lcssa.i, align 32
  %127 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx_packet_cnt.i, align 4
  %inc62.i = add i32 %128, 1
  store i32 %inc62.i, ptr %tx_packet_cnt.i, align 4
  %129 = ptrtoint ptr %tx_queue_cnt.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_queue_cnt.i, align 4
  %dec64.i = add i32 %130, -1
  store i32 %dec64.i, ptr %tx_queue_cnt.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 16777216) #10, !srcloc !288
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %131 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %132, i32 0, i32 12
  %134 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp.not.i.i.i = icmp eq i32 %135, %133
  br i1 %cmp.not.i.i.i, label %if.then59.i.if.end65.i_crit_edge, label %do.body5.i.i.i

if.then59.i.if.end65.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

do.body5.i.i.i:                                   ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 %133, ptr %trans_start.i.i.i, align 16
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.body5.i.i.i, %if.then59.i.if.end65.i_crit_edge, %land.lhs.true.i.if.end65.i_crit_edge, %while.end.i
  %tx_queue_cnt66.i = getelementptr i8, ptr %dev_id, i32 2448
  %137 = ptrtoint ptr %tx_queue_cnt66.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_queue_cnt66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %138)
  %cmp67.i = icmp ult i32 %138, 13
  br i1 %cmp67.i, label %if.then68.i, label %if.end65.i.if.end57_crit_edge

if.end65.i.if.end57_crit_edge:                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then68.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i109.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %139 = ptrtoint ptr %_tx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %_tx.i.i109.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %140) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then68.i, %if.end65.i.if.end57_crit_edge, %if.end52.if.end57_crit_edge
  %dm910x_chk_mode = getelementptr i8, ptr %dev_id, i32 2476
  %141 = ptrtoint ptr %dm910x_chk_mode to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %dm910x_chk_mode, align 4
  %143 = and i8 %142, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool60.not = icmp eq i8 %143, 0
  br i1 %tobool60.not, label %if.end57.if.end64_crit_edge, label %if.then61

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %dm910x_chk_mode to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 4, ptr %dm910x_chk_mode, align 4
  %cr6_data = getelementptr i8, ptr %dev_id, i32 2376
  %145 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cr6_data, align 4
  %or = or i32 %146, 256
  store i32 %or, ptr %cr6_data, align 4
  %and.i = and i32 %or, -8195
  %add.ptr.i114 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %147 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %147) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %149 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %149) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 1073740) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %cr7_data = getelementptr i8, ptr %dev_id, i32 2380
  %151 = ptrtoint ptr %cr7_data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cr7_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %153) #10, !srcloc !288
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.body28, %do.body7.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmfe_init_dm910x(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, i32 noundef 0) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 21474800) #10
  %cr0_data = getelementptr i8, ptr %dev, i32 2368
  %4 = ptrtoint ptr %cr0_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr0_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #10
  %phy_addr = getelementptr i8, ptr %dev, i32 2474
  %8 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %phy_addr, align 2
  %9 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end5.do.end4.i_crit_edge, label %do.end.i

do.end5.do.end4.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, i32 noundef 0) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end5.do.end4.i_crit_edge
  %cr15_data.i = getelementptr i8, ptr %dev, i32 2384
  %10 = ptrtoint ptr %cr15_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %cr15_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %dev, i32 2586
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %12)
  %cmp.i = icmp eq i8 %12, 20
  br i1 %cmp.i, label %if.then6.i, label %do.end4.i.if.end76.i_crit_edge

do.end4.i.if.end76.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then6.i:                                       ; preds = %do.end4.i
  %add.ptr.i62 = getelementptr i8, ptr %dev, i32 2602
  %13 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i62, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #10
  %NIC_capability.i = getelementptr i8, ptr %dev, i32 2466
  %16 = ptrtoint ptr %NIC_capability.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %NIC_capability.i, align 2
  %PHY_reg4.i = getelementptr i8, ptr %dev, i32 2468
  %trunc212223.i = shl i16 %15, 5
  %17 = and i16 %trunc212223.i, 32
  %18 = ptrtoint ptr %PHY_reg4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %PHY_reg4.i, align 4
  %trunc224.i = and i16 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %trunc224.i)
  %cond215.not.i = icmp eq i16 %trunc224.i, 0
  br i1 %cond215.not.i, label %if.then6.i.for.inc.1.i_crit_edge, label %sw.bb16.1.i

if.then6.i.for.inc.1.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

sw.bb16.1.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %PHY_reg4.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %PHY_reg4.i, align 4
  %21 = or i16 %20, 64
  store i16 %21, ptr %PHY_reg4.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.bb16.1.i, %if.then6.i.for.inc.1.i_crit_edge
  %trunc213225.i = and i16 %15, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %trunc213225.i)
  %cond216.not.i = icmp eq i16 %trunc213225.i, 0
  br i1 %cond216.not.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %sw.bb21.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

sw.bb21.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %PHY_reg4.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %PHY_reg4.i, align 4
  %24 = or i16 %23, 128
  store i16 %24, ptr %PHY_reg4.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.bb21.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %trunc214226.i = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %trunc214226.i)
  %cond217.not.i = icmp eq i16 %trunc214226.i, 0
  br i1 %cond217.not.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %sw.bb26.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

sw.bb26.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %PHY_reg4.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %PHY_reg4.i, align 4
  %27 = or i16 %26, 256
  store i16 %27, ptr %PHY_reg4.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.bb26.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %28 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i62, align 4
  %add.ptr33.i = getelementptr i8, ptr %dev, i32 2604
  %30 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr33.i, align 4
  %32 = and i32 %31, %29
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %33, label %for.inc.3.i.sw.epilog40.i_crit_edge [
    i32 4, label %for.inc.3.i.sw.epilog40.sink.split.i_crit_edge
    i32 2, label %sw.bb37.i
    i32 8, label %sw.bb38.i
    i32 256, label %for.inc.3.i.sw.bb39.i_crit_edge
    i32 512, label %for.inc.3.i.sw.bb39.i_crit_edge86
  ]

for.inc.3.i.sw.bb39.i_crit_edge86:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

for.inc.3.i.sw.bb39.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb39.i

for.inc.3.i.sw.epilog40.sink.split.i_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.sink.split.i

for.inc.3.i.sw.epilog40.i_crit_edge:              ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.i

sw.bb37.i:                                        ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.sink.split.i

sw.bb38.i:                                        ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog40.sink.split.i

sw.bb39.i:                                        ; preds = %for.inc.3.i.sw.bb39.i_crit_edge, %for.inc.3.i.sw.bb39.i_crit_edge86
  br label %sw.epilog40.sink.split.i

sw.epilog40.sink.split.i:                         ; preds = %sw.bb39.i, %sw.bb38.i, %sw.bb37.i, %for.inc.3.i.sw.epilog40.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 16, %sw.bb39.i ], [ 5, %sw.bb38.i ], [ 4, %sw.bb37.i ], [ 1, %for.inc.3.i.sw.epilog40.sink.split.i_crit_edge ]
  store i8 %.sink.i, ptr @dmfe_media_mode, align 1
  br label %sw.epilog40.i

sw.epilog40.i:                                    ; preds = %sw.epilog40.sink.split.i, %for.inc.3.i.sw.epilog40.i_crit_edge
  %35 = load i8, ptr @SF_mode, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool43.not.i = icmp eq i8 %36, 0
  br i1 %tobool43.not.i, label %lor.lhs.false.i, label %sw.epilog40.i.if.then48.i_crit_edge

sw.epilog40.i.if.then48.i_crit_edge:              ; preds = %sw.epilog40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false.i:                                  ; preds = %sw.epilog40.i
  %arrayidx44.i = getelementptr i8, ptr %dev, i32 2611
  %37 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool47.not.i = icmp sgt i8 %38, -1
  br i1 %tobool47.not.i, label %lor.lhs.false.i.if.end51.i_crit_edge, label %lor.lhs.false.i.if.then48.i_crit_edge

lor.lhs.false.i.if.then48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false.i.if.end51.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then48.i:                                      ; preds = %lor.lhs.false.i.if.then48.i_crit_edge, %sw.epilog40.i.if.then48.i_crit_edge
  %39 = ptrtoint ptr %cr15_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 70, ptr %cr15_data.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.i, %lor.lhs.false.i.if.end51.i_crit_edge
  %40 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool54.not.i = icmp eq i8 %40, 0
  br i1 %tobool54.not.i, label %lor.lhs.false55.i, label %if.end51.i.if.then60.i_crit_edge

if.end51.i.if.then60.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

lor.lhs.false55.i:                                ; preds = %if.end51.i
  %arrayidx56.i = getelementptr i8, ptr %dev, i32 2608
  %41 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx56.i, align 1
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool59.not.i = icmp eq i8 %43, 0
  br i1 %tobool59.not.i, label %lor.lhs.false55.i.if.end63.i_crit_edge, label %lor.lhs.false55.i.if.then60.i_crit_edge

lor.lhs.false55.i.if.then60.i_crit_edge:          ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

lor.lhs.false55.i.if.end63.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then60.i:                                      ; preds = %lor.lhs.false55.i.if.then60.i_crit_edge, %if.end51.i.if.then60.i_crit_edge
  %44 = ptrtoint ptr %cr15_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cr15_data.i, align 4
  %or62.i = or i32 %45, 1024
  store i32 %or62.i, ptr %cr15_data.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %lor.lhs.false55.i.if.end63.i_crit_edge
  %46 = and i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool66.not.i = icmp eq i8 %46, 0
  br i1 %tobool66.not.i, label %lor.lhs.false67.i, label %if.end63.i.if.then72.i_crit_edge

if.end63.i.if.then72.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72.i

lor.lhs.false67.i:                                ; preds = %if.end63.i
  %arrayidx68.i = getelementptr i8, ptr %dev, i32 2608
  %47 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx68.i, align 1
  %49 = and i8 %48, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool71.not.i = icmp eq i8 %49, 0
  br i1 %tobool71.not.i, label %lor.lhs.false67.i.if.end76.i_crit_edge, label %lor.lhs.false67.i.if.then72.i_crit_edge

lor.lhs.false67.i.if.then72.i_crit_edge:          ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72.i

lor.lhs.false67.i.if.end76.i_crit_edge:           ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i

if.then72.i:                                      ; preds = %lor.lhs.false67.i.if.then72.i_crit_edge, %if.end63.i.if.then72.i_crit_edge
  %50 = ptrtoint ptr %cr15_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cr15_data.i, align 4
  %or74.i = or i32 %51, 38912
  store i32 %or74.i, ptr %cr15_data.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %lor.lhs.false67.i.if.end76.i_crit_edge, %do.end4.i.if.end76.i_crit_edge
  %HPNA_command.i = getelementptr i8, ptr %dev, i32 2460
  %52 = load i8, ptr @HPNA_rx_cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp78.i = icmp eq i8 %52, 0
  %spec.store.select.i = select i1 %cmp78.i, i16 -32767, i16 1
  %53 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %spec.store.select.i, ptr %HPNA_command.i, align 4
  %54 = load i8, ptr @HPNA_tx_cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp87.i = icmp eq i8 %54, 1
  %55 = load i8, ptr @HPNA_mode, align 1
  br i1 %cmp87.i, label %if.then89.i, label %if.else.i

if.then89.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %56 = icmp ult i8 %55, 4
  br i1 %56, label %switch.lookup, label %if.then89.i.if.end134.i_crit_edge

if.then89.i.if.end134.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.i

if.else.i:                                        ; preds = %if.end76.i
  %57 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %55, label %if.else.i.if.end134.i_crit_edge [
    i8 0, label %if.else.i.if.end134.sink.split.i_crit_edge
    i8 3, label %sw.bb128.i
    i8 2, label %sw.bb123.i
  ]

if.else.i.if.end134.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.sink.split.i

if.else.i.if.end134.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.i

sw.bb123.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.sink.split.i

sw.bb128.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.sink.split.i

switch.lookup:                                    ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = sext i8 %55 to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.dmfe_init_dm910x, i32 0, i32 %58
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %59)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %if.end134.sink.split.i

if.end134.sink.split.i:                           ; preds = %switch.lookup, %sw.bb128.i, %sw.bb123.i, %if.else.i.if.end134.sink.split.i_crit_edge
  %.sink219.i = phi i16 [ 6, %sw.bb123.i ], [ 2, %sw.bb128.i ], [ 4, %if.else.i.if.end134.sink.split.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %60 = or i16 %.sink219.i, %spec.store.select.i
  %61 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %HPNA_command.i, align 4
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.end134.sink.split.i, %if.else.i.if.end134.i_crit_edge, %if.then89.i.if.end134.i_crit_edge
  %HPNA_present.i = getelementptr i8, ptr %dev, i32 2470
  %62 = ptrtoint ptr %HPNA_present.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %HPNA_present.i, align 2
  %cr6_data.i = getelementptr i8, ptr %dev, i32 2376
  %63 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cr6_data.i, align 4
  %or135.i = or i32 %64, 262144
  %65 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr1, align 4
  %and.i.i = and i32 %or135.i, -8195
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %67 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %or135.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %69) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 1073740) #10
  %71 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr1, align 4
  %73 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %phy_addr, align 2
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i, align 4
  %call137.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %72, i8 noundef zeroext %74, i8 noundef zeroext 3, i32 noundef %76) #10
  %77 = and i16 %call137.i, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18176, i16 %77)
  %cmp140.i = icmp eq i16 %77, -18176
  br i1 %cmp140.i, label %if.then142.i, label %if.end134.i.dmfe_parse_srom.exit_crit_edge

if.end134.i.dmfe_parse_srom.exit_crit_edge:       ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_parse_srom.exit

if.then142.i:                                     ; preds = %if.end134.i
  %HPNA_timer.i = getelementptr i8, ptr %dev, i32 2462
  %78 = ptrtoint ptr %HPNA_timer.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 8, ptr %HPNA_timer.i, align 2
  %79 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr1, align 4
  %81 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %phy_addr, align 2
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i, align 4
  %call146.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %80, i8 noundef zeroext %82, i8 noundef zeroext 31, i32 noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 17412, i16 %call146.i)
  %cmp148.i = icmp eq i16 %call146.i, 17412
  br i1 %cmp148.i, label %if.then150.i, label %if.else152.i

if.then150.i:                                     ; preds = %if.then142.i
  %85 = ptrtoint ptr %HPNA_present.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %HPNA_present.i, align 2
  %86 = load i8, ptr @HPNA_NoiseFloor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then150.i.if.end.i.i_crit_edge

if.then150.i.if.end.i.i_crit_edge:                ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 8, ptr @HPNA_NoiseFloor, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then150.i.if.end.i.i_crit_edge
  %87 = zext i16 %call137.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %call137.i, label %sw.default.i.i [
    i16 -18176, label %sw.bb.i.i
    i16 -18175, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %HPNA_command.i, align 4
  %90 = or i16 %89, 4096
  store i16 %90, ptr %HPNA_command.i, align 4
  %91 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioaddr1, align 4
  %93 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %phy_addr, align 2
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr.i, align 4
  %call.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %92, i8 noundef zeroext %94, i8 noundef zeroext 24, i32 noundef %96) #10
  %97 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv3.i.i = zext i8 %97 to i16
  %add.i.i = add i16 %call.i.i, %conv3.i.i
  %and.i201.i = and i16 %add.i.i, 255
  %or4.i.i = or i16 %and.i201.i, -4096
  %98 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr1, align 4
  %100 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %phy_addr, align 2
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i, align 4
  %call8.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %99, i8 noundef zeroext %101, i8 noundef zeroext 17, i32 noundef %103) #10
  br label %dmfe_program_DM9801.exit.i

sw.bb10.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioaddr1, align 4
  %106 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %phy_addr, align 2
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i, align 4
  %call14.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %105, i8 noundef zeroext %107, i8 noundef zeroext 25, i32 noundef %109) #10
  %110 = and i16 %call14.i.i, -256
  %111 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv17.i.i = zext i8 %111 to i16
  %add18.i.i = or i16 %110, %conv17.i.i
  %112 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr1, align 4
  %114 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %phy_addr, align 2
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i, align 4
  %call22.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %113, i8 noundef zeroext %115, i8 noundef zeroext 17, i32 noundef %117) #10
  %118 = and i16 %call22.i.i, -16
  %119 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv25.i.i = zext i8 %119 to i16
  %add26.i.i = or i16 %118, 3
  %add27.i.i = add i16 %add26.i.i, %conv25.i.i
  br label %dmfe_program_DM9801.exit.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %HPNA_command.i, align 4
  %122 = or i16 %121, 4096
  store i16 %122, ptr %HPNA_command.i, align 4
  %123 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ioaddr1, align 4
  %125 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %phy_addr, align 2
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i, align 4
  %call36.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %124, i8 noundef zeroext %126, i8 noundef zeroext 25, i32 noundef %128) #10
  %and38.i.i = and i16 %call36.i.i, -256
  %129 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv39.i.i = zext i8 %129 to i16
  %add40.i.i = add i16 %and38.i.i, -5
  %sub.i.i = add i16 %add40.i.i, %conv39.i.i
  %130 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ioaddr1, align 4
  %132 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %phy_addr, align 2
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i, align 4
  %call44.i.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %131, i8 noundef zeroext %133, i8 noundef zeroext 17, i32 noundef %135) #10
  %and46.i.i = and i16 %call44.i.i, -16
  %136 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv47.i.i = zext i8 %136 to i16
  %add48.i.i = add i16 %and46.i.i, %conv47.i.i
  br label %dmfe_program_DM9801.exit.i

dmfe_program_DM9801.exit.i:                       ; preds = %sw.default.i.i, %sw.bb10.i.i, %sw.bb.i.i
  %reg17.0.i.i = phi i16 [ %add48.i.i, %sw.default.i.i ], [ %add27.i.i, %sw.bb10.i.i ], [ %call8.i.i, %sw.bb.i.i ]
  %reg25.0.i.i = phi i16 [ %sub.i.i, %sw.default.i.i ], [ %add18.i.i, %sw.bb10.i.i ], [ %or4.i.i, %sw.bb.i.i ]
  %137 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ioaddr1, align 4
  %139 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %phy_addr, align 2
  %141 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %HPNA_command.i, align 4
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %138, i8 noundef zeroext %140, i8 noundef zeroext 16, i16 noundef zeroext %142, i32 noundef %144) #10
  %145 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ioaddr1, align 4
  %147 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %phy_addr, align 2
  %149 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %146, i8 noundef zeroext %148, i8 noundef zeroext 17, i16 noundef zeroext %reg17.0.i.i, i32 noundef %150) #10
  br label %if.end155.sink.split.i

if.else152.i:                                     ; preds = %if.then142.i
  %151 = ptrtoint ptr %HPNA_present.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 2, ptr %HPNA_present.i, align 2
  %152 = load i8, ptr @HPNA_NoiseFloor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i202.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i202.i, label %if.then.i203.i, label %if.else152.i.dmfe_program_DM9802.exit.i_crit_edge

if.else152.i.dmfe_program_DM9802.exit.i_crit_edge: ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_program_DM9802.exit.i

if.then.i203.i:                                   ; preds = %if.else152.i
  call void @__sanitizer_cov_trace_pc() #12
  store i8 5, ptr @HPNA_NoiseFloor, align 1
  br label %dmfe_program_DM9802.exit.i

dmfe_program_DM9802.exit.i:                       ; preds = %if.then.i203.i, %if.else152.i.dmfe_program_DM9802.exit.i_crit_edge
  %153 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ioaddr1, align 4
  %155 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %phy_addr, align 2
  %157 = ptrtoint ptr %HPNA_command.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %HPNA_command.i, align 4
  %159 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %154, i8 noundef zeroext %156, i8 noundef zeroext 16, i16 noundef zeroext %158, i32 noundef %160) #10
  %161 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ioaddr1, align 4
  %163 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %phy_addr, align 2
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %add.ptr.i, align 4
  %call.i207.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %162, i8 noundef zeroext %164, i8 noundef zeroext 25, i32 noundef %166) #10
  %167 = and i16 %call.i207.i, -256
  %168 = load i8, ptr @HPNA_NoiseFloor, align 1
  %conv4.i.i = zext i8 %168 to i16
  %add.i208.i = or i16 %167, %conv4.i.i
  br label %if.end155.sink.split.i

if.end155.sink.split.i:                           ; preds = %dmfe_program_DM9802.exit.i, %dmfe_program_DM9801.exit.i
  %reg25.0.i.sink.i = phi i16 [ %reg25.0.i.i, %dmfe_program_DM9801.exit.i ], [ %add.i208.i, %dmfe_program_DM9802.exit.i ]
  %169 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ioaddr1, align 4
  %171 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %phy_addr, align 2
  %173 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %170, i8 noundef zeroext %172, i8 noundef zeroext 25, i16 noundef zeroext %reg25.0.i.sink.i, i32 noundef %174) #10
  br label %dmfe_parse_srom.exit

dmfe_parse_srom.exit:                             ; preds = %if.end155.sink.split.i, %if.end134.i.dmfe_parse_srom.exit_crit_edge
  %175 = load i8, ptr @dmfe_media_mode, align 1
  %media_mode = getelementptr i8, ptr %dev, i32 2472
  %176 = ptrtoint ptr %media_mode to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %media_mode, align 4
  %add.ptr7 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -2147418112) #10, !srcloc !288
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1878453630, i32 %178)
  %cmp = icmp eq i32 %178, -1878453630
  br i1 %cmp, label %if.then8, label %dmfe_parse_srom.exit.if.end11_crit_edge

dmfe_parse_srom.exit.if.end11_crit_edge:          ; preds = %dmfe_parse_srom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %dmfe_parse_srom.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -2147483648) #10, !srcloc !288
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then8
  %__ms.081 = phi i32 [ 300, %if.then8 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.081, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %179(i32 noundef 214748000) #10
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %while.body.if.end11_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %while.body.if.end11_crit_edge, %dmfe_parse_srom.exit.if.end11_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #10, !srcloc !288
  %180 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %media_mode, align 4
  %182 = and i8 %181, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool14.not = icmp eq i8 %182, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  %183 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ioaddr1, align 4
  %185 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %cr6_data.i, align 4
  %and.i = and i32 %186, -262145
  store i32 %and.i, ptr %cr6_data.i, align 4
  %and.i.i64 = and i32 %186, -270339
  %add.ptr.i.i65 = getelementptr i8, ptr %184, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %187 = tail call i32 @llvm.bswap.i32(i32 %and.i.i64) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65, i32 %187) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %189 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i65, i32 %189) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 1073740) #10
  %191 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1878453630, i32 %192)
  %cmp.i66 = icmp eq i32 %192, -1878453630
  br i1 %cmp.i66, label %if.then.i, label %if.then15.if.end.i_crit_edge

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %193 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ioaddr1, align 4
  %195 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %phy_addr, align 2
  %call.i68 = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %194, i8 noundef zeroext %196, i8 noundef zeroext 18, i32 noundef -1878453630) #10
  %197 = and i16 %call.i68, -4097
  %198 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ioaddr1, align 4
  %200 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %phy_addr, align 2
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %199, i8 noundef zeroext %201, i8 noundef zeroext 18, i16 noundef zeroext %197, i32 noundef %203) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then15.if.end.i_crit_edge
  %204 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ioaddr1, align 4
  %206 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %phy_addr, align 2
  %208 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %add.ptr.i, align 4
  %call13.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %205, i8 noundef zeroext %207, i8 noundef zeroext 4, i32 noundef %209) #10
  %210 = and i16 %call13.i, -481
  %211 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %media_mode, align 4
  %213 = and i8 %212, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i69 = icmp eq i8 %213, 0
  br i1 %tobool.not.i69, label %if.else.i71, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %PHY_reg4.i70 = getelementptr i8, ptr %dev, i32 2468
  %214 = ptrtoint ptr %PHY_reg4.i70 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %PHY_reg4.i70, align 4
  %or124.i = or i16 %215, %210
  br label %if.end48.i

if.else.i71:                                      ; preds = %if.end.i
  %216 = zext i8 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %212, label %if.else.i71.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i72
    i8 4, label %sw.bb28.i
    i8 1, label %sw.bb32.i
    i8 5, label %sw.bb36.i
  ]

if.else.i71.sw.epilog.i_crit_edge:                ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i72:                                        ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #12
  %217 = or i16 %210, 32
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #12
  %218 = or i16 %210, 64
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #12
  %219 = or i16 %210, 128
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #12
  %220 = or i16 %210, 256
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb36.i, %sw.bb32.i, %sw.bb28.i, %sw.bb.i72, %if.else.i71.sw.epilog.i_crit_edge
  %phy_reg.0.i = phi i16 [ %210, %if.else.i71.sw.epilog.i_crit_edge ], [ %220, %sw.bb36.i ], [ %219, %sw.bb32.i ], [ %218, %sw.bb28.i ], [ %217, %sw.bb.i72 ]
  %221 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1878453630, i32 %222)
  %cmp41.i = icmp eq i32 %222, -1878453630
  %223 = and i16 %phy_reg.0.i, 97
  %spec.select.i = select i1 %cmp41.i, i16 %223, i16 %phy_reg.0.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %sw.epilog.i, %if.then19.i
  %phy_reg.1.i = phi i16 [ %or124.i, %if.then19.i ], [ %spec.select.i, %sw.epilog.i ]
  %224 = and i16 %phy_reg.1.i, 480
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %tobool51.not.i = icmp eq i16 %224, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.end48.i.if.end62.i_crit_edge

if.end48.i.if.end62.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %PHY_reg453.i = getelementptr i8, ptr %dev, i32 2468
  %225 = ptrtoint ptr %PHY_reg453.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %PHY_reg453.i, align 4
  %or56123.i = or i16 %226, %phy_reg.1.i
  %227 = or i8 %212, 8
  %228 = ptrtoint ptr %media_mode to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %media_mode, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then52.i, %if.end48.i.if.end62.i_crit_edge
  %phy_reg.2.i = phi i16 [ %phy_reg.1.i, %if.end48.i.if.end62.i_crit_edge ], [ %or56123.i, %if.then52.i ]
  %229 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ioaddr1, align 4
  %231 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %phy_addr, align 2
  %233 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %230, i8 noundef zeroext %232, i8 noundef zeroext 4, i16 noundef zeroext %phy_reg.2.i, i32 noundef %234) #10
  %chip_type.i = getelementptr i8, ptr %dev, i32 2471
  %235 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %chip_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool67.not.i = icmp eq i8 %236, 0
  br i1 %tobool67.not.i, label %if.end62.i.if.then78.i_crit_edge, label %land.lhs.true.i

if.end62.i.if.then78.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i

land.lhs.true.i:                                  ; preds = %if.end62.i
  %237 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1862135166, i32 %238)
  %cmp69.i = icmp eq i32 %238, -1862135166
  br i1 %cmp69.i, label %if.end75.i, label %land.lhs.true.i.if.end16_crit_edge

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end75.i:                                       ; preds = %land.lhs.true.i
  %239 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ioaddr1, align 4
  %241 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %phy_addr, align 2
  tail call fastcc void @dmfe_phy_write(ptr noundef %240, i8 noundef zeroext %242, i8 noundef zeroext 0, i16 noundef zeroext 6144, i32 noundef -1862135166) #10
  %243 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %.pr.i = load i8, ptr %chip_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool77.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool77.not.i, label %if.end75.i.if.then78.i_crit_edge, label %if.end75.i.if.end16_crit_edge

if.end75.i.if.end16_crit_edge:                    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end75.i.if.then78.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78.i

if.then78.i:                                      ; preds = %if.end75.i.if.then78.i_crit_edge, %if.end62.i.if.then78.i_crit_edge
  %244 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ioaddr1, align 4
  %246 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %phy_addr, align 2
  %248 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %add.ptr.i, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %245, i8 noundef zeroext %247, i8 noundef zeroext 0, i16 noundef zeroext 4608, i32 noundef %249) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then78.i, %if.end75.i.if.end16_crit_edge, %land.lhs.true.i.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %250 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %media_mode, align 4
  %252 = and i8 %251, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool20.not = icmp eq i8 %252, 0
  br i1 %tobool20.not, label %if.then21, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %op_mode = getelementptr i8, ptr %dev, i32 2473
  %253 = ptrtoint ptr %op_mode to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %251, ptr %op_mode, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %254 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ioaddr1, align 4
  %256 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.not.i74 = icmp eq i32 %256, 0
  br i1 %tobool.not.i74, label %if.end23.do.end5.i_crit_edge, label %do.end.i75

if.end23.do.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5.i

do.end.i75:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef 0) #13
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i75, %if.end23.do.end5.i_crit_edge
  %first_tx_desc.i = getelementptr i8, ptr %dev, i32 2420
  %257 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %first_tx_desc.i, align 4
  %tx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2424
  %259 = ptrtoint ptr %tx_insert_ptr.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %258, ptr %tx_insert_ptr.i, align 4
  %tx_remove_ptr.i = getelementptr i8, ptr %dev, i32 2428
  %260 = ptrtoint ptr %tx_remove_ptr.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %258, ptr %tx_remove_ptr.i, align 4
  %first_tx_desc_dma.i = getelementptr i8, ptr %dev, i32 2400
  %261 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %first_tx_desc_dma.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %255, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %263) #10, !srcloc !288
  %264 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %first_tx_desc.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %265, i32 512
  %first_rx_desc.i = getelementptr i8, ptr %dev, i32 2432
  %266 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %add.ptr8.i, ptr %first_rx_desc.i, align 4
  %267 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %first_tx_desc_dma.i, align 4
  %add.i = add i32 %268, 512
  %first_rx_desc_dma.i = getelementptr i8, ptr %dev, i32 2404
  %269 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %add.i, ptr %first_rx_desc_dma.i, align 4
  %rx_insert_ptr.i = getelementptr i8, ptr %dev, i32 2436
  %270 = ptrtoint ptr %rx_insert_ptr.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %add.ptr8.i, ptr %rx_insert_ptr.i, align 4
  %rx_ready_ptr.i = getelementptr i8, ptr %dev, i32 2440
  %271 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %add.ptr8.i, ptr %rx_ready_ptr.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %255, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %272 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %272) #10, !srcloc !288
  %buf_pool_start.i = getelementptr i8, ptr %dev, i32 2412
  %273 = ptrtoint ptr %buf_pool_start.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %buf_pool_start.i, align 4
  %buf_pool_dma_start.i = getelementptr i8, ptr %dev, i32 2392
  %275 = ptrtoint ptr %buf_pool_dma_start.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %buf_pool_dma_start.i, align 4
  %277 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %first_tx_desc_dma.i, align 4
  %279 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %first_tx_desc.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end5.i
  %i.094.i = phi i32 [ 0, %do.end5.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_buf_dma.093.i = phi i32 [ %276, %do.end5.i ], [ %add19.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_tx_dma.092.i = phi i32 [ %278, %do.end5.i ], [ %add16.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_buf.091.i = phi ptr [ %274, %do.end5.i ], [ %add.ptr18.i, %for.body.i.for.body.i_crit_edge ]
  %tmp_tx.090.i = phi ptr [ %280, %do.end5.i ], [ %add.ptr17.i, %for.body.i.for.body.i_crit_edge ]
  %tx_buf_ptr.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 4
  %281 = ptrtoint ptr %tx_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %tmp_buf.091.i, ptr %tx_buf_ptr.i, align 16
  %282 = ptrtoint ptr %tmp_tx.090.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 0, ptr %tmp_tx.090.i, align 32
  %tdes1.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 1
  %283 = ptrtoint ptr %tdes1.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 129, ptr %tdes1.i, align 4
  %284 = tail call i32 @llvm.bswap.i32(i32 %tmp_buf_dma.093.i) #10
  %tdes2.i = getelementptr inbounds %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 2
  %285 = ptrtoint ptr %tdes2.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %tdes2.i, align 8
  %add16.i = add i32 %tmp_tx_dma.092.i, 32
  %286 = tail call i32 @llvm.bswap.i32(i32 %add16.i) #10
  %tdes3.i = getelementptr %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 3
  %287 = ptrtoint ptr %tdes3.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %tdes3.i, align 4
  %add.ptr17.i = getelementptr %struct.tx_desc, ptr %tmp_tx.090.i, i32 1
  %next_tx_desc.i = getelementptr %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 5
  %288 = ptrtoint ptr %next_tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %add.ptr17.i, ptr %next_tx_desc.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %tmp_buf.091.i, i32 1536
  %add19.i = add i32 %tmp_buf_dma.093.i, 1536
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tdes3.i.le = getelementptr %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 3
  %next_tx_desc.i.le = getelementptr %struct.tx_desc, ptr %tmp_tx.090.i, i32 0, i32 5
  %289 = ptrtoint ptr %first_tx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %first_tx_desc_dma.i, align 4
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #10
  %292 = ptrtoint ptr %tdes3.i.le to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %tdes3.i.le, align 4
  %293 = ptrtoint ptr %first_tx_desc.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %first_tx_desc.i, align 4
  %295 = ptrtoint ptr %next_tx_desc.i.le to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %294, ptr %next_tx_desc.i.le, align 4
  %296 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %first_rx_desc_dma.i, align 4
  %298 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %first_rx_desc.i, align 4
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %for.end.i
  %i.197.i = phi i32 [ 0, %for.end.i ], [ %inc33.i, %for.body29.i.for.body29.i_crit_edge ]
  %tmp_rx_dma.096.i = phi i32 [ %297, %for.end.i ], [ %add30.i, %for.body29.i.for.body29.i_crit_edge ]
  %tmp_rx.095.i = phi ptr [ %299, %for.end.i ], [ %add.ptr31.i, %for.body29.i.for.body29.i_crit_edge ]
  %300 = ptrtoint ptr %tmp_rx.095.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %tmp_rx.095.i, align 32
  %rdes1.i = getelementptr inbounds %struct.rx_desc, ptr %tmp_rx.095.i, i32 0, i32 1
  %301 = ptrtoint ptr %rdes1.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 393217, ptr %rdes1.i, align 4
  %add30.i = add i32 %tmp_rx_dma.096.i, 32
  %302 = tail call i32 @llvm.bswap.i32(i32 %add30.i) #10
  %rdes3.i = getelementptr %struct.rx_desc, ptr %tmp_rx.095.i, i32 0, i32 3
  %303 = ptrtoint ptr %rdes3.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %rdes3.i, align 4
  %add.ptr31.i = getelementptr %struct.rx_desc, ptr %tmp_rx.095.i, i32 1
  %next_rx_desc.i = getelementptr %struct.rx_desc, ptr %tmp_rx.095.i, i32 0, i32 5
  %304 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %add.ptr31.i, ptr %next_rx_desc.i, align 4
  %inc33.i = add nuw nsw i32 %i.197.i, 1
  %exitcond98.not.i = icmp eq i32 %inc33.i, 32
  br i1 %exitcond98.not.i, label %dmfe_descriptor_init.exit, label %for.body29.i.for.body29.i_crit_edge

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

dmfe_descriptor_init.exit:                        ; preds = %for.body29.i
  %rdes3.i.le = getelementptr %struct.rx_desc, ptr %tmp_rx.095.i, i32 0, i32 3
  %next_rx_desc.i.le = getelementptr %struct.rx_desc, ptr %tmp_rx.095.i, i32 0, i32 5
  %305 = ptrtoint ptr %first_rx_desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %first_rx_desc_dma.i, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #10
  %308 = ptrtoint ptr %rdes3.i.le to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %rdes3.i.le, align 4
  %309 = ptrtoint ptr %first_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %first_rx_desc.i, align 4
  %311 = ptrtoint ptr %next_rx_desc.i.le to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %310, ptr %next_rx_desc.i.le, align 4
  tail call fastcc void @allocate_rx_buffer(ptr noundef %dev) #10
  %312 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %cr6_data.i, align 4
  %and.i77 = and i32 %313, -8195
  %add.ptr.i78 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %314 = tail call i32 @llvm.bswap.i32(i32 %and.i77) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %314) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %315 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %315(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %316 = tail call i32 @llvm.bswap.i32(i32 %313) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %316) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %317 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %317(i32 noundef 1073740) #10
  %318 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %319)
  %cmp25 = icmp eq i32 %319, -1858989438
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %dmfe_descriptor_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dm9132_id_table(ptr noundef %dev)
  br label %if.end28

if.else:                                          ; preds = %dmfe_descriptor_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @send_filter_frame(ptr noundef %dev)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %cr7_data = getelementptr i8, ptr %dev, i32 2380
  %320 = ptrtoint ptr %cr7_data to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 98497, ptr %cr7_data, align 4
  %add.ptr30 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1048575744) #10, !srcloc !288
  %321 = ptrtoint ptr %cr15_data.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %cr15_data.i, align 4
  %add.ptr31 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %323) #10, !srcloc !288
  %324 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %cr6_data.i, align 4
  %or = or i32 %325, 270338
  store i32 %or, ptr %cr6_data.i, align 4
  %and.i79 = and i32 %or, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %326 = tail call i32 @llvm.bswap.i32(i32 %and.i79) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %326) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %327 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %327(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %328 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %328) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %329 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %329(i32 noundef 1073740) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmfe_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -176
  %pdev = getelementptr i8, ptr %t, i32 -164
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr1 = getelementptr i8, ptr %t, i32 -116
  %4 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1, align 4
  %6 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %do.end

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef 0) #13
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -160
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %first_in_callback = getelementptr i8, ptr %t, i32 -3
  %7 = ptrtoint ptr %first_in_callback to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %first_in_callback, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp17 = icmp eq i8 %8, 0
  br i1 %cmp17, label %if.then19, label %do.body8.if.end34_crit_edge

do.body8.if.end34_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then19:                                        ; preds = %do.body8
  %9 = ptrtoint ptr %first_in_callback to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %first_in_callback, align 1
  %chip_type = getelementptr i8, ptr %t, i32 -9
  %10 = ptrtoint ptr %chip_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %if.then19.if.end34_crit_edge, label %land.lhs.true

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then19
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1862135166, i32 %13)
  %cmp23 = icmp eq i32 %13, -1862135166
  br i1 %cmp23, label %if.then25, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %cr6_data = getelementptr i8, ptr %t, i32 -104
  %14 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr6_data, align 4
  %and = and i32 %15, -262145
  store i32 %and, ptr %cr6_data, align 4
  %and.i = and i32 %15, -270339
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 1073740) #10
  %phy_addr = getelementptr i8, ptr %t, i32 -6
  %20 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_addr, align 2
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %5, i8 noundef zeroext %21, i8 noundef zeroext 0, i16 noundef zeroext 4096, i32 noundef %23)
  %24 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cr6_data, align 4
  %or = or i32 %25, 262144
  store i32 %or, ptr %cr6_data, align 4
  %and.i344 = and i32 %or, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i344) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #10
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.then19.if.end34_crit_edge, %do.body8.if.end34_crit_edge
  %dm910x_chk_mode = getelementptr i8, ptr %t, i32 -4
  %30 = ptrtoint ptr %dm910x_chk_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dm910x_chk_mode, align 4
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool37.not = icmp eq i8 %32, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %land.lhs.true38

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end34
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %33 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %34)
  %cmp39 = icmp ugt i32 %34, 32768
  br i1 %cmp39, label %if.then41, label %land.lhs.true38.if.end43_crit_edge

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dm910x_chk_mode to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %dm910x_chk_mode, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true38.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %add.ptr44 = getelementptr i8, ptr %5, i32 64
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %interval_rx_cnt = getelementptr i8, ptr %t, i32 -24
  %37 = ptrtoint ptr %interval_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interval_rx_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp46 = icmp ne i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not = icmp eq i32 %36, 0
  %or.cond = select i1 %cmp46, i1 true, i1 %tobool49.not
  br i1 %or.cond, label %if.end43.if.end51_crit_edge, label %if.then50

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %reset_cr8 = getelementptr i8, ptr %t, i32 76
  %39 = ptrtoint ptr %reset_cr8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reset_cr8, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %reset_cr8, align 4
  %wait_reset = getelementptr i8, ptr %t, i32 -5
  %41 = ptrtoint ptr %wait_reset to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %wait_reset, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end43.if.end51_crit_edge
  %42 = ptrtoint ptr %interval_rx_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %interval_rx_cnt, align 4
  %tx_packet_cnt = getelementptr i8, ptr %t, i32 -36
  %43 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool53.not = icmp eq i32 %44, 0
  br i1 %tobool53.not, label %if.end51.if.end74_crit_edge, label %land.lhs.true54

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

land.lhs.true54:                                  ; preds = %if.end51
  %call55 = tail call i32 @dev_trans_start(ptr noundef %3) #10
  %add56 = add i32 %call55, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add56, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp57 = icmp slt i32 %sub, 0
  br i1 %cmp57, label %if.then59, label %land.lhs.true54.if.end74_crit_edge

land.lhs.true54.if.end74_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then59:                                        ; preds = %land.lhs.true54
  %add.ptr60 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 16777216) #10, !srcloc !288
  %call61 = tail call i32 @dev_trans_start(ptr noundef %3) #10
  %add62 = add i32 %call61, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub63 = sub i32 %add62, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub63)
  %cmp64 = icmp slt i32 %sub63, 0
  br i1 %cmp64, label %if.then66, label %if.then59.if.end74_crit_edge

if.then59.if.end74_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then66:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %reset_TXtimeout = getelementptr i8, ptr %t, i32 84
  %47 = ptrtoint ptr %reset_TXtimeout to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reset_TXtimeout, align 4
  %inc67 = add i32 %48, 1
  store i32 %inc67, ptr %reset_TXtimeout, align 4
  %wait_reset68 = getelementptr i8, ptr %t, i32 -5
  %49 = ptrtoint ptr %wait_reset68 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %wait_reset68, align 1
  %dev72 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev72, ptr noundef nonnull @.str.51) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then66, %if.then59.if.end74_crit_edge, %land.lhs.true54.if.end74_crit_edge, %if.end51.if.end74_crit_edge
  %wait_reset75 = getelementptr i8, ptr %t, i32 -5
  %50 = ptrtoint ptr %wait_reset75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %wait_reset75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool76.not = icmp eq i8 %51, 0
  br i1 %tobool76.not, label %if.end97, label %do.body78

do.body78:                                        ; preds = %if.end74
  %52 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool79.not = icmp eq i32 %52, 0
  br i1 %tobool79.not, label %do.end89.thread, label %do.end89

do.end89.thread:                                  ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %reset_count372 = getelementptr i8, ptr %t, i32 72
  %53 = ptrtoint ptr %reset_count372 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reset_count372, align 4
  %inc90373 = add i32 %54, 1
  store i32 %inc90373, ptr %reset_count372, align 4
  %ioaddr1.i374 = getelementptr i8, ptr %3, i32 2364
  %55 = ptrtoint ptr %ioaddr1.i374 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr1.i374, align 4
  br label %do.end5.i

do.end89:                                         ; preds = %do.body78
  %57 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_packet_cnt, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.56, i32 noundef %58) #13
  %.pr = load i32, ptr @dmfe_debug, align 4
  %reset_count = getelementptr i8, ptr %t, i32 72
  %59 = ptrtoint ptr %reset_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reset_count, align 4
  %inc90 = add i32 %60, 1
  store i32 %inc90, ptr %reset_count, align 4
  %ioaddr1.i = getelementptr i8, ptr %3, i32 2364
  %61 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end89.do.end5.i_crit_edge, label %do.end.i

do.end89.do.end5.i_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5.i

do.end.i:                                         ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74, i32 noundef 0) #13
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.end89.do.end5.i_crit_edge, %do.end89.thread
  %63 = phi ptr [ %56, %do.end89.thread ], [ %62, %do.end.i ], [ %62, %do.end89.do.end5.i_crit_edge ]
  %cr6_data.i = getelementptr i8, ptr %3, i32 2376
  %64 = ptrtoint ptr %cr6_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cr6_data.i, align 4
  %and.i346 = and i32 %65, -8195
  store i32 %and.i346, ptr %cr6_data.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %63, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i346) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %66) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %66) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 1073740) #10
  %add.ptr.i347 = getelementptr i8, ptr %63, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347, i32 0) #10, !srcloc !288
  %add.ptr7.i = getelementptr i8, ptr %63, i32 40
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %69) #10, !srcloc !288
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %70 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %71, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #10
  %72 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %do.end5.i.do.end2.i.i_crit_edge, label %do.end.i.i

do.end5.i.do.end2.i.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i.i

do.end.i.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, i32 noundef 0) #13
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i.i, %do.end5.i.do.end2.i.i_crit_edge
  %rx_avail_cnt.i.i = getelementptr i8, ptr %3, i32 2452
  %73 = ptrtoint ptr %rx_avail_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_avail_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool3.not11.i.i = icmp eq i32 %74, 0
  br i1 %tobool3.not11.i.i, label %do.end2.i.i.dmfe_dynamic_reset.exit_crit_edge, label %while.body.lr.ph.i.i

do.end2.i.i.dmfe_dynamic_reset.exit_crit_edge:    ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_dynamic_reset.exit

while.body.lr.ph.i.i:                             ; preds = %do.end2.i.i
  %rx_ready_ptr.i.i = getelementptr i8, ptr %3, i32 2440
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %75 = ptrtoint ptr %rx_ready_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_ready_ptr.i.i, align 4
  %rx_skb_ptr.i.i = getelementptr inbounds %struct.rx_desc, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %rx_skb_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_skb_ptr.i.i, align 16
  tail call void @consume_skb(ptr noundef %78) #10
  %79 = ptrtoint ptr %rx_ready_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_ready_ptr.i.i, align 4
  %next_rx_desc.i.i = getelementptr inbounds %struct.rx_desc, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %next_rx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %next_rx_desc.i.i, align 4
  store ptr %82, ptr %rx_ready_ptr.i.i, align 4
  %83 = ptrtoint ptr %rx_avail_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_avail_cnt.i.i, align 4
  %dec.i.i = add i32 %84, -1
  store i32 %dec.i.i, ptr %rx_avail_cnt.i.i, align 4
  %tobool3.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool3.not.i.i, label %while.body.i.i.dmfe_dynamic_reset.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.dmfe_dynamic_reset.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_dynamic_reset.exit

dmfe_dynamic_reset.exit:                          ; preds = %while.body.i.i.dmfe_dynamic_reset.exit_crit_edge, %do.end2.i.i.dmfe_dynamic_reset.exit_crit_edge
  %tx_packet_cnt.i = getelementptr i8, ptr %3, i32 2444
  %85 = ptrtoint ptr %tx_packet_cnt.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tx_packet_cnt.i, align 4
  %tx_queue_cnt.i = getelementptr i8, ptr %3, i32 2448
  %86 = ptrtoint ptr %tx_queue_cnt.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tx_queue_cnt.i, align 4
  %87 = ptrtoint ptr %rx_avail_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %rx_avail_cnt.i.i, align 4
  tail call void @netif_carrier_off(ptr noundef %3) #10
  %wait_reset.i = getelementptr i8, ptr %3, i32 2475
  %88 = ptrtoint ptr %wait_reset.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %wait_reset.i, align 1
  tail call fastcc void @dmfe_init_dm910x(ptr noundef %3) #10
  %89 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %90) #10
  %91 = ptrtoint ptr %first_in_callback to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %first_in_callback, align 1
  br label %cleanup

if.end97:                                         ; preds = %if.end74
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %93)
  %cmp99 = icmp eq i32 %93, -1858989438
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr102 = getelementptr i8, ptr %5, i32 75
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr102) #10, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  br label %if.end106

if.else:                                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr104 = getelementptr i8, ptr %5, i32 96
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr104) #10, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  br label %if.end106

if.end106:                                        ; preds = %if.else, %if.then101
  %tmp_cr12.0 = phi i8 [ %94, %if.then101 ], [ %95, %if.else ]
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %97, label %if.end106.if.else129_crit_edge [
    i32 -1862135166, label %land.lhs.true110
    i32 -1858989438, label %land.lhs.true117
  ]

if.end106.if.else129_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else129

land.lhs.true110:                                 ; preds = %if.end106
  %chip_revision = getelementptr i8, ptr %t, i32 -172
  %99 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %100)
  %cmp112 = icmp eq i8 %100, 48
  br i1 %cmp112, label %land.lhs.true110.if.then122_crit_edge, label %land.lhs.true110.if.else129_crit_edge

land.lhs.true110.if.else129_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else129

land.lhs.true110.if.then122_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then122

land.lhs.true117:                                 ; preds = %if.end106
  %chip_revision118 = getelementptr i8, ptr %t, i32 -172
  %101 = ptrtoint ptr %chip_revision118 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %chip_revision118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %102)
  %cmp120 = icmp eq i8 %102, 16
  br i1 %cmp120, label %land.lhs.true117.if.then122_crit_edge, label %land.lhs.true117.if.else129_crit_edge

land.lhs.true117.if.else129_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else129

land.lhs.true117.if.then122_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then122

if.then122:                                       ; preds = %land.lhs.true117.if.then122_crit_edge, %land.lhs.true110.if.then122_crit_edge
  %103 = lshr i8 %tmp_cr12.0, 1
  %.lobit379 = and i8 %103, 1
  %104 = xor i8 %.lobit379, 1
  %105 = zext i8 %104 to i32
  br label %if.end133

if.else129:                                       ; preds = %land.lhs.true117.if.else129_crit_edge, %land.lhs.true110.if.else129_crit_edge, %if.end106.if.else129_crit_edge
  %106 = and i8 %tmp_cr12.0, 67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool132.not = icmp ne i8 %106, 0
  %cond = zext i1 %tobool132.not to i32
  br label %if.end133

if.end133:                                        ; preds = %if.else129, %if.then122
  %link_ok.0 = phi i32 [ %cond, %if.else129 ], [ %105, %if.then122 ]
  %107 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ioaddr1, align 4
  %phy_addr135 = getelementptr i8, ptr %t, i32 -6
  %109 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %phy_addr135, align 2
  %call137 = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %108, i8 noundef zeroext %110, i8 noundef zeroext 1, i32 noundef %97)
  %111 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ioaddr1, align 4
  %113 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %phy_addr135, align 2
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr, align 4
  %call141 = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %112, i8 noundef zeroext %114, i8 noundef zeroext 1, i32 noundef %116)
  %117 = lshr i16 %call141, 2
  %.lobit = and i16 %117, 1
  %118 = zext i16 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %link_ok.0, i32 %118)
  %cmp146.not = icmp eq i32 %link_ok.0, %118
  br i1 %cmp146.not, label %if.end133.if.end161_crit_edge, label %do.body149

if.end133.if.end161_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

do.body149:                                       ; preds = %if.end133
  %119 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool150.not = icmp eq i32 %119, 0
  br i1 %tobool150.not, label %do.body149.do.end159_crit_edge, label %do.end154

do.body149.do.end159_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end159

do.end154:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #12
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.59, i32 noundef 0) #13
  br label %do.end159

do.end159:                                        ; preds = %do.end154, %do.body149.do.end159_crit_edge
  %or160 = or i32 %link_ok.0, %118
  br label %if.end161

if.end161:                                        ; preds = %do.end159, %if.end133.if.end161_crit_edge
  %link_ok.1 = phi i32 [ %or160, %do.end159 ], [ %link_ok.0, %if.end133.if.end161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_ok.1)
  %tobool162.not = icmp eq i32 %link_ok.1, 0
  br i1 %tobool162.not, label %land.lhs.true163, label %if.end161.if.else198_crit_edge

if.end161.if.else198_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else198

land.lhs.true163:                                 ; preds = %if.end161
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %120 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %state.i, align 4
  %122 = and i32 %121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i348 = icmp eq i32 %122, 0
  br i1 %tobool.not.i348, label %do.body167, label %land.lhs.true163.if.else198_crit_edge

land.lhs.true163.if.else198_crit_edge:            ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else198

do.body167:                                       ; preds = %land.lhs.true163
  %123 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool168.not = icmp eq i32 %123, 0
  br i1 %tobool168.not, label %do.body167.do.end178_crit_edge, label %do.end172

do.body167.do.end178_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end178

do.end172:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #12
  %conv174 = zext i8 %tmp_cr12.0 to i32
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.62, i32 noundef %conv174) #13
  br label %do.end178

do.end178:                                        ; preds = %do.end172, %do.body167.do.end178_crit_edge
  tail call void @netif_carrier_off(ptr noundef %3) #10
  %media_mode = getelementptr i8, ptr %t, i32 -8
  %124 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %media_mode, align 4
  %126 = and i8 %125, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool181.not = icmp eq i8 %126, 0
  br i1 %tobool181.not, label %if.then182, label %do.end178.if.end186_crit_edge

do.end178.if.end186_crit_edge:                    ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then182:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ioaddr1, align 4
  %129 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %phy_addr135, align 2
  %131 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %add.ptr, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %128, i8 noundef zeroext %130, i8 noundef zeroext 0, i16 noundef zeroext 4096, i32 noundef %132)
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %do.end178.if.end186_crit_edge
  %133 = ptrtoint ptr %media_mode to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %media_mode, align 4
  %135 = and i8 %134, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool190.not = icmp eq i8 %135, 0
  br i1 %tobool190.not, label %if.end186.if.end237_crit_edge, label %if.then191

if.end186.if.end237_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

if.then191:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %cr6_data192 = getelementptr i8, ptr %t, i32 -104
  %136 = ptrtoint ptr %cr6_data192 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cr6_data192, align 4
  %or193 = and i32 %137, -262657
  %and195 = or i32 %or193, 262144
  store i32 %and195, ptr %cr6_data192, align 4
  %and.i349 = and i32 %and195, -8707
  %add.ptr.i350 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %138 = tail call i32 @llvm.bswap.i32(i32 %and.i349) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 %138) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %140 = tail call i32 @llvm.bswap.i32(i32 %and195) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 %140) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 1073740) #10
  br label %if.end237

if.else198:                                       ; preds = %land.lhs.true163.if.else198_crit_edge, %if.end161.if.else198_crit_edge
  %state.i351 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %142 = ptrtoint ptr %state.i351 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %state.i351, align 4
  %144 = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i352 = icmp eq i32 %144, 0
  br i1 %tobool.not.i352, label %if.else198.if.end237_crit_edge, label %do.body201

if.else198.if.end237_crit_edge:                   ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

do.body201:                                       ; preds = %if.else198
  %145 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool202.not = icmp eq i32 %145, 0
  br i1 %tobool202.not, label %do.body201.do.end212_crit_edge, label %do.end206

do.body201.do.end212_crit_edge:                   ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end212

do.end206:                                        ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %conv208 = zext i8 %tmp_cr12.0 to i32
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.65, i32 noundef %conv208) #13
  br label %do.end212

do.end212:                                        ; preds = %do.end206, %do.body201.do.end212_crit_edge
  %media_mode213 = getelementptr i8, ptr %t, i32 -8
  %146 = ptrtoint ptr %media_mode213 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %media_mode213, align 4
  %148 = and i8 %147, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool216.not = icmp eq i8 %148, 0
  br i1 %tobool216.not, label %do.end212.if.then220_crit_edge, label %lor.lhs.false217

do.end212.if.then220_crit_edge:                   ; preds = %do.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then220

lor.lhs.false217:                                 ; preds = %do.end212
  %149 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ioaddr1, align 4
  %cr6_data.i354 = getelementptr i8, ptr %t, i32 -104
  %151 = ptrtoint ptr %cr6_data.i354 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cr6_data.i354, align 4
  %and.i355 = and i32 %152, -262145
  %and.i.i = and i32 %152, -270339
  %add.ptr.i.i = getelementptr i8, ptr %150, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %153 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %153) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %and.i355) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %155) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 1073740) #10
  %157 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ioaddr1, align 4
  %159 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %phy_addr135, align 2
  %161 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %add.ptr, align 4
  %call.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %158, i8 noundef zeroext %160, i8 noundef zeroext 1, i32 noundef %162) #10
  %163 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ioaddr1, align 4
  %165 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %phy_addr135, align 2
  %167 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr, align 4
  %call6.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %164, i8 noundef zeroext %166, i8 noundef zeroext 1, i32 noundef %168) #10
  %conv.i = zext i16 %call6.i to i32
  %and7.i = and i32 %conv.i, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and7.i)
  %cmp.i = icmp eq i32 %and7.i, 36
  br i1 %cmp.i, label %if.then.i, label %if.else35.i

if.then.i:                                        ; preds = %lor.lhs.false217
  %169 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %170)
  %cmp10.i = icmp eq i32 %170, -1858989438
  %171 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ioaddr1, align 4
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i67.i = getelementptr i8, ptr %172, i32 156
  %173 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i67.i) #10, !srcloc !293
  %174 = tail call i16 @llvm.bswap.i16(i16 %173) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %phy_addr135, align 2
  %call23.i = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %172, i8 noundef zeroext %176, i8 noundef zeroext 17, i32 noundef %170) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then12.i
  %phy_mode.0.in.i = phi i16 [ %174, %if.then12.i ], [ %call23.i, %if.else.i ]
  %phy_mode.0.i = and i16 %phy_mode.0.in.i, -4096
  %conv27.i = zext i16 %phy_mode.0.i to i32
  %177 = add nsw i32 %conv27.i, -4096
  %178 = lshr exact i32 %177, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %177)
  %179 = icmp ult i32 %177, 32768
  br i1 %179, label %switch.hole_check, label %if.end.i.sw.default.i_crit_edge

if.end.i.sw.default.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.end.i.sw.default.i_crit_edge
  %op_mode34.i = getelementptr i8, ptr %t, i32 -7
  %180 = ptrtoint ptr %op_mode34.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %op_mode34.i, align 1
  br label %if.end235

if.else35.i:                                      ; preds = %lor.lhs.false217
  %op_mode36.i = getelementptr i8, ptr %t, i32 -7
  %181 = ptrtoint ptr %op_mode36.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %op_mode36.i, align 1
  %182 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i356 = icmp eq i32 %182, 0
  br i1 %tobool.not.i356, label %if.else35.i.if.end235_crit_edge, label %do.end.i357

if.else35.i.if.end235_crit_edge:                  ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

do.end.i357:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #12
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.78, i32 noundef %conv.i) #13
  br label %if.end235

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %178 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %183 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %switch.lobit.not = icmp eq i8 %183, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.dmfe_timer, i32 0, i32 %178
  %184 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %184)
  %switch.load = load i8, ptr %switch.gep, align 1
  %op_mode.i = getelementptr i8, ptr %t, i32 -7
  %185 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %switch.load, ptr %op_mode.i, align 1
  br label %if.then220

if.then220:                                       ; preds = %switch.lookup, %do.end212.if.then220_crit_edge
  tail call void @netif_carrier_on(ptr noundef %3) #10
  %op_mode = getelementptr i8, ptr %t, i32 -7
  %186 = ptrtoint ptr %op_mode to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %op_mode, align 1
  %conv225 = zext i8 %187 to i32
  %and226 = and i32 %conv225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  %cond228 = select i1 %tobool227.not, ptr @.str.70, ptr @.str.69
  %and231 = and i32 %conv225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  %cond233 = select i1 %tobool232.not, ptr @.str.72, ptr @.str.71
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %cond228, ptr noundef nonnull %cond233) #13
  br label %if.end235

if.end235:                                        ; preds = %if.then220, %do.end.i357, %if.else35.i.if.end235_crit_edge, %sw.default.i
  %op_mode.i358 = getelementptr i8, ptr %t, i32 -7
  %188 = ptrtoint ptr %op_mode.i358 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %op_mode.i358, align 1
  %190 = and i8 %189, 4
  %cr6_data1.i = getelementptr i8, ptr %t, i32 -104
  %191 = ptrtoint ptr %cr6_data1.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cr6_data1.i, align 4
  %and2.i = and i32 %192, -262657
  %193 = zext i8 %190 to i32
  %194 = shl nuw nsw i32 %193, 7
  %and2.sink.i = or i32 %194, %and2.i
  %195 = and i8 %189, 16
  %196 = zext i8 %195 to i32
  %197 = shl nuw nsw i32 %196, 14
  %and12.sink.i = or i32 %and2.sink.i, %197
  store i32 %and12.sink.i, ptr %cr6_data1.i, align 4
  %198 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ioaddr1, align 4
  %and.i.i359 = and i32 %and12.sink.i, -8195
  %add.ptr.i.i360 = getelementptr i8, ptr %199, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %200 = tail call i32 @llvm.bswap.i32(i32 %and.i.i359) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i360, i32 %200) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %202 = tail call i32 @llvm.bswap.i32(i32 %and12.sink.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i360, i32 %202) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 1073740) #10
  %204 = ptrtoint ptr %media_mode213 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %media_mode213, align 4
  %206 = and i8 %205, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool17.not.i = icmp eq i8 %206, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end235.if.end237_crit_edge

if.end235.if.end237_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

if.then18.i:                                      ; preds = %if.end235
  %207 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ioaddr1, align 4
  %209 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %phy_addr135, align 2
  %211 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr, align 4
  %call.i362 = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %208, i8 noundef zeroext %210, i8 noundef zeroext 6, i32 noundef %212) #10
  %213 = and i16 %call.i362, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %213)
  %tobool22.not.i = icmp eq i16 %213, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.then18.i.if.end237_crit_edge

if.then18.i.if.end237_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237

if.then23.i:                                      ; preds = %if.then18.i
  %214 = ptrtoint ptr %op_mode.i358 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %op_mode.i358, align 1
  %switch.tableidx = add i8 %215, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %216 = icmp ult i8 %switch.tableidx, 5
  br i1 %216, label %switch.lookup383, label %if.then23.i.sw.epilog.i_crit_edge

if.then23.i.sw.epilog.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.lookup383:                                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = sext i8 %switch.tableidx to i32
  %switch.gep384 = getelementptr inbounds [5 x i16], ptr @switch.table.dmfe_timer.105, i32 0, i32 %217
  %218 = ptrtoint ptr %switch.gep384 to i32
  call void @__asan_load2_noabort(i32 %218)
  %switch.load385 = load i16, ptr %switch.gep384, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup383, %if.then23.i.sw.epilog.i_crit_edge
  %phy_reg.0.i = phi i16 [ 0, %if.then23.i.sw.epilog.i_crit_edge ], [ %switch.load385, %switch.lookup383 ]
  %219 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ioaddr1, align 4
  %221 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %phy_addr135, align 2
  %223 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %220, i8 noundef zeroext %222, i8 noundef zeroext 0, i16 noundef zeroext %phy_reg.0.i, i32 noundef %224) #10
  %chip_type.i = getelementptr i8, ptr %t, i32 -9
  %225 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %chip_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool33.not.i = icmp eq i8 %226, 0
  br i1 %tobool33.not.i, label %sw.epilog.i.if.end38.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end38.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %227 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1862135166, i32 %228)
  %cmp.i364 = icmp eq i32 %228, -1862135166
  br i1 %cmp.i364, label %while.body.preheader.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

while.body.preheader.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %230(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %231(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %232 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %232(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %235(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %237 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %237(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %238 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %238(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %239 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %239(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %242 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %242(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %243(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %244(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %245(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %246(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %247(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %248(i32 noundef 214748000) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %while.body.preheader.i, %land.lhs.true.i.if.end38.i_crit_edge, %sw.epilog.i.if.end38.i_crit_edge
  %249 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ioaddr1, align 4
  %251 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %phy_addr135, align 2
  %253 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %250, i8 noundef zeroext %252, i8 noundef zeroext 0, i16 noundef zeroext %phy_reg.0.i, i32 noundef %254) #10
  br label %if.end237

if.end237:                                        ; preds = %if.end38.i, %if.then18.i.if.end237_crit_edge, %if.end235.if.end237_crit_edge, %if.else198.if.end237_crit_edge, %if.then191, %if.end186.if.end237_crit_edge
  %HPNA_command = getelementptr i8, ptr %t, i32 -20
  %255 = ptrtoint ptr %HPNA_command to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %HPNA_command, align 4
  %257 = and i16 %256, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %tobool240.not = icmp eq i16 %257, 0
  br i1 %tobool240.not, label %if.end237.cleanup_crit_edge, label %if.then241

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then241:                                       ; preds = %if.end237
  %HPNA_timer = getelementptr i8, ptr %t, i32 -18
  %258 = ptrtoint ptr %HPNA_timer to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %HPNA_timer, align 2
  %dec = add i16 %259, -1
  store i16 %dec, ptr %HPNA_timer, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool243.not = icmp eq i16 %dec, 0
  br i1 %tobool243.not, label %if.then244, label %if.then241.cleanup_crit_edge

if.then241.cleanup_crit_edge:                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then244:                                       ; preds = %if.then241
  %260 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ioaddr1, align 4
  %262 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %phy_addr135, align 2
  %264 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %add.ptr, align 4
  %call.i367 = tail call fastcc zeroext i16 @dmfe_phy_read(ptr noundef %261, i8 noundef zeroext %263, i8 noundef zeroext 17, i32 noundef %265) #10
  %266 = lshr i16 %call.i367, 5
  %267 = and i16 %266, 3
  %268 = zext i16 %267 to i32
  %switch.gep387 = getelementptr inbounds [4 x i32], ptr @switch.table.dmfe_timer.106, i32 0, i32 %268
  %269 = ptrtoint ptr %switch.gep387 to i32
  call void @__asan_load4_noabort(i32 %269)
  %switch.load388 = load i32, ptr %switch.gep387, align 4
  %270 = ptrtoint ptr %HPNA_command to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %HPNA_command, align 4
  %272 = and i16 %271, 3840
  %and5.i = zext i16 %272 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load388, i32 %and5.i)
  %cmp.not.i = icmp eq i32 %switch.load388, %and5.i
  br i1 %cmp.not.i, label %if.then244.dmfe_HPNA_remote_cmd_chk.exit_crit_edge, label %if.then.i370

if.then244.dmfe_HPNA_remote_cmd_chk.exit_crit_edge: ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_HPNA_remote_cmd_chk.exit

if.then.i370:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  %273 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ioaddr1, align 4
  %275 = ptrtoint ptr %phy_addr135 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %phy_addr135, align 2
  %277 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %add.ptr, align 4
  tail call fastcc void @dmfe_phy_write(ptr noundef %274, i8 noundef zeroext %276, i8 noundef zeroext 16, i16 noundef zeroext %271, i32 noundef %278) #10
  br label %dmfe_HPNA_remote_cmd_chk.exit

dmfe_HPNA_remote_cmd_chk.exit:                    ; preds = %if.then.i370, %if.then244.dmfe_HPNA_remote_cmd_chk.exit_crit_edge
  %.sink.i = phi i16 [ 8, %if.then.i370 ], [ 600, %if.then244.dmfe_HPNA_remote_cmd_chk.exit_crit_edge ]
  %279 = ptrtoint ptr %HPNA_timer to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %.sink.i, ptr %HPNA_timer, align 2
  br label %cleanup

cleanup:                                          ; preds = %dmfe_HPNA_remote_cmd_chk.exit, %if.then241.cleanup_crit_edge, %if.end237.cleanup_crit_edge, %dmfe_dynamic_reset.exit, %if.then25
  %.sink382 = phi i32 [ 100, %dmfe_dynamic_reset.exit ], [ 300, %if.then25 ], [ 100, %if.then241.cleanup_crit_edge ], [ 100, %dmfe_HPNA_remote_cmd_chk.exit ], [ 100, %if.end237.cleanup_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %280 = load volatile i32, ptr @jiffies, align 128
  %add247 = add i32 %280, %.sink382
  %expires249 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %281 = ptrtoint ptr %expires249 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %add247, ptr %expires249, align 4
  tail call void @add_timer(ptr noundef %t) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allocate_rx_buffer(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_insert_ptr = getelementptr i8, ptr %dev, i32 2436
  %0 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_insert_ptr, align 4
  %rx_avail_cnt = getelementptr i8, ptr %dev, i32 2452
  %2 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_avail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp19 = icmp ult i32 %3, 32
  br i1 %cmp19, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pdev = getelementptr i8, ptr %dev, i32 2316
  br label %while.body

while.body:                                       ; preds = %dma_map_single_attrs.exit.while.body_crit_edge, %while.body.lr.ph
  %rxptr.020 = phi ptr [ %1, %while.body.lr.ph ], [ %19, %dma_map_single_attrs.exit.while.body_crit_edge ]
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1568, i32 noundef 2592) #10
  %cmp2 = icmp eq ptr %call.i, null
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %rx_skb_ptr = getelementptr inbounds %struct.rx_desc, ptr %rxptr.020, i32 0, i32 4
  %4 = ptrtoint ptr %rx_skb_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %rx_skb_ptr, align 16
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #10
  br i1 %call.i17, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !295

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev3) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev3, ptr noundef %8, i32 noundef 1568) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i18 = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev3, ptr noundef %add.ptr.i18, i32 noundef %and.i, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %rdes2 = getelementptr inbounds %struct.rx_desc, ptr %rxptr.020, i32 0, i32 2
  %16 = ptrtoint ptr %rdes2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rdes2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %rxptr.020 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %rxptr.020, align 32
  %next_rx_desc = getelementptr inbounds %struct.rx_desc, ptr %rxptr.020, i32 0, i32 5
  %18 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_rx_desc, align 4
  %20 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_avail_cnt, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %rx_avail_cnt, align 4
  %cmp = icmp ult i32 %inc, 32
  br i1 %cmp, label %dma_map_single_attrs.exit.while.body_crit_edge, label %dma_map_single_attrs.exit.while.end_crit_edge

dma_map_single_attrs.exit.while.end_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

dma_map_single_attrs.exit.while.body_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %dma_map_single_attrs.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rxptr.0.lcssa = phi ptr [ %1, %entry.while.end_crit_edge ], [ %rxptr.020, %while.body.while.end_crit_edge ], [ %19, %dma_map_single_attrs.exit.while.end_crit_edge ]
  %22 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rxptr.0.lcssa, ptr %rx_insert_ptr, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmfe_reuse_skb(ptr nocapture noundef %db, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_insert_ptr = getelementptr inbounds %struct.dmfe_board_info, ptr %db, i32 0, i32 23
  %0 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_insert_ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 32
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  %rx_skb_ptr = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rx_skb_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %rx_skb_ptr, align 16
  %pdev = getelementptr inbounds %struct.dmfe_board_info, ptr %db, i32 0, i32 3
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !295

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.39, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %8, i32 noundef 1568) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1568, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %rdes2 = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %rdes2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rdes2, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %1, align 32
  %rx_avail_cnt = getelementptr inbounds %struct.dmfe_board_info, ptr %db, i32 0, i32 27
  %18 = ptrtoint ptr %rx_avail_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_avail_cnt, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_avail_cnt, align 4
  %next_rx_desc = getelementptr inbounds %struct.rx_desc, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_rx_desc, align 4
  %22 = ptrtoint ptr %rx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %rx_insert_ptr, align 4
  br label %if.end13

do.body3:                                         ; preds = %entry
  %23 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not = icmp eq i32 %23, 0
  br i1 %tobool4.not, label %do.body3.if.end13_crit_edge, label %do.end8

do.body3.if.end13_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %rx_avail_cnt9 = getelementptr inbounds %struct.dmfe_board_info, ptr %db, i32 0, i32 27
  %24 = ptrtoint ptr %rx_avail_cnt9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_avail_cnt9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef %25) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end8, %do.body3.if.end13_crit_edge, %dma_map_single_attrs.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm9132_id_table(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %6) #10, !srcloc !299
  %add.ptr4 = getelementptr i8, ptr %3, i32 196
  %arrayidx.1 = getelementptr i16, ptr %1, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %9) #10, !srcloc !299
  %add.ptr4.1 = getelementptr i8, ptr %3, i32 200
  %arrayidx.2 = getelementptr i16, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.1, i16 %12) #10, !srcloc !299
  %13 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 32768, ptr %hash_table, align 8
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %14 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.055 = load ptr, ptr %mc, align 4
  %cmp11.not56 = icmp eq ptr %ha.055, %mc
  br i1 %cmp11.not56, label %entry.for.cond26.preheader_crit_edge, label %entry.for.body13_crit_edge

entry.for.body13_crit_edge:                       ; preds = %entry
  br label %for.body13

entry.for.cond26.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.body13.for.cond26.preheader_crit_edge, %entry.for.cond26.preheader_crit_edge
  %15 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %16 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %17 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %add.ptr4.2 = getelementptr i8, ptr %3, i32 204
  %18 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hash_table, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.2, i16 %20) #10, !srcloc !299
  %add.ptr36 = getelementptr i8, ptr %3, i32 208
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %17, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 %23) #10, !srcloc !299
  %add.ptr36.1 = getelementptr i8, ptr %3, i32 212
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.1, i16 %26) #10, !srcloc !299
  %add.ptr36.2 = getelementptr i8, ptr %3, i32 216
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %15, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36.2, i16 %29) #10, !srcloc !299
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #10
  ret void

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %entry.for.body13_crit_edge
  %ha.057 = phi ptr [ %ha.0, %for.body13.for.body13_crit_edge ], [ %ha.055, %entry.for.body13_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.057, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #14
  %rem = and i32 %call.i, 15
  %shl = shl nuw nsw i32 1, %rem
  %and = lshr i32 %call.i, 4
  %div52 = and i32 %and, 3
  %arrayidx16 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %div52
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx16, align 2
  %32 = trunc i32 %shl to i16
  %conv18 = or i16 %31, %32
  store i16 %conv18, ptr %arrayidx16, align 2
  %33 = ptrtoint ptr %ha.057 to i32
  call void @__asan_load4_noabort(i32 %33)
  %ha.0 = load ptr, ptr %ha.057, align 4
  %cmp11.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp11.not, label %for.body13.for.cond26.preheader_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.body13.for.cond26.preheader_crit_edge:        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond26.preheader
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_filter_frame(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, i32 noundef 0) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tx_insert_ptr = getelementptr i8, ptr %dev, i32 2424
  %1 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_insert_ptr, align 4
  %tx_buf_ptr = getelementptr inbounds %struct.tx_desc, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %tx_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf_ptr, align 16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv = zext i16 %8 to i32
  %incdec.ptr = getelementptr i32, ptr %4, i32 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %4, align 4
  %arrayidx5 = getelementptr i16, ptr %6, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %11 to i32
  %incdec.ptr7 = getelementptr i32, ptr %4, i32 2
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv6, ptr %incdec.ptr, align 4
  %arrayidx8 = getelementptr i16, ptr %6, i32 2
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %14 to i32
  %incdec.ptr10 = getelementptr i32, ptr %4, i32 3
  %15 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv9, ptr %incdec.ptr7, align 4
  %incdec.ptr11 = getelementptr i32, ptr %4, i32 4
  %16 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65535, ptr %incdec.ptr10, align 4
  %incdec.ptr12 = getelementptr i32, ptr %4, i32 5
  %17 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 65535, ptr %incdec.ptr11, align 4
  %incdec.ptr13 = getelementptr i32, ptr %4, i32 6
  %18 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65535, ptr %incdec.ptr12, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %19 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.092 = load ptr, ptr %mc, align 4
  %cmp.not93 = icmp eq ptr %ha.092, %mc
  br i1 %cmp.not93, label %do.end4.for.end_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.for.end_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %ha.095 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.092, %do.end4.for.body_crit_edge ]
  %suptr.094 = phi ptr [ %incdec.ptr27, %for.body.for.body_crit_edge ], [ %incdec.ptr13, %do.end4.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.095, i32 0, i32 2
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  %conv20 = zext i16 %21 to i32
  %incdec.ptr21 = getelementptr i32, ptr %suptr.094, i32 1
  %22 = ptrtoint ptr %suptr.094 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv20, ptr %suptr.094, align 4
  %arrayidx22 = getelementptr %struct.netdev_hw_addr, ptr %ha.095, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %24 to i32
  %incdec.ptr24 = getelementptr i32, ptr %suptr.094, i32 2
  %25 = ptrtoint ptr %incdec.ptr21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv23, ptr %incdec.ptr21, align 4
  %arrayidx25 = getelementptr %struct.netdev_hw_addr, ptr %ha.095, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %27 to i32
  %incdec.ptr27 = getelementptr i32, ptr %suptr.094, i32 3
  %28 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv26, ptr %incdec.ptr24, align 4
  %29 = ptrtoint ptr %ha.095 to i32
  call void @__asan_load4_noabort(i32 %29)
  %ha.0 = load ptr, ptr %ha.095, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end4.for.end_crit_edge
  %suptr.0.lcssa = phi ptr [ %incdec.ptr13, %do.end4.for.end_crit_edge ], [ %incdec.ptr27, %for.body.for.end_crit_edge ]
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %31)
  %cmp3596 = icmp slt i32 %31, 14
  br i1 %cmp3596, label %for.end.for.body37_crit_edge, label %for.end.for.end42_crit_edge

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %suptr.198 = phi ptr [ %incdec.ptr40, %for.body37.for.body37_crit_edge ], [ %suptr.0.lcssa, %for.end.for.body37_crit_edge ]
  %i.097 = phi i32 [ %inc, %for.body37.for.body37_crit_edge ], [ %31, %for.end.for.body37_crit_edge ]
  %incdec.ptr38 = getelementptr i32, ptr %suptr.198, i32 1
  %32 = ptrtoint ptr %suptr.198 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %suptr.198, align 4
  %incdec.ptr39 = getelementptr i32, ptr %suptr.198, i32 2
  %33 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %incdec.ptr38, align 4
  %incdec.ptr40 = getelementptr i32, ptr %suptr.198, i32 3
  %34 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65535, ptr %incdec.ptr39, align 4
  %inc = add i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.body37.for.end42_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

for.body37.for.end42_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.end42:                                        ; preds = %for.body37.for.end42_crit_edge, %for.end.for.end42_crit_edge
  %next_tx_desc = getelementptr inbounds %struct.tx_desc, ptr %2, i32 0, i32 5
  %35 = ptrtoint ptr %next_tx_desc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next_tx_desc, align 4
  %37 = ptrtoint ptr %tx_insert_ptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tx_insert_ptr, align 4
  %tdes1 = getelementptr inbounds %struct.tx_desc, ptr %2, i32 0, i32 1
  %38 = ptrtoint ptr %tdes1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1073741687, ptr %tdes1, align 4
  %tx_packet_cnt = getelementptr i8, ptr %dev, i32 2444
  %39 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_packet_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool44.not = icmp eq i32 %40, 0
  br i1 %tobool44.not, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.end42
  %ioaddr46 = getelementptr i8, ptr %dev, i32 2364
  %41 = ptrtoint ptr %ioaddr46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr46, align 4
  %43 = ptrtoint ptr %tx_packet_cnt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %tx_packet_cnt, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %2, align 32
  %cr6_data = getelementptr i8, ptr %dev, i32 2376
  %45 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cr6_data, align 4
  %or = or i32 %46, 8192
  %and.i = and i32 %46, -8195
  %add.ptr.i89 = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %47) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %49) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #10
  %add.ptr49 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #10, !srcloc !288
  %51 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cr6_data, align 4
  %and.i90 = and i32 %52, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i90) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %53) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %52) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %55) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 1073740) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 12
  %60 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.not.i.i = icmp eq i32 %61, %59
  br i1 %cmp.not.i.i, label %if.then45.if.end52_crit_edge, label %do.body5.i.i

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body5.i.i:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %59, ptr %trans_start.i.i, align 16
  br label %if.end52

if.else:                                          ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #12
  %tx_queue_cnt = getelementptr i8, ptr %dev, i32 2448
  %63 = ptrtoint ptr %tx_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_queue_cnt, align 4
  %inc51 = add i32 %64, 1
  store i32 %inc51, ptr %tx_queue_cnt, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else, %do.body5.i.i, %if.then45.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dmfe_phy_read(ptr noundef %ioaddr, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset, i32 noundef %chip_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %chip_id)
  %cmp = icmp eq i32 %chip_id, -1858989438
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 72
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %offset to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 128
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !293
  %1 = tail call i16 @llvm.bswap.i16(i16 %0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.067 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  %conv7 = zext i8 %phy_addr to i32
  br label %for.body6

for.cond10.preheader:                             ; preds = %for.body6
  %conv14 = zext i8 %offset to i32
  br label %for.body13

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end
  %i.168 = phi i32 [ 16, %for.end ], [ %21, %for.body6.for.body6_crit_edge ]
  %and = and i32 %i.168, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %18 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #10
  %21 = lshr i32 %i.168, 1
  %cmp4.not = icmp ult i32 %i.168, 2
  br i1 %cmp4.not, label %for.cond10.preheader, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond10.preheader
  %i.269 = phi i32 [ 16, %for.cond10.preheader ], [ %26, %for.body13.for.body13_crit_edge ]
  %and15 = and i32 %i.269, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond17) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %23 = or i32 %cond17, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond17) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #10
  %26 = lshr i32 %i.269, 1
  %cmp11.not = icmp ult i32 %i.269, 2
  br i1 %cmp11.not, label %for.end20, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end20:                                        ; preds = %for.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1280) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #10
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1024) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.end20
  %phy_data.071 = phi i16 [ 0, %for.end20 ], [ %or56, %for.body25.for.body25_crit_edge ]
  %i.370 = phi i32 [ 0, %for.end20 ], [ %inc33, %for.body25.for.body25_crit_edge ]
  %shl = shl i16 %phy_data.071, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1280) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %32 = trunc i32 %31 to i16
  %33 = lshr i16 %32, 11
  %conv.i66 = and i16 %33, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1024) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  %or56 = or i16 %conv.i66, %shl
  %inc33 = add nuw nsw i32 %i.370, 1
  %exitcond72.not = icmp eq i32 %inc33, 16
  br i1 %exitcond72.not, label %for.body25.if.end_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

for.body25.if.end_crit_edge:                      ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body25.if.end_crit_edge, %if.then
  %phy_data.1 = phi i16 [ %1, %if.then ], [ %or56, %for.body25.if.end_crit_edge ]
  ret i16 %phy_data.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmfe_phy_write(ptr noundef %ioaddr, i8 noundef zeroext %phy_addr, i8 noundef zeroext %offset, i16 noundef zeroext %phy_data, i32 noundef %chip_id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1858989438, i32 %chip_id)
  %cmp = icmp eq i32 %chip_id, -1858989438
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 72
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %offset to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 128
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %0 = tail call i16 @llvm.bswap.i16(i16 %phy_data) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #10, !srcloc !299
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.078 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #10
  %inc = add nuw nsw i16 %i.078, 1
  %cmp2 = icmp ult i16 %i.078, 34
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #10
  %conv9 = zext i8 %phy_addr to i32
  br label %for.body8

for.cond15.preheader:                             ; preds = %for.body8
  %conv20 = zext i8 %offset to i32
  br label %for.body19

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.end
  %i.179 = phi i32 [ 16, %for.end ], [ %20, %for.body8.for.body8_crit_edge ]
  %and = and i32 %i.179, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %17 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #10
  %20 = lshr i32 %i.179, 1
  %cmp6.not = icmp ult i32 %i.179, 2
  br i1 %cmp6.not, label %for.cond15.preheader, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond15.preheader
  %i.281 = phi i32 [ 16, %for.cond15.preheader ], [ %25, %for.body19.for.body19_crit_edge ]
  %and22 = and i32 %i.281, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond24) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %22 = or i32 %cond24, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond24) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %25 = lshr i32 %i.281, 1
  %cmp17.not = icmp ult i32 %i.281, 2
  br i1 %cmp17.not, label %for.end29, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

for.end29:                                        ; preds = %for.body19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 768) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 512) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #10
  %conv35 = zext i16 %phy_data to i32
  br label %for.body34

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.end29
  %i.383 = phi i32 [ 32768, %for.end29 ], [ %36, %for.body34.for.body34_crit_edge ]
  %and37 = and i32 %i.383, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond39) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %33 = or i32 %cond39, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %cond39) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #10
  %36 = lshr i32 %i.383, 1
  %cmp32.not = icmp ult i32 %i.383, 2
  br i1 %cmp32.not, label %for.body34.if.end_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34

for.body34.if.end_crit_edge:                      ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body34.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmfe_ethtool_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.4, i32 noundef 32) #10
  %pdev = getelementptr i8, ptr %dev, i32 2316
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dmfe_ethtool_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wolinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wol_mode = getelementptr i8, ptr %dev, i32 2478
  %1 = ptrtoint ptr %wol_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wol_mode, align 2
  %conv = zext i8 %2 to i32
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %wolopts, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dmfe_ethtool_set_wol(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readonly %wolinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %1 to i8
  %wol_mode = getelementptr i8, ptr %dev, i32 2478
  %2 = ptrtoint ptr %wol_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %wol_mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_suspend(ptr noundef %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr2 = getelementptr i8, ptr %1, i32 2364
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 4
  tail call void @netif_device_detach(ptr noundef %1) #10
  %cr6_data = getelementptr i8, ptr %1, i32 2376
  %4 = ptrtoint ptr %cr6_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr6_data, align 4
  %and = and i32 %5, -8195
  store i32 %and, ptr %cr6_data, align 4
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %6) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %6) #10, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #10
  %add.ptr = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !288
  %add.ptr4 = getelementptr i8, ptr %3, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #10, !srcloc !288
  %10 = load i32, ptr @dmfe_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %entry.do.end2.i_crit_edge, label %do.end.i

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.76, i32 noundef 0) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %entry.do.end2.i_crit_edge
  %rx_avail_cnt.i = getelementptr i8, ptr %1, i32 2452
  %11 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_avail_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not11.i = icmp eq i32 %12, 0
  br i1 %tobool3.not11.i, label %do.end2.i.dmfe_free_rxbuffer.exit_crit_edge, label %while.body.lr.ph.i

do.end2.i.dmfe_free_rxbuffer.exit_crit_edge:      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_free_rxbuffer.exit

while.body.lr.ph.i:                               ; preds = %do.end2.i
  %rx_ready_ptr.i = getelementptr i8, ptr %1, i32 2440
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_ready_ptr.i, align 4
  %rx_skb_ptr.i = getelementptr inbounds %struct.rx_desc, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %rx_skb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_skb_ptr.i, align 16
  tail call void @consume_skb(ptr noundef %16) #10
  %17 = ptrtoint ptr %rx_ready_ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_ready_ptr.i, align 4
  %next_rx_desc.i = getelementptr inbounds %struct.rx_desc, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_rx_desc.i, align 4
  store ptr %20, ptr %rx_ready_ptr.i, align 4
  %21 = ptrtoint ptr %rx_avail_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_avail_cnt.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %rx_avail_cnt.i, align 4
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.dmfe_free_rxbuffer.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.dmfe_free_rxbuffer.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmfe_free_rxbuffer.exit

dmfe_free_rxbuffer.exit:                          ; preds = %while.body.i.dmfe_free_rxbuffer.exit_crit_edge, %do.end2.i.dmfe_free_rxbuffer.exit_crit_edge
  %call7 = tail call i32 @device_wakeup_enable(ptr noundef %dev_d) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmfe_resume(ptr noundef %dev_d) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @dmfe_init_dm910x(ptr noundef %1)
  %call1 = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #10
  tail call void @netif_device_attach(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !116, !118, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !261, !263, !264, !265, !266, !268, !269, !270, !272, !274, !275, !276}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @__UNIQUE_ID_author345, !1, !"__UNIQUE_ID_author345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2139, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2140, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2141, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2143, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype349, !8, !"__UNIQUE_ID_debugtype349", i1 false, i1 false}
!10 = !{ptr @__param_mode, !11, !"__param_mode", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2144, i32 1}
!12 = !{ptr @__UNIQUE_ID_modetype350, !11, !"__UNIQUE_ID_modetype350", i1 false, i1 false}
!13 = !{ptr @__param_cr6set, !14, !"__param_cr6set", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2145, i32 1}
!15 = !{ptr @__UNIQUE_ID_cr6settype351, !14, !"__UNIQUE_ID_cr6settype351", i1 false, i1 false}
!16 = !{ptr @__param_chkmode, !17, !"__param_chkmode", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2146, i32 1}
!18 = !{ptr @__UNIQUE_ID_chkmodetype352, !17, !"__UNIQUE_ID_chkmodetype352", i1 false, i1 false}
!19 = !{ptr @__param_HPNA_mode, !20, !"__param_HPNA_mode", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2147, i32 1}
!21 = !{ptr @__UNIQUE_ID_HPNA_modetype353, !20, !"__UNIQUE_ID_HPNA_modetype353", i1 false, i1 false}
!22 = !{ptr @__param_HPNA_rx_cmd, !23, !"__param_HPNA_rx_cmd", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2148, i32 1}
!24 = !{ptr @__UNIQUE_ID_HPNA_rx_cmdtype354, !23, !"__UNIQUE_ID_HPNA_rx_cmdtype354", i1 false, i1 false}
!25 = !{ptr @__param_HPNA_tx_cmd, !26, !"__param_HPNA_tx_cmd", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2149, i32 1}
!27 = !{ptr @__UNIQUE_ID_HPNA_tx_cmdtype355, !26, !"__UNIQUE_ID_HPNA_tx_cmdtype355", i1 false, i1 false}
!28 = !{ptr @__param_HPNA_NoiseFloor, !29, !"__param_HPNA_NoiseFloor", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2150, i32 1}
!30 = !{ptr @__UNIQUE_ID_HPNA_NoiseFloortype356, !29, !"__UNIQUE_ID_HPNA_NoiseFloortype356", i1 false, i1 false}
!31 = !{ptr @__param_SF_mode, !32, !"__param_SF_mode", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2151, i32 1}
!33 = !{ptr @__UNIQUE_ID_SF_modetype357, !32, !"__UNIQUE_ID_SF_modetype357", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_debug358, !35, !"__UNIQUE_ID_debug358", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2152, i32 1}
!36 = !{ptr @__UNIQUE_ID_mode359, !37, !"__UNIQUE_ID_mode359", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2153, i32 1}
!38 = !{ptr @__UNIQUE_ID_SF_mode360, !39, !"__UNIQUE_ID_SF_mode360", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2156, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2213, i32 2}
!42 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dmfe_cleanup_module._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @dmfe_cleanup_module._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__initcall__kmod_dmfe__361_2217_dmfe_init_module6, !48, !"__initcall__kmod_dmfe__361_2217_dmfe_init_module6", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2217, i32 1}
!49 = !{ptr @__exitcall_dmfe_cleanup_module, !50, !"__exitcall_dmfe_cleanup_module", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2218, i32 1}
!51 = !{ptr @dmfe_debug, !52, !"dmfe_debug", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 281, i32 12}
!53 = !{ptr @debug, !54, !"debug", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 286, i32 12}
!55 = !{ptr @cr6set, !56, !"cr6set", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 287, i32 12}
!57 = !{ptr @HPNA_mode, !58, !"HPNA_mode", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 290, i32 11}
!59 = !{ptr @HPNA_rx_cmd, !60, !"HPNA_rx_cmd", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 291, i32 11}
!61 = !{ptr @HPNA_tx_cmd, !62, !"HPNA_tx_cmd", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 292, i32 11}
!63 = !{ptr @HPNA_NoiseFloor, !64, !"HPNA_NoiseFloor", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 293, i32 11}
!65 = !{ptr @SF_mode, !66, !"SF_mode", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 294, i32 11}
!67 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!68 = !{ptr @__param_str_mode, !11, !"__param_str_mode", i1 false, i1 false}
!69 = !{ptr @mode, !70, !"mode", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 288, i32 22}
!71 = !{ptr @__param_str_cr6set, !14, !"__param_str_cr6set", i1 false, i1 false}
!72 = !{ptr @__param_str_chkmode, !17, !"__param_str_chkmode", i1 false, i1 false}
!73 = !{ptr @chkmode, !74, !"chkmode", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 289, i32 11}
!75 = !{ptr @__param_str_HPNA_mode, !20, !"__param_str_HPNA_mode", i1 false, i1 false}
!76 = !{ptr @__param_str_HPNA_rx_cmd, !23, !"__param_str_HPNA_rx_cmd", i1 false, i1 false}
!77 = !{ptr @__param_str_HPNA_tx_cmd, !26, !"__param_str_HPNA_tx_cmd", i1 false, i1 false}
!78 = !{ptr @__param_str_HPNA_NoiseFloor, !29, !"__param_str_HPNA_NoiseFloor", i1 false, i1 false}
!79 = !{ptr @__param_str_SF_mode, !32, !"__param_str_SF_mode", i1 false, i1 false}
!80 = !{ptr @.str.4, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2132, i32 11}
!82 = !{ptr @dmfe_driver, !83, !"dmfe_driver", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2131, i32 26}
!84 = !{ptr @dmfe_pci_tbl, !85, !"dmfe_pci_tbl", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2078, i32 35}
!86 = !{ptr @.str.5, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 359, i32 2}
!88 = !{ptr @dmfe_init_one._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @dmfe_init_one._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.6, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.8, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 384, i32 3}
!93 = !{ptr @dmfe_init_one._entry.7, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dmfe_init_one._entry_ptr.9, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.11, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 395, i32 3}
!97 = !{ptr @dmfe_init_one._entry.10, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dmfe_init_one._entry_ptr.12, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.14, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 401, i32 3}
!101 = !{ptr @dmfe_init_one._entry.13, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dmfe_init_one._entry_ptr.15, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.17, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 416, i32 3}
!105 = !{ptr @dmfe_init_one._entry.16, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dmfe_init_one._entry_ptr.18, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dmfe_init_one.__key, !108, !"__key", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 463, i32 2}
!109 = !{ptr @.str.19, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.21, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 485, i32 2}
!112 = !{ptr @.str.22, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.23, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dmfe_init_one._entry.20, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @dmfe_init_one._entry_ptr.24, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @netdev_ops, !117, !"netdev_ops", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 336, i32 36}
!118 = !{ptr @.str.25, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 549, i32 2}
!120 = !{ptr @dmfe_open._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @dmfe_open._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @dmfe_open.__key, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 585, i32 2}
!124 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.27, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 786, i32 2}
!127 = !{ptr @dmfe_interrupt._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @dmfe_interrupt._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.28, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dmfe_interrupt._entry.29, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 804, i32 3}
!132 = !{ptr @dmfe_interrupt._entry_ptr.30, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.31, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.32, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 967, i32 4}
!136 = !{ptr @dmfe_rx_packet._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @dmfe_rx_packet._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.33, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dmfe_rx_packet._entry.34, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1020, i32 5}
!141 = !{ptr @dmfe_rx_packet._entry_ptr.35, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1342, i32 3}
!144 = !{ptr @dmfe_reuse_skb._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @dmfe_reuse_skb._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.37, !143, !"<string literal>", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!149 = !{ptr @.str.38, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.39, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @dmfe_cr6_user_set, !152, !"dmfe_cr6_user_set", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 283, i32 12}
!153 = !{ptr @.str.40, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 605, i32 2}
!155 = !{ptr @dmfe_init_dm910x._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dmfe_init_dm910x._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.41, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.42, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1906, i32 2}
!160 = !{ptr @dmfe_parse_srom._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @dmfe_parse_srom._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.43, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dmfe_media_mode, !164, !"dmfe_media_mode", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 282, i32 22}
!165 = !{ptr @.str.44, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1362, i32 2}
!167 = !{ptr @dmfe_descriptor_init._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dmfe_descriptor_init._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.45, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.46, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1483, i32 2}
!172 = !{ptr @send_filter_frame._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @send_filter_frame._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.48, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1127, i32 2}
!177 = !{ptr @dmfe_timer._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @dmfe_timer._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.49, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.51, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1169, i32 4}
!182 = !{ptr @.str.52, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @dmfe_timer._entry.50, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @dmfe_timer._entry_ptr.53, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @dmfe_timer._entry.54, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1174, i32 3}
!187 = !{ptr @dmfe_timer._entry_ptr.55, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.56, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @dmfe_timer._entry.57, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1217, i32 3}
!191 = !{ptr @dmfe_timer._entry_ptr.58, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.59, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @dmfe_timer._entry.60, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1223, i32 3}
!195 = !{ptr @dmfe_timer._entry_ptr.61, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @dmfe_timer._entry.63, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1241, i32 3}
!199 = !{ptr @dmfe_timer._entry_ptr.64, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.65, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.67, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1246, i32 4}
!203 = !{ptr @dmfe_timer._entry.66, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @dmfe_timer._entry_ptr.68, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.71, !202, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.73, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1279, i32 2}
!211 = !{ptr @dmfe_dynamic_reset._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dmfe_dynamic_reset._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1314, i32 2}
!216 = !{ptr @dmfe_free_rxbuffer._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @dmfe_free_rxbuffer._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.76, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.77, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1652, i32 3}
!221 = !{ptr @dmfe_sense_speed._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @dmfe_sense_speed._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.78, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.79, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 742, i32 2}
!226 = !{ptr @dmfe_stop._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @dmfe_stop._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.80, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 674, i32 2}
!230 = !{ptr @dmfe_start_xmit._entry, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dmfe_start_xmit._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.82, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 678, i32 3}
!234 = !{ptr @dmfe_start_xmit._entry.81, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dmfe_start_xmit._entry_ptr.83, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 691, i32 3}
!238 = !{ptr @dmfe_start_xmit._entry.84, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @dmfe_start_xmit._entry_ptr.86, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.87, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1041, i32 2}
!242 = !{ptr @dmfe_set_filter_mode._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @dmfe_set_filter_mode._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.88, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @dmfe_set_filter_mode._entry.89, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1045, i32 3}
!247 = !{ptr @dmfe_set_filter_mode._entry_ptr.90, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.91, !246, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @dmfe_set_filter_mode._entry.92, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1053, i32 3}
!251 = !{ptr @dmfe_set_filter_mode._entry_ptr.93, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.94, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @dmfe_set_filter_mode._entry.95, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1060, i32 2}
!255 = !{ptr @dmfe_set_filter_mode._entry_ptr.96, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.97, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @netdev_ethtool_ops, !258, !"netdev_ethtool_ops", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1104, i32 33}
!259 = distinct !{null, !260, !"cmd", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 1563, i32 19}
!261 = !{ptr @.str.98, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 518, i32 2}
!263 = !{ptr @dmfe_remove_one._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @dmfe_remove_one._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.99, !262, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @dmfe_remove_one._entry.100, !267, !"_entry", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 534, i32 2}
!268 = !{ptr @dmfe_remove_one._entry_ptr.101, !267, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.102, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @dmfe_pm_ops, !271, !"dmfe_pm_ops", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2129, i32 8}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/dec/tulip/dmfe.c", i32 2168, i32 2}
!274 = !{ptr @dmfe_init_module._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @dmfe_init_module._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.104, !273, !"<string literal>", i1 false, i1 false}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"auto-init"}
!287 = !{i64 2153708638}
!288 = !{i64 6166516}
!289 = !{i64 6166934}
!290 = !{i64 2153707283}
!291 = !{i64 6166714}
!292 = !{i64 2153706059}
!293 = !{i64 6166096}
!294 = !{i64 2153706671}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{i64 2156635233}
!297 = !{i64 2156619581}
!298 = !{i64 2153708088}
!299 = !{i64 6165896}
