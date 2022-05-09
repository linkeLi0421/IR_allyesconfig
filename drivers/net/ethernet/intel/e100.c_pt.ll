; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e100.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.param_range = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.rx = type { ptr, ptr, ptr, i32 }
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
%struct.rfd = type { i16, i16, i32, i32, i16, i16 }
%struct.anon.122 = type { i8, i8, i8, i8, i32 }
%struct.nic = type { i32, ptr, ptr, ptr, [112 x i8], ptr, ptr, ptr, %struct.rfd, i32, [96 x i8], %struct.spinlock, %struct.spinlock, ptr, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i16, [38 x i8], i32, i32, i32, %struct.params, %struct.timer_list, %struct.mii_if_info, %struct.work_struct, i32, ptr, i32, ptr, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, [256 x i16], %struct.spinlock, ptr, [100 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.params = type { %struct.param_range, %struct.param_range }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.csr = type { %struct.anon.122, i32, i16, i8, i8, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.mem = type { %struct.anon.126, %struct.stats, [596 x i8] }
%struct.anon.126 = type { i32, i32 }
%struct.stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.cb = type { i16, i16, i32, %union.anon.123, ptr, ptr, i32, ptr }
%union.anon.123 = type { [134 x i32] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.firmware = type { i32, ptr, ptr }
%struct.config = type { i16, i8, [10 x i8], i8, i8, i8, i8, i8, [5 x i8], [9 x i8] }
%struct.anon.124 = type { i32, i16, i8, i8, %struct.anon.125 }
%struct.anon.125 = type { i32, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.multi = type { i16, [386 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }

@__UNIQUE_ID_description343 = internal constant [49 x i8] c"e100.description=Intel(R) PRO/100 Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author344 = internal constant [53 x i8] c"e100.author=Copyright(c) 1999-2006 Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [42 x i8] c"e100.file=drivers/net/ethernet/intel/e100\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"e100.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [35 x i8] c"e100.firmware=e100/d101m_ucode.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [35 x i8] c"e100.firmware=e100/d101s_ucode.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [35 x i8] c"e100.firmware=e100/d102e_ucode.bin\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"e100.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype350 = internal constant [24 x i8] c"e100.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_eeprom_bad_csum_allow = internal constant [27 x i8] c"e100.eeprom_bad_csum_allow\00", align 1
@eeprom_bad_csum_allow = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_eeprom_bad_csum_allow = internal constant %struct.kernel_param { ptr @__param_str_eeprom_bad_csum_allow, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @eeprom_bad_csum_allow } }, section "__param", align 4
@__UNIQUE_ID_eeprom_bad_csum_allowtype351 = internal constant [40 x i8] c"e100.parmtype=eeprom_bad_csum_allow:int\00", section ".modinfo", align 1
@__param_str_use_io = internal constant [12 x i8] c"e100.use_io\00", align 1
@use_io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_io = internal constant %struct.kernel_param { ptr @__param_str_use_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_io } }, section "__param", align 4
@__UNIQUE_ID_use_iotype352 = internal constant [25 x i8] c"e100.parmtype=use_io:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug353 = internal constant [48 x i8] c"e100.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__UNIQUE_ID_eeprom_bad_csum_allow354 = internal constant [59 x i8] c"e100.parm=eeprom_bad_csum_allow:Allow bad eeprom checksums\00", section ".modinfo", align 1
@__UNIQUE_ID_use_io355 = internal constant [46 x i8] c"e100.parm=use_io:Force use of i/o access mode\00", section ".modinfo", align 1
@e100_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @e100_id_table, ptr @e100_probe, ptr @e100_remove, ptr null, ptr null, ptr @e100_shutdown, ptr null, ptr null, ptr null, ptr @e100_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e100_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_e100__366_3199_e100_init_module6 = internal global ptr @e100_init_module, section ".initcall6.init", align 4
@__exitcall_e100_cleanup_module = internal global ptr @e100_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"e100\00", [27 x i8] zeroinitializer }, align 32
@e100_id_table = internal constant { [43 x %struct.pci_device_id], [320 x i8] } { [43 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4137, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4144, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4145, i32 -1, i32 -1, i32 131072, i32 16776960, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4146, i32 -1, i32 -1, i32 131072, i32 16776960, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4147, i32 -1, i32 -1, i32 131072, i32 16776960, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4148, i32 -1, i32 -1, i32 131072, i32 16776960, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4152, i32 -1, i32 -1, i32 131072, i32 16776960, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 4153, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4154, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4155, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4156, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4157, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4158, i32 -1, i32 -1, i32 131072, i32 16776960, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 4176, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4177, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4178, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4179, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4180, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4181, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4182, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4183, i32 -1, i32 -1, i32 131072, i32 16776960, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 4185, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4196, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4197, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4198, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4199, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4200, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4201, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4202, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4203, i32 -1, i32 -1, i32 131072, i32 16776960, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 4241, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4242, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4243, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4244, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4245, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4350, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 4617, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4649, i32 -1, i32 -1, i32 131072, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9289, i32 -1, i32 -1, i32 131072, i32 16776960, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 9305, i32 -1, i32 -1, i32 131072, i32 16776960, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 9309, i32 -1, i32 -1, i32 131072, i32 16776960, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 10204, i32 -1, i32 -1, i32 131072, i32 16776960, i32 7, i32 0 }, %struct.pci_device_id zeroinitializer], [320 x i8] zeroinitializer }, align 32
@e100_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @e100_io_error_detected, ptr null, ptr @e100_io_slot_reset, ptr null, ptr null, ptr @e100_io_resume }, [40 x i8] zeroinitializer }, align 32
@e100_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @e100_suspend, ptr @e100_resume, ptr @e100_suspend, ptr @e100_resume, ptr @e100_suspend, ptr @e100_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@e100_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @e100_open, ptr @e100_close, ptr @e100_xmit_frame, ptr null, ptr null, ptr null, ptr @e100_set_multicast_list, ptr @e100_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @e100_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e100_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e100_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e100_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@e100_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @e100_get_drvinfo, ptr @e100_get_regs_len, ptr @e100_get_regs, ptr @e100_get_wol, ptr @e100_set_wol, ptr @e100_get_msglevel, ptr @e100_set_msglevel, ptr @e100_nway_reset, ptr @e100_get_link, ptr null, ptr @e100_get_eeprom_len, ptr @e100_get_eeprom, ptr @e100_set_eeprom, ptr null, ptr null, ptr @e100_get_ringparam, ptr @e100_set_ringparam, ptr null, ptr null, ptr null, ptr @e100_diag_test, ptr @e100_get_strings, ptr @e100_set_phys_id, ptr @e100_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @e100_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @e100_get_link_ksettings, ptr @e100_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot enable PCI device, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Cannot find proper PCI device base address, aborting\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No usable DMA configuration, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"using i/o access mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot map device registers, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@e100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&nic->cb_lock\00", [18 x i8] zeroinitializer }, align 32
@e100_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nic->cmd_lock\00", [17 x i8] zeroinitializer }, align 32
@e100_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&nic->mdio_lock\00", [16 x i8] zeroinitializer }, align 32
@e100_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&nic->watchdog)\00", [47 x i8] zeroinitializer }, align 32
@e100_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&nic->tx_timeout_task)\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot alloc driver memory, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid MAC address from EEPROM, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid MAC address from EEPROM, you MUST configure one.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot register net device, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot create DMA pool, aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"addr 0x%llx, irq %d, MAC addr %pM\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot open interface, aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"e100_hw_init\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Self-test failed: result=0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Self-test failed: timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ucode cmd failed with error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ucode load failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e100/d101m_ucode.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e100/d101s_ucode.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e100/d102e_ucode.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load firmware \22%s\22: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CPUSaver disabled. Needs \22%s\22: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Firmware \22%s\22 has wrong size %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\22%s\22 has bogus offset values (0x%x,0x%x,0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[00-07]=%8ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[08-15]=%8ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[16-23]=%8ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stat_ack = 0x%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exec cuc_nop failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No space for CB\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Out of Tx resources, returning skb\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mc_count=%d, flags=0x%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cb[%d]->status = 0x%04X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Ring Param settings: rx: %d, tx %d\0A\00", [60 x i8] zeroinitializer }, align 32
@e100_gstrings_test = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Link test     (on/offline)\00\00\00\00\00\00", [32 x i8] c"Eeprom test   (on/offline)\00\00\00\00\00\00", [32 x i8] c"Self test        (offline)\00\00\00\00\00\00", [32 x i8] c"Mac loopback     (offline)\00\00\00\00\00\00", [32 x i8] c"Phy loopback     (offline)\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@e100_gstrings_stats = internal constant { [31 x [32 x i8]], [224 x i8] } { [31 x [32 x i8]] [[32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_heartbeat_errors\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_deferred\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_single_collisions\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_multi_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_flow_control_pause\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_flow_control_pause\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_flow_control_unsupported\00\00\00\00\00", [32 x i8] c"tx_tco_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_tco_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_short_frame_errors\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_over_length_errors\00\00\00\00\00\00\00\00\00\00\00"], [224 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status=0x%04X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"e100.mdio_ctrl won't go Ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:addr=%d, reg=%d, data_in=0x%04X, data_out=0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.e100_get_defaults.rfds = private unnamed_addr constant %struct.param_range { i32 16, i32 256, i32 256 }, align 4
@__const.e100_get_defaults.cbs = private unnamed_addr constant %struct.param_range { i32 64, i32 256, i32 128 }, align 4
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"right now = %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NIC Link is Up %u Mbps %s Duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exec cuc_dump_reset failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scb.status=0x%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EEPROM corrupted\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to locate any known PHY, aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_addr = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy ID = 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"found MII-less i82503 or 80c24 or other PHY\0A\00", [51 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@e100_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.69, i32 3128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013e100: Cannot re-enable PCI device after reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"e100_io_slot_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/intel/e100.c\00", [62 x i8] zeroinitializer }, align 32
@e100_io_slot_reset._entry_ptr = internal global ptr @e100_io_slot_reset._entry, section ".printk_index", align 4
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Resume cannot enable PCI device, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@e100_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.69, i32 3188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016e100: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"e100_init_module\00", [47 x i8] zeroinitializer }, align 32
@e100_init_module._entry_ptr = internal global ptr @e100_init_module._entry, section ".printk_index", align 4
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Intel(R) PRO/100 Network Driver\00", [32 x i8] zeroinitializer }, align 32
@e100_init_module._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.69, i32 3189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@e100_init_module._entry_ptr.75 = internal global ptr @e100_init_module._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Copyright(c) 1999-2006 Intel Corporation\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 15, i64 16]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 170, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"eeprom_bad_csum_allow\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 171, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"use_io\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 172, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"e100_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3172, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3173, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"e100_id_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 183, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"e100_err_handler\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3164, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"e100_pm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3170, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"e100_netdev_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2817, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"e100_ethtool_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2738, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2859, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2864, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2870, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2875, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2882, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2886, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2903, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2904, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2905, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2914, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2916, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2919, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2931, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2935, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2949, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2951, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2960, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2964, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2793, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 326, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1533, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 668, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 674, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1349, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1370, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1245, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1247, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1249, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1265, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1270, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1280, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1294, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1150, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1152, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1154, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1011, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2201, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1784, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1794, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1800, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1582, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1822, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2592, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [19 x i8] c"e100_gstrings_test\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2600, i32 19 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c"e100_gstrings_stats\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2677, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1970, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 936, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 948, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1691, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1700, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1702, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1702, i32 45 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1704, i32 28 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1659, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 2336, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 777, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1458, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1463, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1470, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 1410, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3128, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3061, i32 22 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3188, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [37 x i8] c"../drivers/net/ethernet/intel/e100.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 3189, i32 3 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_debug353, ptr @__UNIQUE_ID_debugtype350, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_eeprom_bad_csum_allow354, ptr @__UNIQUE_ID_eeprom_bad_csum_allowtype351, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_use_io355, ptr @__UNIQUE_ID_use_iotype352, ptr @__exitcall_e100_cleanup_module, ptr @__initcall__kmod_e100__366_3199_e100_init_module6, ptr @__param_debug, ptr @__param_eeprom_bad_csum_allow, ptr @__param_use_io, ptr @e100_cleanup_module, ptr @e100_init_module._entry, ptr @e100_init_module._entry.74, ptr @e100_init_module._entry_ptr, ptr @e100_init_module._entry_ptr.75, ptr @e100_io_slot_reset._entry, ptr @e100_io_slot_reset._entry_ptr, ptr @debug, ptr @eeprom_bad_csum_allow, ptr @use_io, ptr @e100_driver, ptr @.str, ptr @e100_id_table, ptr @e100_err_handler, ptr @e100_pm_ops, ptr @e100_netdev_ops, ptr @e100_ethtool_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @e100_probe.__key, ptr @.str.7, ptr @e100_probe.__key.8, ptr @.str.9, ptr @e100_probe.__key.10, ptr @.str.11, ptr @e100_probe.__key.12, ptr @.str.13, ptr @e100_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @e100_gstrings_test, ptr @e100_gstrings_stats, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.76], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_bad_csum_allow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_id_table to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_gstrings_test to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_gstrings_stats to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e100_init_module._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @e100_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @pci_unregister_driver(ptr noundef nonnull @e100_driver) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = and i32 %notmask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.not = icmp eq i32 %sub, 0
  br i1 %tobool.not.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.73) #23
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.76) #23
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @e100_driver, ptr noundef null, ptr noundef nonnull @.str) #20
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1536, i32 noundef 1, i32 noundef 1) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hw_features, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %or1 = or i64 %3, 16384
  store i64 %or1, ptr %priv_flags, align 16
  %or3 = or i64 %1, 26388279066624
  store i64 %or3, ptr %hw_features, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @e100_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %5 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @e100_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %6 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %watchdog_timeo, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end.pci_name.exit_crit_edge ]
  %call5 = tail call ptr @strncpy(ptr noundef nonnull %call, ptr noundef %retval.0.i.i, i32 noundef 15)
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %napi = getelementptr i8, ptr %call, i32 2664
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @e100_poll, i32 noundef 16) #20
  %netdev7 = getelementptr i8, ptr %call, i32 2308
  %11 = ptrtoint ptr %netdev7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %netdev7, align 4
  %pdev8 = getelementptr i8, ptr %call, i32 2312
  %12 = ptrtoint ptr %pdev8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev8, align 8
  %13 = load i32, ptr @debug, align 4
  %notmask = shl nsw i32 -1, %13
  %sub = xor i32 %notmask, -1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %add.ptr.i, align 128
  %mdio_ctrl = getelementptr i8, ptr %call, i32 2316
  %15 = ptrtoint ptr %mdio_ctrl to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mdio_ctrl_hw, ptr %mdio_ctrl, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @pci_enable_device(ptr noundef %pdev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.body

do.body:                                          ; preds = %pci_name.exit
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 128
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.err_out_free_dev_crit_edge, label %if.then14

do.body.err_out_free_dev_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free_dev

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.1) #23
  br label %err_out_free_dev

if.end17:                                         ; preds = %pci_name.exit
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and18 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body21, label %if.end30

do.body21:                                        ; preds = %if.end17
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 128
  %and23 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.err_out_disable_pdev_crit_edge, label %if.then25

do.body21.err_out_disable_pdev_crit_edge:         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_disable_pdev

if.then25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.2) #23
  br label %err_out_disable_pdev

if.end30:                                         ; preds = %if.end17
  %call31 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end43, label %do.body34

do.body34:                                        ; preds = %if.end30
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 128
  %and36 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.err_out_disable_pdev_crit_edge, label %if.then38

do.body34.err_out_disable_pdev_crit_edge:         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_disable_pdev

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #22
  %29 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.3) #23
  br label %err_out_disable_pdev

if.end43:                                         ; preds = %if.end30
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call44 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end56, label %do.body47

do.body47:                                        ; preds = %if.end43
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i, align 128
  %and49 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body47.err_out_free_res_crit_edge, label %if.then51

do.body47.err_out_free_res_crit_edge:             ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free_res

if.then51:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.4) #23
  br label %err_out_free_res

if.end56:                                         ; preds = %if.end43
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %parent, align 8
  %36 = load i32, ptr @use_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool59.not = icmp eq i32 %36, 0
  br i1 %tobool59.not, label %if.end56.if.end70_crit_edge, label %do.body61

if.end56.if.end70_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end70

do.body61:                                        ; preds = %if.end56
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 128
  %and63 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body61.if.end70_crit_edge, label %if.then65

do.body61.if.end70_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end70

if.then65:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #22
  %39 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %40, ptr noundef nonnull @.str.5) #23
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %do.body61.if.end70_crit_edge, %if.end56.if.end70_crit_edge
  %41 = load i32, ptr @use_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool71.not = icmp ne i32 %41, 0
  %cond = zext i1 %tobool71.not to i32
  %call72 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %cond, i32 noundef 24) #20
  %csr = getelementptr i8, ptr %call, i32 2648
  %42 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call72, ptr %csr, align 8
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.body76, label %if.end85

do.body76:                                        ; preds = %if.end70
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 128
  %and78 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body76.err_out_free_res_crit_edge, label %if.then80

do.body76.err_out_free_res_crit_edge:             ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free_res

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.6) #23
  br label %err_out_free_res

if.end85:                                         ; preds = %if.end70
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %47 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool86.not = icmp ne i32 %48, 0
  %flags90 = getelementptr i8, ptr %call, i32 2944
  %49 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags90, align 128
  %and91 = and i32 %50, -2
  %masksel = zext i1 %tobool86.not to i32
  %and91.sink = or i32 %and91, %masksel
  store i32 %and91.sink, ptr %flags90, align 128
  tail call fastcc void @e100_get_defaults(ptr noundef %add.ptr.i)
  %mac = getelementptr i8, ptr %call, i32 2948
  %51 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp = icmp ult i32 %52, 4
  br i1 %cmp, label %if.then93, label %if.end85.do.body96_crit_edge

if.end85.do.body96_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body96

if.then93:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #22
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features, align 16
  %or94 = or i64 %54, 1024
  store i64 %or94, ptr %features, align 16
  br label %do.body96

do.body96:                                        ; preds = %if.then93, %if.end85.do.body96_crit_edge
  %cb_lock = getelementptr i8, ptr %call, i32 2560
  tail call void @__raw_spin_lock_init(ptr noundef %cb_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @e100_probe.__key, i16 noundef signext 3) #20
  %cmd_lock = getelementptr i8, ptr %call, i32 2604
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @e100_probe.__key.8, i16 noundef signext 3) #20
  %mdio_lock = getelementptr i8, ptr %call, i32 3692
  tail call void @__raw_spin_lock_init(ptr noundef %mdio_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @e100_probe.__key.10, i16 noundef signext 3) #20
  tail call fastcc void @e100_hw_reset(ptr noundef %add.ptr.i)
  tail call void @pci_set_master(ptr noundef %pdev) #20
  %watchdog = getelementptr i8, ptr %call, i32 2980
  tail call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @e100_watchdog, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @e100_probe.__key.12) #20
  %tx_timeout_task = getelementptr i8, ptr %call, i32 3060
  tail call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #20
  %55 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %tx_timeout_task, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 3076
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @e100_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %entry115 = getelementptr i8, ptr %call, i32 3064
  %56 = ptrtoint ptr %entry115 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry115, ptr %entry115, align 4
  %prev.i = getelementptr i8, ptr %call, i32 3068
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry115, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 3072
  %58 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @e100_tx_timeout_task, ptr %func, align 4
  %59 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev8, align 8
  %dev.i320 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %dma_addr.i = getelementptr i8, ptr %call, i32 3112
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i320, i32 noundef 688, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #20
  %mem.i = getelementptr i8, ptr %call, i32 3108
  %61 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i.i, ptr %mem.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not, label %do.body122, label %if.end131

do.body122:                                       ; preds = %do.body96
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i, align 128
  %and124 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body122.err_out_iounmap_crit_edge, label %if.then126

do.body122.err_out_iounmap_crit_edge:             ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_iounmap

if.then126:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #22
  %64 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.16) #23
  br label %err_out_iounmap

if.end131:                                        ; preds = %do.body96
  %call132 = tail call fastcc i32 @e100_eeprom_load(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.err_out_free_crit_edge

if.end131.err_out_free_crit_edge:                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free

if.end135:                                        ; preds = %if.end131
  %call136 = tail call fastcc i32 @e100_phy_init(ptr noundef %add.ptr.i)
  %eeprom = getelementptr i8, ptr %call, i32 3178
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %eeprom, i32 noundef 6) #20
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %66 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_addr, align 64
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %70 = and i32 %69, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i = icmp eq i32 %70, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end135.if.then139_crit_edge

if.end135.if.then139_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then139

is_valid_ether_addr.exit:                         ; preds = %if.end135
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %72 to i32
  %or.i.i = or i32 %69, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then139_crit_edge, label %is_valid_ether_addr.exit.if.end162_crit_edge

is_valid_ether_addr.exit.if.end162_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end162

is_valid_ether_addr.exit.if.then139_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then139

if.then139:                                       ; preds = %is_valid_ether_addr.exit.if.then139_crit_edge, %if.end135.if.then139_crit_edge
  %73 = load i32, ptr @eeprom_bad_csum_allow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool140.not = icmp eq i32 %73, 0
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 128
  %and144 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool140.not, label %do.body142, label %do.body152

do.body142:                                       ; preds = %if.then139
  br i1 %tobool145.not, label %do.body142.err_out_free_crit_edge, label %if.then146

do.body142.err_out_free_crit_edge:                ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free

if.then146:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #22
  %76 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.17) #23
  br label %err_out_free

do.body152:                                       ; preds = %if.then139
  br i1 %tobool145.not, label %do.body152.if.end162_crit_edge, label %if.then156

do.body152.if.end162_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end162

if.then156:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #22
  %78 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %79, ptr noundef nonnull @.str.18) #23
  br label %if.end162

if.end162:                                        ; preds = %if.then156, %do.body152.if.end162_crit_edge, %is_valid_ether_addr.exit.if.end162_crit_edge
  %80 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %cmp164 = icmp ugt i32 %81, 3
  br i1 %cmp164, label %land.lhs.true, label %if.end162.if.end174_crit_edge

if.end162.if.end174_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end174

land.lhs.true:                                    ; preds = %if.end162
  %arrayidx166 = getelementptr i8, ptr %call, i32 3198
  %82 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx166, align 2
  %84 = and i16 %83, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool168.not = icmp eq i16 %84, 0
  br i1 %tobool168.not, label %land.lhs.true.if.end174_crit_edge, label %if.then169

land.lhs.true.if.end174_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end174

if.then169:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  %flags170 = getelementptr i8, ptr %call, i32 2944
  %85 = ptrtoint ptr %flags170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags170, align 128
  %or171 = or i32 %86, 8
  store i32 %or171, ptr %flags170, align 128
  %call173 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext true) #20
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %land.lhs.true.if.end174_crit_edge, %if.end162.if.end174_crit_edge
  tail call void @pci_pme_active(ptr noundef %pdev, i1 noundef zeroext false) #20
  %87 = call ptr @memcpy(ptr %call, ptr @.str.19, i32 6)
  %call178 = tail call i32 @register_netdev(ptr noundef nonnull %call) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end190, label %do.body181

do.body181:                                       ; preds = %if.end174
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i, align 128
  %and183 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %do.body181.err_out_free_crit_edge, label %if.then185

do.body181.err_out_free_crit_edge:                ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_out_free

if.then185:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #22
  %90 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %91, ptr noundef nonnull @.str.20) #23
  br label %err_out_free

if.end190:                                        ; preds = %if.end174
  %92 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev8, align 8
  %dev194 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %max = getelementptr i8, ptr %call, i32 2972
  %94 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max, align 4
  %mul = mul i32 %95, 560
  %call195 = tail call ptr @dma_pool_create(ptr noundef nonnull %call, ptr noundef %dev194, i32 noundef %mul, i32 noundef 4, i32 noundef 0) #20
  %cbs_pool = getelementptr i8, ptr %call, i32 3116
  %96 = ptrtoint ptr %cbs_pool to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call195, ptr %cbs_pool, align 4
  %tobool197.not = icmp eq ptr %call195, null
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr.i, align 128
  %and201 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool197.not, label %do.body199, label %do.body209

do.body199:                                       ; preds = %if.end190
  br i1 %tobool202.not, label %do.body199.do.end207_crit_edge, label %if.then203

do.body199.do.end207_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end207

if.then203:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #22
  %99 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %100, ptr noundef nonnull @.str.21) #23
  br label %do.end207

do.end207:                                        ; preds = %if.then203, %do.body199.do.end207_crit_edge
  tail call void @unregister_netdev(ptr noundef nonnull %call) #20
  br label %err_out_free

do.body209:                                       ; preds = %if.end190
  br i1 %tobool202.not, label %do.body209.cleanup_crit_edge, label %if.then213

do.body209.cleanup_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then213:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #22
  %101 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev7, align 4
  %103 = load i32, ptr @use_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool216.not = icmp ne i32 %103, 0
  %cond217 = zext i1 %tobool216.not to i32
  %arrayidx218 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %cond217
  %104 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx218, align 8
  %conv219 = zext i32 %105 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %106 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq, align 4
  %108 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %102, ptr noundef nonnull @.str.22, i64 noundef %conv219, i32 noundef %107, ptr noundef %109) #23
  br label %cleanup

err_out_free:                                     ; preds = %do.end207, %if.then185, %do.body181.err_out_free_crit_edge, %if.then146, %do.body142.err_out_free_crit_edge, %if.end131.err_out_free_crit_edge
  %err.0 = phi i32 [ %call132, %if.end131.err_out_free_crit_edge ], [ %call178, %if.then185 ], [ %call178, %do.body181.err_out_free_crit_edge ], [ -12, %do.end207 ], [ -11, %if.then146 ], [ -11, %do.body142.err_out_free_crit_edge ]
  tail call fastcc void @e100_free(ptr noundef %add.ptr.i)
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_free, %if.then126, %do.body122.err_out_iounmap_crit_edge
  %err.1 = phi i32 [ -12, %if.then126 ], [ -12, %do.body122.err_out_iounmap_crit_edge ], [ %err.0, %err_out_free ]
  %110 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %csr, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %111) #20
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_iounmap, %if.then80, %do.body76.err_out_free_res_crit_edge, %if.then51, %do.body47.err_out_free_res_crit_edge
  %err.2 = phi i32 [ %call44, %if.then51 ], [ %call44, %do.body47.err_out_free_res_crit_edge ], [ %err.1, %err_out_iounmap ], [ -12, %if.then80 ], [ -12, %do.body76.err_out_free_res_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #20
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %err_out_free_res, %if.then38, %do.body34.err_out_disable_pdev_crit_edge, %if.then25, %do.body21.err_out_disable_pdev_crit_edge
  %err.3 = phi i32 [ %call31, %if.then38 ], [ %call31, %do.body34.err_out_disable_pdev_crit_edge ], [ %err.2, %err_out_free_res ], [ -19, %if.then25 ], [ -19, %do.body21.err_out_disable_pdev_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  br label %err_out_free_dev

err_out_free_dev:                                 ; preds = %err_out_disable_pdev, %if.then14, %do.body.err_out_free_dev_crit_edge
  %err.4 = phi i32 [ %call9, %if.then14 ], [ %call9, %do.body.err_out_free_dev_crit_edge ], [ %err.3, %err_out_disable_pdev ]
  tail call void @free_netdev(ptr noundef nonnull %call) #20
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_dev, %if.then213, %do.body209.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_out_free_dev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then213 ], [ 0, %do.body209.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @unregister_netdev(ptr noundef nonnull %1) #20
  %mem.i = getelementptr i8, ptr %1, i32 3108
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.e100_free.exit_crit_edge, label %if.then.i

if.then.e100_free.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_free.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %pdev.i = getelementptr i8, ptr %1, i32 2312
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_addr.i = getelementptr i8, ptr %1, i32 3112
  %6 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 688, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #20
  %8 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %mem.i, align 4
  br label %e100_free.exit

e100_free.exit:                                   ; preds = %if.then.i, %if.then.e100_free.exit_crit_edge
  %csr = getelementptr i8, ptr %1, i32 2648
  %9 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %10) #20
  %cbs_pool = getelementptr i8, ptr %1, i32 3116
  %11 = ptrtoint ptr %cbs_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbs_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %12) #20
  tail call void @free_netdev(ptr noundef nonnull %1) #20
  tail call void @pci_release_regions(ptr noundef %pdev) #20
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  br label %if.end

if.end:                                           ; preds = %e100_free.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  %wake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake) #20
  %0 = ptrtoint ptr %wake to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wake, align 1, !annotation !212
  call fastcc void @__e100_shutdown(ptr noundef %pdev, ptr noundef nonnull %wake)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %1 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %wake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wake, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 @pci_prepare_to_sleep(ptr noundef %pdev) #20
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %call1.i = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext false) #20
  %call2.i = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #20
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -360
  %rx_to_clean.i = getelementptr i8, ptr %napi, i32 -224
  %0 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_to_clean.i, align 8
  %skb94.i = getelementptr inbounds %struct.rx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %skb94.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb94.i, align 4
  %tobool.not95.i = icmp eq ptr %3, null
  br i1 %tobool.not95.i, label %entry.land.lhs.true.i_crit_edge, label %for.body.lr.ph.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

for.body.lr.ph.i:                                 ; preds = %entry
  %netdev.i.i = getelementptr i8, ptr %napi, i32 -356
  %pdev.i.i = getelementptr i8, ptr %napi, i32 -352
  %ru_running72.i.i = getelementptr i8, ptr %napi, i32 -204
  %csr76.i.i = getelementptr i8, ptr %napi, i32 -16
  %rx_over_length_errors.i.i = getelementptr i8, ptr %napi, i32 508
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %work_done.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %work_done.1, %for.inc.i.for.body.i_crit_edge ]
  %4 = phi ptr [ %3, %for.body.lr.ph.i ], [ %70, %for.inc.i.for.body.i_crit_edge ]
  %skb97.i = phi ptr [ %skb94.i, %for.body.lr.ph.i ], [ %skb.i, %for.inc.i.for.body.i_crit_edge ]
  %rx.096.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %67, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp.not.i.i = icmp ult i32 %work_done.0, %budget
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.if.end6.i_crit_edge, !prof !214

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6.i

if.end.i.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i.i, align 8
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %dma_addr.i.i = getelementptr inbounds %struct.rx, ptr %rx.096.i, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev4.i.i, i32 noundef %12, i32 noundef 16, i32 noundef 0) #20
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %8, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #20
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 128
  %and.i.i = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.do.end_crit_edge.i.i, label %if.then6.i.i

if.end.do.end_crit_edge.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %.pre.i.i = zext i16 %15 to i32
  br label %do.end.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %19, ptr noundef nonnull @.str.52, i32 noundef %conv.i.i) #23
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %if.end.do.end_crit_edge.i.i
  %conv9.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end.do.end_crit_edge.i.i ], [ %conv.i.i, %if.then6.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !215
  %and10.i.i = and i32 %conv9.pre-phi.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then20.i.i, label %if.end38.i.i, !prof !216

if.then20.i.i:                                    ; preds = %do.end.i.i
  %command.i.i = getelementptr inbounds %struct.rfd, ptr %8, i32 0, i32 1
  %20 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %command.i.i, align 2
  %.mask189.i.i = and i16 %21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask189.i.i)
  %tobool23.not.i.i = icmp eq i16 %.mask189.i.i, 0
  br i1 %tobool23.not.i.i, label %if.then20.i.i.for.end.fold.split.i_crit_edge, label %land.lhs.true.i.i

if.then20.i.i.for.end.fold.split.i_crit_edge:     ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.fold.split.i

land.lhs.true.i.i:                                ; preds = %if.then20.i.i
  %22 = ptrtoint ptr %ru_running72.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ru_running72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp24.i.i = icmp eq i32 %23, 1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %land.lhs.true.i.i.for.end.fold.split.i_crit_edge

land.lhs.true.i.i.for.end.fold.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.fold.split.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i.i
  %24 = ptrtoint ptr %csr76.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr76.i.i, align 8
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %27 = and i8 %26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool30.not.i.i, label %if.then26.i.i.for.end.fold.split.i_crit_edge, label %if.then31.i.i

if.then26.i.i.for.end.fold.split.i_crit_edge:     ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.fold.split.i

if.then31.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %ru_running72.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ru_running72.i.i, align 4
  br label %for.end.fold.split.i

if.end38.i.i:                                     ; preds = %do.end.i.i
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %29 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features.i.i, align 16
  %and39.i.i = and i64 %30, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39.i.i)
  %tobool40.not.i.i = icmp eq i64 %and39.i.i, 0
  br i1 %tobool40.not.i.i, label %if.end38.i.i.if.end48.i.i_crit_edge, label %if.then47.i.i, !prof !214

if.end38.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48.i.i

if.then47.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then47.i.i, %if.end38.i.i.if.end48.i.i_crit_edge
  %fcs_pad.0.i.i = phi i32 [ 4, %if.then47.i.i ], [ 0, %if.end38.i.i.if.end48.i.i_crit_edge ]
  %actual_size49.i.i = getelementptr inbounds %struct.rfd, ptr %8, i32 0, i32 4
  %31 = ptrtoint ptr %actual_size49.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %actual_size49.i.i, align 4
  %33 = and i16 %32, -193
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 1522, i16 %34)
  %cmp54.i.i = icmp ugt i16 %34, 1522
  br i1 %cmp54.i.i, label %if.then62.i.i, label %if.end48.i.i.if.end63.i.i_crit_edge, !prof !216

if.end48.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end63.i.i

if.then62.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then62.i.i, %if.end48.i.i.if.end63.i.i_crit_edge
  %actual_size.0.i.i = phi i16 [ 1522, %if.then62.i.i ], [ %34, %if.end48.i.i.if.end63.i.i_crit_edge ]
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i, align 8
  %dev65.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev65.i.i, i32 noundef %38, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  %command67.i.i = getelementptr inbounds %struct.rfd, ptr %8, i32 0, i32 1
  %39 = ptrtoint ptr %command67.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %command67.i.i, align 2
  %.mask.i.i = and i16 %40, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i.i)
  %tobool70.not.i.i = icmp eq i16 %.mask.i.i, 0
  br i1 %tobool70.not.i.i, label %if.end63.i.i.if.end86.i.i_crit_edge, label %land.lhs.true71.i.i

if.end63.i.i.if.end86.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end86.i.i

land.lhs.true71.i.i:                              ; preds = %if.end63.i.i
  %41 = ptrtoint ptr %ru_running72.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ru_running72.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp73.i.i = icmp eq i32 %42, 1
  br i1 %cmp73.i.i, label %if.then75.i.i, label %land.lhs.true71.i.i.if.end86.i.i_crit_edge

land.lhs.true71.i.i.if.end86.i.i_crit_edge:       ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end86.i.i

if.then75.i.i:                                    ; preds = %land.lhs.true71.i.i
  %43 = ptrtoint ptr %csr76.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr76.i.i, align 8
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool82.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool82.not.i.i, label %if.then75.i.i.if.end86.i.i_crit_edge, label %if.then83.i.i

if.then75.i.i.if.end86.i.i_crit_edge:             ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end86.i.i

if.then83.i.i:                                    ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %47 = ptrtoint ptr %ru_running72.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ru_running72.i.i, align 4
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %if.then83.i.i, %if.then75.i.i.if.end86.i.i_crit_edge, %land.lhs.true71.i.i.if.end86.i.i_crit_edge, %if.end63.i.i.if.end86.i.i_crit_edge
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 16
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %50 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %51, i32 16
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %conv87.i.i = zext i16 %actual_size.0.i.i to i32
  %call88.i.i = tail call ptr @skb_put(ptr noundef nonnull %4, i32 noundef %conv87.i.i) #20
  %52 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev.i.i, align 4
  %call90.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %4, ptr noundef %53) #20
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %call90.i.i, ptr %protocol.i.i, align 8
  %55 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %features.i.i, align 16
  %and92.i.i = and i64 %56, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92.i.i)
  %tobool93.not.i.i = icmp eq i64 %and92.i.i, 0
  br i1 %tobool93.not.i.i, label %if.end107.i.i, label %if.then100.i.i, !prof !214

if.then100.i.i:                                   ; preds = %if.end86.i.i
  %add.i.i = add nuw nsw i32 %fcs_pad.0.i.i, 1518
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv87.i.i)
  %cmp103.i.i = icmp ult i32 %add.i.i, %conv87.i.i
  br i1 %cmp103.i.i, label %if.then105.i.i, label %if.then100.i.i.process_skb.i.i_crit_edge

if.then100.i.i.process_skb.i.i_crit_edge:         ; preds = %if.then100.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %process_skb.i.i

if.then105.i.i:                                   ; preds = %if.then100.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %57 = ptrtoint ptr %rx_over_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_over_length_errors.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %rx_over_length_errors.i.i, align 4
  br label %process_skb.i.i

if.end107.i.i:                                    ; preds = %if.end86.i.i
  %and109.i.i = and i32 %conv9.pre-phi.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i.i)
  %tobool110.not.i.i = icmp eq i32 %and109.i.i, 0
  br i1 %tobool110.not.i.i, label %if.then119.i.i, label %if.else.i.i, !prof !216

if.then119.i.i:                                   ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %4, i32 noundef 1) #20
  br label %for.inc.i

if.else.i.i:                                      ; preds = %if.end107.i.i
  %add122.i.i = add nuw nsw i32 %fcs_pad.0.i.i, 1518
  call void @__sanitizer_cov_trace_cmp4(i32 %add122.i.i, i32 %conv87.i.i)
  %cmp123.i.i = icmp ult i32 %add122.i.i, %conv87.i.i
  br i1 %cmp123.i.i, label %if.then125.i.i, label %if.else.i.i.process_skb.i.i_crit_edge

if.else.i.i.process_skb.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %process_skb.i.i

if.then125.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %59 = ptrtoint ptr %rx_over_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_over_length_errors.i.i, align 4
  %inc127.i.i = add i32 %60, 1
  store i32 %inc127.i.i, ptr %rx_over_length_errors.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %4, i32 noundef 1) #20
  br label %for.inc.i

process_skb.i.i:                                  ; preds = %if.else.i.i.process_skb.i.i_crit_edge, %if.then105.i.i, %if.then100.i.i.process_skb.i.i_crit_edge
  %stats.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36
  %61 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stats.i.i, align 8
  %inc129.i.i = add i32 %62, 1
  store i32 %inc129.i.i, ptr %stats.i.i, align 8
  %sub.i.i = sub nsw i32 %conv87.i.i, %fcs_pad.0.i.i
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_bytes.i.i, align 8
  %add133.i.i = add i32 %sub.i.i, %64
  store i32 %add133.i.i, ptr %rx_bytes.i.i, align 8
  %call134.i.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %4) #20
  %inc137.i.i = add i32 %work_done.0, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %process_skb.i.i, %if.then125.i.i, %if.then119.i.i
  %work_done.1 = phi i32 [ %work_done.0, %if.then119.i.i ], [ %work_done.0, %if.then125.i.i ], [ %inc137.i.i, %process_skb.i.i ]
  %65 = ptrtoint ptr %skb97.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %skb97.i, align 4
  %66 = ptrtoint ptr %rx.096.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx.096.i, align 4
  %68 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %rx_to_clean.i, align 8
  %skb.i = getelementptr inbounds %struct.rx, ptr %67, i32 0, i32 2
  %69 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %70, null
  br i1 %tobool.not.i, label %for.inc.i.land.lhs.true.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true.i

for.end.fold.split.i:                             ; preds = %if.then31.i.i, %if.then26.i.i.for.end.fold.split.i_crit_edge, %land.lhs.true.i.i.for.end.fold.split.i_crit_edge, %if.then20.i.i.for.end.fold.split.i_crit_edge
  %71 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i, align 8
  %dev36.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %73 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev36.i.i, i32 noundef %74, i32 noundef 16, i32 noundef 2) #20
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.fold.split.i, %for.inc.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %work_done.2 = phi i32 [ 0, %entry.land.lhs.true.i_crit_edge ], [ %work_done.0, %for.end.fold.split.i ], [ %work_done.1, %for.inc.i.land.lhs.true.i_crit_edge ]
  %ru_running.i = getelementptr i8, ptr %napi, i32 -204
  %75 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ru_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.i = icmp ne i32 %76, 0
  br label %if.end6.i

if.end6.i:                                        ; preds = %land.lhs.true.i, %for.body.i.if.end6.i_crit_edge
  %work_done.3 = phi i32 [ %work_done.2, %land.lhs.true.i ], [ %work_done.0, %for.body.i.if.end6.i_crit_edge ]
  %tobool44.not.i = phi i1 [ %cmp4.i, %land.lhs.true.i ], [ true, %for.body.i.if.end6.i_crit_edge ]
  %rx_to_use.i = getelementptr i8, ptr %napi, i32 -228
  %77 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_to_use.i, align 4
  %prev.i = getelementptr inbounds %struct.rx, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i, align 4
  %prev7.i = getelementptr inbounds %struct.rx, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev7.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev7.i, align 4
  %skb8.i = getelementptr inbounds %struct.rx, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %skb8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb8.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i, align 4
  %skb1198.i = getelementptr inbounds %struct.rx, ptr %78, i32 0, i32 2
  %87 = ptrtoint ptr %skb1198.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %skb1198.i, align 4
  %tobool12.not99.i = icmp eq ptr %88, null
  br i1 %tobool12.not99.i, label %if.end6.i.for.body13.i_crit_edge, label %if.end6.i.for.end24.i_crit_edge

if.end6.i.for.end24.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end24.i

if.end6.i.for.body13.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc21.i.for.body13.i_crit_edge, %if.end6.i.for.body13.i_crit_edge
  %rx.1100.i = phi ptr [ %90, %for.inc21.i.for.body13.i_crit_edge ], [ %78, %if.end6.i.for.body13.i_crit_edge ]
  %call14.i = tail call fastcc i32 @e100_rx_alloc_skb(ptr noundef %add.ptr, ptr noundef %rx.1100.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.inc21.i, label %for.body13.i.for.end24.i_crit_edge, !prof !214

for.body13.i.for.end24.i_crit_edge:               ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end24.i

for.inc21.i:                                      ; preds = %for.body13.i
  %89 = ptrtoint ptr %rx.1100.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx.1100.i, align 4
  %91 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %rx_to_use.i, align 4
  %skb11.i = getelementptr inbounds %struct.rx, ptr %90, i32 0, i32 2
  %92 = ptrtoint ptr %skb11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb11.i, align 4
  %tobool12.not.i = icmp eq ptr %93, null
  br i1 %tobool12.not.i, label %for.inc21.i.for.body13.i_crit_edge, label %for.inc21.i.for.end24.i_crit_edge

for.inc21.i.for.end24.i_crit_edge:                ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end24.i

for.inc21.i.for.body13.i_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body13.i

for.end24.i:                                      ; preds = %for.inc21.i.for.end24.i_crit_edge, %for.body13.i.for.end24.i_crit_edge, %if.end6.i.for.end24.i_crit_edge
  %94 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rx_to_use.i, align 4
  %prev26.i = getelementptr inbounds %struct.rx, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev26.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev26.i, align 4
  %prev27.i = getelementptr inbounds %struct.rx, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %prev27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev27.i, align 4
  %cmp28.not.i = icmp eq ptr %99, %82
  br i1 %cmp28.not.i, label %for.end24.i.if.end43.i_crit_edge, label %if.then29.i

for.end24.i.if.end43.i_crit_edge:                 ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end43.i

if.then29.i:                                      ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #22
  %skb30.i = getelementptr inbounds %struct.rx, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %skb30.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %skb30.i, align 4
  %data31.i = getelementptr inbounds %struct.sk_buff, ptr %101, i32 0, i32 19
  %102 = ptrtoint ptr %data31.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data31.i, align 4
  %size.i = getelementptr inbounds %struct.rfd, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %size.i, align 2
  %command.i = getelementptr inbounds %struct.rfd, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %command.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %command.i, align 2
  %107 = or i16 %106, 128
  store i16 %107, ptr %command.i, align 2
  %pdev.i = getelementptr i8, ptr %napi, i32 -352
  %108 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.rx, ptr %99, i32 0, i32 3
  %110 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i, i32 noundef %111, i32 noundef 16, i32 noundef 0) #20
  %command33.i = getelementptr inbounds %struct.rfd, ptr %86, i32 0, i32 1
  %112 = ptrtoint ptr %command33.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %command33.i, align 2
  %114 = and i16 %113, -129
  store i16 %114, ptr %command33.i, align 2
  %115 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev.i, align 8
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %116, i32 0, i32 44
  %dma_addr38.i = getelementptr inbounds %struct.rx, ptr %82, i32 0, i32 3
  %117 = ptrtoint ptr %dma_addr38.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_addr38.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev37.i, i32 noundef %118, i32 noundef 16, i32 noundef 0) #20
  %size39.i = getelementptr inbounds %struct.rfd, ptr %86, i32 0, i32 5
  %119 = ptrtoint ptr %size39.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -3579, ptr %size39.i, align 2
  %120 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev.i, align 8
  %dev41.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %122 = ptrtoint ptr %dma_addr38.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_addr38.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev41.i, i32 noundef %123, i32 noundef 16, i32 noundef 0) #20
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then29.i, %for.end24.i.if.end43.i_crit_edge
  br i1 %tobool44.not.i, label %if.end43.i.e100_rx_clean.exit_crit_edge, label %if.then45.i

if.end43.i.e100_rx_clean.exit_crit_edge:          ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_rx_clean.exit

if.then45.i:                                      ; preds = %if.end43.i
  %csr.i = getelementptr i8, ptr %napi, i32 -16
  %124 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %csr.i, align 8
  %stat_ack.i = getelementptr inbounds %struct.anon.122, ptr %125, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat_ack.i, i8 16) #20, !srcloc !220
  %126 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_to_clean.i, align 8
  %rxs.i.i = getelementptr i8, ptr %napi, i32 -232
  %128 = ptrtoint ptr %rxs.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rxs.i.i, align 128
  %tobool.not.i82.i = icmp eq ptr %129, null
  br i1 %tobool.not.i82.i, label %if.then45.i.e100_start_receiver.exit.i_crit_edge, label %if.end.i85.i

if.then45.i.e100_start_receiver.exit.i_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit.i

if.end.i85.i:                                     ; preds = %if.then45.i
  %ru_running.i83.i = getelementptr i8, ptr %napi, i32 -204
  %130 = ptrtoint ptr %ru_running.i83.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ru_running.i83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.not.i84.i = icmp eq i32 %131, 0
  br i1 %cmp.not.i84.i, label %if.end2.i.i, label %if.end.i85.i.e100_start_receiver.exit.i_crit_edge

if.end.i85.i.e100_start_receiver.exit.i_crit_edge: ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit.i

if.end2.i.i:                                      ; preds = %if.end.i85.i
  %tobool3.not.i.i = icmp eq ptr %127, null
  %spec.select.i.i = select i1 %tobool3.not.i.i, ptr %129, ptr %127
  %skb.i.i = getelementptr inbounds %struct.rx, ptr %spec.select.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %skb.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %133, null
  br i1 %tobool7.not.i.i, label %if.end2.i.i.e100_start_receiver.exit.i_crit_edge, label %if.then8.i.i

if.end2.i.i.e100_start_receiver.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit.i

if.then8.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %dma_addr.i86.i = getelementptr inbounds %struct.rx, ptr %spec.select.i.i, i32 0, i32 3
  %134 = ptrtoint ptr %dma_addr.i86.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dma_addr.i86.i, align 4
  %call.i.i = tail call fastcc i32 @e100_exec_cmd(ptr noundef %add.ptr, i8 noundef zeroext 1, i32 noundef %135) #20
  %136 = ptrtoint ptr %ru_running.i83.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %ru_running.i83.i, align 4
  br label %e100_start_receiver.exit.i

e100_start_receiver.exit.i:                       ; preds = %if.then8.i.i, %if.end2.i.i.e100_start_receiver.exit.i_crit_edge, %if.end.i85.i.e100_start_receiver.exit.i_crit_edge, %if.then45.i.e100_start_receiver.exit.i_crit_edge
  %inc.i = add i32 %work_done.3, 1
  br label %e100_rx_clean.exit

e100_rx_clean.exit:                               ; preds = %e100_start_receiver.exit.i, %if.end43.i.e100_rx_clean.exit_crit_edge
  %work_done.4 = phi i32 [ %work_done.3, %if.end43.i.e100_rx_clean.exit_crit_edge ], [ %inc.i, %e100_start_receiver.exit.i ]
  tail call fastcc void @e100_tx_clean(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.4, i32 %budget)
  %cmp = icmp eq i32 %work_done.4, %budget
  br i1 %cmp, label %e100_rx_clean.exit.cleanup_crit_edge, label %if.end

e100_rx_clean.exit.cleanup_crit_edge:             ; preds = %e100_rx_clean.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %e100_rx_clean.exit
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.4) #20
  br i1 %call1, label %if.then3, label %if.end.cleanup_crit_edge, !prof !214

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %cmd_lock.i = getelementptr i8, ptr %napi, i32 -60
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %csr.i11 = getelementptr i8, ptr %napi, i32 -16
  %137 = ptrtoint ptr %csr.i11 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %csr.i11, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %138, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 0) #20, !srcloc !220
  %139 = ptrtoint ptr %csr.i11 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %csr.i11, align 8
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %140) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %e100_rx_clean.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %budget, %e100_rx_clean.exit.cleanup_crit_edge ], [ %work_done.4, %if.then3 ], [ %work_done.4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mdio_ctrl_hw(ptr noundef %nic, i32 noundef %addr, i32 noundef %dir, i32 noundef %reg, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_lock = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 51
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mdio_lock) #20
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.066 = phi i32 [ 100, %entry ], [ %dec, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 8
  %mdi_ctrl = getelementptr inbounds %struct.csr, ptr %1, i32 0, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdi_ctrl) #20, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %if.end, label %if.end13

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #20
  %dec = add nsw i32 %i.066, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then11.critedge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.then11.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.53) #23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call2) #20
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %shl = shl i32 %reg, 16
  %shl14 = shl i32 %addr, 21
  %conv16 = zext i16 %data to i32
  %or = or i32 %shl14, %dir
  %or15 = or i32 %or, %shl
  %or17 = or i32 %or15, %conv16
  %7 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr, align 8
  %mdi_ctrl19 = getelementptr inbounds %struct.csr, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %9 = tail call i32 @llvm.bswap.i32(i32 %or17) #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdi_ctrl19, i32 %9) #20, !srcloc !224
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %if.end13
  %i.167 = phi i32 [ 0, %if.end13 ], [ %inc, %for.body23.for.body23_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #20
  %11 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr, align 8
  %mdi_ctrl25 = getelementptr inbounds %struct.csr, ptr %12, i32 0, i32 5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdi_ctrl25) #20, !srcloc !221
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !222
  %and27 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  %inc = add nuw nsw i32 %i.167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  %or.cond = select i1 %tobool28.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end32, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body23

for.end32:                                        ; preds = %for.body23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mdio_lock, i32 noundef %call2) #20
  %15 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nic, align 128
  %and35 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.end32.do.end44_crit_edge, label %if.then37

for.end32.do.end44_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end44

if.then37:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #22
  %netdev38 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %17 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %dir)
  %cmp39 = icmp eq i32 %dir, 134217728
  %cond = select i1 %cmp39, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %18, ptr noundef nonnull @.str.54, ptr noundef nonnull %cond, i32 noundef %addr, i32 noundef %reg, i32 noundef %conv16, i32 noundef %14) #23
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %for.end32.do.end44_crit_edge
  %conv45 = trunc i32 %14 to i16
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.then11.critedge
  %retval.0 = phi i16 [ 0, %if.then11.critedge ], [ %conv45, %do.end44 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @e100_get_defaults(ptr nocapture noundef %nic) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 128
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end, label %entry.cond.end.thread_crit_edge

entry.cond.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end.thread

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  %narrow = select i1 %cmp, i8 0, i8 %5
  %spec.select = zext i8 %narrow to i32
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end, %entry.cond.end.thread_crit_edge
  %6 = phi i32 [ 8, %entry.cond.end.thread_crit_edge ], [ %spec.select, %cond.end ]
  %mac = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 24
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mac, align 4
  %params = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26
  %8 = call ptr @memcpy(ptr %params, ptr @__const.e100_get_defaults.rfds, i32 12)
  %cbs6 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 1
  %9 = call ptr @memcpy(ptr %cbs6, ptr @__const.e100_get_defaults.cbs, i32 12)
  %tx_threshold = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 36
  %10 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -32, ptr %tx_threshold, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp8 = icmp ugt i32 %6, 3
  %spec.select39 = select i1 %cmp8, i16 7948, i16 8204
  %11 = tail call i16 @llvm.bswap.i16(i16 %spec.select39)
  %tx_command = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 21
  %12 = ptrtoint ptr %tx_command to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tx_command, align 8
  %command = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %command, align 2
  %rbd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %rbd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %rbd, align 4
  %size = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -3579, ptr %size, align 2
  %phy_id_mask = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 2
  %16 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 3
  %17 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %reg_num_mask, align 4
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  %dev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 5
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dev, align 4
  %mdio_read = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 6
  %21 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 7
  %22 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mdio_write, ptr %mdio_write, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_hw_reset(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 8
  %port = getelementptr inbounds %struct.csr, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port, i32 33554432) #20, !srcloc !224
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #20
  %6 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr, align 8
  %port2 = getelementptr inbounds %struct.csr, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port2, i32 0) #20, !srcloc !224
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 4294960) #20
  %cmd_lock.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %12 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 1) #20, !srcloc !220
  %14 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr, align 8
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_watchdog(ptr noundef %t) #2 align 64 {
entry:
  %cmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -676
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #20
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cmd, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 128
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr i8, ptr %t, i32 -672
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %6, ptr noundef nonnull @.str.55, i32 noundef %7) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %mii = getelementptr i8, ptr %t, i32 48
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %cmd) #20
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 12
  %8 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %11 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %call2 = call i32 @mii_link_ok(ptr noundef %mii) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %netdev4 = getelementptr i8, ptr %t, i32 -672
  %12 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev4, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %or.i)
  %cmp = icmp eq i32 %or.i, 100
  %cond = select i1 %cmp, i32 100, i32 10
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 4
  %17 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp8 = icmp eq i8 %18, 1
  %cond10 = select i1 %cmp8, ptr @.str.57, ptr @.str.58
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.56, i32 noundef %cond, ptr noundef nonnull %cond10) #23
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %call12 = call i32 @mii_link_ok(ptr noundef %mii) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

land.lhs.true14:                                  ; preds = %if.else
  %netdev15 = getelementptr i8, ptr %t, i32 -672
  %19 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev15, align 4
  %state.i80 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %state.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i80, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i81 = icmp eq i32 %23, 0
  br i1 %tobool.not.i81, label %if.then18, label %land.lhs.true14.if.end21_crit_edge

land.lhs.true14.if.end21_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #22
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %20, ptr noundef nonnull @.str.59) #23
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true14.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then6
  call void @mii_check_link(ptr noundef %mii) #20
  %cmd_lock = getelementptr i8, ptr %t, i32 -376
  call void @_raw_spin_lock_irq(ptr noundef %cmd_lock) #20
  %csr = getelementptr i8, ptr %t, i32 -332
  %24 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr, align 8
  %cmd_hi = getelementptr inbounds %struct.anon.122, ptr %25, i32 0, i32 3
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cmd_hi) #20, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %27 = or i8 %26, 2
  %28 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr, align 8
  %cmd_hi28 = getelementptr inbounds %struct.anon.122, ptr %29, i32 0, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  call void @arm_heavy_mb() #20
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi28, i8 %27) #20, !srcloc !220
  %30 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr, align 8
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #20, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @_raw_spin_unlock_irq(ptr noundef %cmd_lock) #20
  %netdev.i = getelementptr i8, ptr %t, i32 -672
  %33 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev.i, align 4
  %mem.i = getelementptr i8, ptr %t, i32 128
  %35 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mem.i, align 4
  %stats1.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1
  %mac.i = getelementptr i8, ptr %t, i32 -32
  %37 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.i = icmp ult i32 %38, 4
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  %fc_xmt_pause.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 16
  br label %cond.end7.i

cond.false.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %cmp3.i = icmp ult i32 %38, 8
  br i1 %cmp3.i, label %cond.true4.i, label %cond.false5.i

cond.true4.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #22
  %xmt_tco_frames.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 19
  br label %cond.end7.i

cond.false5.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #22
  %complete6.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 21
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.false5.i, %cond.true4.i, %cond.true.i
  %cond8.i = phi ptr [ %fc_xmt_pause.i, %cond.true.i ], [ %xmt_tco_frames.i, %cond.true4.i ], [ %complete6.i, %cond.false5.i ]
  %39 = ptrtoint ptr %cond8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cond8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127926272, i32 %40)
  %cmp9.i = icmp eq i32 %40, 127926272
  br i1 %cmp9.i, label %if.then.i, label %cond.end7.i.if.end58.i_crit_edge

cond.end7.i.if.end58.i_crit_edge:                 ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58.i

if.then.i:                                        ; preds = %cond.end7.i
  %41 = ptrtoint ptr %cond8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %cond8.i, align 4
  %42 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats1.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #20
  %tx_frames.i = getelementptr i8, ptr %t, i32 148
  %45 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tx_frames.i, align 8
  %tx_total_collisions.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %tx_total_collisions.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_total_collisions.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #20
  %tx_collisions.i = getelementptr i8, ptr %t, i32 152
  %49 = ptrtoint ptr %tx_collisions.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %tx_collisions.i, align 4
  %tx_max_collisions.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %tx_max_collisions.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_max_collisions.i, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #20
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 16
  %53 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_aborted_errors.i, align 4
  %add.i = add i32 %54, %52
  store i32 %add.i, ptr %tx_aborted_errors.i, align 4
  %tx_late_collisions.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %tx_late_collisions.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_late_collisions.i, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #20
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 20
  %58 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_window_errors.i, align 4
  %add10.i = add i32 %59, %57
  store i32 %add10.i, ptr %tx_window_errors.i, align 4
  %tx_lost_crs.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %tx_lost_crs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_lost_crs.i, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #20
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 17
  %63 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_carrier_errors.i, align 4
  %add11.i = add i32 %64, %62
  store i32 %add11.i, ptr %tx_carrier_errors.i, align 4
  %tx_underruns.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %tx_underruns.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_underruns.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #20
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 18
  %68 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_fifo_errors.i, align 4
  %add12.i = add i32 %69, %67
  store i32 %add12.i, ptr %tx_fifo_errors.i, align 4
  %70 = ptrtoint ptr %tx_collisions.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_collisions.i, align 4
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 9
  %72 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %collisions.i, align 4
  %add14.i = add i32 %73, %71
  store i32 %add14.i, ptr %collisions.i, align 4
  %74 = ptrtoint ptr %tx_max_collisions.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_max_collisions.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #20
  %77 = ptrtoint ptr %tx_lost_crs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_lost_crs.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #20
  %add17.i = add i32 %79, %76
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 5
  %80 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_errors.i, align 4
  %add18.i = add i32 %add17.i, %81
  store i32 %add18.i, ptr %tx_errors.i, align 4
  %rx_short_frame_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 15
  %82 = ptrtoint ptr %rx_short_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_short_frame_errors.i, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #20
  %rx_short_frame_errors19.i = getelementptr i8, ptr %t, i32 188
  %85 = ptrtoint ptr %rx_short_frame_errors19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_short_frame_errors19.i, align 32
  %add20.i = add i32 %86, %84
  store i32 %add20.i, ptr %rx_short_frame_errors19.i, align 32
  %rx_over_length_errors.i = getelementptr i8, ptr %t, i32 192
  %87 = ptrtoint ptr %rx_over_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_over_length_errors.i, align 4
  %add22.i = add i32 %88, %add20.i
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 10
  %89 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add22.i, ptr %rx_length_errors.i, align 4
  %rx_crc_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 10
  %90 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_crc_errors.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #20
  %rx_crc_errors23.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 12
  %93 = ptrtoint ptr %rx_crc_errors23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_crc_errors23.i, align 4
  %add24.i = add i32 %94, %92
  store i32 %add24.i, ptr %rx_crc_errors23.i, align 4
  %rx_alignment_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 11
  %95 = ptrtoint ptr %rx_alignment_errors.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_alignment_errors.i, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #20
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 13
  %98 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_frame_errors.i, align 4
  %add25.i = add i32 %99, %97
  store i32 %add25.i, ptr %rx_frame_errors.i, align 4
  %rx_overrun_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 13
  %100 = ptrtoint ptr %rx_overrun_errors.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_overrun_errors.i, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101) #20
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 11
  %103 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_over_errors.i, align 4
  %add26.i = add i32 %104, %102
  store i32 %add26.i, ptr %rx_over_errors.i, align 4
  %105 = ptrtoint ptr %rx_overrun_errors.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_overrun_errors.i, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #20
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 14
  %108 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_fifo_errors.i, align 4
  %add28.i = add i32 %109, %107
  store i32 %add28.i, ptr %rx_fifo_errors.i, align 4
  %rx_resource_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 12
  %110 = ptrtoint ptr %rx_resource_errors.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_resource_errors.i, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #20
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 15
  %113 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rx_missed_errors.i, align 4
  %add29.i = add i32 %114, %112
  store i32 %add29.i, ptr %rx_missed_errors.i, align 4
  %115 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_crc_errors.i, align 4
  %117 = call i32 @llvm.bswap.i32(i32 %116) #20
  %118 = ptrtoint ptr %rx_alignment_errors.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_alignment_errors.i, align 4
  %120 = call i32 @llvm.bswap.i32(i32 %119) #20
  %add32.i = add i32 %120, %117
  %121 = ptrtoint ptr %rx_short_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_short_frame_errors.i, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122) #20
  %add34.i = add i32 %add32.i, %123
  %rx_cdt_errors.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 14
  %124 = ptrtoint ptr %rx_cdt_errors.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_cdt_errors.i, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125) #20
  %add35.i = add i32 %add34.i, %126
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 4
  %127 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_errors.i, align 4
  %add36.i = add i32 %add35.i, %128
  store i32 %add36.i, ptr %rx_errors.i, align 4
  %tx_deferred.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 5
  %129 = ptrtoint ptr %tx_deferred.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_deferred.i, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #20
  %tx_deferred37.i = getelementptr i8, ptr %t, i32 156
  %132 = ptrtoint ptr %tx_deferred37.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_deferred37.i, align 64
  %add38.i = add i32 %133, %131
  store i32 %add38.i, ptr %tx_deferred37.i, align 64
  %tx_single_collisions.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 6
  %134 = ptrtoint ptr %tx_single_collisions.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_single_collisions.i, align 4
  %136 = call i32 @llvm.bswap.i32(i32 %135) #20
  %tx_single_collisions39.i = getelementptr i8, ptr %t, i32 160
  %137 = ptrtoint ptr %tx_single_collisions39.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_single_collisions39.i, align 4
  %add40.i = add i32 %138, %136
  store i32 %add40.i, ptr %tx_single_collisions39.i, align 4
  %tx_multiple_collisions.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 7
  %139 = ptrtoint ptr %tx_multiple_collisions.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_multiple_collisions.i, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #20
  %tx_multiple_collisions41.i = getelementptr i8, ptr %t, i32 164
  %142 = ptrtoint ptr %tx_multiple_collisions41.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_multiple_collisions41.i, align 8
  %add42.i = add i32 %143, %141
  store i32 %add42.i, ptr %tx_multiple_collisions41.i, align 8
  %144 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp44.i = icmp ugt i32 %145, 3
  br i1 %cmp44.i, label %if.then45.i, label %if.then.i.if.end58.i_crit_edge

if.then.i.if.end58.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58.i

if.then45.i:                                      ; preds = %if.then.i
  %fc_xmt_pause46.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 16
  %146 = ptrtoint ptr %fc_xmt_pause46.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %fc_xmt_pause46.i, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147) #20
  %tx_fc_pause.i = getelementptr i8, ptr %t, i32 168
  %149 = ptrtoint ptr %tx_fc_pause.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %tx_fc_pause.i, align 4
  %add47.i = add i32 %150, %148
  store i32 %add47.i, ptr %tx_fc_pause.i, align 4
  %fc_rcv_pause.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 17
  %151 = ptrtoint ptr %fc_rcv_pause.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fc_rcv_pause.i, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #20
  %rx_fc_pause.i = getelementptr i8, ptr %t, i32 176
  %154 = ptrtoint ptr %rx_fc_pause.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rx_fc_pause.i, align 4
  %add48.i = add i32 %155, %153
  store i32 %add48.i, ptr %rx_fc_pause.i, align 4
  %fc_rcv_unsupported.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 18
  %156 = ptrtoint ptr %fc_rcv_unsupported.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %fc_rcv_unsupported.i, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #20
  %rx_fc_unsupported.i = getelementptr i8, ptr %t, i32 180
  %159 = ptrtoint ptr %rx_fc_unsupported.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rx_fc_unsupported.i, align 8
  %add49.i = add i32 %160, %158
  store i32 %add49.i, ptr %rx_fc_unsupported.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %145)
  %cmp51.i = icmp ugt i32 %145, 7
  br i1 %cmp51.i, label %if.then52.i, label %if.then45.i.if.end58.i_crit_edge

if.then45.i.if.end58.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end58.i

if.then52.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  %xmt_tco_frames53.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 19
  %161 = ptrtoint ptr %xmt_tco_frames53.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %xmt_tco_frames53.i, align 4
  %163 = call i16 @llvm.bswap.i16(i16 %162) #20
  %conv.i82 = zext i16 %163 to i32
  %tx_tco_frames.i = getelementptr i8, ptr %t, i32 172
  %164 = ptrtoint ptr %tx_tco_frames.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tx_tco_frames.i, align 16
  %add54.i = add i32 %165, %conv.i82
  store i32 %add54.i, ptr %tx_tco_frames.i, align 16
  %rcv_tco_frames.i = getelementptr inbounds %struct.mem, ptr %36, i32 0, i32 1, i32 20
  %166 = ptrtoint ptr %rcv_tco_frames.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %rcv_tco_frames.i, align 2
  %168 = call i16 @llvm.bswap.i16(i16 %167) #20
  %conv55.i = zext i16 %168 to i32
  %rx_tco_frames.i = getelementptr i8, ptr %t, i32 184
  %169 = ptrtoint ptr %rx_tco_frames.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rx_tco_frames.i, align 4
  %add56.i = add i32 %170, %conv55.i
  store i32 %add56.i, ptr %rx_tco_frames.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then52.i, %if.then45.i.if.end58.i_crit_edge, %if.then.i.if.end58.i_crit_edge, %cond.end7.i.if.end58.i_crit_edge
  %call.i = call fastcc i32 @e100_exec_cmd(ptr noundef %add.ptr, i8 noundef zeroext 112, i32 noundef 0) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i83 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i83, label %if.end58.i.e100_update_stats.exit_crit_edge, label %do.body.i

if.end58.i.e100_update_stats.exit_crit_edge:      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_update_stats.exit

do.body.i:                                        ; preds = %if.end58.i
  %171 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr, align 128
  %and.i = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool60.not.i, label %do.body.i.e100_update_stats.exit_crit_edge, label %if.then61.i

do.body.i.e100_update_stats.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_update_stats.exit

if.then61.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %173 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %174, ptr noundef nonnull @.str.60) #23
  br label %e100_update_stats.exit

e100_update_stats.exit:                           ; preds = %if.then61.i, %do.body.i.e100_update_stats.exit_crit_edge, %if.end58.i.e100_update_stats.exit_crit_edge
  %duplex30 = getelementptr inbounds %struct.ethtool_cmd, ptr %cmd, i32 0, i32 4
  %175 = ptrtoint ptr %duplex30 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %duplex30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp.i84 = icmp eq i8 %176, 0
  br i1 %cmp.i84, label %if.then.i88, label %e100_update_stats.exit.e100_adjust_adaptive_ifs.exit_crit_edge

e100_update_stats.exit.e100_adjust_adaptive_ifs.exit_crit_edge: ; preds = %e100_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_adjust_adaptive_ifs.exit

if.then.i88:                                      ; preds = %e100_update_stats.exit
  %adaptive_ifs.i = getelementptr i8, ptr %t, i32 144
  %177 = ptrtoint ptr %adaptive_ifs.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %adaptive_ifs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %or.i)
  %cmp1.i = icmp eq i32 %or.i, 100
  %cond.i = select i1 %cmp1.i, i32 1000, i32 100
  %tx_frames.i85 = getelementptr i8, ptr %t, i32 148
  %179 = ptrtoint ptr %tx_frames.i85 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_frames.i85, align 8
  %div50.i = lshr i32 %180, 5
  %tx_collisions.i86 = getelementptr i8, ptr %t, i32 152
  %181 = ptrtoint ptr %tx_collisions.i86 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %tx_collisions.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div50.i, i32 %182)
  %cmp3.i87 = icmp ult i32 %div50.i, %182
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %cond.i)
  %cmp6.i = icmp ugt i32 %180, %cond.i
  %or.cond.i = and i1 %cmp6.i, %cmp3.i87
  br i1 %or.cond.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %178)
  %cmp11.i = icmp ult i8 %178, 60
  br i1 %cmp11.i, label %if.then8.i.if.end31.sink.split.i_crit_edge, label %if.then8.i.if.end31.i_crit_edge

if.then8.i.if.end31.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i

if.then8.i.if.end31.sink.split.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.sink.split.i

if.else.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %cond.i)
  %cmp18.i = icmp ult i32 %180, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %178)
  %cmp23.i = icmp ugt i8 %178, 4
  %or.cond51.i = select i1 %cmp18.i, i1 %cmp23.i, i1 false
  br i1 %or.cond51.i, label %if.else.i.if.end31.sink.split.i_crit_edge, label %if.else.i.if.end31.i_crit_edge

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.i

if.else.i.if.end31.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.else.i.if.end31.sink.split.i_crit_edge, %if.then8.i.if.end31.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 5, %if.then8.i.if.end31.sink.split.i_crit_edge ], [ -5, %if.else.i.if.end31.sink.split.i_crit_edge ]
  %sub.i = add i8 %.sink.i, %178
  %183 = ptrtoint ptr %adaptive_ifs.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %sub.i, ptr %adaptive_ifs.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.else.i.if.end31.i_crit_edge, %if.then8.i.if.end31.i_crit_edge
  %184 = ptrtoint ptr %adaptive_ifs.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %adaptive_ifs.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %185, i8 %178)
  %cmp34.not.i = icmp eq i8 %185, %178
  br i1 %cmp34.not.i, label %if.end31.i.e100_adjust_adaptive_ifs.exit_crit_edge, label %if.then36.i

if.end31.i.e100_adjust_adaptive_ifs.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_adjust_adaptive_ifs.exit

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i89 = call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @e100_configure) #20
  br label %e100_adjust_adaptive_ifs.exit

e100_adjust_adaptive_ifs.exit:                    ; preds = %if.then36.i, %if.end31.i.e100_adjust_adaptive_ifs.exit_crit_edge, %e100_update_stats.exit.e100_adjust_adaptive_ifs.exit_crit_edge
  %186 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %187)
  %cmp32 = icmp ult i32 %187, 3
  br i1 %cmp32, label %if.then34, label %e100_adjust_adaptive_ifs.exit.if.end36_crit_edge

e100_adjust_adaptive_ifs.exit.if.end36_crit_edge: ; preds = %e100_adjust_adaptive_ifs.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

if.then34:                                        ; preds = %e100_adjust_adaptive_ifs.exit
  call void @__sanitizer_cov_trace_pc() #22
  %188 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %netdev.i, align 4
  call void @e100_set_multicast_list(ptr noundef %189)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %e100_adjust_adaptive_ifs.exit.if.end36_crit_edge
  %flags = getelementptr i8, ptr %t, i32 -36
  %190 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags, align 128
  %and37 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp ne i32 %and37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %or.i)
  %cmp40 = icmp eq i32 %or.i, 10
  %or.cond = select i1 %tobool38.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %land.lhs.true42, label %if.end36.if.else50_crit_edge

if.end36.if.else50_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else50

land.lhs.true42:                                  ; preds = %if.end36
  %192 = ptrtoint ptr %duplex30 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %duplex30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp45 = icmp eq i8 %193, 0
  br i1 %cmp45, label %if.then47, label %land.lhs.true42.if.else50_crit_edge

land.lhs.true42.if.else50_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.else50

if.then47:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #22
  %or49 = or i32 %191, 16
  br label %if.end53

if.else50:                                        ; preds = %land.lhs.true42.if.else50_crit_edge, %if.end36.if.else50_crit_edge
  %and52 = and i32 %191, -17
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then47
  %storemerge = phi i32 [ %and52, %if.else50 ], [ %or49, %if.then47 ]
  %194 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %storemerge, ptr %flags, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %195 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %195, 200
  %call54 = call i32 @round_jiffies(i32 noundef %add) #20
  %call55 = call i32 @mod_timer(ptr noundef %t, i32 noundef %call54) #20
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_tx_timeout_task(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -756
  %netdev1 = getelementptr i8, ptr %work, i32 -752
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 128
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %csr = getelementptr i8, ptr %work, i32 -412
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr, align 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %conv) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @rtnl_lock() #20
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @e100_down(ptr noundef %add.ptr.i)
  %call7 = tail call fastcc i32 @e100_up(ptr noundef %add.ptr.i)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  tail call void @rtnl_unlock() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_eeprom_load(ptr nocapture noundef %nic) unnamed_addr #2 align 64 {
entry:
  %addr_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_len) #20
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %addr_len, align 2
  %call = call fastcc zeroext i16 @e100_eeprom_read(ptr noundef %nic, ptr noundef nonnull %addr_len, i16 noundef zeroext 0)
  %1 = ptrtoint ptr %addr_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %addr_len, align 2
  %conv = zext i16 %2 to i32
  %shl = shl nuw i32 1, %conv
  %conv1 = trunc i32 %shl to i16
  %eeprom_wc = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 49
  %3 = ptrtoint ptr %eeprom_wc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv1, ptr %eeprom_wc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1)
  %cmp55.not = icmp eq i16 %conv1, 0
  br i1 %cmp55.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %checksum.057 = phi i16 [ %checksum.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = trunc i32 %indvars.iv to i16
  %call6 = call fastcc zeroext i16 @e100_eeprom_read(ptr noundef %nic, ptr noundef nonnull %addr_len, i16 noundef zeroext %4)
  %arrayidx = getelementptr %struct.nic, ptr %nic, i32 0, i32 50, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call6, ptr %arrayidx, align 2
  %6 = ptrtoint ptr %eeprom_wc to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %eeprom_wc, align 8
  %conv9 = zext i16 %7 to i32
  %sub = add nsw i32 %conv9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp10 = icmp sgt i32 %sub, %indvars.iv
  %8 = tail call i16 @llvm.bswap.i16(i16 %call6)
  %add = select i1 %cmp10, i16 %8, i16 0
  %checksum.1 = add i16 %add, %checksum.057
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %cmp = icmp ult i32 %indvars.iv.next, %conv9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %phi.cast = zext i16 %7 to i32
  %phi.bo = sub i16 -17734, %checksum.1
  %phi.bo60 = add nsw i32 %phi.cast, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %checksum.0.lcssa = phi i16 [ %phi.bo, %for.end.loopexit ], [ -17734, %entry.for.end_crit_edge ]
  %.lcssa = phi i32 [ %phi.bo60, %for.end.loopexit ], [ -1, %entry.for.end_crit_edge ]
  %9 = tail call i16 @llvm.bswap.i16(i16 %checksum.0.lcssa)
  %arrayidx26 = getelementptr %struct.nic, ptr %nic, i32 0, i32 50, i32 %.lcssa
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp28.not = icmp eq i16 %9, %11
  br i1 %cmp28.not, label %for.end.if.end36_crit_edge, label %do.body

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

do.body:                                          ; preds = %for.end
  %12 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nic, align 128
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then31

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.62) #23
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body.do.end_crit_edge
  %16 = load i32, ptr @eeprom_bad_csum_allow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  br i1 %tobool33.not, label %do.end.cleanup_crit_edge, label %do.end.if.end36_crit_edge

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end36:                                         ; preds = %do.end.if.end36_crit_edge, %for.end.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -11, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_len) #20
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_phy_init(ptr nocapture noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %mii = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %mdio_ctrl.i = getelementptr i8, ptr %1, i32 2316
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %addr.0314 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = zext i32 %addr.0314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %addr.0314, label %cond.false5 [
    i32 0, label %for.body.cond.end6_crit_edge
    i32 1, label %cond.end6.fold.split
  ]

for.body.cond.end6_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end6

cond.false5:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end6

cond.end6.fold.split:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end6

cond.end6:                                        ; preds = %cond.end6.fold.split, %cond.false5, %for.body.cond.end6_crit_edge
  %cond7 = phi i32 [ 1, %for.body.cond.end6_crit_edge ], [ %addr.0314, %cond.false5 ], [ 0, %cond.end6.fold.split ]
  %3 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond7, ptr %mii, align 4
  %4 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %5(ptr noundef %add.ptr.i.i, i32 noundef %cond7, i32 noundef 134217728, i32 noundef 0, i16 noundef zeroext 0) #20
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii, align 4
  %8 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i246 = tail call zeroext i16 %9(ptr noundef %add.ptr.i.i, i32 noundef %7, i32 noundef 134217728, i32 noundef 1, i16 noundef zeroext 0) #20
  %10 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mii, align 4
  %12 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i250 = tail call zeroext i16 %13(ptr noundef %add.ptr.i.i, i32 noundef %11, i32 noundef 134217728, i32 noundef 1, i16 noundef zeroext 0) #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.i)
  %cmp19 = icmp eq i16 %call1.i, -1
  br i1 %cmp19, label %cond.end6.for.inc_crit_edge, label %lor.lhs.false

cond.end6.for.inc_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

lor.lhs.false:                                    ; preds = %cond.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i250)
  %cmp22 = icmp eq i16 %call1.i250, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %cmp25 = icmp eq i16 %call1.i, 0
  %or.cond = select i1 %cmp22, i1 %cmp25, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.inc_crit_edge, label %do.body37

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %cond.end6.for.inc_crit_edge
  %inc = add nuw nsw i32 %addr.0314, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then29, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.then29:                                        ; preds = %for.inc
  %arrayidx.i = getelementptr %struct.nic, ptr %nic, i32 0, i32 50, i32 6
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %16 = and i16 %15, 15
  %conv1.i = zext i16 %16 to i32
  %17 = zext i32 %conv1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %conv1.i, label %do.body [
    i32 0, label %if.then29.do.body.i_crit_edge
    i32 3, label %if.then29.do.body.i_crit_edge327
    i32 6, label %if.then29.do.body.i_crit_edge328
  ]

if.then29.do.body.i_crit_edge328:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.then29.do.body.i_crit_edge327:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

if.then29.do.body.i_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body.i

do.body.i:                                        ; preds = %if.then29.do.body.i_crit_edge, %if.then29.do.body.i_crit_edge327, %if.then29.do.body.i_crit_edge328
  %18 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nic, align 128
  %and3.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %do.body.i.e100_phy_check_without_mii.exit_crit_edge, label %if.then.i

do.body.i.e100_phy_check_without_mii.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_phy_check_without_mii.exit

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %20 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.66) #23
  br label %e100_phy_check_without_mii.exit

e100_phy_check_without_mii.exit:                  ; preds = %if.then.i, %do.body.i.e100_phy_check_without_mii.exit_crit_edge
  %mdio_ctrl.i252 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 3
  %22 = ptrtoint ptr %mdio_ctrl.i252 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mdio_ctrl_phy_mii_emulated, ptr %mdio_ctrl.i252, align 4
  %23 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mii, align 4
  br label %cleanup

do.body:                                          ; preds = %if.then29
  %24 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nic, align 128
  %and = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.body.cleanup_crit_edge, label %if.then33

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %26 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.63) #23
  br label %cleanup

do.body37:                                        ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nic, align 128
  %and39 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.if.end48_crit_edge, label %if.then41

do.body37.if.end48_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #22
  %30 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev1, align 4
  %32 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mii, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %31, ptr noundef nonnull @.str.64, i32 noundef %33) #23
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %do.body37.if.end48_crit_edge
  %34 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mii, align 4
  %36 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i255 = tail call zeroext i16 %37(ptr noundef %add.ptr.i.i, i32 noundef %35, i32 noundef 134217728, i32 noundef 2, i16 noundef zeroext 0) #20
  %conv.i256 = zext i16 %call1.i255 to i32
  %38 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mii, align 4
  %40 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i259 = tail call zeroext i16 %41(ptr noundef %add.ptr.i.i, i32 noundef %39, i32 noundef 134217728, i32 noundef 3, i16 noundef zeroext 0) #20
  %conv.i260 = zext i16 %call1.i259 to i32
  %shl = shl nuw i32 %conv.i260, 16
  %or = or i32 %shl, %conv.i256
  %phy = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 25
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %phy, align 8
  %43 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nic, align 128
  %and61 = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end48.for.body72.preheader_crit_edge, label %if.then63

if.end48.for.body72.preheader_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body72.preheader

if.then63:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  %45 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %46, ptr noundef nonnull @.str.65, i32 noundef %or) #23
  br label %for.body72.preheader

for.body72.preheader:                             ; preds = %if.then63, %if.end48.for.body72.preheader_crit_edge
  br label %for.body72

for.body72:                                       ; preds = %for.inc89.for.body72_crit_edge, %for.body72.preheader
  %bmcr.2318 = phi i16 [ %bmcr.3, %for.inc89.for.body72_crit_edge ], [ %call1.i, %for.body72.preheader ]
  %addr.1316 = phi i32 [ %inc90, %for.inc89.for.body72_crit_edge ], [ 0, %for.body72.preheader ]
  %47 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mii, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.1316, i32 %48)
  %cmp75.not = icmp eq i32 %addr.1316, %48
  br i1 %cmp75.not, label %if.else78, label %for.body72.for.inc89.sink.split_crit_edge

for.body72.for.inc89.sink.split_crit_edge:        ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc89.sink.split

if.else78:                                        ; preds = %for.body72
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %50)
  %cmp80.not = icmp eq i32 %50, -798949299
  br i1 %cmp80.not, label %if.else78.for.inc89_crit_edge, label %if.then82

if.else78.for.inc89_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc89

if.then82:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #22
  %51 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i266 = tail call zeroext i16 %52(ptr noundef %add.ptr.i.i, i32 noundef %addr.1316, i32 noundef 134217728, i32 noundef 0, i16 noundef zeroext 0) #20
  %53 = and i16 %call1.i266, -1025
  br label %for.inc89.sink.split

for.inc89.sink.split:                             ; preds = %if.then82, %for.body72.for.inc89.sink.split_crit_edge
  %.sink = phi i16 [ %53, %if.then82 ], [ 1024, %for.body72.for.inc89.sink.split_crit_edge ]
  %bmcr.3.ph = phi i16 [ %call1.i266, %if.then82 ], [ %bmcr.2318, %for.body72.for.inc89.sink.split_crit_edge ]
  %54 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i263 = tail call zeroext i16 %55(ptr noundef %add.ptr.i.i, i32 noundef %addr.1316, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %.sink) #20
  br label %for.inc89

for.inc89:                                        ; preds = %for.inc89.sink.split, %if.else78.for.inc89_crit_edge
  %bmcr.3 = phi i16 [ %bmcr.2318, %if.else78.for.inc89_crit_edge ], [ %bmcr.3.ph, %for.inc89.sink.split ]
  %inc90 = add nuw nsw i32 %addr.1316, 1
  %exitcond321.not = icmp eq i32 %inc90, 32
  br i1 %exitcond321.not, label %for.end91, label %for.inc89.for.body72_crit_edge

for.inc89.for.body72_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body72

for.end91:                                        ; preds = %for.inc89
  %56 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %57)
  %cmp93 = icmp eq i32 %57, -798949299
  br i1 %cmp93, label %if.then95, label %for.end91.if.end100_crit_edge

for.end91.if.end100_crit_edge:                    ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end100

if.then95:                                        ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #22
  %58 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mii, align 4
  %60 = and i16 %bmcr.3, -1025
  %61 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i274 = tail call zeroext i16 %62(ptr noundef %add.ptr.i.i, i32 noundef %59, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %60) #20
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %for.end91.if.end100_crit_edge
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phy, align 8
  %and102 = and i32 %64, -983041
  call void @__sanitizer_cov_trace_const_cmp4(i32 1543512064, i32 %and102)
  %cmp103 = icmp eq i32 %and102, 1543512064
  br i1 %cmp103, label %if.then105, label %if.end100.if.end119_crit_edge

if.end100.if.end119_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end119

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #22
  %65 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mii, align 4
  %67 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i277 = tail call zeroext i16 %68(ptr noundef %add.ptr.i.i, i32 noundef %66, i32 noundef 134217728, i32 noundef 23, i16 noundef zeroext 0) #20
  %69 = and i16 %call1.i277, -1281
  %70 = or i16 %69, 1024
  %71 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mii, align 4
  %73 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i282 = tail call zeroext i16 %74(ptr noundef %add.ptr.i.i, i32 noundef %72, i32 noundef 67108864, i32 noundef 23, i16 noundef zeroext %70) #20
  %75 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %phy, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then105, %if.end100.if.end119_crit_edge
  %76 = phi i32 [ %.pr, %if.then105 ], [ %64, %if.end100.if.end119_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %76)
  %cmp121 = icmp eq i32 %76, -798949299
  br i1 %cmp121, label %if.then123, label %if.else144

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #22
  %77 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mii, align 4
  %79 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i285 = tail call zeroext i16 %80(ptr noundef %add.ptr.i.i, i32 noundef %78, i32 noundef 134217728, i32 noundef 4, i16 noundef zeroext 0) #20
  %mdio_ctrl = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 3
  %81 = ptrtoint ptr %mdio_ctrl to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @mdio_ctrl_phy_82552_v, ptr %mdio_ctrl, align 4
  %82 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mii, align 4
  %84 = or i16 %call1.i285, 3072
  %85 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i290 = tail call zeroext i16 %86(ptr noundef %add.ptr.i.i, i32 noundef %83, i32 noundef 67108864, i32 noundef 4, i16 noundef zeroext %84) #20
  %87 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mii, align 4
  %89 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i293 = tail call zeroext i16 %90(ptr noundef %add.ptr.i.i, i32 noundef %88, i32 noundef 134217728, i32 noundef 0, i16 noundef zeroext 0) #20
  %91 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mii, align 4
  %93 = or i16 %call1.i293, -32768
  %94 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i298 = tail call zeroext i16 %95(ptr noundef %add.ptr.i.i, i32 noundef %92, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext %93) #20
  br label %cleanup

if.else144:                                       ; preds = %if.end119
  %mac = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 24
  %96 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %97)
  %cmp145 = icmp ugt i32 %97, 11
  br i1 %cmp145, label %if.else144.if.then160_crit_edge, label %lor.lhs.false147

if.else144.if.then160_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then160

lor.lhs.false147:                                 ; preds = %if.else144
  %flags = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 23
  %98 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags, align 128
  %and148 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %lor.lhs.false147.cleanup_crit_edge, label %land.lhs.true150

lor.lhs.false147.cleanup_crit_edge:               ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true150:                                 ; preds = %lor.lhs.false147
  %100 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mii, align 4
  %102 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i301 = tail call zeroext i16 %103(ptr noundef %add.ptr.i.i, i32 noundef %101, i32 noundef 134217728, i32 noundef 27, i16 noundef zeroext 0) #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.i301)
  %tobool155.not = icmp sgt i16 %call1.i301, -1
  br i1 %tobool155.not, label %land.lhs.true150.cleanup_crit_edge, label %land.lhs.true156

land.lhs.true150.cleanup_crit_edge:               ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

land.lhs.true156:                                 ; preds = %land.lhs.true150
  %arrayidx = getelementptr %struct.nic, ptr %nic, i32 0, i32 50, i32 3
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %105)
  %tobool159.not = icmp sgt i16 %105, -1
  br i1 %tobool159.not, label %land.lhs.true156.cleanup_crit_edge, label %land.lhs.true156.if.then160_crit_edge

land.lhs.true156.if.then160_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then160

land.lhs.true156.cleanup_crit_edge:               ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then160:                                       ; preds = %land.lhs.true156.if.then160_crit_edge, %if.else144.if.then160_crit_edge
  %106 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mii, align 4
  %force_media = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 4
  %108 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load = load i8, ptr %force_media, align 4
  %109 = shl i8 %bf.load, 1
  %110 = and i8 %109, -128
  %111 = xor i8 %110, -128
  %112 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mdio_ctrl.i, align 4
  %conv.i305 = zext i8 %111 to i16
  %call1.i306 = tail call zeroext i16 %113(ptr noundef %add.ptr.i.i, i32 noundef %107, i32 noundef 67108864, i32 noundef 28, i16 noundef zeroext %conv.i305) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %land.lhs.true156.cleanup_crit_edge, %land.lhs.true150.cleanup_crit_edge, %lor.lhs.false147.cleanup_crit_edge, %if.then123, %if.then33, %do.body.cleanup_crit_edge, %e100_phy_check_without_mii.exit
  %retval.0 = phi i32 [ 0, %e100_phy_check_without_mii.exit ], [ -11, %if.then33 ], [ -11, %do.body.cleanup_crit_edge ], [ 0, %lor.lhs.false147.cleanup_crit_edge ], [ 0, %land.lhs.true150.cleanup_crit_edge ], [ 0, %land.lhs.true156.cleanup_crit_edge ], [ 0, %if.then160 ], [ 0, %if.then123 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_free(ptr nocapture noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 31
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 32
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 688, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #20
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mem, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %netdev) #20
  %call1 = tail call fastcc i32 @e100_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

do.body:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 128
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.if.end5_crit_edge, label %if.then3

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev4 = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #23
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.body.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @e100_down(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 2944
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 128
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end8_crit_edge, label %do.body

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

do.body:                                          ; preds = %if.then
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 128
  %and4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev7 = getelementptr i8, ptr %netdev, i32 2308
  %4 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev7, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %5, ptr noundef nonnull @.str.46) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge, %if.then.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #20
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %call10 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull @e100_xmit_prepare)
  %7 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call10, label %if.end9.cleanup_crit_edge [
    i32 -28, label %do.body11
    i32 -12, label %do.body21
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body11:                                        ; preds = %if.end9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 128
  %and13 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.cleanup.sink.split_crit_edge, label %do.body11.cleanup.sink.split.sink.split_crit_edge

do.body11.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.sink.split

do.body11.cleanup.sink.split_crit_edge:           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

do.body21:                                        ; preds = %if.end9
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 128
  %and23 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.cleanup.sink.split_crit_edge, label %do.body21.cleanup.sink.split.sink.split_crit_edge

do.body21.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split.sink.split

do.body21.cleanup.sink.split_crit_edge:           ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.body21.cleanup.sink.split.sink.split_crit_edge, %do.body11.cleanup.sink.split.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.47, %do.body11.cleanup.sink.split.sink.split_crit_edge ], [ @.str.48, %do.body21.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ 0, %do.body11.cleanup.sink.split.sink.split_crit_edge ], [ 16, %do.body21.cleanup.sink.split.sink.split_crit_edge ]
  %netdev26 = getelementptr i8, ptr %netdev, i32 2308
  %12 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev26, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %13, ptr noundef nonnull %.str.48.sink) #23
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body21.cleanup.sink.split_crit_edge, %do.body11.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.body11.cleanup.sink.split_crit_edge ], [ 16, %do.body21.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_set_multicast_list(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 128
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %netdev1 = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef %7) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %flags2 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2, align 8
  %flags7 = getelementptr i8, ptr %netdev, i32 2944
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags7, align 128
  %and8 = and i32 %11, -3
  %and3 = lshr i32 %9, 7
  %12 = and i32 %and3, 2
  %and8.sink = or i32 %and8, %12
  store i32 %and8.sink, ptr %flags7, align 128
  %and11 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %do.end.if.then15_crit_edge

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end
  %count14 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %13 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp = icmp sgt i32 %14, 64
  br i1 %cmp, label %lor.lhs.false.if.then15_crit_edge, label %if.else18

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %flags16 = getelementptr i8, ptr %netdev, i32 2944
  %15 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags16, align 128
  %or17 = or i32 %16, 4
  store i32 %or17, ptr %flags16, align 128
  br label %if.end21

if.else18:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  %flags19 = getelementptr i8, ptr %netdev, i32 2944
  %17 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags19, align 128
  %and20 = and i32 %18, -5
  store i32 %and20, ptr %flags19, align 128
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %call22 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull @e100_configure)
  %call23 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull @e100_multi)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_mac_address(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #20
  %cb_lock.i = getelementptr i8, ptr %netdev, i32 2560
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #20
  %cbs_avail.i = getelementptr i8, ptr %netdev, i32 2656
  %5 = ptrtoint ptr %cbs_avail.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cbs_avail.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.e100_exec_cb.exit_crit_edge, label %if.end14.i, !prof !216

if.end.e100_exec_cb.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

if.end14.i:                                       ; preds = %if.end
  %cb_to_use.i = getelementptr i8, ptr %netdev, i32 2892
  %7 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cb_to_use.i, align 4
  %next.i = getelementptr inbounds %struct.cb, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  store ptr %10, ptr %cb_to_use.i, align 4
  %dec.i = add i32 %6, -1
  %11 = ptrtoint ptr %cbs_avail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec.i, ptr %cbs_avail.i, align 32
  %skb10.i = getelementptr inbounds %struct.cb, ptr %8, i32 0, i32 7
  %12 = ptrtoint ptr %skb10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %skb10.i, align 4
  %command.i8 = getelementptr inbounds %struct.cb, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %command.i8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %command.i8, align 2
  %u.i = getelementptr inbounds %struct.cb, ptr %8, i32 0, i32 3
  %netdev.i = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr.i, align 64
  %18 = call ptr @memcpy(ptr %u.i, ptr %17, i32 6)
  %19 = load i32, ptr %cbs_avail.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not.i = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %command.i8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 320, ptr %command.i8, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !225
  %prev.i = getelementptr inbounds %struct.cb, ptr %8, i32 0, i32 5
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %command29.i = getelementptr inbounds %struct.cb, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %command29.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %command29.i, align 2
  %25 = and i16 %24, -65
  store i16 %25, ptr %command29.i, align 2
  %cb_to_send.i = getelementptr i8, ptr %netdev, i32 2896
  %26 = ptrtoint ptr %cb_to_send.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb_to_send.i, align 16
  %28 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cb_to_use.i, align 4
  %cmp33.not80.i = icmp eq ptr %27, %29
  br i1 %cmp33.not80.i, label %if.end14.i.e100_exec_cb.exit_crit_edge, label %while.body.lr.ph.i

if.end14.i.e100_exec_cb.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

while.body.lr.ph.i:                               ; preds = %if.end14.i
  %cuc_cmd.i = getelementptr i8, ptr %netdev, i32 2652
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %30 = phi ptr [ %27, %while.body.lr.ph.i ], [ %40, %if.else.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %cuc_cmd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cuc_cmd.i, align 4
  %conv35.i = trunc i32 %32 to i8
  %dma_addr.i = getelementptr inbounds %struct.cb, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i, align 4
  %call37.i = tail call fastcc i32 @e100_exec_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext %conv35.i, i32 noundef %34) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then45.i, !prof !214

if.then45.i:                                      ; preds = %while.body.i
  br i1 %tobool16.not.i, label %if.then48.i, label %if.then45.i.e100_exec_cb.exit_crit_edge

if.then45.i.e100_exec_cb.exit_crit_edge:          ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  %tx_timeout_task.i = getelementptr i8, ptr %netdev, i32 3060
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %tx_timeout_task.i) #20
  br label %e100_exec_cb.exit

if.else.i:                                        ; preds = %while.body.i
  %36 = ptrtoint ptr %cuc_cmd.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 32, ptr %cuc_cmd.i, align 4
  %37 = ptrtoint ptr %cb_to_send.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cb_to_send.i, align 16
  %next53.i = getelementptr inbounds %struct.cb, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %next53.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next53.i, align 4
  store ptr %40, ptr %cb_to_send.i, align 16
  %41 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cb_to_use.i, align 4
  %cmp33.not.i = icmp eq ptr %40, %42
  br i1 %cmp33.not.i, label %if.else.i.e100_exec_cb.exit_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

if.else.i.e100_exec_cb.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

e100_exec_cb.exit:                                ; preds = %if.else.i.e100_exec_cb.exit_crit_edge, %if.then48.i, %if.then45.i.e100_exec_cb.exit_crit_edge, %if.end14.i.e100_exec_cb.exit_crit_edge, %if.end.e100_exec_cb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call2.i) #20
  br label %cleanup

cleanup:                                          ; preds = %e100_exec_cb.exit, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %e100_exec_cb.exit ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_do_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #20
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_task = getelementptr i8, ptr %netdev, i32 3060
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_task) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_netpoll(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cmd_lock.i = getelementptr i8, ptr %netdev, i32 2604
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %csr.i = getelementptr i8, ptr %netdev, i32 2648
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 1) #20, !srcloc !220
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  %pdev = getelementptr i8, ptr %netdev, i32 2312
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @e100_intr(i32 noundef %8, ptr noundef %netdev)
  tail call fastcc void @e100_tx_clean(ptr noundef %add.ptr.i)
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %9 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i10 = getelementptr inbounds %struct.anon.122, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i10, i8 0) #20, !srcloc !220
  %11 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr.i, align 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i8) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 26388279066624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %2 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %features, ptr %features1, align 16
  %call3 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull @e100_configure)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_up(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @e100_rx_alloc_list(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @e100_alloc_cbs(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_rx_clean_list_crit_edge

if.end.err_rx_clean_list_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_rx_clean_list

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @e100_hw_init(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_clean_cbs_crit_edge

if.end4.err_clean_cbs_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_clean_cbs

if.end8:                                          ; preds = %if.end4
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @e100_set_multicast_list(ptr noundef %1)
  %rxs.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %2 = ptrtoint ptr %rxs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxs.i, align 128
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end8.e100_start_receiver.exit_crit_edge, label %if.end.i

if.end8.e100_start_receiver.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.end.i:                                         ; preds = %if.end8
  %ru_running.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %4 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ru_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.e100_start_receiver.exit_crit_edge

if.end.i.e100_start_receiver.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.end2.i:                                        ; preds = %if.end.i
  %skb.i = getelementptr inbounds %struct.rx, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %if.end2.i.e100_start_receiver.exit_crit_edge, label %if.then8.i

if.end2.i.e100_start_receiver.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.then8.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #22
  %dma_addr.i = getelementptr inbounds %struct.rx, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i, align 4
  %call.i = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 1, i32 noundef %9) #20
  %10 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ru_running.i, align 4
  br label %e100_start_receiver.exit

e100_start_receiver.exit:                         ; preds = %if.then8.i, %if.end2.i.e100_start_receiver.exit_crit_edge, %if.end.i.e100_start_receiver.exit_crit_edge, %if.end8.e100_start_receiver.exit_crit_edge
  %watchdog = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %call9 = tail call i32 @mod_timer(ptr noundef %watchdog, i32 noundef %11) #20
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %call.i34 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @e100_intr, ptr noundef null, i32 noundef 128, ptr noundef %17, ptr noundef %17) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool13.not = icmp eq i32 %call.i34, 0
  br i1 %tobool13.not, label %if.end15, label %err_no_irq

if.end15:                                         ; preds = %e100_start_receiver.exit
  call void @__sanitizer_cov_trace_pc() #22
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #20
  %napi = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 16
  tail call void @napi_enable(ptr noundef %napi) #20
  %cmd_lock.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %csr.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %22 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 0) #20, !srcloc !220
  %24 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csr.i, align 8
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %25) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  br label %cleanup

err_no_irq:                                       ; preds = %e100_start_receiver.exit
  call void @__sanitizer_cov_trace_pc() #22
  %call18 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #20
  br label %err_clean_cbs

err_clean_cbs:                                    ; preds = %err_no_irq, %if.end4.err_clean_cbs_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.err_clean_cbs_crit_edge ], [ %call.i34, %err_no_irq ]
  tail call fastcc void @e100_clean_cbs(ptr noundef %nic)
  br label %err_rx_clean_list

err_rx_clean_list:                                ; preds = %err_clean_cbs, %if.end.err_rx_clean_list_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.err_rx_clean_list_crit_edge ], [ %err.0, %err_clean_cbs ]
  %count1.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 0, i32 2
  %27 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count1.i, align 4
  %ru_running.i35 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %29 = ptrtoint ptr %ru_running.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %ru_running.i35, align 4
  %rxs.i36 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %30 = ptrtoint ptr %rxs.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxs.i36, align 128
  %tobool.not.i37 = icmp eq ptr %31, null
  br i1 %tobool.not.i37, label %err_rx_clean_list.e100_rx_clean_list.exit_crit_edge, label %for.cond.preheader.i

err_rx_clean_list.e100_rx_clean_list.exit_crit_edge: ; preds = %err_rx_clean_list
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_rx_clean_list.exit

for.cond.preheader.i:                             ; preds = %err_rx_clean_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp21.not.i = icmp eq i32 %28, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pdev.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rx.022.i = phi ptr [ %31, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %skb.i38 = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 2
  %32 = ptrtoint ptr %skb.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.i38, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %34 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %dma_addr.i39 = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 3
  %36 = ptrtoint ptr %dma_addr.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_addr.i39, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %37, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  %38 = ptrtoint ptr %skb.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb.i38, align 4
  tail call void @consume_skb(ptr noundef %39) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.rx, ptr %rx.022.i, i32 1
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %40 = ptrtoint ptr %rxs.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rxs.i36, align 128
  tail call void @kfree(ptr noundef %41) #20
  %42 = ptrtoint ptr %rxs.i36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rxs.i36, align 128
  br label %e100_rx_clean_list.exit

e100_rx_clean_list.exit:                          ; preds = %for.end.i, %err_rx_clean_list.e100_rx_clean_list.exit_crit_edge
  %rx_to_clean.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 7
  %43 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rx_to_clean.i, align 8
  %rx_to_use.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 6
  %44 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rx_to_use.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %e100_rx_clean_list.exit, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %e100_rx_clean_list.exit ], [ 0, %if.end15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_rx_alloc_list(ptr nocapture noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 0, i32 2
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  %rx_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 7
  %2 = ptrtoint ptr %rx_to_clean to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_to_clean, align 8
  %rx_to_use = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 6
  %3 = ptrtoint ptr %rx_to_use to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rx_to_use, align 4
  %ru_running = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %4 = ptrtoint ptr %ru_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ru_running, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #20
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !216

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %rxs59 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %7 = ptrtoint ptr %rxs59 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rxs59, align 128
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #24
  %rxs = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %9 = ptrtoint ptr %rxs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %rxs, align 128
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp61.not = icmp eq i32 %1, 0
  br i1 %cmp61.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.cond:                                         ; preds = %cond.end12
  %incdec.ptr = getelementptr %struct.rx, ptr %rx.062, i32 1
  %exitcond.not = icmp eq i32 %add, %1
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.063 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rx.062 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %call8.i.i, %for.cond.preheader.for.body_crit_edge ]
  %add = add nuw i32 %i.063, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp3 = icmp ult i32 %add, %1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr %struct.rx, ptr %rx.062, i32 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxs, align 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %11, %cond.false ]
  %12 = ptrtoint ptr %rx.062 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond, ptr %rx.062, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.063)
  %cmp5 = icmp eq i32 %i.063, 0
  br i1 %cmp5, label %cond.true6, label %cond.end.cond.end12_crit_edge

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cond.end12

cond.true6:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #22
  %13 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rxs, align 128
  %add.ptr8 = getelementptr %struct.rx, ptr %14, i32 %1
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true6, %cond.end.cond.end12_crit_edge
  %add.ptr8.pn = phi ptr [ %add.ptr8, %cond.true6 ], [ %rx.062, %cond.end.cond.end12_crit_edge ]
  %cond13 = getelementptr %struct.rx, ptr %add.ptr8.pn, i32 -1
  %prev = getelementptr inbounds %struct.rx, ptr %rx.062, i32 0, i32 1
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond13, ptr %prev, align 4
  %call14 = tail call fastcc i32 @e100_rx_alloc_skb(ptr noundef %nic, ptr noundef %rx.062)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %if.then16

if.then16:                                        ; preds = %cond.end12
  %16 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count1, align 4
  %18 = ptrtoint ptr %ru_running to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %ru_running, align 4
  %19 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxs, align 128
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then16.e100_rx_clean_list.exit_crit_edge, label %for.cond.preheader.i

if.then16.e100_rx_clean_list.exit_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_rx_clean_list.exit

for.cond.preheader.i:                             ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp21.not.i = icmp eq i32 %17, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pdev.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rx.022.i = phi ptr [ %20, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %skb.i = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 2
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i, align 4
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 3
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %26, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %28) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.rx, ptr %rx.022.i, i32 1
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxs, align 128
  tail call void @kfree(ptr noundef %30) #20
  %31 = ptrtoint ptr %rxs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rxs, align 128
  br label %e100_rx_clean_list.exit

e100_rx_clean_list.exit:                          ; preds = %for.end.i, %if.then16.e100_rx_clean_list.exit_crit_edge
  %32 = ptrtoint ptr %rx_to_clean to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rx_to_clean, align 8
  %33 = ptrtoint ptr %rx_to_use to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rx_to_use, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxs, align 128
  %prev19 = getelementptr inbounds %struct.rx, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev19, align 4
  %prev20 = getelementptr inbounds %struct.rx, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev20, align 4
  %skb = getelementptr inbounds %struct.rx, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %command = getelementptr inbounds %struct.rfd, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %command, align 2
  %46 = or i16 %45, 128
  store i16 %46, ptr %command, align 2
  %size = getelementptr inbounds %struct.rfd, ptr %43, i32 0, i32 5
  %47 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %size, align 2
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.rx, ptr %39, i32 0, i32 3
  %50 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_addr, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %51, i32 noundef 16, i32 noundef 0) #20
  %52 = ptrtoint ptr %rxs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rxs, align 128
  %54 = ptrtoint ptr %rx_to_clean to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %rx_to_clean, align 8
  %55 = ptrtoint ptr %rx_to_use to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %rx_to_use, align 4
  %56 = ptrtoint ptr %ru_running to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %ru_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %e100_rx_clean_list.exit, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %e100_rx_clean_list.exit ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_alloc_cbs(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 1, i32 2
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  %cuc_cmd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 14
  %2 = ptrtoint ptr %cuc_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %cuc_cmd, align 4
  %cb_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 20
  %3 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cb_to_clean, align 4
  %cb_to_send = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 19
  %4 = ptrtoint ptr %cb_to_send to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cb_to_send, align 16
  %cb_to_use = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 18
  %5 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cb_to_use, align 4
  %cbs_avail = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 15
  %6 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cbs_avail, align 32
  %cbs_pool = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 33
  %7 = ptrtoint ptr %cbs_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cbs_pool, align 4
  %cbs_dma_addr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 34
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 3520, ptr noundef %cbs_dma_addr) #20
  %cbs2 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 17
  %9 = ptrtoint ptr %cbs2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %cbs2, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %cond.true.peel [
    i32 0, label %for.cond.preheader.for.end_crit_edge
    i32 1, label %cond.false.peel
  ]

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

cond.false.peel:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %cbs2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbs2, align 8
  br label %cond.end14.peel

cond.true.peel:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr.peel = getelementptr %struct.cb, ptr %call.i, i32 1
  br label %cond.end14.peel

cond.end14.peel:                                  ; preds = %cond.true.peel, %cond.false.peel
  %cond.peel = phi ptr [ %add.ptr.peel, %cond.true.peel ], [ %12, %cond.false.peel ]
  %next.peel = getelementptr inbounds %struct.cb, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %next.peel to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.peel, ptr %next.peel, align 4
  %14 = ptrtoint ptr %cbs2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cbs2, align 8
  %add.ptr10.peel = getelementptr %struct.cb, ptr %15, i32 %1
  %cond15.peel = getelementptr %struct.cb, ptr %add.ptr10.peel, i32 -1
  %prev.peel = getelementptr inbounds %struct.cb, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %prev.peel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond15.peel, ptr %prev.peel, align 4
  %17 = ptrtoint ptr %cbs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cbs_dma_addr, align 16
  %dma_addr.peel = getelementptr inbounds %struct.cb, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %dma_addr.peel to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma_addr.peel, align 4
  %20 = load i32, ptr %cbs_dma_addr, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %.not = icmp eq i32 %1, 1
  %mul20.peel = select i1 %.not, i32 0, i32 560
  %add21.peel = add i32 %mul20.peel, %20
  %21 = tail call i32 @llvm.bswap.i32(i32 %add21.peel)
  %link.peel = getelementptr inbounds %struct.cb, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %link.peel to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %link.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %cond.end14.peel.for.end_crit_edge, label %cond.end14.peel.for.body_crit_edge

cond.end14.peel.for.body_crit_edge:               ; preds = %cond.end14.peel
  br label %for.body

cond.end14.peel.for.end_crit_edge:                ; preds = %cond.end14.peel
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %cond.end14.for.body_crit_edge, %cond.end14.peel.for.body_crit_edge
  %i.065 = phi i32 [ %add, %cond.end14.for.body_crit_edge ], [ 1, %cond.end14.peel.for.body_crit_edge ]
  %cb.064.pn = phi ptr [ %cb.064, %cond.end14.for.body_crit_edge ], [ %call.i, %cond.end14.peel.for.body_crit_edge ]
  %cb.064 = getelementptr %struct.cb, ptr %cb.064.pn, i32 1
  %add = add nuw i32 %i.065, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp5 = icmp ult i32 %add, %1
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %add.ptr = getelementptr %struct.cb, ptr %cb.064.pn, i32 2
  br label %cond.end14

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %cbs2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cbs2, align 8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %24, %cond.false ]
  %next = getelementptr %struct.cb, ptr %cb.064.pn, i32 1, i32 4
  %25 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond, ptr %next, align 4
  %prev = getelementptr %struct.cb, ptr %cb.064.pn, i32 1, i32 5
  %26 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cb.064.pn, ptr %prev, align 4
  %27 = ptrtoint ptr %cbs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cbs_dma_addr, align 16
  %mul = mul i32 %i.065, 560
  %add17 = add i32 %28, %mul
  %dma_addr = getelementptr %struct.cb, ptr %cb.064.pn, i32 1, i32 6
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add17, ptr %dma_addr, align 4
  %30 = load i32, ptr %cbs_dma_addr, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %31 = icmp eq i32 %add, %1
  %add.op = mul i32 %add, 560
  %mul20 = select i1 %31, i32 0, i32 %add.op
  %add21 = add i32 %mul20, %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %add21)
  %link = getelementptr %struct.cb, ptr %cb.064.pn, i32 1, i32 2
  %33 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %link, align 4
  %exitcond.not = icmp eq i32 %add, %1
  br i1 %exitcond.not, label %cond.end14.for.end_crit_edge, label %cond.end14.for.body_crit_edge, !llvm.loop !226

cond.end14.for.body_crit_edge:                    ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

cond.end14.for.end_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %cond.end14.for.end_crit_edge, %cond.end14.peel.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %cbs2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cbs2, align 8
  %36 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cb_to_clean, align 4
  %37 = ptrtoint ptr %cb_to_send to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %cb_to_send, align 16
  %38 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %cb_to_use, align 4
  %39 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %1, ptr %cbs_avail, align 32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_hw_init(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %csr.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %0 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr.i, align 8
  %port.i = getelementptr inbounds %struct.csr, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port.i, i32 33554432) #20, !srcloc !224
  %2 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr.i, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 4294960) #20
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 8
  %port2.i = getelementptr inbounds %struct.csr, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port2.i, i32 0) #20, !srcloc !224
  %8 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr.i, align 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 4294960) #20
  %cmd_lock.i.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i.i) #20
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i.i = getelementptr inbounds %struct.anon.122, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i.i, i8 1) #20, !srcloc !220
  %14 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr.i, align 8
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i.i, i32 noundef %call2.i.i) #20
  %17 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nic, align 128
  %and = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.26) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call fastcc i32 @e100_self_test(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %call4 = tail call fastcc i32 @e100_phy_init(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 96, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @e100_load_ucode_wait(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call fastcc i32 @e100_exec_cb(ptr noundef %nic, ptr noundef null, ptr noundef nonnull @e100_configure)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = tail call fastcc i32 @e100_exec_cb(ptr noundef %nic, ptr noundef null, ptr noundef nonnull @e100_setup_iaaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %dma_addr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 32
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr, align 8
  %add = add i32 %22, 8
  %call28 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 64, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 112, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @e100_disable_irq(ptr noundef %nic)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call, %do.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %csr = getelementptr i8, ptr %dev_id, i32 2648
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 8
  %stat_ack1 = getelementptr inbounds %struct.anon.122, ptr %1, i32 0, i32 1
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %stat_ack1) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 128
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %netdev3 = getelementptr i8, ptr %dev_id, i32 2308
  %5 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev3, align 4
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %6, ptr noundef nonnull @.str.45, i32 noundef %conv) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %7 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %2, label %if.end10 [
    i8 0, label %do.end.cleanup_crit_edge
    i8 -1, label %do.end.cleanup_crit_edge38
  ]

do.end.cleanup_crit_edge38:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 8
  %stat_ack13 = getelementptr inbounds %struct.anon.122, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat_ack13, i8 %2) #20, !srcloc !220
  %10 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %if.end10.if.end18_crit_edge, label %if.then17

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %ru_running = getelementptr i8, ptr %dev_id, i32 2460
  %11 = ptrtoint ptr %ru_running to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ru_running, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end10.if.end18_crit_edge
  %napi = getelementptr i8, ptr %dev_id, i32 2664
  %call19 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #20
  br i1 %call19, label %if.then22, label %if.end18.cleanup_crit_edge, !prof !214

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  %cmd_lock.i = getelementptr i8, ptr %dev_id, i32 2604
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %12 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 1) #20, !srcloc !220
  %14 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr, align 8
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  tail call void @__napi_schedule(ptr noundef %napi) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end18.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge38
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge38 ], [ 1, %if.then22 ], [ 1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_clean_cbs(ptr nocapture noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cbs = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 17
  %0 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cbs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %while.cond.preheader

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

while.cond.preheader:                             ; preds = %entry
  %cbs_avail = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 15
  %count = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 1, i32 2
  %2 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cbs_avail, align 32
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not36 = icmp eq i32 %3, %5
  br i1 %cmp.not36, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cb_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 20
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %6 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_to_clean, align 4
  %skb = getelementptr inbounds %struct.cb, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then3

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %tbd = getelementptr inbounds %struct.cb, ptr %7, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %tbd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tbd, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %size = getelementptr inbounds %struct.cb, ptr %7, i32 0, i32 3, i32 0, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %size, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %14, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #20
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %19) #20
  br label %if.end

if.end:                                           ; preds = %if.then3, %while.body.if.end_crit_edge
  %20 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb_to_clean, align 4
  %next = getelementptr inbounds %struct.cb, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next, align 4
  store ptr %23, ptr %cb_to_clean, align 4
  %24 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cbs_avail, align 32
  %inc = add i32 %25, 1
  store i32 %inc, ptr %cbs_avail, align 32
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  %cmp.not = icmp eq i32 %inc, %27
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cbs_pool = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 33
  %28 = ptrtoint ptr %cbs_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cbs_pool, align 4
  %30 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cbs, align 8
  %cbs_dma_addr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 34
  %32 = ptrtoint ptr %cbs_dma_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cbs_dma_addr, align 16
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef %31, i32 noundef %33) #20
  %34 = ptrtoint ptr %cbs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cbs, align 8
  %35 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cbs_avail, align 32
  br label %if.end13

if.end13:                                         ; preds = %while.end, %entry.if.end13_crit_edge
  %cuc_cmd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 14
  %36 = ptrtoint ptr %cuc_cmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %cuc_cmd, align 4
  %37 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cbs, align 8
  %cb_to_clean15 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 20
  %39 = ptrtoint ptr %cb_to_clean15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %cb_to_clean15, align 4
  %cb_to_send = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 19
  %40 = ptrtoint ptr %cb_to_send to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %cb_to_send, align 16
  %cb_to_use = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 18
  %41 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %cb_to_use, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_rx_alloc_skb(ptr nocapture noundef readonly %nic, ptr nocapture noundef %rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1540, i32 noundef 2592) #20
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %netdev_alloc_skb_ip_align.exit.thread, label %if.end

netdev_alloc_skb_ip_align.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %skb42 = getelementptr inbounds %struct.rx, ptr %rx, i32 0, i32 2
  %2 = ptrtoint ptr %skb42 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %skb42, align 4
  br label %return

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %skb = getelementptr inbounds %struct.rx, ptr %rx, i32 0, i32 2
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %skb, align 4
  %blank_rfd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 8
  %8 = load ptr, ptr %data.i.i.i, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %blank_rfd, i32 16)
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #20
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !214

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #20
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i41 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i41, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #20
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %14, i32 noundef 1538) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.rx, ptr %rx, i32 0, i32 3
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %dma_addr, align 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev5, i32 noundef %retval.0.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %25, i32 noundef 1) #20
  %26 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %skb, align 4
  %27 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma_addr, align 4
  br label %return

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  %prev = getelementptr inbounds %struct.rx, ptr %rx, i32 0, i32 1
  %28 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev, align 4
  %skb14 = getelementptr inbounds %struct.rx, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %skb14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb14, align 4
  %tobool15.not = icmp eq ptr %31, null
  br i1 %tobool15.not, label %if.end13.return_crit_edge, label %if.then16

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %data19 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data19, align 4
  %34 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr, align 4
  %link = getelementptr inbounds %struct.rfd, ptr %33, i32 0, i32 2
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #20
  %37 = ptrtoint ptr %link to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %link, align 1
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev, align 4
  %dma_addr24 = getelementptr inbounds %struct.rx, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dma_addr24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_addr24, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev22, i32 noundef %43, i32 noundef 16, i32 noundef 0) #20
  br label %return

return:                                           ; preds = %if.then16, %if.end13.return_crit_edge, %if.then9, %netdev_alloc_skb_ip_align.exit.thread
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %if.then16 ], [ 0, %if.end13.return_crit_edge ], [ -12, %netdev_alloc_skb_ip_align.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_self_test(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_addr1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 32
  %0 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_addr1, align 8
  %mem = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 31
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %5 = load ptr, ptr %mem, align 4
  %result = getelementptr inbounds %struct.anon.126, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %result, align 4
  %or = or i32 %1, 1
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %7 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr, align 8
  %port = getelementptr inbounds %struct.csr, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port, i32 %9) #20, !srcloc !224
  %10 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr, align 8
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @msleep(i32 noundef 10) #20
  %cmd_lock.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i) #20
  %13 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %csr, align 8
  %cmd_hi.i = getelementptr inbounds %struct.anon.122, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i, i8 1) #20, !srcloc !220
  %15 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr, align 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i, i32 noundef %call2.i) #20
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem, align 4
  %result6 = getelementptr inbounds %struct.anon.126, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %result6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %result6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  br i1 %cmp.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %22 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nic, align 128
  %and = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef %21) #23
  br label %cleanup

if.end11:                                         ; preds = %entry
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15 = icmp eq i32 %27, 0
  br i1 %cmp15, label %do.body17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

do.body17:                                        ; preds = %if.end11
  %28 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nic, align 128
  %and19 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.cleanup_crit_edge, label %if.then21

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #22
  %netdev22 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %30 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.28) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then7 ], [ -110, %do.body.cleanup_crit_edge ], [ -110, %if.then21 ], [ -110, %do.body17.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext %cmd, i32 noundef %dma_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #20
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 8
  %cmd_lo = getelementptr inbounds %struct.anon.122, ptr %1, i32 0, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cmd_lo) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end39, label %do.end15, !prof !214

do.end15:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !228
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #20, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.067)
  %cmp20 = icmp ugt i32 %i.067, 20
  br i1 %cmp20, label %if.then28, label %do.end15.for.inc_crit_edge, !prof !216

do.end15.for.inc_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then28:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #20
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %do.end15.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 20000
  br i1 %exitcond.not, label %for.inc.err_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.err_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

if.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %cmd)
  %cmp41.not = icmp eq i8 %cmd, 32
  br i1 %cmp41.not, label %if.end39.if.end52_crit_edge, label %if.then49, !prof !214

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end52

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #22
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr, align 8
  %gen_ptr = getelementptr inbounds %struct.anon.122, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  %6 = tail call i32 @llvm.bswap.i32(i32 %dma_addr) #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gen_ptr, i32 %6) #20, !srcloc !224
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end39.if.end52_crit_edge
  %7 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr, align 8
  %cmd_lo55 = getelementptr inbounds %struct.anon.122, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_lo55, i8 %cmd) #20, !srcloc !220
  br label %err_unlock

err_unlock:                                       ; preds = %if.end52, %for.inc.err_unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end52 ], [ -11, %for.inc.err_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #20
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_load_ucode_wait(ptr noundef %nic) unnamed_addr #9 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  %cb_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 20
  %0 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb_to_clean, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #20
  %fw1.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 52
  %2 = ptrtoint ptr %fw1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw1.i, align 8
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fw.i, align 4
  %flags.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 23
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.e100_request_firmware.exit.thread_crit_edge

entry.e100_request_firmware.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_request_firmware.exit.thread

if.end.i:                                         ; preds = %entry
  %mac.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 24
  %7 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %8, label %if.end.i.e100_request_firmware.exit.thread_crit_edge [
    i32 8, label %if.end.i.if.end15.i_crit_edge
    i32 9, label %if.then5.i
    i32 15, label %if.end.i.if.then11.i_crit_edge
    i32 16, label %if.end.i.if.then11.i_crit_edge55
  ]

if.end.i.if.then11.i_crit_edge55:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then11.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

if.end.i.e100_request_firmware.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_request_firmware.exit.thread

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge55
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then5.i, %if.end.i.if.end15.i_crit_edge
  %fw_name.0.i = phi ptr [ @.str.32, %if.then5.i ], [ @.str.33, %if.then11.i ], [ @.str.31, %if.end.i.if.end15.i_crit_edge ]
  %required.0.off0.i = phi i1 [ false, %if.then5.i ], [ true, %if.then11.i ], [ false, %if.end.i.if.end15.i_crit_edge ]
  %tobool16.not.i = icmp eq ptr %3, null
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end15.i.if.end38.i_crit_edge

if.end15.i.if.end38.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.end18.i:                                       ; preds = %if.end15.i
  %pdev.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %fw_name.0.i, ptr noundef %dev.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.end18.i.if.end38.i_crit_edge, label %if.then20.i

if.end18.i.if.end38.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end38.i

if.then20.i:                                      ; preds = %if.end18.i
  %12 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nic, align 128
  %and23.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %required.0.off0.i, label %do.body.i, label %do.body29.i

do.body.i:                                        ; preds = %if.then20.i
  br i1 %tobool24.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then25.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

if.then25.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.34, ptr noundef nonnull %fw_name.0.i, i32 noundef %call.i) #23
  br label %do.end.i

do.end.i:                                         ; preds = %if.then25.i, %do.body.i.do.end.i_crit_edge
  %16 = inttoptr i32 %call.i to ptr
  br label %e100_request_firmware.exit

do.body29.i:                                      ; preds = %if.then20.i
  br i1 %tobool24.not.i, label %do.body29.i.e100_request_firmware.exit.thread_crit_edge, label %if.then33.i

do.body29.i.e100_request_firmware.exit.thread_crit_edge: ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_request_firmware.exit.thread

if.then33.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev34.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %17 = ptrtoint ptr %netdev34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev34.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.35, ptr noundef nonnull %fw_name.0.i, i32 noundef %call.i) #23
  br label %e100_request_firmware.exit.thread

if.end38.i:                                       ; preds = %if.end18.i.if.end38.i_crit_edge, %if.end15.i.if.end38.i_crit_edge
  %19 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 539, i32 %22)
  %cmp39.not.i = icmp eq i32 %22, 539
  br i1 %cmp39.not.i, label %if.end52.i, label %do.body41.i

do.body41.i:                                      ; preds = %if.end38.i
  %23 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nic, align 128
  %and43.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body41.i.do.end50.i_crit_edge, label %if.then45.i

do.body41.i.do.end50.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end50.i

if.then45.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev46.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %25 = ptrtoint ptr %netdev46.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev46.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef nonnull %fw_name.0.i, i32 noundef %22) #23
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then45.i, %do.body41.i.do.end50.i_crit_edge
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %28) #20
  br label %e100_request_firmware.exit.thread

if.end52.i:                                       ; preds = %if.end38.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %30, i32 536
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %arrayidx54.i = getelementptr i8, ptr %30, i32 537
  %33 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx54.i, align 1
  %arrayidx56.i = getelementptr i8, ptr %30, i32 538
  %35 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx56.i, align 1
  %conv.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %32)
  %cmp57.i = icmp ugt i8 %32, -123
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %34)
  %cmp61.i = icmp ugt i8 %34, -123
  %or.cond.i = select i1 %cmp57.i, i1 true, i1 %cmp61.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %36)
  %cmp65.i = icmp ugt i8 %36, -123
  %or.cond115.i = select i1 %or.cond.i, i1 true, i1 %cmp65.i
  br i1 %or.cond115.i, label %do.body68.i, label %if.end81.i

do.body68.i:                                      ; preds = %if.end52.i
  %37 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nic, align 128
  %and70.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %do.body68.i.do.end79.i_crit_edge, label %if.then72.i

do.body68.i.do.end79.i_crit_edge:                 ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end79.i

if.then72.i:                                      ; preds = %do.body68.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev73.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %39 = ptrtoint ptr %netdev73.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev73.i, align 4
  %conv75.i = zext i8 %34 to i32
  %conv76.i = zext i8 %36 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.37, ptr noundef nonnull %fw_name.0.i, i32 noundef %conv.i, i32 noundef %conv75.i, i32 noundef %conv76.i) #23
  br label %do.end79.i

do.end79.i:                                       ; preds = %if.then72.i, %do.body68.i.do.end79.i_crit_edge
  %41 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %42) #20
  br label %e100_request_firmware.exit.thread

if.end81.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #22
  %43 = ptrtoint ptr %fw1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %20, ptr %fw1.i, align 8
  br label %e100_request_firmware.exit

e100_request_firmware.exit.thread:                ; preds = %do.end79.i, %do.end50.i, %if.then33.i, %do.body29.i.e100_request_firmware.exit.thread_crit_edge, %if.end.i.e100_request_firmware.exit.thread_crit_edge, %entry.e100_request_firmware.exit.thread_crit_edge
  %cmp.i51 = phi i1 [ false, %entry.e100_request_firmware.exit.thread_crit_edge ], [ false, %if.end.i.e100_request_firmware.exit.thread_crit_edge ], [ false, %if.then33.i ], [ false, %do.body29.i.e100_request_firmware.exit.thread_crit_edge ], [ true, %do.end50.i ], [ true, %do.end79.i ]
  %retval.0.i.ph = phi ptr [ null, %entry.e100_request_firmware.exit.thread_crit_edge ], [ null, %if.end.i.e100_request_firmware.exit.thread_crit_edge ], [ null, %if.then33.i ], [ null, %do.body29.i.e100_request_firmware.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end50.i ], [ inttoptr (i32 -22 to ptr), %do.end79.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #20
  br label %if.then

e100_request_firmware.exit:                       ; preds = %if.end81.i, %do.end.i
  %retval.0.i = phi ptr [ %16, %do.end.i ], [ %20, %if.end81.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #20
  %tobool.not.i47 = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i47, %cmp.i
  br i1 %spec.select.i, label %e100_request_firmware.exit.if.then_crit_edge, label %if.end

e100_request_firmware.exit.if.then_crit_edge:     ; preds = %e100_request_firmware.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %e100_request_firmware.exit.if.then_crit_edge, %e100_request_firmware.exit.thread
  %cmp.i54 = phi i1 [ %cmp.i51, %e100_request_firmware.exit.thread ], [ %cmp.i, %e100_request_firmware.exit.if.then_crit_edge ]
  %retval.0.i53 = phi ptr [ %retval.0.i.ph, %e100_request_firmware.exit.thread ], [ %retval.0.i, %e100_request_firmware.exit.if.then_crit_edge ]
  %44 = ptrtoint ptr %retval.0.i53 to i32
  %spec.select.i48 = select i1 %cmp.i54, i32 %44, i32 0
  br label %cleanup

if.end:                                           ; preds = %e100_request_firmware.exit
  %call3 = call fastcc i32 @e100_exec_cb(ptr noundef %nic, ptr noundef nonnull %retval.0.i, ptr noundef nonnull @e100_setup_ucode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %do.body

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

do.body:                                          ; preds = %if.end
  %45 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nic, align 128
  %and = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.if.end8_crit_edge, label %if.then6

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %47 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.29, i32 noundef %call3) #23
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %cuc_cmd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 14
  %49 = ptrtoint ptr %cuc_cmd to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %cuc_cmd, align 4
  %csr.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %50 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %csr.i, align 8
  %52 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #20, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 2147480) #20
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end8
  %counter.0 = phi i32 [ 50, %if.end8 ], [ %dec, %while.body.while.cond_crit_edge ]
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %1, align 4
  %56 = and i16 %55, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool10.not = icmp eq i16 %56, 0
  br i1 %tobool10.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 10) #20
  %dec = add nsw i32 %counter.0, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %counter.1 = phi i32 [ 0, %while.body.while.end_crit_edge ], [ %counter.0, %while.cond.while.end_crit_edge ]
  %57 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %csr.i, align 8
  %stat_ack = getelementptr inbounds %struct.anon.122, ptr %58, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  call void @arm_heavy_mb() #20
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %stat_ack, i8 -1) #20, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %counter.1)
  %tobool14.not = icmp eq i32 %counter.1, 0
  br i1 %tobool14.not, label %while.end.do.body20_crit_edge, label %lor.lhs.false

while.end.do.body20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body20

lor.lhs.false:                                    ; preds = %while.end
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 4
  %61 = and i16 %60, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool18.not = icmp eq i16 %61, 0
  br i1 %tobool18.not, label %lor.lhs.false.do.body20_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false.do.body20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body20

do.body20:                                        ; preds = %lor.lhs.false.do.body20_crit_edge, %while.end.do.body20_crit_edge
  %62 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nic, align 128
  %and22 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.cleanup_crit_edge, label %if.then24

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #22
  %netdev25 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %64 = ptrtoint ptr %netdev25 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev25, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.30) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %spec.select.i48, %if.then ], [ %call3, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.then24 ], [ -1, %do.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_exec_cb(ptr noundef %nic, ptr noundef %skb, ptr nocapture noundef readonly %cb_prepare) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_lock = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock) #20
  %cbs_avail = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 15
  %0 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cbs_avail, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.err_unlock_crit_edge, label %if.end, !prof !216

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

if.end:                                           ; preds = %entry
  %cb_to_use = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 18
  %2 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_to_use, align 4
  %next = getelementptr inbounds %struct.cb, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  store ptr %5, ptr %cb_to_use, align 4
  %dec = add i32 %1, -1
  %6 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %cbs_avail, align 32
  %skb10 = getelementptr inbounds %struct.cb, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %skb10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %skb10, align 4
  %call11 = tail call i32 %cb_prepare(ptr noundef %nic, ptr noundef %3, ptr noundef %skb) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.err_unlock_crit_edge

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cbs_avail, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  br i1 %tobool16.not, label %if.then25, label %if.end14.if.end26_crit_edge, !prof !216

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end14.if.end26_crit_edge
  %err.0 = phi i32 [ -28, %if.then25 ], [ 0, %if.end14.if.end26_crit_edge ]
  %command = getelementptr inbounds %struct.cb, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %command, align 2
  %12 = or i16 %11, 64
  store i16 %12, ptr %command, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !225
  %prev = getelementptr inbounds %struct.cb, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev, align 4
  %command29 = getelementptr inbounds %struct.cb, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %command29 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %command29, align 2
  %17 = and i16 %16, -65
  store i16 %17, ptr %command29, align 2
  %cb_to_send = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 19
  %18 = ptrtoint ptr %cb_to_send to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb_to_send, align 16
  %20 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb_to_use, align 4
  %cmp33.not80 = icmp eq ptr %19, %21
  br i1 %cmp33.not80, label %if.end26.err_unlock_crit_edge, label %while.body.lr.ph

if.end26.err_unlock_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

while.body.lr.ph:                                 ; preds = %if.end26
  %cuc_cmd = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %22 = phi ptr [ %19, %while.body.lr.ph ], [ %32, %if.else.while.body_crit_edge ]
  %23 = ptrtoint ptr %cuc_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cuc_cmd, align 4
  %conv35 = trunc i32 %24 to i8
  %dma_addr = getelementptr inbounds %struct.cb, ptr %22, i32 0, i32 6
  %25 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr, align 4
  %call37 = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext %conv35, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else, label %if.then45, !prof !214

if.then45:                                        ; preds = %while.body
  br i1 %tobool16.not, label %if.then48, label %if.then45.err_unlock_crit_edge

if.then45.err_unlock_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #22
  %tx_timeout_task = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %tx_timeout_task) #20
  br label %err_unlock

if.else:                                          ; preds = %while.body
  %28 = ptrtoint ptr %cuc_cmd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %cuc_cmd, align 4
  %29 = ptrtoint ptr %cb_to_send to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cb_to_send, align 16
  %next53 = getelementptr inbounds %struct.cb, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %next53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next53, align 4
  store ptr %32, ptr %cb_to_send, align 16
  %33 = ptrtoint ptr %cb_to_use to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cb_to_use, align 4
  %cmp33.not = icmp eq ptr %32, %34
  br i1 %cmp33.not, label %if.else.err_unlock_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body

if.else.err_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_unlock

err_unlock:                                       ; preds = %if.else.err_unlock_crit_edge, %if.then48, %if.then45.err_unlock_crit_edge, %if.end26.err_unlock_crit_edge, %if.end.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %err.1 = phi i32 [ %call11, %if.end.err_unlock_crit_edge ], [ -28, %if.then48 ], [ %err.0, %if.then45.err_unlock_crit_edge ], [ -12, %entry.err_unlock_crit_edge ], [ %err.0, %if.end26.err_unlock_crit_edge ], [ %err.0, %if.else.err_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock, i32 noundef %call2) #20
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_configure(ptr nocapture noundef readonly %nic, ptr noundef %cb, ptr nocapture noundef readnone %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3
  %netdev1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %command = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %command, align 2
  %3 = getelementptr inbounds i8, ptr %u, i32 2
  %4 = call ptr @memset(ptr %3, i32 0, i32 30)
  %5 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 5640, ptr %u, align 1
  %direct_rx_dma = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 2
  %6 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_storeN_noabort(i32 %6, i32 10)
  store i80 14081445416927232, ptr %direct_rx_dma, align 1
  %mdio_ctrl.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 3
  %7 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_ctrl.i, align 4
  %cmp.i.not = icmp eq ptr %8, @mdio_ctrl_phy_mii_emulated
  %bf.set34 = select i1 %cmp.i.not, i80 14081445419941984, i80 14081449714909280
  store i80 %bf.set34, ptr %direct_rx_dma, align 1
  %ip_addr_hi = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 4
  %9 = ptrtoint ptr %ip_addr_hi to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -14, ptr %ip_addr_hi, align 1
  %pad15_1 = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 5
  %10 = ptrtoint ptr %pad15_1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load35 = load i8, ptr %pad15_1, align 1
  %bf.set40 = and i8 %bf.load35, 55
  %bf.clear42 = or i8 %bf.set40, 72
  store i8 %bf.clear42, ptr %pad15_1, align 1
  %fc_delay_hi = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 7
  %11 = ptrtoint ptr %fc_delay_hi to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %fc_delay_hi, align 1
  %tx_padding = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 8
  %12 = ptrtoint ptr %tx_padding to i32
  call void @__asan_loadN_noabort(i32 %12, i32 5)
  %bf.load44 = load i40, ptr %tx_padding, align 1
  %bf.set61 = and i40 %bf.load44, 57977927935
  %bf.set64 = or i40 %bf.set61, -57977928448
  store i40 %bf.set64, ptr %tx_padding, align 1
  %adaptive_ifs = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 35
  %13 = ptrtoint ptr %adaptive_ifs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %adaptive_ifs, align 4
  %adaptive_ifs65 = getelementptr inbounds %struct.config, ptr %u, i32 0, i32 1
  %15 = ptrtoint ptr %adaptive_ifs65 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %adaptive_ifs65, align 1
  %loopback = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 30
  %16 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %loopback, align 32
  %18 = shl i32 %17, 22
  %19 = and i32 %18, 12582912
  %bf.shl = zext i32 %19 to i80
  %bf.set69 = or i80 %bf.set34, %bf.shl
  store i80 %bf.set69, ptr %direct_rx_dma, align 1
  %force_media = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28, i32 4
  %20 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load70 = load i8, ptr %force_media, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load70)
  %.not = icmp ugt i8 %bf.load70, -65
  br i1 %.not, label %if.then78, label %entry.if.end82_crit_edge

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end82

if.then78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %bf.set81 = or i40 %bf.set61, -56904186624
  %21 = ptrtoint ptr %tx_padding to i32
  call void @__asan_storeN_noabort(i32 %21, i32 5)
  store i40 %bf.set81, ptr %tx_padding, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %entry.if.end82_crit_edge
  %flags = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 23
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 128
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if.end82.if.then86_crit_edge

if.end82.if.then86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then86

lor.lhs.false:                                    ; preds = %if.end82
  %24 = ptrtoint ptr %loopback to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %loopback, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool85.not = icmp eq i32 %25, 0
  br i1 %tobool85.not, label %lor.lhs.false.if.end97_crit_edge, label %lor.lhs.false.if.then86_crit_edge

lor.lhs.false.if.then86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then86

lor.lhs.false.if.end97_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end97

if.then86:                                        ; preds = %lor.lhs.false.if.then86_crit_edge, %if.end82.if.then86_crit_edge
  %bf.set89 = and i80 %bf.set69, 14080350215864416
  %bf.clear92 = or i80 %bf.set89, 36028797018963968
  %26 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_storeN_noabort(i32 %26, i32 10)
  store i80 %bf.clear92, ptr %direct_rx_dma, align 1
  %27 = ptrtoint ptr %pad15_1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load94 = load i8, ptr %pad15_1, align 1
  %bf.set96 = or i8 %bf.load94, 1
  store i8 %bf.set96, ptr %pad15_1, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then86, %lor.lhs.false.if.end97_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %28 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %features, align 16
  %and98 = and i64 %29, 8796093022208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and98)
  %tobool99.not = icmp eq i64 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end106_crit_edge, label %if.then102, !prof !214

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end106

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #22
  %30 = ptrtoint ptr %tx_padding to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load103 = load i40, ptr %tx_padding, align 1
  %bf.set105 = or i40 %bf.load103, 17179869184
  store i40 %bf.set105, ptr %tx_padding, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.end97.if.end106_crit_edge
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 128
  %and108 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end114_crit_edge, label %if.then110

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end114

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #22
  %33 = ptrtoint ptr %tx_padding to i32
  call void @__asan_loadN_noabort(i32 %33, i32 5)
  %bf.load111 = load i40, ptr %tx_padding, align 1
  %bf.set113 = or i40 %bf.load111, 2048
  store i40 %bf.set113, ptr %tx_padding, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end106.if.end114_crit_edge
  %34 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false118, label %if.end114.if.then122_crit_edge

if.end114.if.then122_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then122

lor.lhs.false118:                                 ; preds = %if.end114
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 128
  %and120 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %lor.lhs.false118.if.then122_crit_edge, label %lor.lhs.false118.if.end126_crit_edge

lor.lhs.false118.if.end126_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end126

lor.lhs.false118.if.then122_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then122

if.then122:                                       ; preds = %lor.lhs.false118.if.then122_crit_edge, %if.end114.if.then122_crit_edge
  %40 = ptrtoint ptr %tx_padding to i32
  call void @__asan_loadN_noabort(i32 %40, i32 5)
  %bf.load123 = load i40, ptr %tx_padding, align 1
  %bf.set125 = or i40 %bf.load123, 33554432
  store i40 %bf.set125, ptr %tx_padding, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %lor.lhs.false118.if.end126_crit_edge
  %mac = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 24
  %41 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp = icmp ugt i32 %42, 3
  br i1 %cmp, label %if.then128, label %if.end126.if.end165_crit_edge

if.end126.if.end165_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end165

if.then128:                                       ; preds = %if.end126
  %43 = ptrtoint ptr %tx_padding to i32
  call void @__asan_loadN_noabort(i32 %43, i32 5)
  %bf.load129 = load i40, ptr %tx_padding, align 1
  %44 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_loadN_noabort(i32 %44, i32 10)
  %bf.load132 = load i80, ptr %direct_rx_dma, align 1
  %bf.set134 = and i80 %bf.load132, -4722370986469272584193
  %bf.clear137 = or i80 %bf.set134, 4722366482869645213696
  store i80 %bf.clear137, ptr %direct_rx_dma, align 1
  %bf.set141 = or i40 %bf.load129, 34426847232
  store i40 %bf.set141, ptr %tx_padding, align 1
  %45 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %cmp143 = icmp ugt i32 %46, 7
  br i1 %cmp143, label %if.then145, label %if.else

if.then145:                                       ; preds = %if.then128
  %bf.set148 = or i80 %bf.set134, 4722367608769552056320
  %47 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_storeN_noabort(i32 %47, i32 10)
  store i80 %bf.set148, ptr %direct_rx_dma, align 1
  %48 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %49)
  %cmp150 = icmp ugt i32 %49, 15
  br i1 %cmp150, label %if.then152, label %if.then145.if.end165_crit_edge

if.then145.if.end165_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end165

if.then152:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #22
  %50 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 8200, ptr %u, align 1
  %bf.set158 = or i40 %bf.load129, 34426847233
  %51 = ptrtoint ptr %tx_padding to i32
  call void @__asan_storeN_noabort(i32 %51, i32 5)
  store i40 %bf.set158, ptr %tx_padding, align 1
  br label %if.end165

if.else:                                          ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #22
  %bf.clear162 = and i80 %bf.clear137, -13510798882111489
  %52 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_storeN_noabort(i32 %52, i32 10)
  store i80 %bf.clear162, ptr %direct_rx_dma, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.else, %if.then152, %if.then145.if.end165_crit_edge, %if.end126.if.end165_crit_edge
  %53 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %features, align 16
  %and167 = and i64 %54, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and167)
  %tobool168.not = icmp eq i64 %and167, 0
  br i1 %tobool168.not, label %if.end165.do.body_crit_edge, label %if.then169

if.end165.do.body_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #22
  %55 = ptrtoint ptr %direct_rx_dma to i32
  call void @__asan_loadN_noabort(i32 %55, i32 10)
  %bf.load170 = load i80, ptr %direct_rx_dma, align 1
  %bf.set176 = and i80 %bf.load170, -54044295040073729
  %bf.clear179 = or i80 %bf.set176, 54043195528445952
  store i80 %bf.clear179, ptr %direct_rx_dma, align 1
  br label %do.body

do.body:                                          ; preds = %if.then169, %if.end165.do.body_crit_edge
  %56 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nic, align 128
  %and182 = and i32 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body.do.body187_crit_edge, label %if.then184

do.body.do.body187_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body187

if.then184:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %58 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %59, ptr noundef nonnull @.str.39, ptr noundef %u) #23
  br label %do.body187

do.body187:                                       ; preds = %if.then184, %do.body.do.body187_crit_edge
  %60 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nic, align 128
  %and189 = and i32 %61, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body187.do.body197_crit_edge, label %if.then191

do.body187.do.body197_crit_edge:                  ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.body197

if.then191:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #22
  %62 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev1, align 4
  %add.ptr193 = getelementptr %struct.cb, ptr %cb, i32 0, i32 3, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %63, ptr noundef nonnull @.str.40, ptr noundef %add.ptr193) #23
  br label %do.body197

do.body197:                                       ; preds = %if.then191, %do.body187.do.body197_crit_edge
  %64 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nic, align 128
  %and199 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body197.do.end206_crit_edge, label %if.then201

do.body197.do.end206_crit_edge:                   ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end206

if.then201:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #22
  %66 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev1, align 4
  %add.ptr203 = getelementptr %struct.cb, ptr %cb, i32 0, i32 3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %67, ptr noundef nonnull @.str.41, ptr noundef %add.ptr203) #23
  br label %do.end206

do.end206:                                        ; preds = %if.then201, %do.body197.do.end206_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_setup_iaaddr(ptr nocapture noundef readonly %nic, ptr nocapture noundef writeonly %cb, ptr nocapture noundef readnone %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %command, align 2
  %u = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = call ptr @memcpy(ptr %u, ptr %4, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_disable_irq(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock) #20
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csr, align 8
  %cmd_hi = getelementptr inbounds %struct.anon.122, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi, i8 1) #20, !srcloc !220
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock, i32 noundef %call2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_setup_ucode(ptr nocapture noundef readnone %nic, ptr nocapture noundef %cb, ptr nocapture noundef readonly %skb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 7
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb1, align 4
  %u = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3
  %data = getelementptr inbounds %struct.firmware, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = call ptr @memcpy(ptr %u, ptr %2, i32 536)
  %4 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %4, i32 536
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr i8, ptr %4, i32 537
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %4, i32 538
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx8 = getelementptr [134 x i32], ptr %u, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %12, 65535
  %or = or i32 %and, 393216
  store i32 %or, ptr %arrayidx8, align 4
  %idxprom13 = zext i8 %8 to i32
  %arrayidx14 = getelementptr [134 x i32], ptr %u, i32 0, i32 %idxprom13
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %14, 65535
  %or19 = or i32 %and15, 100663296
  store i32 %or19, ptr %arrayidx14, align 4
  %idxprom21 = zext i8 %10 to i32
  %arrayidx22 = getelementptr [134 x i32], ptr %u, i32 0, i32 %idxprom21
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %or27 = or i32 %16, -65536
  store i32 %or27, ptr %arrayidx22, align 4
  %command = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 1
  %17 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1408, ptr %command, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mdio_ctrl_phy_mii_emulated(ptr nocapture noundef readonly %nic, i32 noundef %addr, i32 noundef %dir, i32 noundef %reg, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %dir)
  %cmp = icmp eq i32 %dir, 134217728
  br i1 %cmp, label %if.then, label %do.body6

if.then:                                          ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %reg, label %do.body [
    i32 0, label %if.then.return_crit_edge
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

do.body:                                          ; preds = %if.then
  %1 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic, align 128
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then3

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %conv = zext i16 %data to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %4, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %addr, i32 noundef %reg, i32 noundef %conv) #23
  br label %return

do.body6:                                         ; preds = %entry
  %5 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nic, align 128
  %and8 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body6.return_crit_edge, label %if.then10

do.body6.return_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #22
  %netdev11 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %7 = ptrtoint ptr %netdev11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev11, align 4
  %conv15 = zext i16 %data to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %8, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.44, i32 noundef %addr, i32 noundef %reg, i32 noundef %conv15) #23
  br label %return

return:                                           ; preds = %if.then10, %do.body6.return_crit_edge, %if.then3, %do.body.return_crit_edge, %sw.bb2, %sw.bb1, %if.then.return_crit_edge
  %retval.0 = phi i16 [ 96, %sw.bb2 ], [ 4108, %sw.bb1 ], [ 4352, %if.then.return_crit_edge ], [ -1, %do.body.return_crit_edge ], [ -1, %if.then3 ], [ -1, %do.body6.return_crit_edge ], [ -1, %if.then10 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_down(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 16
  tail call void @napi_disable(ptr noundef %napi) #20
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #20
  %csr.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 8
  %port.i = getelementptr inbounds %struct.csr, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port.i, i32 33554432) #20, !srcloc !224
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 8
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 8
  %port2.i = getelementptr inbounds %struct.csr, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port2.i, i32 0) #20, !srcloc !224
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 8
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #20
  %cmd_lock.i.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i.i) #20
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i.i = getelementptr inbounds %struct.anon.122, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i.i, i8 1) #20, !srcloc !220
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 8
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i.i, i32 noundef %call2.i.i) #20
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 46
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  %call = tail call ptr @free_irq(i32 noundef %24, ptr noundef %26) #20
  %watchdog = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 27
  %call2 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #20
  %27 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev, align 4
  tail call void @netif_carrier_off(ptr noundef %28) #20
  tail call fastcc void @e100_clean_cbs(ptr noundef %nic)
  %count1.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 0, i32 2
  %29 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count1.i, align 4
  %ru_running.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %31 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %ru_running.i, align 4
  %rxs.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %32 = ptrtoint ptr %rxs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxs.i, align 128
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %entry.e100_rx_clean_list.exit_crit_edge, label %for.cond.preheader.i

entry.e100_rx_clean_list.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_rx_clean_list.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21.not.i = icmp eq i32 %30, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rx.022.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %33, %for.cond.preheader.i.for.body.i_crit_edge ]
  %skb.i = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 2
  %34 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb.i, align 4
  %tobool3.not.i = icmp eq ptr %35, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %dma_addr.i = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 3
  %38 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_addr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %39, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  %40 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %41) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.rx, ptr %rx.022.i, i32 1
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %30
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %42 = ptrtoint ptr %rxs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rxs.i, align 128
  tail call void @kfree(ptr noundef %43) #20
  %44 = ptrtoint ptr %rxs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rxs.i, align 128
  br label %e100_rx_clean_list.exit

e100_rx_clean_list.exit:                          ; preds = %for.end.i, %entry.e100_rx_clean_list.exit_crit_edge
  %rx_to_clean.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 7
  %45 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rx_to_clean.i, align 8
  %rx_to_use.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 6
  %46 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rx_to_use.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_xmit_prepare(ptr nocapture noundef readonly %nic, ptr nocapture noundef %cb, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_command = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 21
  %0 = ptrtoint ptr %tx_command to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_command, align 8
  %command = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 1
  %2 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %command, align 2
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %6) #20
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !214

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #20
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #20
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %6, i32 noundef %8) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %8, i32 noundef 1, i32 noundef 0) #20
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %retval.0.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #20
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %no_fcs = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %no_fcs to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %no_fcs, align 8
  %18 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.not = icmp eq i16 %18, 0
  %19 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %command, align 2
  br i1 %tobool4.not, label %if.else, label %if.then7, !prof !214

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %21 = or i16 %20, 4096
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %22 = and i16 %20, -4097
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %storemerge = phi i16 [ %22, %if.else ], [ %21, %if.then7 ]
  %23 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %storemerge, ptr %command, align 2
  %cbs_avail = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 15
  %24 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cbs_avail, align 32
  %and14 = and i32 %25, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %25)
  %cmp = icmp eq i32 %and14, %25
  br i1 %cmp, label %if.then17, label %if.end13.if.end22_crit_edge

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #22
  %26 = or i16 %storemerge, 32
  %27 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %command, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end13.if.end22_crit_edge
  %dma_addr23 = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 6
  %28 = ptrtoint ptr %dma_addr23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_addr23, align 4
  %add = add i32 %29, 16
  %u = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3
  %30 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %u, align 4
  %tcb_byte_count = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %tcb_byte_count to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %tcb_byte_count, align 4
  %tx_threshold = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 36
  %32 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_threshold, align 1
  %threshold = getelementptr inbounds %struct.anon.124, ptr %u, i32 0, i32 2
  %34 = ptrtoint ptr %threshold to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %threshold, align 2
  %tbd_count = getelementptr inbounds %struct.anon.124, ptr %u, i32 0, i32 3
  %35 = ptrtoint ptr %tbd_count to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %tbd_count, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %tbd = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %tbd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tbd, align 4
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %conv29 = trunc i32 %39 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv29)
  %size = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3, i32 0, i32 3
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %size, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #20
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_flags.i, align 1
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.then.i53

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then.i53:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then.i53, %if.end22.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.then.i53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_multi(ptr nocapture noundef readonly %nic, ptr nocapture noundef writeonly %cb, ptr nocapture noundef readnone %skb) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %count2 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp slt i32 %3, 64
  %phi.cast36 = and i32 %3, 65535
  %cond = select i1 %cmp, i32 %phi.cast36, i32 64
  %command = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 768, ptr %command, align 2
  %5 = trunc i32 %cond to i16
  %conv4 = mul i16 %5, 6
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %u = getelementptr inbounds %struct.cb, ptr %cb, i32 0, i32 3
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %u, align 4
  %8 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.037 = load ptr, ptr %mc, align 4
  %cmp11.not38 = icmp eq ptr %ha.037, %mc
  br i1 %cmp11.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.040 = phi ptr [ %ha.0, %if.end.for.body_crit_edge ], [ %ha.037, %entry.for.body_crit_edge ]
  %i.039 = phi i16 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv13 = zext i16 %i.039 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv13)
  %cmp15 = icmp eq i32 %cond, %conv13
  br i1 %cmp15, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

if.end:                                           ; preds = %for.body
  %inc = add i16 %i.039, 1
  %mul19 = mul nuw nsw i32 %conv13, 6
  %arrayidx = getelementptr %struct.multi, ptr %u, i32 0, i32 1, i32 %mul19
  %addr20 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.040, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %addr20, i32 6)
  %10 = ptrtoint ptr %ha.040 to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0 = load ptr, ptr %ha.040, align 4
  %cmp11.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp11.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_tx_clean(ptr noundef %nic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %cb_lock = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %cb_lock) #20
  %cb_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 20
  %2 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_to_clean, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not2 = icmp eq i16 %6, 0
  br i1 %tobool.not2, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef %cb_lock) #20
  br label %if.end34

for.body.lr.ph:                                   ; preds = %entry
  %cbs = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 17
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %cbs_avail = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %tx_cleaned.05 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_cleaned.1, %if.end18.for.body_crit_edge ]
  %cb.03 = phi ptr [ %3, %for.body.lr.ph ], [ %40, %if.end18.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !230
  %7 = ptrtoint ptr %nic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nic, align 128
  %and1 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %for.body.do.end_crit_edge, label %if.then

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %11 = ptrtoint ptr %cbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cbs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %cb.03 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i32 %sub.ptr.sub, 560
  %13 = ptrtoint ptr %cb.03 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cb.03, align 4
  %conv5 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.38, ptr noundef %10, ptr noundef nonnull @.str.50, i32 noundef %div, i32 noundef %conv5) #23
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body.do.end_crit_edge
  %skb = getelementptr inbounds %struct.cb, ptr %cb.03, i32 0, i32 7
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %cmp.not = icmp eq ptr %16, null
  br i1 %cmp.not, label %do.end.if.end18_crit_edge, label %if.then9, !prof !216

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end18

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tx_packets, align 4
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %24, %22
  store i32 %add, ptr %tx_bytes, align 4
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %tbd = getelementptr inbounds %struct.cb, ptr %cb.03, i32 0, i32 3, i32 0, i32 2
  %27 = ptrtoint ptr %tbd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tbd, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %size = getelementptr inbounds %struct.cb, ptr %cb.03, i32 0, i32 3, i32 0, i32 3
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %size, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv15 = zext i16 %32 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12, i32 noundef %29, i32 noundef %conv15, i32 noundef 1, i32 noundef 0) #20
  %33 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 1) #20
  %35 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %skb, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %do.end.if.end18_crit_edge
  %tx_cleaned.1 = phi i32 [ 1, %if.then9 ], [ %tx_cleaned.05, %do.end.if.end18_crit_edge ]
  %36 = ptrtoint ptr %cb.03 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %cb.03, align 4
  %37 = ptrtoint ptr %cbs_avail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cbs_avail, align 32
  %inc20 = add i32 %38, 1
  store i32 %inc20, ptr %cbs_avail, align 32
  %next = getelementptr inbounds %struct.cb, ptr %cb.03, i32 0, i32 4
  %39 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next, align 4
  %41 = ptrtoint ptr %cb_to_clean to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %cb_to_clean, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %40, align 4
  %44 = and i16 %43, 128
  %tobool.not = icmp eq i16 %44, 0
  br i1 %tobool.not, label %for.end, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end18
  tail call void @_raw_spin_unlock(ptr noundef %cb_lock) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_cleaned.1)
  %tobool23.not = icmp eq i32 %tx_cleaned.1, 0
  br i1 %tobool23.not, label %for.end.if.end34_crit_edge, label %land.rhs

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

land.rhs:                                         ; preds = %for.end
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.rhs.if.end34_crit_edge, label %if.then32, !prof !214

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @netif_tx_wake_queue(ptr noundef %48) #20
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.rhs.if.end34_crit_edge, %for.end.if.end34_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %info) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #20
  %pdev = getelementptr i8, ptr %netdev, i32 2312
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
  call void @__sanitizer_cov_trace_pc() #22
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_get_regs_len(ptr nocapture noundef readnone %netdev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 716
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_get_regs(ptr noundef %netdev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %pdev = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  %conv = zext i8 %3 to i32
  %or = or i32 %conv, 16777216
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %version, align 4
  %csr = getelementptr i8, ptr %netdev, i32 2648
  %5 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr, align 8
  %cmd_hi = getelementptr inbounds %struct.anon.122, ptr %6, i32 0, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cmd_hi) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %conv2 = zext i8 %7 to i32
  %shl = shl nuw i32 %conv2, 24
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 8
  %cmd_lo = getelementptr inbounds %struct.anon.122, ptr %9, i32 0, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cmd_lo) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %conv6 = zext i8 %10 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %shl7, %shl
  %11 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %csr, align 8
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #20, !srcloc !231
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !232
  %conv12 = zext i16 %14 to i32
  %or13 = or i32 %or8, %conv12
  %15 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or13, ptr %p, align 4
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %mdio_ctrl.i = getelementptr i8, ptr %netdev, i32 2316
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mii, align 4
  %sub = sub nuw nsw i32 28, %i.037
  %18 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %19(ptr noundef %add.ptr.i, i32 noundef %17, i32 noundef 134217728, i32 noundef %sub, i16 noundef zeroext 0) #20
  %conv.i = zext i16 %call1.i to i32
  %add = add nuw nsw i32 %i.037, 1
  %arrayidx16 = getelementptr i32, ptr %p, i32 %add
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %arrayidx16, align 4
  %exitcond.not = icmp eq i32 %add, 29
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  %mem = getelementptr i8, ptr %netdev, i32 3108
  %21 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem, align 4
  %dump_buf = getelementptr inbounds %struct.mem, ptr %22, i32 0, i32 2
  %23 = call ptr @memset(ptr %dump_buf, i32 0, i32 596)
  %cb_lock.i = getelementptr i8, ptr %netdev, i32 2560
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cb_lock.i) #20
  %cbs_avail.i = getelementptr i8, ptr %netdev, i32 2656
  %24 = ptrtoint ptr %cbs_avail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cbs_avail.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %for.end.e100_exec_cb.exit_crit_edge, label %if.end14.i, !prof !216

for.end.e100_exec_cb.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

if.end14.i:                                       ; preds = %for.end
  %cb_to_use.i = getelementptr i8, ptr %netdev, i32 2892
  %26 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb_to_use.i, align 4
  %next.i = getelementptr inbounds %struct.cb, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next.i, align 4
  store ptr %29, ptr %cb_to_use.i, align 4
  %dec.i = add i32 %25, -1
  %30 = ptrtoint ptr %cbs_avail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dec.i, ptr %cbs_avail.i, align 32
  %skb10.i = getelementptr inbounds %struct.cb, ptr %27, i32 0, i32 7
  %31 = ptrtoint ptr %skb10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %skb10.i, align 4
  %command.i35 = getelementptr inbounds %struct.cb, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %command.i35 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1536, ptr %command.i35, align 2
  %dma_addr.i36 = getelementptr i8, ptr %netdev, i32 3112
  %33 = ptrtoint ptr %dma_addr.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr.i36, align 8
  %add.i = add i32 %34, 92
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i) #20
  %u.i = getelementptr inbounds %struct.cb, ptr %27, i32 0, i32 3
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %u.i, align 4
  %37 = ptrtoint ptr %cbs_avail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cbs_avail.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool16.not.i = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %command.i35 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1600, ptr %command.i35, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !225
  %prev.i = getelementptr inbounds %struct.cb, ptr %27, i32 0, i32 5
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %command29.i = getelementptr inbounds %struct.cb, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %command29.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %command29.i, align 2
  %44 = and i16 %43, -65
  store i16 %44, ptr %command29.i, align 2
  %cb_to_send.i = getelementptr i8, ptr %netdev, i32 2896
  %45 = ptrtoint ptr %cb_to_send.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb_to_send.i, align 16
  %47 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cb_to_use.i, align 4
  %cmp33.not80.i = icmp eq ptr %46, %48
  br i1 %cmp33.not80.i, label %if.end14.i.e100_exec_cb.exit_crit_edge, label %while.body.lr.ph.i

if.end14.i.e100_exec_cb.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

while.body.lr.ph.i:                               ; preds = %if.end14.i
  %cuc_cmd.i = getelementptr i8, ptr %netdev, i32 2652
  br label %while.body.i

while.body.i:                                     ; preds = %if.else.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %49 = phi ptr [ %46, %while.body.lr.ph.i ], [ %59, %if.else.i.while.body.i_crit_edge ]
  %50 = ptrtoint ptr %cuc_cmd.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cuc_cmd.i, align 4
  %conv35.i = trunc i32 %51 to i8
  %dma_addr.i = getelementptr inbounds %struct.cb, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr.i, align 4
  %call37.i = tail call fastcc i32 @e100_exec_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext %conv35.i, i32 noundef %53) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then45.i, !prof !214

if.then45.i:                                      ; preds = %while.body.i
  br i1 %tobool16.not.i, label %if.then48.i, label %if.then45.i.e100_exec_cb.exit_crit_edge

if.then45.i.e100_exec_cb.exit_crit_edge:          ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #22
  %tx_timeout_task.i = getelementptr i8, ptr %netdev, i32 3060
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %tx_timeout_task.i) #20
  br label %e100_exec_cb.exit

if.else.i:                                        ; preds = %while.body.i
  %55 = ptrtoint ptr %cuc_cmd.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 32, ptr %cuc_cmd.i, align 4
  %56 = ptrtoint ptr %cb_to_send.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cb_to_send.i, align 16
  %next53.i = getelementptr inbounds %struct.cb, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %next53.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %next53.i, align 4
  store ptr %59, ptr %cb_to_send.i, align 16
  %60 = ptrtoint ptr %cb_to_use.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cb_to_use.i, align 4
  %cmp33.not.i = icmp eq ptr %59, %61
  br i1 %cmp33.not.i, label %if.else.i.e100_exec_cb.exit_crit_edge, label %if.else.i.while.body.i_crit_edge

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

if.else.i.e100_exec_cb.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_exec_cb.exit

e100_exec_cb.exit:                                ; preds = %if.else.i.e100_exec_cb.exit_crit_edge, %if.then48.i, %if.then45.i.e100_exec_cb.exit_crit_edge, %if.end14.i.e100_exec_cb.exit_crit_edge, %for.end.e100_exec_cb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cb_lock.i, i32 noundef %call2.i) #20
  tail call void @msleep(i32 noundef 10) #20
  %arrayidx18 = getelementptr i32, ptr %p, i32 30
  %62 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mem, align 4
  %dump_buf20 = getelementptr inbounds %struct.mem, ptr %63, i32 0, i32 2
  %64 = call ptr @memcpy(ptr %arrayidx18, ptr %dump_buf20, i32 596)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e100_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr i8, ptr %netdev, i32 2948
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  %cond = select i1 %cmp, i32 32, i32 0
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %supported, align 4
  %flags = getelementptr i8, ptr %netdev, i32 2944
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 128
  %and = shl i32 %4, 2
  %5 = and i32 %and, 32
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_wol(ptr noundef %netdev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.lor.lhs.false_crit_edge
    i32 32, label %entry.lor.lhs.false_crit_edge21
  ]

entry.lor.lhs.false_crit_edge21:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge21
  %pdev = getelementptr i8, ptr %netdev, i32 2312
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %can_wakeup.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 12, i32 1
  %5 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %flags6 = getelementptr i8, ptr %netdev, i32 2944
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags6, align 128
  %and = and i32 %7, -9
  %masksel = select i1 %tobool4.not, i32 0, i32 8
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags6, align 128
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11 = icmp ne i32 %11, 0
  %call12 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev9, i1 noundef zeroext %tobool11) #20
  %call13 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull @e100_configure)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_get_msglevel(ptr nocapture noundef readonly %netdev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 128
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @e100_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %add.ptr.i, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #20
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_get_link(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #20
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_get_eeprom_len(ptr nocapture noundef readonly %netdev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_wc = getelementptr i8, ptr %netdev, i32 3176
  %0 = ptrtoint ptr %eeprom_wc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eeprom_wc, align 8
  %conv = zext i16 %1 to i32
  %shl = shl nuw nsw i32 %conv, 1
  ret i32 %shl
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_get_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %bytes) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4660, ptr %magic, align 4
  %eeprom1 = getelementptr i8, ptr %netdev, i32 3178
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr i8, ptr %eeprom1, i32 %2
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = call ptr @memcpy(ptr %bytes, ptr %arrayidx, i32 %4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_eeprom(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %bytes) #2 align 64 {
entry:
  %addr_len.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4660, i32 %1)
  %cmp.not = icmp eq i32 %1, 4660
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %eeprom1 = getelementptr i8, ptr %netdev, i32 3178
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr i8, ptr %eeprom1, i32 %3
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %bytes, i32 %5)
  %7 = load i32, ptr %offset, align 4
  %shr = lshr i32 %7, 1
  %8 = load i32, ptr %len, align 4
  %shr4 = lshr i32 %8, 1
  %9 = trunc i32 %shr4 to i16
  %conv5 = add i16 %9, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr_len.i) #20
  %10 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %addr_len.i, align 2
  %call.i = call fastcc zeroext i16 @e100_eeprom_read(ptr noundef %add.ptr.i, ptr noundef nonnull %addr_len.i, i16 noundef zeroext 0) #20
  %11 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr_len.i, align 2
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i16
  %eeprom_wc.i = getelementptr i8, ptr %netdev, i32 3176
  %13 = ptrtoint ptr %eeprom_wc.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv1.i, ptr %eeprom_wc.i, align 8
  %conv2.i = and i32 %shr, 65535
  %conv3.i = zext i16 %conv5 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv3.i
  %conv5.i = and i32 %shl.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv5.i)
  %cmp.not.i = icmp ult i32 %add.i, %conv5.i
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end.e100_eeprom_save.exit_crit_edge

if.end.e100_eeprom_save.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_eeprom_save.exit

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5)
  %cmp1172.not.i = icmp eq i16 %conv5, 0
  br i1 %cmp1172.not.i, label %for.cond.preheader.i.for.cond13.preheader.i_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.for.cond13.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond13.preheader.i

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %conv = trunc i32 %shr to i16
  br label %for.body.i

for.cond13.preheader.i:                           ; preds = %for.body.i.for.cond13.preheader.i_crit_edge, %for.cond.preheader.i.for.cond13.preheader.i_crit_edge
  %14 = ptrtoint ptr %eeprom_wc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %eeprom_wc.i, align 8
  %conv16.i = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv16.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp1775.i = icmp ugt i16 %15, 1
  br i1 %cmp1775.i, label %for.cond13.preheader.i.for.body19.i_crit_edge, label %for.cond13.preheader.i.for.end29.i_crit_edge

for.cond13.preheader.i.for.end29.i_crit_edge:     ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end29.i

for.cond13.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body19.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %conv774.i = phi i32 [ %conv7.i, %for.body.i.for.body.i_crit_edge ], [ %conv2.i, %for.body.i.preheader ]
  %addr.073.i = phi i16 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %conv, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.nic, ptr %add.ptr.i, i32 0, i32 50, i32 %conv774.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  tail call fastcc void @e100_eeprom_write(ptr noundef %add.ptr.i, i16 noundef zeroext %12, i16 noundef zeroext %addr.073.i, i16 noundef zeroext %17) #20
  %inc.i = add i16 %addr.073.i, 1
  %conv7.i = zext i16 %inc.i to i32
  %cmp11.i = icmp ugt i32 %add.i, %conv7.i
  br i1 %cmp11.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond13.preheader.i_crit_edge

for.body.i.for.cond13.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.cond13.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond13.preheader.i.for.body19.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body19.i_crit_edge ]
  %checksum.077.i = phi i32 [ %phi.cast.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body19.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.nic, ptr %add.ptr.i, i32 0, i32 50, i32 %indvars.iv.i
  %18 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx22.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #20
  %conv23.i = zext i16 %20 to i32
  %add25.i = add nuw nsw i32 %checksum.077.i, %conv23.i
  %phi.cast.i = and i32 %add25.i, 65535
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %sub.i
  br i1 %exitcond.not.i, label %for.end29.loopexit.i, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body19.i

for.end29.loopexit.i:                             ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #22
  %phi.cast80.i = trunc i32 %add25.i to i16
  %phi.bo.i = sub i16 -17734, %phi.cast80.i
  br label %for.end29.i

for.end29.i:                                      ; preds = %for.end29.loopexit.i, %for.cond13.preheader.i.for.end29.i_crit_edge
  %checksum.0.lcssa.i = phi i16 [ -17734, %for.cond13.preheader.i.for.end29.i_crit_edge ], [ %phi.bo.i, %for.end29.loopexit.i ]
  %21 = tail call i16 @llvm.bswap.i16(i16 %checksum.0.lcssa.i) #20
  %arrayidx37.i = getelementptr %struct.nic, ptr %add.ptr.i, i32 0, i32 50, i32 %sub.i
  %22 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx37.i, align 2
  %23 = ptrtoint ptr %eeprom_wc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %eeprom_wc.i, align 8
  %conv39.i = zext i16 %24 to i32
  %sub40.i = add nsw i32 %conv39.i, -1
  %conv41.i = trunc i32 %sub40.i to i16
  %arrayidx46.i = getelementptr %struct.nic, ptr %add.ptr.i, i32 0, i32 50, i32 %sub40.i
  %25 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx46.i, align 2
  tail call fastcc void @e100_eeprom_write(ptr noundef %add.ptr.i, i16 noundef zeroext %12, i16 noundef zeroext %conv41.i, i16 noundef zeroext %26) #20
  br label %e100_eeprom_save.exit

e100_eeprom_save.exit:                            ; preds = %for.end29.i, %if.end.e100_eeprom_save.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end29.i ], [ -22, %if.end.e100_eeprom_save.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr_len.i) #20
  br label %cleanup

cleanup:                                          ; preds = %e100_eeprom_save.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %e100_eeprom_save.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e100_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr i8, ptr %netdev, i32 2960
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %rx_max_pending, align 4
  %max4 = getelementptr i8, ptr %netdev, i32 2972
  %3 = ptrtoint ptr %max4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max4, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %5 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tx_max_pending, align 4
  %count = getelementptr i8, ptr %netdev, i32 2964
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_pending, align 4
  %count5 = getelementptr i8, ptr %netdev, i32 2976
  %9 = ptrtoint ptr %count5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count5, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %11 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %params = getelementptr i8, ptr %netdev, i32 2956
  %cbs3 = getelementptr i8, ptr %netdev, i32 2968
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @e100_down(ptr noundef %add.ptr.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pending, align 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9)
  %count = getelementptr i8, ptr %netdev, i32 2964
  %max = getelementptr i8, ptr %netdev, i32 2960
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %15 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_pending, align 4
  %17 = ptrtoint ptr %cbs3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cbs3, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %18)
  %count23 = getelementptr i8, ptr %netdev, i32 2976
  %max25 = getelementptr i8, ptr %netdev, i32 2972
  %20 = ptrtoint ptr %max25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max25, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21)
  %23 = ptrtoint ptr %count23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %count23, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 128
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end7.do.end_crit_edge, label %if.then34

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then34:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  %netdev35 = getelementptr i8, ptr %netdev, i32 2308
  %26 = ptrtoint ptr %netdev35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev35, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef %13, i32 noundef %22) #23
  br label %do.end

do.end:                                           ; preds = %if.then34, %if.end7.do.end_crit_edge
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %and1.i.i79 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i79)
  %tobool.i80.not = icmp eq i32 %and1.i.i79, 0
  br i1 %tobool.i80.not, label %do.end.cleanup_crit_edge, label %if.then40

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %call41 = tail call fastcc i32 @e100_up(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_diag_test(ptr noundef %netdev, ptr nocapture noundef %test, ptr nocapture noundef %data) #2 align 64 {
entry:
  %cmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #20
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 44)
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %1 = call ptr @memset(ptr %data, i32 0, i32 40)
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %2 = zext i1 %tobool.not to i64
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %data, align 8
  %call2 = tail call fastcc i32 @e100_eeprom_load(ptr noundef %add.ptr.i)
  %conv3 = sext i32 %call2 to i64
  %arrayidx4 = getelementptr i64, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv3, ptr %arrayidx4, align 8
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %test, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %cmd) #20
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @e100_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %call9 = call fastcc i32 @e100_self_test(ptr noundef %add.ptr.i)
  %conv10 = sext i32 %call9 to i64
  %arrayidx11 = getelementptr i64, ptr %data, i32 2
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv10, ptr %arrayidx11, align 8
  %call12 = call fastcc i32 @e100_loopback_test(ptr noundef %add.ptr.i, i32 noundef 1)
  %conv13 = sext i32 %call12 to i64
  %arrayidx14 = getelementptr i64, ptr %data, i32 3
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv13, ptr %arrayidx14, align 8
  %call15 = call fastcc i32 @e100_loopback_test(ptr noundef %add.ptr.i, i32 noundef 3)
  %conv16 = sext i32 %call15 to i64
  %arrayidx17 = getelementptr i64, ptr %data, i32 4
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv16, ptr %arrayidx17, align 8
  %call19 = call i32 @mii_ethtool_sset(ptr noundef %mii, ptr noundef nonnull %cmd) #20
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i50 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i50)
  %tobool.i51.not = icmp eq i32 %and1.i.i50, 0
  br i1 %tobool.i51.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call22 = call fastcc i32 @e100_up(ptr noundef %add.ptr.i)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool27.not = icmp eq i64 %15, 0
  %cond = select i1 %tobool27.not, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %cond, %17
  store i32 %or, ptr %flags, align 4
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool27.not.1 = icmp eq i64 %19, 0
  %cond.1 = select i1 %tobool27.not.1, i32 0, i32 2
  %or.1 = or i32 %cond.1, %or
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.1, ptr %flags, align 4
  %arrayidx26.2 = getelementptr i64, ptr %data, i32 2
  %21 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx26.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool27.not.2 = icmp eq i64 %22, 0
  %cond.2 = select i1 %tobool27.not.2, i32 0, i32 2
  %or.2 = or i32 %cond.2, %or.1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.2, ptr %flags, align 4
  %arrayidx26.3 = getelementptr i64, ptr %data, i32 3
  %24 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx26.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool27.not.3 = icmp eq i64 %25, 0
  %cond.3 = select i1 %tobool27.not.3, i32 0, i32 2
  %or.3 = or i32 %cond.3, %or.2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.3, ptr %flags, align 4
  %arrayidx26.4 = getelementptr i64, ptr %data, i32 4
  %27 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx26.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool27.not.4 = icmp eq i64 %28, 0
  %cond.4 = select i1 %tobool27.not.4, i32 0, i32 2
  %or.4 = or i32 %cond.4, %or.3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.4, ptr %flags, align 4
  %call29 = call i32 @msleep_interruptible(i32 noundef 4000) #20
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @e100_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %1 = call ptr @memcpy(ptr %data, ptr @e100_gstrings_test, i32 160)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %2 = call ptr @memcpy(ptr %data, ptr @e100_gstrings_stats, i32 992)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_phys_id(ptr noundef %netdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %phy = getelementptr i8, ptr %netdev, i32 2952
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %1)
  %cmp = icmp eq i32 %1, -798949299
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %cond.false

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #22
  %mac = getelementptr i8, ptr %netdev, i32 2948
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp5.inv = icmp ugt i32 %4, 7
  %cond7 = select i1 %cmp5.inv, i16 5, i16 7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %conv15 = select i1 %cmp, i16 10, i16 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %cond.false, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %leds.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ %conv15, %sw.bb10 ], [ %cond7, %cond.false ], [ 15, %sw.bb1.sw.epilog_crit_edge ]
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %5 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mii, align 4
  %conv16 = select i1 %cmp, i32 25, i32 27
  %mdio_ctrl.i = getelementptr i8, ptr %netdev, i32 2316
  %7 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %8(ptr noundef %add.ptr.i, i32 noundef %6, i32 noundef 67108864, i32 noundef %conv16, i16 noundef zeroext %leds.0) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats1, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %data, align 8
  %arrayidx.1 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %conv.1 = zext i32 %4 to i64
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.1, ptr %arrayidx2.1, align 8
  %arrayidx.2 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %conv.2 = zext i32 %7 to i64
  %arrayidx2.2 = getelementptr i64, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.2, ptr %arrayidx2.2, align 8
  %arrayidx.3 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %conv.3 = zext i32 %10 to i64
  %arrayidx2.3 = getelementptr i64, ptr %data, i32 3
  %11 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.3, ptr %arrayidx2.3, align 8
  %arrayidx.4 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %conv.4 = zext i32 %13 to i64
  %arrayidx2.4 = getelementptr i64, ptr %data, i32 4
  %14 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.4, ptr %arrayidx2.4, align 8
  %arrayidx.5 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %conv.5 = zext i32 %16 to i64
  %arrayidx2.5 = getelementptr i64, ptr %data, i32 5
  %17 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv.5, ptr %arrayidx2.5, align 8
  %arrayidx.6 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %conv.6 = zext i32 %19 to i64
  %arrayidx2.6 = getelementptr i64, ptr %data, i32 6
  %20 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.6, ptr %arrayidx2.6, align 8
  %arrayidx.7 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %conv.7 = zext i32 %22 to i64
  %arrayidx2.7 = getelementptr i64, ptr %data, i32 7
  %23 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv.7, ptr %arrayidx2.7, align 8
  %arrayidx.8 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %conv.8 = zext i32 %25 to i64
  %arrayidx2.8 = getelementptr i64, ptr %data, i32 8
  %26 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv.8, ptr %arrayidx2.8, align 8
  %arrayidx.9 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.9, align 4
  %conv.9 = zext i32 %28 to i64
  %arrayidx2.9 = getelementptr i64, ptr %data, i32 9
  %29 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.9, ptr %arrayidx2.9, align 8
  %arrayidx.10 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.10, align 4
  %conv.10 = zext i32 %31 to i64
  %arrayidx2.10 = getelementptr i64, ptr %data, i32 10
  %32 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv.10, ptr %arrayidx2.10, align 8
  %arrayidx.11 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 11
  %33 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.11, align 4
  %conv.11 = zext i32 %34 to i64
  %arrayidx2.11 = getelementptr i64, ptr %data, i32 11
  %35 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv.11, ptr %arrayidx2.11, align 8
  %arrayidx.12 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 12
  %36 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.12, align 4
  %conv.12 = zext i32 %37 to i64
  %arrayidx2.12 = getelementptr i64, ptr %data, i32 12
  %38 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.12, ptr %arrayidx2.12, align 8
  %arrayidx.13 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 13
  %39 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.13, align 4
  %conv.13 = zext i32 %40 to i64
  %arrayidx2.13 = getelementptr i64, ptr %data, i32 13
  %41 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv.13, ptr %arrayidx2.13, align 8
  %arrayidx.14 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 14
  %42 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.14, align 4
  %conv.14 = zext i32 %43 to i64
  %arrayidx2.14 = getelementptr i64, ptr %data, i32 14
  %44 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv.14, ptr %arrayidx2.14, align 8
  %arrayidx.15 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 15
  %45 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.15, align 4
  %conv.15 = zext i32 %46 to i64
  %arrayidx2.15 = getelementptr i64, ptr %data, i32 15
  %47 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv.15, ptr %arrayidx2.15, align 8
  %arrayidx.16 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 16
  %48 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.16, align 4
  %conv.16 = zext i32 %49 to i64
  %arrayidx2.16 = getelementptr i64, ptr %data, i32 16
  %50 = ptrtoint ptr %arrayidx2.16 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv.16, ptr %arrayidx2.16, align 8
  %arrayidx.17 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 17
  %51 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.17, align 4
  %conv.17 = zext i32 %52 to i64
  %arrayidx2.17 = getelementptr i64, ptr %data, i32 17
  %53 = ptrtoint ptr %arrayidx2.17 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv.17, ptr %arrayidx2.17, align 8
  %arrayidx.18 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 18
  %54 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.18, align 4
  %conv.18 = zext i32 %55 to i64
  %arrayidx2.18 = getelementptr i64, ptr %data, i32 18
  %56 = ptrtoint ptr %arrayidx2.18 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv.18, ptr %arrayidx2.18, align 8
  %arrayidx.19 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 19
  %57 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.19, align 4
  %conv.19 = zext i32 %58 to i64
  %arrayidx2.19 = getelementptr i64, ptr %data, i32 19
  %59 = ptrtoint ptr %arrayidx2.19 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv.19, ptr %arrayidx2.19, align 8
  %arrayidx.20 = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 36, i32 20
  %60 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.20, align 4
  %conv.20 = zext i32 %61 to i64
  %arrayidx2.20 = getelementptr i64, ptr %data, i32 20
  %62 = ptrtoint ptr %arrayidx2.20 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv.20, ptr %arrayidx2.20, align 8
  %tx_deferred = getelementptr i8, ptr %netdev, i32 3136
  %63 = ptrtoint ptr %tx_deferred to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_deferred, align 64
  %conv3 = zext i32 %64 to i64
  %arrayidx5 = getelementptr i64, ptr %data, i32 21
  %65 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv3, ptr %arrayidx5, align 8
  %tx_single_collisions = getelementptr i8, ptr %netdev, i32 3140
  %66 = ptrtoint ptr %tx_single_collisions to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_single_collisions, align 4
  %conv6 = zext i32 %67 to i64
  %arrayidx8 = getelementptr i64, ptr %data, i32 22
  %68 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv6, ptr %arrayidx8, align 8
  %tx_multiple_collisions = getelementptr i8, ptr %netdev, i32 3144
  %69 = ptrtoint ptr %tx_multiple_collisions to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_multiple_collisions, align 8
  %conv9 = zext i32 %70 to i64
  %arrayidx11 = getelementptr i64, ptr %data, i32 23
  %71 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv9, ptr %arrayidx11, align 8
  %tx_fc_pause = getelementptr i8, ptr %netdev, i32 3148
  %72 = ptrtoint ptr %tx_fc_pause to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_fc_pause, align 4
  %conv12 = zext i32 %73 to i64
  %arrayidx14 = getelementptr i64, ptr %data, i32 24
  %74 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv12, ptr %arrayidx14, align 8
  %rx_fc_pause = getelementptr i8, ptr %netdev, i32 3156
  %75 = ptrtoint ptr %rx_fc_pause to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_fc_pause, align 4
  %conv15 = zext i32 %76 to i64
  %arrayidx17 = getelementptr i64, ptr %data, i32 25
  %77 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv15, ptr %arrayidx17, align 8
  %rx_fc_unsupported = getelementptr i8, ptr %netdev, i32 3160
  %78 = ptrtoint ptr %rx_fc_unsupported to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_fc_unsupported, align 8
  %conv18 = zext i32 %79 to i64
  %arrayidx20 = getelementptr i64, ptr %data, i32 26
  %80 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv18, ptr %arrayidx20, align 8
  %tx_tco_frames = getelementptr i8, ptr %netdev, i32 3152
  %81 = ptrtoint ptr %tx_tco_frames to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_tco_frames, align 16
  %conv21 = zext i32 %82 to i64
  %arrayidx23 = getelementptr i64, ptr %data, i32 27
  %83 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv21, ptr %arrayidx23, align 8
  %rx_tco_frames = getelementptr i8, ptr %netdev, i32 3164
  %84 = ptrtoint ptr %rx_tco_frames to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_tco_frames, align 4
  %conv24 = zext i32 %85 to i64
  %arrayidx26 = getelementptr i64, ptr %data, i32 28
  %86 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv24, ptr %arrayidx26, align 8
  %rx_short_frame_errors = getelementptr i8, ptr %netdev, i32 3168
  %87 = ptrtoint ptr %rx_short_frame_errors to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_short_frame_errors, align 32
  %conv27 = zext i32 %88 to i64
  %arrayidx29 = getelementptr i64, ptr %data, i32 29
  %89 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv27, ptr %arrayidx29, align 8
  %rx_over_length_errors = getelementptr i8, ptr %netdev, i32 3172
  %90 = ptrtoint ptr %rx_over_length_errors to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_over_length_errors, align 4
  %conv30 = zext i32 %91 to i64
  %arrayidx32 = getelementptr i64, ptr %data, i32 30
  %92 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv30, ptr %arrayidx32, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e100_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %switch.selectcmp = icmp eq i32 %sset, 1
  %switch.select = select i1 %switch.selectcmp, i32 31, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sset)
  %switch.selectcmp2 = icmp eq i32 %sset, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 5, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_get_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %netdev, i32 3028
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_set_link_ksettings(ptr noundef %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mii = getelementptr i8, ptr %netdev, i32 3028
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mii, align 4
  %mdio_ctrl.i = getelementptr i8, ptr %netdev, i32 2316
  %2 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %3(ptr noundef %add.ptr.i, i32 noundef %1, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext -32768) #20
  %call2 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #20
  %call3 = tail call fastcc i32 @e100_exec_cb(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef nonnull @e100_configure)
  ret i32 %call2
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr noundef %netdev, i32 noundef %addr, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdio_ctrl = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %mdio_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_ctrl, align 4
  %call1 = tail call zeroext i16 %1(ptr noundef %add.ptr.i, i32 noundef %addr, i32 noundef 134217728, i32 noundef %reg, i16 noundef zeroext 0) #20
  %conv = zext i16 %call1 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @e100_eeprom_read(ptr nocapture noundef readonly %nic, ptr nocapture noundef %addr_len, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr_len, align 2
  %conv = zext i16 %1 to i32
  %shl = shl i32 6, %conv
  %conv1 = zext i16 %addr to i32
  %or = or i32 %shl, %conv1
  %shl2 = shl i32 %or, 16
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %2 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo = getelementptr inbounds %struct.csr, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo, i8 3) #20, !srcloc !220
  %4 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr, align 8
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 858992) #20
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 31, %entry ], [ %dec, %if.end.for.body_crit_edge ]
  %data.054 = phi i16 [ 0, %entry ], [ %or29, %if.end.for.body_crit_edge ]
  %shl4 = shl nuw i32 1, %i.055
  %and = and i32 %shl4, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv5 = select i1 %tobool.not, i8 2, i8 6
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo7 = getelementptr inbounds %struct.csr, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo7, i8 %conv5) #20, !srcloc !220
  %10 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr, align 8
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 858992) #20
  %14 = or i8 %conv5, 1
  %15 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo12 = getelementptr inbounds %struct.csr, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo12, i8 %14) #20, !srcloc !220
  %17 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr, align 8
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %18) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 858992) #20
  %21 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo14 = getelementptr inbounds %struct.csr, ptr %22, i32 0, i32 3
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %eeprom_ctrl_lo14) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.055)
  %cmp18 = icmp ugt i32 %i.055, 16
  %or.cond = select i1 %tobool17.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %25 = ptrtoint ptr %addr_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr_len, align 2
  %27 = trunc i32 %i.055 to i16
  %.neg53 = sub i16 16, %27
  %conv22 = add i16 %.neg53, %26
  store i16 %conv22, ptr %addr_len, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %i.1 = phi i32 [ %i.055, %for.body.if.end_crit_edge ], [ 17, %if.then ]
  %shl24 = shl i16 %data.054, 1
  %not.tobool17.not = xor i1 %tobool17.not, true
  %cond28 = zext i1 %not.tobool17.not to i16
  %or29 = or i16 %shl24, %cond28
  %dec = add nsw i32 %i.1, -1
  %cmp = icmp sgt i32 %i.1, 0
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %28 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo32 = getelementptr inbounds %struct.csr, ptr %29, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo32, i8 0) #20, !srcloc !220
  %30 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csr, align 8
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 858992) #20
  %34 = tail call i16 @llvm.bswap.i16(i16 %or29)
  ret i16 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e100_eeprom_write(ptr nocapture noundef readonly %nic, i16 noundef zeroext %addr_len, i16 noundef zeroext %addr, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %cmd_addr_data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd_addr_data) #20
  %0 = getelementptr inbounds [3 x i32], ptr %cmd_addr_data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %cmd_addr_data, i32 0, i32 2
  %conv = zext i16 %addr_len to i32
  %sub = add nsw i32 %conv, -2
  %shl = shl i32 19, %sub
  %2 = ptrtoint ptr %cmd_addr_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %cmd_addr_data, align 4
  %shl2 = shl i32 5, %conv
  %conv3 = zext i16 %addr to i32
  %or = or i32 %shl2, %conv3
  %shl4 = shl i32 %or, 16
  %3 = tail call i16 @llvm.bswap.i16(i16 %data)
  %conv5 = zext i16 %3 to i32
  %or6 = or i32 %shl4, %conv5
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or6, ptr %0, align 4
  %shl10 = shl i32 16, %sub
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl10, ptr %1, align 4
  %csr = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %j.049 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo = getelementptr inbounds %struct.csr, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo, i8 3) #20, !srcloc !220
  %8 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csr, align 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 858992) #20
  %arrayidx17 = getelementptr [3 x i32], ptr %cmd_addr_data, i32 0, i32 %j.049
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body
  %i.048 = phi i32 [ 31, %for.body ], [ %dec, %for.body16.for.body16_crit_edge ]
  %shl18 = shl nuw i32 1, %i.048
  %and = and i32 %13, %shl18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv19 = select i1 %tobool.not, i8 2, i8 6
  %14 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo21 = getelementptr inbounds %struct.csr, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo21, i8 %conv19) #20, !srcloc !220
  %16 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr, align 8
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 858992) #20
  %20 = or i8 %conv19, 1
  %21 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo26 = getelementptr inbounds %struct.csr, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo26, i8 %20) #20, !srcloc !220
  %23 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr, align 8
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 858992) #20
  %dec = add nsw i32 %i.048, -1
  %cmp14.not = icmp eq i32 %i.048, 0
  br i1 %cmp14.not, label %for.end, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body16

for.end:                                          ; preds = %for.body16
  tail call void @msleep(i32 noundef 10) #20
  %27 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr, align 8
  %eeprom_ctrl_lo28 = getelementptr inbounds %struct.csr, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %eeprom_ctrl_lo28, i8 0) #20, !srcloc !220
  %29 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr, align 8
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 858992) #20
  %inc = add nuw nsw i32 %j.049, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end30, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd_addr_data) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e100_loopback_test(ptr noundef %nic, i32 noundef %loopback_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @e100_rx_alloc_list(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @e100_alloc_cbs(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_clean_rx_crit_edge

if.end.err_clean_rx_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_clean_rx

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 23
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 128
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %loopback_mode)
  %cmp = icmp eq i32 %loopback_mode, 3
  %spec.store.select = select i1 %cmp, i32 1, i32 %loopback_mode
  %loopback_mode.addr.0 = select i1 %tobool5.not, i32 %loopback_mode, i32 %spec.store.select
  %loopback = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 30
  %2 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %loopback_mode.addr.0, ptr %loopback, align 32
  %call8 = tail call fastcc i32 @e100_hw_init(ptr noundef %nic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.err_loopback_none_crit_edge

if.end4.err_loopback_none_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_loopback_none

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %loopback_mode.addr.0)
  %cmp12 = icmp eq i32 %loopback_mode.addr.0, 3
  br i1 %cmp12, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %mii = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28
  %5 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mii, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2304
  %mdio_ctrl.i = getelementptr i8, ptr %4, i32 2316
  %7 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %8(ptr noundef %add.ptr.i.i, i32 noundef %6, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext 16384) #20
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %rxs.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %9 = ptrtoint ptr %rxs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rxs.i, align 128
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end14.e100_start_receiver.exit_crit_edge, label %if.end.i

if.end14.e100_start_receiver.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.end.i:                                         ; preds = %if.end14
  %ru_running.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %11 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ru_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.e100_start_receiver.exit_crit_edge

if.end.i.e100_start_receiver.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.end2.i:                                        ; preds = %if.end.i
  %skb.i = getelementptr inbounds %struct.rx, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end2.i.e100_start_receiver.exit_crit_edge, label %if.then8.i

if.end2.i.e100_start_receiver.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_start_receiver.exit

if.then8.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #22
  %dma_addr.i = getelementptr inbounds %struct.rx, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr.i, align 4
  %call.i = tail call fastcc i32 @e100_exec_cmd(ptr noundef %nic, i8 noundef zeroext 1, i32 noundef %16) #20
  %17 = ptrtoint ptr %ru_running.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ru_running.i, align 4
  br label %e100_start_receiver.exit

e100_start_receiver.exit:                         ; preds = %if.then8.i, %if.end2.i.e100_start_receiver.exit_crit_edge, %if.end.i.e100_start_receiver.exit_crit_edge, %if.end14.e100_start_receiver.exit_crit_edge
  %netdev15 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %18 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev15, align 4
  %call.i60 = tail call ptr @__netdev_alloc_skb(ptr noundef %19, i32 noundef 1500, i32 noundef 2592) #20
  %tobool17.not = icmp eq ptr %call.i60, null
  br i1 %tobool17.not, label %e100_start_receiver.exit.err_loopback_none_crit_edge, label %if.end19

e100_start_receiver.exit.err_loopback_none_crit_edge: ; preds = %e100_start_receiver.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %err_loopback_none

if.end19:                                         ; preds = %e100_start_receiver.exit
  call void @__sanitizer_cov_trace_pc() #22
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i60, i32 noundef 1500) #20
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i60, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 1500)
  %23 = ptrtoint ptr %netdev15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev15, align 4
  %call22 = tail call i32 @e100_xmit_frame(ptr noundef nonnull %call.i60, ptr noundef %24)
  tail call void @msleep(i32 noundef 10) #20
  %pdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %rx_to_clean = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 7
  %27 = ptrtoint ptr %rx_to_clean to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_to_clean, align 8
  %dma_addr = getelementptr inbounds %struct.rx, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev, i32 noundef %30, i32 noundef 1538, i32 noundef 0) #20
  %31 = ptrtoint ptr %rx_to_clean to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_to_clean, align 8
  %skb24 = getelementptr inbounds %struct.rx, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %skb24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb24, align 4
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data25, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 16
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(1500) %add.ptr, ptr noundef dereferenceable(1500) %38, i32 1500) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool28.not, i32 0, i32 -11
  br label %err_loopback_none

err_loopback_none:                                ; preds = %if.end19, %e100_start_receiver.exit.err_loopback_none_crit_edge, %if.end4.err_loopback_none_crit_edge
  %err.0 = phi i32 [ %call8, %if.end4.err_loopback_none_crit_edge ], [ -12, %e100_start_receiver.exit.err_loopback_none_crit_edge ], [ %spec.select, %if.end19 ]
  %netdev31 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %39 = ptrtoint ptr %netdev31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev31, align 4
  %mii32 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28
  %41 = ptrtoint ptr %mii32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mii32, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %40, i32 2304
  %mdio_ctrl.i62 = getelementptr i8, ptr %40, i32 2316
  %43 = ptrtoint ptr %mdio_ctrl.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdio_ctrl.i62, align 4
  %call1.i63 = tail call zeroext i16 %44(ptr noundef %add.ptr.i.i61, i32 noundef %42, i32 noundef 67108864, i32 noundef 0, i16 noundef zeroext 0) #20
  %45 = ptrtoint ptr %loopback to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %loopback, align 32
  tail call fastcc void @e100_clean_cbs(ptr noundef %nic)
  %csr.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 13
  %46 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %csr.i, align 8
  %port.i = getelementptr inbounds %struct.csr, ptr %47, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port.i, i32 33554432) #20, !srcloc !224
  %48 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr.i, align 8
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 4294960) #20
  %52 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %csr.i, align 8
  %port2.i = getelementptr inbounds %struct.csr, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port2.i, i32 0) #20, !srcloc !224
  %54 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %csr.i, align 8
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %55) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 4294960) #20
  %cmd_lock.i.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 12
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i.i) #20
  %58 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i.i = getelementptr inbounds %struct.anon.122, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i.i, i8 1) #20, !srcloc !220
  %60 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csr.i, align 8
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %61) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i.i, i32 noundef %call2.i.i) #20
  br label %err_clean_rx

err_clean_rx:                                     ; preds = %err_loopback_none, %if.end.err_clean_rx_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.err_clean_rx_crit_edge ], [ %err.0, %err_loopback_none ]
  %count1.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 26, i32 0, i32 2
  %63 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count1.i, align 4
  %ru_running.i64 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 9
  %65 = ptrtoint ptr %ru_running.i64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %ru_running.i64, align 4
  %rxs.i65 = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 5
  %66 = ptrtoint ptr %rxs.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rxs.i65, align 128
  %tobool.not.i66 = icmp eq ptr %67, null
  br i1 %tobool.not.i66, label %err_clean_rx.e100_rx_clean_list.exit_crit_edge, label %for.cond.preheader.i

err_clean_rx.e100_rx_clean_list.exit_crit_edge:   ; preds = %err_clean_rx
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_rx_clean_list.exit

for.cond.preheader.i:                             ; preds = %err_clean_rx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp21.not.i = icmp eq i32 %64, 0
  br i1 %cmp21.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pdev.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rx.022.i = phi ptr [ %67, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %skb.i67 = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 2
  %68 = ptrtoint ptr %skb.i67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %skb.i67, align 4
  %tobool3.not.i = icmp eq ptr %69, null
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %70 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %dma_addr.i68 = getelementptr inbounds %struct.rx, ptr %rx.022.i, i32 0, i32 3
  %72 = ptrtoint ptr %dma_addr.i68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_addr.i68, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %73, i32 noundef 1538, i32 noundef 0, i32 noundef 0) #20
  %74 = ptrtoint ptr %skb.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %skb.i67, align 4
  tail call void @consume_skb(ptr noundef %75) #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.rx, ptr %rx.022.i, i32 1
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %64
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %76 = ptrtoint ptr %rxs.i65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rxs.i65, align 128
  tail call void @kfree(ptr noundef %77) #20
  %78 = ptrtoint ptr %rxs.i65 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %rxs.i65, align 128
  br label %e100_rx_clean_list.exit

e100_rx_clean_list.exit:                          ; preds = %for.end.i, %err_clean_rx.e100_rx_clean_list.exit_crit_edge
  %rx_to_clean.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 7
  %79 = ptrtoint ptr %rx_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %rx_to_clean.i, align 8
  %rx_to_use.i = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 6
  %80 = ptrtoint ptr %rx_to_use.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rx_to_use.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %e100_rx_clean_list.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %e100_rx_clean_list.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_sset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr noundef %netdev, i32 noundef %addr, i32 noundef %reg, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdio_ctrl = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %mdio_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_ctrl, align 4
  %conv = trunc i32 %data to i16
  %call1 = tail call zeroext i16 %1(ptr noundef %add.ptr.i, i32 noundef %addr, i32 noundef 67108864, i32 noundef %reg, i16 noundef zeroext %conv) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_check_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @mdio_ctrl_phy_82552_v(ptr noundef %nic, i32 noundef %addr, i32 noundef %dir, i32 noundef %reg, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp ne i32 %reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %dir)
  %cmp1 = icmp ne i32 %dir, 67108864
  %or.cond.not = or i1 %cmp1, %cmp
  %0 = and i16 %data, 4608
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %or.cond29 = or i1 %or.cond.not, %tobool.not
  br i1 %or.cond29, label %entry.if.end19_crit_edge, label %if.then2

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end19

if.then2:                                         ; preds = %entry
  %netdev = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 1
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %mii = getelementptr inbounds %struct.nic, ptr %nic, i32 0, i32 28
  %3 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mii, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 2304
  %mdio_ctrl.i = getelementptr i8, ptr %2, i32 2316
  %5 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %6(ptr noundef %add.ptr.i.i, i32 noundef %4, i32 noundef 134217728, i32 noundef 4, i16 noundef zeroext 0) #20
  %7 = and i16 %call1.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp eq i16 %7, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  %or = or i16 %data, 8448
  br label %if.end19

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #22
  %and11 = shl i16 %call1.i, 6
  %8 = and i16 %and11, 8192
  %9 = or i16 %8, %data
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then7, %entry.if.end19_crit_edge
  %data.addr.1 = phi i16 [ %data, %entry.if.end19_crit_edge ], [ %or, %if.then7 ], [ %9, %if.else ]
  %call20 = tail call zeroext i16 @mdio_ctrl_hw(ptr noundef %nic, i32 noundef %addr, i32 noundef %dir, i32 noundef %reg, i16 noundef zeroext %data.addr.1)
  ret i16 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__e100_shutdown(ptr noundef %pdev, ptr nocapture noundef writeonly %enable_wake) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #20
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @e100_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr i8, ptr %1, i32 2944
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 128
  %and = and i32 %5, 8
  %pdev.i = getelementptr i8, ptr %1, i32 2312
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device.i, align 2
  %10 = and i16 %9, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4176, i16 %10)
  %11 = icmp eq i16 %10, 4176
  br i1 %11, label %land.lhs.true7.i, label %if.end.e100_asf.exit_crit_edge

if.end.e100_asf.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_asf.exit

land.lhs.true7.i:                                 ; preds = %if.end
  %arrayidx.i = getelementptr i8, ptr %1, i32 3204
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %14 = and i16 %13, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %14)
  %15 = icmp eq i16 %14, 128
  br i1 %15, label %land.rhs.i, label %land.lhs.true7.i.e100_asf.exit_crit_edge

land.lhs.true7.i.e100_asf.exit_crit_edge:         ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_asf.exit

land.rhs.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #22
  %arrayidx16.i = getelementptr i8, ptr %1, i32 3466
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx16.i, align 2
  %.mask.i = and i16 %17, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %.mask.i)
  %cmp19.i = icmp ne i16 %.mask.i, -512
  %phi.cast.i = zext i1 %cmp19.i to i32
  br label %e100_asf.exit

e100_asf.exit:                                    ; preds = %land.rhs.i, %land.lhs.true7.i.e100_asf.exit_crit_edge, %if.end.e100_asf.exit_crit_edge
  %18 = phi i32 [ 0, %land.lhs.true7.i.e100_asf.exit_crit_edge ], [ 0, %if.end.e100_asf.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %or = or i32 %18, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %e100_asf.exit.if.end13_crit_edge, label %if.then4

e100_asf.exit.if.end13_crit_edge:                 ; preds = %e100_asf.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then4:                                         ; preds = %e100_asf.exit
  %phy = getelementptr i8, ptr %1, i32 2952
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %20)
  %cmp = icmp eq i32 %20, -798949299
  br i1 %cmp, label %if.then5, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end13

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #22
  %mii = getelementptr i8, ptr %1, i32 3028
  %21 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii, align 4
  %mdio_ctrl.i = getelementptr i8, ptr %1, i32 2316
  %23 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %24(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef 134217728, i32 noundef 20, i16 noundef zeroext 0) #20
  %25 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mii, align 4
  %27 = or i16 %call1.i, 1536
  %28 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i28 = tail call zeroext i16 %29(ptr noundef %add.ptr.i, i32 noundef %26, i32 noundef 67108864, i32 noundef 20, i16 noundef zeroext %27) #20
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.then4.if.end13_crit_edge, %e100_asf.exit.if.end13_crit_edge
  %storemerge = phi i8 [ 1, %if.then5 ], [ 1, %if.then4.if.end13_crit_edge ], [ 0, %e100_asf.exit.if.end13_crit_edge ]
  %30 = ptrtoint ptr %enable_wake to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %storemerge, ptr %enable_wake, align 1
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_prepare_to_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_io_error_detected(ptr noundef %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @e100_down(ptr noundef %add.ptr.i)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end4 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_io_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #20
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %csr.i = getelementptr i8, ptr %1, i32 2648
  %4 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr.i, align 8
  %port.i = getelementptr inbounds %struct.csr, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port.i, i32 33554432) #20, !srcloc !224
  %6 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csr.i, align 8
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #20
  %10 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %csr.i, align 8
  %port2.i = getelementptr inbounds %struct.csr, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !223
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port2.i, i32 0) #20, !srcloc !224
  %12 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csr.i, align 8
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #20
  %cmd_lock.i.i = getelementptr i8, ptr %1, i32 2604
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_lock.i.i) #20
  %16 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csr.i, align 8
  %cmd_hi.i.i = getelementptr inbounds %struct.anon.122, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !219
  tail call void @arm_heavy_mb() #20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cmd_hi.i.i, i8 1) #20, !srcloc !220
  %18 = ptrtoint ptr %csr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr.i, align 8
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #20, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #20, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_lock.i.i, i32 noundef %call2.i.i) #20
  %call6 = tail call fastcc i32 @e100_phy_init(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 4, %do.end ], [ 5, %if.end5 ], [ 5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e100_io_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 0, i1 noundef zeroext false) #20
  tail call void @netif_device_attach(ptr noundef %1) #20
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef %1) #20
  %call1.i = tail call fastcc i32 @e100_up(ptr noundef %add.ptr.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.e100_open.exit_crit_edge, label %do.body.i

if.then.e100_open.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_open.exit

do.body.i:                                        ; preds = %if.then
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 128
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.e100_open.exit_crit_edge, label %if.then3.i

do.body.i.e100_open.exit_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %e100_open.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %netdev4.i = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %netdev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev4.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.23) #23
  br label %e100_open.exit

e100_open.exit:                                   ; preds = %if.then3.i, %do.body.i.e100_open.exit_crit_edge, %if.then.e100_open.exit_crit_edge
  %watchdog = getelementptr i8, ptr %1, i32 2980
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call5 = tail call i32 @mod_timer(ptr noundef %watchdog, i32 noundef %8) #20
  br label %if.end

if.end:                                           ; preds = %e100_open.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  %wake = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wake) #20
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  call fastcc void @__e100_shutdown(ptr noundef %add.ptr, ptr noundef nonnull %wake)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wake) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e100_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %call2 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.70) #23
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %add.ptr) #20
  %phy = getelementptr i8, ptr %1, i32 2952
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -798949299, i32 %3)
  %cmp = icmp eq i32 %3, -798949299
  br i1 %cmp, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %mii = getelementptr i8, ptr %1, i32 3028
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %mdio_ctrl.i = getelementptr i8, ptr %1, i32 2316
  %6 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i = tail call zeroext i16 %7(ptr noundef %add.ptr.i, i32 noundef %5, i32 noundef 134217728, i32 noundef 20, i16 noundef zeroext 0) #20
  %8 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mii, align 4
  %10 = and i16 %call1.i, -513
  %11 = ptrtoint ptr %mdio_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdio_ctrl.i, align 4
  %call1.i32 = tail call zeroext i16 %12(ptr noundef %add.ptr.i, i32 noundef %9, i32 noundef 67108864, i32 noundef 20, i16 noundef zeroext %10) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  %call14 = tail call fastcc i32 @e100_up(ptr noundef %add.ptr.i)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !189, !191, !193, !195, !196, !197, !198, !199, !201, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__UNIQUE_ID_description343, !1, !"__UNIQUE_ID_description343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e100.c", i32 163, i32 1}
!2 = !{ptr @__UNIQUE_ID_author344, !3, !"__UNIQUE_ID_author344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e100.c", i32 164, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/e100.c", i32 165, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware347, !8, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/e100.c", i32 166, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware348, !10, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/e100.c", i32 167, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware349, !12, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/e100.c", i32 168, i32 1}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/e100.c", i32 173, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype350, !14, !"__UNIQUE_ID_debugtype350", i1 false, i1 false}
!16 = !{ptr @__param_eeprom_bad_csum_allow, !17, !"__param_eeprom_bad_csum_allow", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/e100.c", i32 174, i32 1}
!18 = !{ptr @__UNIQUE_ID_eeprom_bad_csum_allowtype351, !17, !"__UNIQUE_ID_eeprom_bad_csum_allowtype351", i1 false, i1 false}
!19 = !{ptr @__param_use_io, !20, !"__param_use_io", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/e100.c", i32 175, i32 1}
!21 = !{ptr @__UNIQUE_ID_use_iotype352, !20, !"__UNIQUE_ID_use_iotype352", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_debug353, !23, !"__UNIQUE_ID_debug353", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/e100.c", i32 176, i32 1}
!24 = !{ptr @__UNIQUE_ID_eeprom_bad_csum_allow354, !25, !"__UNIQUE_ID_eeprom_bad_csum_allow354", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/e100.c", i32 177, i32 1}
!26 = !{ptr @__UNIQUE_ID_use_io355, !27, !"__UNIQUE_ID_use_io355", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/e100.c", i32 178, i32 1}
!28 = !{ptr @__initcall__kmod_e100__366_3199_e100_init_module6, !29, !"__initcall__kmod_e100__366_3199_e100_init_module6", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3199, i32 1}
!30 = !{ptr @__exitcall_e100_cleanup_module, !31, !"__exitcall_e100_cleanup_module", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3200, i32 1}
!32 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/e100.c", i32 170, i32 12}
!35 = !{ptr @__param_str_eeprom_bad_csum_allow, !17, !"__param_str_eeprom_bad_csum_allow", i1 false, i1 false}
!36 = !{ptr @eeprom_bad_csum_allow, !37, !"eeprom_bad_csum_allow", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e100.c", i32 171, i32 12}
!38 = !{ptr @__param_str_use_io, !20, !"__param_str_use_io", i1 false, i1 false}
!39 = !{ptr @use_io, !40, !"use_io", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/e100.c", i32 172, i32 12}
!41 = !{ptr @.str, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3173, i32 18}
!43 = !{ptr @e100_driver, !44, !"e100_driver", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3172, i32 26}
!45 = !{ptr @e100_id_table, !46, !"e100_id_table", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/e100.c", i32 183, i32 35}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2859, i32 3}
!49 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2864, i32 3}
!51 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2870, i32 3}
!53 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2875, i32 3}
!55 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2882, i32 3}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2886, i32 3}
!59 = !{ptr @e100_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2903, i32 2}
!61 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @e100_probe.__key.8, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2904, i32 2}
!64 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @e100_probe.__key.10, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2905, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @e100_probe.__key.12, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2914, i32 2}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @e100_probe.__key.14, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2916, i32 2}
!73 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2919, i32 3}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2931, i32 4}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2935, i32 4}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2949, i32 23}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2951, i32 3}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2960, i32 3}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2964, i32 2}
!88 = !{ptr @e100_netdev_ops, !89, !"e100_netdev_ops", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2817, i32 36}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2793, i32 3}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1533, i32 2}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/e100.c", i32 668, i32 3}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/e100.c", i32 674, i32 3}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1349, i32 3}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1370, i32 3}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1245, i32 13}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1247, i32 13}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1249, i32 13}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1265, i32 4}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1270, i32 4}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1280, i32 3}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1294, i32 3}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1150, i32 2}
!122 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1152, i32 2}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1154, i32 2}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1011, i32 4}
!129 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2201, i32 2}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1784, i32 4}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1794, i32 3}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1800, i32 3}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1582, i32 2}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1822, i32 3}
!143 = !{ptr @e100_ethtool_ops, !144, !"e100_ethtool_ops", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2738, i32 33}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2592, i32 2}
!147 = !{ptr @e100_gstrings_test, !148, !"e100_gstrings_test", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2600, i32 19}
!149 = !{ptr @e100_gstrings_stats, !150, !"e100_gstrings_stats", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2677, i32 19}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1970, i32 2}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/intel/e100.c", i32 936, i32 27}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/intel/e100.c", i32 948, i32 2}
!157 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1691, i32 2}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1700, i32 28}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1702, i32 36}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1702, i32 45}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1704, i32 28}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1659, i32 3}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/intel/e100.c", i32 2336, i32 2}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/e100.c", i32 777, i32 3}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1458, i32 4}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1463, i32 3}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1470, i32 2}
!179 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/intel/e100.c", i32 1410, i32 3}
!181 = !{ptr @e100_err_handler, !182, !"e100_err_handler", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3164, i32 40}
!183 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3128, i32 3}
!185 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @e100_io_slot_reset._entry, !184, !"_entry", i1 false, i1 false}
!188 = !{ptr @e100_io_slot_reset._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @e100_pm_ops, !190, !"e100_pm_ops", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3170, i32 8}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3061, i32 22}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3188, i32 3}
!195 = !{ptr @.str.72, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @e100_init_module._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @e100_init_module._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @e100_init_module._entry.74, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/intel/e100.c", i32 3189, i32 3}
!201 = !{ptr @e100_init_module._entry_ptr.75, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{i8 0, i8 2}
!214 = !{!"branch_weights", i32 2000, i32 1}
!215 = !{i64 2156731899}
!216 = !{!"branch_weights", i32 1, i32 2000}
!217 = !{i64 4263654}
!218 = !{i64 2151802999}
!219 = !{i64 2151804604}
!220 = !{i64 4263259}
!221 = !{i64 4263874}
!222 = !{i64 2151804223}
!223 = !{i64 2151805578}
!224 = !{i64 4263456}
!225 = !{i64 2156696389}
!226 = distinct !{!226, !227}
!227 = !{!"llvm.loop.peeled.count", i32 1}
!228 = !{i64 2156695062}
!229 = !{i64 2156694904}
!230 = !{i64 2156724553}
!231 = !{i64 4263036}
!232 = !{i64 2151803611}
