; ModuleID = '/llk/IR_all_yes/drivers/net/can/grcan.c_pt.bc'
source_filename = "../drivers/net/can/grcan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.grcan_device_config = type { i16, i16, i16, i32, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.grcan_registers = type { i32, i32, i32, [3 x i32], i32, i32, [56 x i32], i32, i32, i32, i32, i32, i32, [58 x i32], i32, i32, i32, i32, i32, i32, [58 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.grcan_dma_buffer = type { i32, ptr, i32 }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__param_str_enable0 = internal constant [14 x i8] c"grcan.enable0\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@grcan_module_config = internal global { %struct.grcan_device_config, [16 x i8] } { %struct.grcan_device_config { i16 0, i16 0, i16 0, i32 1024, i32 1024 }, [16 x i8] zeroinitializer }, align 32
@__param_enable0 = internal constant %struct.kernel_param { ptr @__param_str_enable0, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @grcan_module_config } }, section "__param", align 4
@__UNIQUE_ID_enable0type474 = internal constant [30 x i8] c"grcan.parmtype=enable0:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_enable0475 = internal constant [145 x i8] c"grcan.parm=enable0:Configuration of physical interface 0. Determines\0Athe \22Enable 0\22 bit of the configuration register.\0AFormat: 0 | 1\0ADefault: 0\0A\00", section ".modinfo", align 1
@__param_str_enable1 = internal constant [14 x i8] c"grcan.enable1\00", align 1
@__param_enable1 = internal constant %struct.kernel_param { ptr @__param_str_enable1, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.124 { ptr getelementptr (i8, ptr @grcan_module_config, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_enable1type476 = internal constant [30 x i8] c"grcan.parmtype=enable1:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_enable1477 = internal constant [145 x i8] c"grcan.parm=enable1:Configuration of physical interface 1. Determines\0Athe \22Enable 1\22 bit of the configuration register.\0AFormat: 0 | 1\0ADefault: 0\0A\00", section ".modinfo", align 1
@__param_str_select = internal constant [13 x i8] c"grcan.select\00", align 1
@__param_select = internal constant %struct.kernel_param { ptr @__param_str_select, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.124 { ptr getelementptr (i8, ptr @grcan_module_config, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_selecttype478 = internal constant [29 x i8] c"grcan.parmtype=select:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_select479 = internal constant [84 x i8] c"grcan.parm=select:Select which physical interface to use.\0AFormat: 0 | 1\0ADefault: 0\0A\00", section ".modinfo", align 1
@__param_str_txsize = internal constant [13 x i8] c"grcan.txsize\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_txsize = internal constant %struct.kernel_param { ptr @__param_str_txsize, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr getelementptr (i8, ptr @grcan_module_config, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_txsizetype480 = internal constant [27 x i8] c"grcan.parmtype=txsize:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_txsize481 = internal constant [120 x i8] c"grcan.parm=txsize:Sets the size of the tx buffer.\0AFormat: <unsigned int> where (txsize & ~0x1fffc0) == 0\0ADefault: 1024\0A\00", section ".modinfo", align 1
@__param_str_rxsize = internal constant [13 x i8] c"grcan.rxsize\00", align 1
@__param_rxsize = internal constant %struct.kernel_param { ptr @__param_str_rxsize, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr getelementptr (i8, ptr @grcan_module_config, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_rxsizetype482 = internal constant [27 x i8] c"grcan.parmtype=rxsize:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rxsize483 = internal constant [118 x i8] c"grcan.parm=rxsize:Sets the size of the rx buffer.\0AFormat: <unsigned int> where (size & ~0x1fffc0) == 0\0ADefault: 1024\0A\00", section ".modinfo", align 1
@__initcall__kmod_grcan__485_1724_grcan_driver_init6 = internal global ptr @grcan_driver_init, section ".initcall6.init", align 4
@grcan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @grcan_probe, ptr @grcan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @grcan_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_grcan_driver_exit = internal global ptr @grcan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author486 = internal constant [34 x i8] c"grcan.author=Aeroflex Gaisler AB.\00", section ".modinfo", align 1
@__UNIQUE_ID_description487 = internal constant [63 x i8] c"grcan.description=Socket CAN driver for Aeroflex Gaisler GRCAN\00", section ".modinfo", align 1
@__UNIQUE_ID_file488 = internal constant [33 x i8] c"grcan.file=drivers/net/can/grcan\00", section ".modinfo", align 1
@__UNIQUE_ID_license489 = internal constant [18 x i8] c"grcan.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"grcan\00", [26 x i8] zeroinitializer }, align 32
@grcan_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] c"GAISLER_GRCAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"01_03d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"GAISLER_GRHCAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"01_034\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"systemid\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@grcan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to fetch \22freq\22 property\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"grcan_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/can/grcan.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@grcan_probe._entry_ptr = internal global ptr @grcan_probe._entry, section ".printk_index", align 4
@grcan_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no irq found\0A\00", [18 x i8] zeroinitializer }, align 32
@grcan_probe._entry_ptr.10 = internal global ptr @grcan_probe._entry.8, section ".printk_index", align 4
@grcan_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1687, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s socket CAN driver initialization failed with error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@grcan_probe._entry_ptr.13 = internal global ptr @grcan_probe._entry.11, section ".printk_index", align 4
@grcan_sanitize_enable0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 1511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Invalid module parameter value for enable0 - setting default\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"grcan_sanitize_enable0\00", [41 x i8] zeroinitializer }, align 32
@grcan_sanitize_enable0._entry_ptr = internal global ptr @grcan_sanitize_enable0._entry, section ".printk_index", align 4
@grcan_sanitize_enable1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 1516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Invalid module parameter value for enable1 - setting default\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"grcan_sanitize_enable1\00", [41 x i8] zeroinitializer }, align 32
@grcan_sanitize_enable1._entry_ptr = internal global ptr @grcan_sanitize_enable1._entry, section ".printk_index", align 4
@grcan_sanitize_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 1520, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid module parameter value for select - setting default\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"grcan_sanitize_select\00", [42 x i8] zeroinitializer }, align 32
@grcan_sanitize_select._entry_ptr = internal global ptr @grcan_sanitize_select._entry, section ".printk_index", align 4
@grcan_sanitize_txsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid module parameter value for txsize - setting default\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"grcan_sanitize_txsize\00", [42 x i8] zeroinitializer }, align 32
@grcan_sanitize_txsize._entry_ptr = internal global ptr @grcan_sanitize_txsize._entry, section ".printk_index", align 4
@grcan_sanitize_rxsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 1532, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid module parameter value for rxsize - setting default\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"grcan_sanitize_rxsize\00", [42 x i8] zeroinitializer }, align 32
@grcan_sanitize_rxsize._entry_ptr = internal global ptr @grcan_sanitize_rxsize._entry, section ".printk_index", align 4
@grcan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @grcan_open, ptr @grcan_close, ptr @grcan_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sysfs_grcan_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @sysfs_grcan_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@grcan_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"grcan\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 16, i32 2, i32 8, i32 4, i32 1, i32 256, i32 1 }, [48 x i8] zeroinitializer }, align 32
@grcan_setup_netdev.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 1, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"grcan_setup_netdev\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hardware supports triple-sampling\0A\00", [61 x i8] zeroinitializer }, align 32
@grcan_setup_netdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@grcan_setup_netdev.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&priv->rr_timer)\00", [46 x i8] zeroinitializer }, align 32
@grcan_setup_netdev.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&priv->hang_timer)\00", [44 x i8] zeroinitializer }, align 32
@grcan_setup_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.5, i32 1620, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"regs=0x%p, irq=%d, clock=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@grcan_setup_netdev._entry_ptr = internal global ptr @grcan_setup_netdev._entry, section ".printk_index", align 4
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not allocate DMA buffers\0A\00", [32 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grcan_err\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tx message lost\0A\00", [47 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 0, i8 -99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-off\0A\00", [23 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.37, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error passive condition\0A\00", [39 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.38, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error warning condition\0A\00", [39 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.39, i8 0, i8 -90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error active condition\0A\00", [40 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.40, i8 0, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"restarted\0A\00", [21 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.41, i8 0, i8 -81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"got data overrun interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"on tx \00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"on rx \00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Fatal AHB bus error %s- halting device\0A\00", [56 x i8] zeroinitializer }, align 32
@grcan_err.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.46, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not allocate error frame\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TXCTRL enabled at TXLOSS in one shot mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"No buffer space, but queue is non-stopped.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tx channel spuriously disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"one-shot mode spuriously disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sysfs_grcan_attrs = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_enable0, ptr @dev_attr_enable1, ptr @dev_attr_select, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_enable0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @grcan_show_enable0, ptr @grcan_store_enable0 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enable1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @grcan_show_enable1, ptr @grcan_store_enable1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_select = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @grcan_show_select, ptr @grcan_store_select }, [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable0\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable1\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"select\00", [25 x i8] zeroinitializer }, align 32
@grcan_set_bittiming.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 0, i8 105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"grcan_set_bittiming\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Request for BPR=%d, RSJ=%d, PS1=%d, PS2=%d, SCALER=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PS1 > PS2 must hold: PS1=%d, PS2=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PS2 >= RSJ must hold: PS2=%d, RSJ=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting timing=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Restarting device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Device reset and restored\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device seems hanged - reset scheduled\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dropping frame: skb allocation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"grcan_module_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 387, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"grcan_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1715, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1717, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"grcan_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1705, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1650, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1655, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1657, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1669, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1685, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1525, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1529, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"grcan_netdev_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1561, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"sysfs_grcan_group\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1554, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"grcan_bittiming_const\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 390, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1606, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1609, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1612, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1613, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1619, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1049, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 595, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 629, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 643, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 654, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 665, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 683, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 703, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 716, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 720, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 723, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 726, i32 19 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 748, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 544, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1382, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1411, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1414, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 104, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"sysfs_grcan_attrs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1546, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"dev_attr_enable0\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"dev_attr_enable1\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [16 x i8] c"dev_attr_select\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1508, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1513, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1518, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 421, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 424, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 429, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 439, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1027, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 867, i32 18 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 901, i32 18 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [27 x i8] c"../drivers/net/can/grcan.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1176, i32 8 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author486, ptr @__UNIQUE_ID_description487, ptr @__UNIQUE_ID_enable0475, ptr @__UNIQUE_ID_enable0type474, ptr @__UNIQUE_ID_enable1477, ptr @__UNIQUE_ID_enable1type476, ptr @__UNIQUE_ID_file488, ptr @__UNIQUE_ID_license489, ptr @__UNIQUE_ID_rxsize483, ptr @__UNIQUE_ID_rxsizetype482, ptr @__UNIQUE_ID_select479, ptr @__UNIQUE_ID_selecttype478, ptr @__UNIQUE_ID_txsize481, ptr @__UNIQUE_ID_txsizetype480, ptr @__exitcall_grcan_driver_exit, ptr @__initcall__kmod_grcan__485_1724_grcan_driver_init6, ptr @__param_enable0, ptr @__param_enable1, ptr @__param_rxsize, ptr @__param_select, ptr @__param_txsize, ptr @grcan_driver_exit, ptr @grcan_probe._entry, ptr @grcan_probe._entry.11, ptr @grcan_probe._entry.8, ptr @grcan_probe._entry_ptr, ptr @grcan_probe._entry_ptr.10, ptr @grcan_probe._entry_ptr.13, ptr @grcan_sanitize_enable0._entry, ptr @grcan_sanitize_enable0._entry_ptr, ptr @grcan_sanitize_enable1._entry, ptr @grcan_sanitize_enable1._entry_ptr, ptr @grcan_sanitize_rxsize._entry, ptr @grcan_sanitize_rxsize._entry_ptr, ptr @grcan_sanitize_select._entry, ptr @grcan_sanitize_select._entry_ptr, ptr @grcan_sanitize_txsize._entry, ptr @grcan_sanitize_txsize._entry_ptr, ptr @grcan_setup_netdev._entry, ptr @grcan_setup_netdev._entry_ptr, ptr @grcan_module_config, ptr @grcan_driver, ptr @.str, ptr @grcan_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @grcan_netdev_ops, ptr @sysfs_grcan_group, ptr @grcan_bittiming_const, ptr @.str.24, ptr @.str.25, ptr @grcan_setup_netdev.__key, ptr @.str.26, ptr @grcan_setup_netdev.__key.27, ptr @.str.28, ptr @grcan_setup_netdev.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @sysfs_grcan_attrs, ptr @dev_attr_enable0, ptr @dev_attr_enable1, ptr @dev_attr_select, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_module_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_sanitize_enable0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_sanitize_enable1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_sanitize_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_sanitize_txsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_sanitize_rxsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_grcan_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_setup_netdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_setup_netdev.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_setup_netdev.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grcan_setup_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_grcan_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_select to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @grcan_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @grcan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @grcan_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %sysid = alloca i32, align 4
  %ambafreq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysid) #10
  %2 = ptrtoint ptr %sysid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sysid, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ambafreq) #10
  %3 = ptrtoint ptr %ambafreq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ambafreq, align 4, !annotation !189
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %sysid, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %sysid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysid, align 4
  %and = and i32 %5, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 16640, i32 %and)
  %cmp = icmp ult i32 %and, 16640
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %txbug.0.off0 = phi i1 [ true, %entry.if.end_crit_edge ], [ %cmp, %land.lhs.true ]
  %call.i.i50 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %ambafreq, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i50)
  %tobool2.not = icmp sgt i32 %call.i.i50, -1
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %do.end26

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @devm_platform_ioremap_resource(ptr noundef %ofdev, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call6 to i32
  br label %do.end26

if.end10:                                         ; preds = %if.end5
  %call11 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %do.end26

if.end18:                                         ; preds = %if.end10
  %7 = load i16, ptr @grcan_module_config, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.i.i = icmp ugt i16 %7, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end18.grcan_sanitize_enable0.exit.i_crit_edge

if.end18.grcan_sanitize_enable0.exit.i_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_sanitize_enable0.exit.i

do.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  store i16 0, ptr @grcan_module_config, align 4
  br label %grcan_sanitize_enable0.exit.i

grcan_sanitize_enable0.exit.i:                    ; preds = %do.end.i.i, %if.end18.grcan_sanitize_enable0.exit.i_crit_edge
  %8 = load i16, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.i5.i = icmp ugt i16 %8, 1
  br i1 %cmp.i5.i, label %do.end.i7.i, label %grcan_sanitize_enable0.exit.i.grcan_sanitize_enable1.exit.i_crit_edge

grcan_sanitize_enable0.exit.i.grcan_sanitize_enable1.exit.i_crit_edge: ; preds = %grcan_sanitize_enable0.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_sanitize_enable1.exit.i

do.end.i7.i:                                      ; preds = %grcan_sanitize_enable0.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  store i16 0, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 1), align 2
  br label %grcan_sanitize_enable1.exit.i

grcan_sanitize_enable1.exit.i:                    ; preds = %do.end.i7.i, %grcan_sanitize_enable0.exit.i.grcan_sanitize_enable1.exit.i_crit_edge
  %9 = load i16, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.i8.i = icmp ugt i16 %9, 1
  br i1 %cmp.i8.i, label %do.end.i10.i, label %grcan_sanitize_enable1.exit.i.grcan_sanitize_select.exit.i_crit_edge

grcan_sanitize_enable1.exit.i.grcan_sanitize_select.exit.i_crit_edge: ; preds = %grcan_sanitize_enable1.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_sanitize_select.exit.i

do.end.i10.i:                                     ; preds = %grcan_sanitize_enable1.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  store i16 0, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 2), align 4
  br label %grcan_sanitize_select.exit.i

grcan_sanitize_select.exit.i:                     ; preds = %do.end.i10.i, %grcan_sanitize_enable1.exit.i.grcan_sanitize_select.exit.i_crit_edge
  %10 = load i32, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i11.i = icmp ne i32 %10, 0
  %and.i.i = and i32 %10, -2097089
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = and i1 %cmp.i11.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %grcan_sanitize_select.exit.i.grcan_sanitize_txsize.exit.i_crit_edge, label %do.end.i13.i

grcan_sanitize_select.exit.i.grcan_sanitize_txsize.exit.i_crit_edge: ; preds = %grcan_sanitize_select.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_sanitize_txsize.exit.i

do.end.i13.i:                                     ; preds = %grcan_sanitize_select.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  store i32 1024, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 3), align 4
  br label %grcan_sanitize_txsize.exit.i

grcan_sanitize_txsize.exit.i:                     ; preds = %do.end.i13.i, %grcan_sanitize_select.exit.i.grcan_sanitize_txsize.exit.i_crit_edge
  %11 = load i32, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i14.i = icmp ne i32 %11, 0
  %and.i15.i = and i32 %11, -2097089
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not.i16.i = icmp eq i32 %and.i15.i, 0
  %or.cond.i17.i = and i1 %cmp.i14.i, %tobool.not.i16.i
  br i1 %or.cond.i17.i, label %grcan_sanitize_txsize.exit.i.grcan_sanitize_module_config.exit_crit_edge, label %do.end.i19.i

grcan_sanitize_txsize.exit.i.grcan_sanitize_module_config.exit_crit_edge: ; preds = %grcan_sanitize_txsize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_sanitize_module_config.exit

do.end.i19.i:                                     ; preds = %grcan_sanitize_txsize.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  store i32 1024, ptr getelementptr inbounds (%struct.grcan_device_config, ptr @grcan_module_config, i32 0, i32 4), align 4
  br label %grcan_sanitize_module_config.exit

grcan_sanitize_module_config.exit:                ; preds = %do.end.i19.i, %grcan_sanitize_txsize.exit.i.grcan_sanitize_module_config.exit_crit_edge
  %12 = ptrtoint ptr %ambafreq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ambafreq, align 4
  %call20 = call fastcc i32 @grcan_setup_netdev(ptr noundef %ofdev, ptr noundef %call6, i32 noundef %call11, i32 noundef %13, i1 noundef zeroext %txbug.0.off0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %grcan_sanitize_module_config.exit.cleanup_crit_edge, label %exit_dispose_irq

grcan_sanitize_module_config.exit.cleanup_crit_edge: ; preds = %grcan_sanitize_module_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

exit_dispose_irq:                                 ; preds = %grcan_sanitize_module_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @irq_dispose_mapping(i32 noundef %call11) #10
  br label %do.end26

do.end26:                                         ; preds = %exit_dispose_irq, %do.end16, %if.then8, %do.end
  %err.0 = phi i32 [ %call.i.i50, %do.end ], [ %6, %if.then8 ], [ %call20, %exit_dispose_irq ], [ -19, %do.end16 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef %err.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %grcan_sanitize_module_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end26 ], [ 0, %grcan_sanitize_module_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ambafreq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysid) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_remove(ptr nocapture noundef readonly %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_candev(ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %3) #10
  %napi = getelementptr i8, ptr %1, i32 2624
  tail call void @__netif_napi_del(ptr noundef %napi) #10
  tail call void @synchronize_net() #10
  tail call void @free_candev(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grcan_setup_netdev(ptr noundef %ofdev, ptr noundef %base, i32 noundef %irq, i32 noundef %ambafreq, i1 noundef zeroext %txbug) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_candev_mqs(i32 noundef 760, i32 noundef 0, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool = zext i1 %txbug to i8
  %irq1 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %irq, ptr %irq1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %or = or i32 %2, 262144
  store i32 %or, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @grcan_netdev_ops, ptr %netdev_ops, align 8
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 134
  %4 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sysfs_grcan_group, ptr %sysfs_groups, align 16
  %config = getelementptr i8, ptr %call, i32 2852
  %5 = call ptr @memcpy(ptr %config, ptr @grcan_module_config, i32 16)
  %dev3 = getelementptr i8, ptr %call, i32 2616
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dev3, align 8
  %regs4 = getelementptr i8, ptr %call, i32 2848
  %7 = ptrtoint ptr %regs4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base, ptr %regs4, align 8
  %bittiming_const = getelementptr i8, ptr %call, i32 2332
  %8 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @grcan_bittiming_const, ptr %bittiming_const, align 4
  %do_set_bittiming = getelementptr i8, ptr %call, i32 2588
  %9 = ptrtoint ptr %do_set_bittiming to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @grcan_set_bittiming, ptr %do_set_bittiming, align 4
  %do_set_mode = getelementptr i8, ptr %call, i32 2596
  %10 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @grcan_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call, i32 2608
  %11 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @grcan_get_berr_counter, ptr %do_get_berr_counter, align 8
  %clock = getelementptr i8, ptr %call, i32 2440
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ambafreq, ptr %clock, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call, i32 2480
  %13 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %ctrlmode_supported, align 8
  %need_txbug_workaround = getelementptr i8, ptr %call, i32 2956
  %14 = ptrtoint ptr %need_txbug_workaround to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %need_txbug_workaround, align 4
  %ctrl = getelementptr inbounds %struct.grcan_registers, ptr %base, i32 0, i32 2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i = or i32 %15, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl, i32 %or.i) #10, !srcloc !193
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i100 = or i32 %16, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base, i32 %or.i100) #10, !srcloc !193
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.end.do.body30_crit_edge, label %if.then16

if.end.do.body30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctrlmode_supported, align 8
  %or19 = or i32 %19, 4
  store i32 %or19, ptr %ctrlmode_supported, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_setup_netdev.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_setup_netdev, %do.body30)) #10
          to label %if.then26 [label %do.body30], !srcloc !194

if.then26:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %dev27 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @grcan_setup_netdev.__UNIQUE_ID_ddebug484, ptr noundef %dev27, ptr noundef nonnull @.str.25) #10
  br label %do.body30

do.body30:                                        ; preds = %if.then26, %if.then16, %if.end.do.body30_crit_edge
  %lock = getelementptr i8, ptr %call, i32 2912
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @grcan_setup_netdev.__key, i16 noundef signext 3) #10
  %20 = ptrtoint ptr %need_txbug_workaround to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %need_txbug_workaround, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool35.not = icmp eq i8 %21, 0
  br i1 %tobool35.not, label %do.body30.if.end43_crit_edge, label %do.body37

do.body30.if.end43_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body37:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %rr_timer = getelementptr i8, ptr %call, i32 3008
  tail call void @init_timer_key(ptr noundef %rr_timer, ptr noundef nonnull @grcan_running_reset, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @grcan_setup_netdev.__key.27) #10
  %hang_timer = getelementptr i8, ptr %call, i32 2960
  tail call void @init_timer_key(ptr noundef %hang_timer, ptr noundef nonnull @grcan_initiate_running_reset, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @grcan_setup_netdev.__key.29) #10
  br label %if.end43

if.end43:                                         ; preds = %do.body37, %do.body30.if.end43_crit_edge
  %napi = getelementptr i8, ptr %call, i32 2624
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @grcan_poll, i32 noundef 32) #10
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev44, ptr %parent, align 8
  %23 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs4, align 8
  %25 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq1, align 4
  %27 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev44, ptr noundef nonnull @.str.31, ptr noundef %24, i32 noundef %26, i32 noundef %28) #13
  %call55 = tail call i32 @register_candev(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %exit_free_candev

if.end58:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl, i32 2) #10, !srcloc !193
  br label %cleanup

exit_free_candev:                                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_candev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %exit_free_candev, %if.end58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %exit_free_candev ], [ 0, %if.end58 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_set_bittiming(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %ctrl = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sjw = getelementptr i8, ptr %dev, i32 2364
  %3 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sjw, align 4
  %prop_seg = getelementptr i8, ptr %dev, i32 2352
  %5 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prop_seg, align 4
  %phase_seg1 = getelementptr i8, ptr %dev, i32 2356
  %7 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phase_seg1, align 4
  %add = add i32 %6, -1
  %sub = add i32 %add, %8
  %phase_seg2 = getelementptr i8, ptr %dev, i32 2360
  %9 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phase_seg2, align 4
  %brp = getelementptr i8, ptr %dev, i32 2368
  %11 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brp, align 4
  %sub3 = add i32 %12, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_set_bittiming.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_set_bittiming, %do.end13)) #10
          to label %if.then10 [label %do.end13], !srcloc !194

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_set_bittiming.__UNIQUE_ID_ddebug459, ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef %4, i32 noundef %sub, i32 noundef %10, i32 noundef %sub3) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp = icmp sgt i32 %sub, %10
  br i1 %cmp, label %if.end15, label %if.then14

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %sub, i32 noundef %10) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %4)
  %cmp16.not = icmp slt i32 %10, %4
  br i1 %cmp16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %10, i32 noundef %4) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %shl19 = shl i32 %4, 12
  %and20 = and i32 %shl19, 28672
  %shl22 = shl i32 %sub, 20
  %and23 = and i32 %shl22, 15728640
  %or24 = or i32 %and23, %and20
  %shl25 = shl i32 %10, 16
  %and26 = and i32 %shl25, 983040
  %or27 = or i32 %or24, %and26
  %shl28 = shl i32 %sub3, 24
  %or30 = or i32 %or27, %shl28
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %or30) #13
  tail call fastcc void @grcan_write_bits(ptr noundef %1, i32 noundef %or30, i32 noundef -36096)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %if.then17 ], [ -22, %if.then14 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_set_mode(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %closing = getelementptr i8, ptr %dev, i32 3057
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %closing, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body1.if.end14_crit_edge

do.body1.if.end14_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

lor.lhs.false:                                    ; preds = %do.body1
  %resetting = getelementptr i8, ptr %dev, i32 3056
  %2 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resetting, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.else, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.61) #13
  tail call fastcc void @grcan_start(ptr noundef %dev)
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %4 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else.if.end14_crit_edge, %lor.lhs.false.if.end14_crit_edge, %do.body1.if.end14_crit_edge
  %err.0 = phi i32 [ 0, %if.else.if.end14_crit_edge ], [ 0, %if.then13 ], [ -16, %lor.lhs.false.if.end14_crit_edge ], [ -16, %do.body1.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end14 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %stat = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and = lshr i32 %2, 16
  %3 = trunc i32 %and to i16
  %conv = and i16 %3, 255
  %4 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %bec, align 2
  %5 = trunc i32 %2 to i16
  %6 = lshr i16 %5, 8
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %7 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grcan_running_reset(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -392
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %regs2 = getelementptr i8, ptr %t, i32 -160
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 8
  %lock = getelementptr i8, ptr %t, i32 -96
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %resetting = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %resetting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %resetting, align 8
  %hang_timer = getelementptr i8, ptr %t, i32 -48
  %call8 = tail call i32 @del_timer(ptr noundef %hang_timer) #10
  %call9 = tail call i32 @del_timer(ptr noundef %t) #10
  %closing = getelementptr i8, ptr %t, i32 49
  %5 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %closing, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then:                                          ; preds = %entry
  %imr10 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 11
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imr10) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %txaddr12 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 15
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txaddr12) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %txsize14 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txsize14) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %txwr16 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 17
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txwr16) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %txrd18 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 18
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd18) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %eskbp20 = getelementptr i8, ptr %t, i32 -100
  %12 = ptrtoint ptr %eskbp20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eskbp20, align 4
  %rxaddr21 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 22
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxaddr21) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %rxsize23 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 23
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxsize23) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %rxwr25 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxwr25) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %rxrd27 = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 25
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxrd27) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %regs1.i = getelementptr i8, ptr %1, i32 2848
  %18 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs1.i, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %ctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %19, i32 0, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i.i = or i32 %21, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i, i32 %or.i.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #10, !srcloc !193
  %txrd.i = getelementptr inbounds %struct.grcan_registers, ptr %19, i32 0, i32 18
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %eskbp.i = getelementptr i8, ptr %1, i32 2908
  %23 = ptrtoint ptr %eskbp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %eskbp.i, align 4
  %state.i = getelementptr i8, ptr %1, i32 2472
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %state.i, align 8
  %rxmask.i = getelementptr inbounds %struct.grcan_registers, ptr %19, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmask.i, i32 0) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txaddr12, i32 %8) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txsize14, i32 %9) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txwr16, i32 %10) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txrd18, i32 %11) #10, !srcloc !193
  %25 = ptrtoint ptr %eskbp20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %eskbp20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxaddr21, i32 %14) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxsize23, i32 %15) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxwr25, i32 %16) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxrd27, i32 %17) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr10, i32 %7) #10, !srcloc !193
  %state = getelementptr i8, ptr %t, i32 -536
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 8
  %txctrl = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 14
  %ctrlmode = getelementptr i8, ptr %t, i32 -532
  %27 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrlmode, align 4
  %and = lshr i32 %28, 1
  %29 = and i32 %and, 4
  %or = or i32 %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl, i32 %or) #10, !srcloc !193
  %rxctrl = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl, i32 1) #10, !srcloc !193
  %ctrl = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl, i32 1) #10, !srcloc !193
  %tx = getelementptr i8, ptr %t, i32 -128
  %30 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx, align 4
  %32 = ptrtoint ptr %eskbp20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eskbp20, align 4
  %div4.i = lshr i32 %31, 4
  %sub.i.i = sub i32 %31, %33
  %add.i.i.i = add i32 %sub.i.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %31)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %31
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %31
  %retval.0.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i
  %div15.i = lshr i32 %retval.0.i.i.i, 4
  %.neg = add nuw nsw i32 %div15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i, i32 %.neg)
  %tobool43.not = icmp eq i32 %div4.i, %.neg
  br i1 %tobool43.not, label %if.then.if.end49_crit_edge, label %land.lhs.true

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then
  %34 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrlmode, align 4
  %and46 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %37) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true.if.end49_crit_edge, %if.then.if.end49_crit_edge, %entry.if.end49_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.62) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grcan_initiate_running_reset(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -344
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %regs2 = getelementptr i8, ptr %t, i32 -112
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.63) #13
  %lock = getelementptr i8, ptr %t, i32 -48
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %resetting = getelementptr i8, ptr %t, i32 96
  %4 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resetting, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %closing = getelementptr i8, ptr %t, i32 97
  %6 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %closing, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %resetting to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %resetting, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %txctrl = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 14
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %11, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl, i32 %and.i) #10, !srcloc !193
  %rxctrl = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 21
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxctrl) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i21 = and i32 %12, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl, i32 %and.i21) #10, !srcloc !193
  %rr_timer = getelementptr i8, ptr %t, i32 48
  %bittiming = getelementptr i8, ptr %t, i32 -620
  %13 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bittiming, align 4
  %div.i.i = udiv i32 384000000, %14
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %div.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, %call3.i.i
  %call2.i = tail call i32 @mod_timer(ptr noundef %rr_timer, i32 noundef %add.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %regs2 = getelementptr i8, ptr %napi, i32 224
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 8
  %div = sdiv i32 %budget, 2
  %sub = sub i32 %budget, %div
  %regs1.i = getelementptr i8, ptr %1, i32 2848
  %4 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1.i, align 8
  %stats3.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #10
  %6 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !189
  %rxrd.i = getelementptr inbounds %struct.grcan_registers, ptr %5, i32 0, i32 25
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxrd.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %rxwr.i = getelementptr inbounds %struct.grcan_registers, ptr %5, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp96.i = icmp sgt i32 %budget, 1
  br i1 %cmp96.i, label %for.body.lr.ph.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %entry
  %rx.i = getelementptr i8, ptr %1, i32 2892
  %buf.i = getelementptr i8, ptr %1, i32 2896
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc54.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %work_done.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc55.i, %for.inc54.i.for.body.i_crit_edge ]
  %rd.097.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %rd.1.i, %for.inc54.i.for.body.i_crit_edge ]
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxwr.i) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  call void @__sanitizer_cov_trace_cmp4(i32 %rd.097.i, i32 %8)
  %cmp6.i = icmp eq i32 %rd.097.i, %8
  br i1 %cmp6.i, label %for.body.i.do.body.i_crit_edge, label %if.end.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i:                                         ; preds = %for.body.i
  %call7.i = call ptr @alloc_can_skb(ptr noundef %1, ptr noundef nonnull %cf.i) #10
  %cmp8.i = icmp eq ptr %call7.i, null
  br i1 %cmp8.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.64) #13
  %9 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  br label %for.inc54.i

if.end10.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %rd.097.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and12.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not.i = icmp sgt i32 %14, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %and15.i = and i32 %14, 536870911
  %15 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and15.i, ptr %16, align 8
  %18 = load ptr, ptr %cf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %or.i = or i32 %20, -2147483648
  store i32 %or.i, ptr %18, align 8
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i = lshr i32 %14, 18
  %shr19.i = and i32 %and18.i, 2047
  %21 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr19.i, ptr %22, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then13.i
  %arrayidx22.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %24 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp27.i = icmp sgt i32 %25, -1
  %shr24.i = lshr i32 %25, 28
  %26 = trunc i32 %shr24.i to i8
  %conv31.i = select i1 %cmp27.i, i8 %26, i8 8
  %27 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf.i, align 4
  %29 = getelementptr inbounds %struct.can_frame, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv31.i, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool32.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool32.not.i, label %for.cond37.preheader.i, label %if.then33.i

for.cond37.preheader.i:                           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv31.i)
  %cmp3994.not.i = icmp eq i8 %conv31.i, 0
  br i1 %cmp3994.not.i, label %for.cond37.preheader.i.for.end.i_crit_edge, label %for.cond37.preheader.i.for.body41.i_crit_edge

for.cond37.preheader.i.for.body41.i_crit_edge:    ; preds = %for.cond37.preheader.i
  br label %for.body41.i

for.cond37.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then33.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %or35.i = or i32 %32, 1073741824
  store i32 %or35.i, ptr %28, align 8
  br label %if.end49.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.cond37.preheader.i.for.body41.i_crit_edge
  %33 = phi ptr [ %38, %for.body41.i.for.body41.i_crit_edge ], [ %28, %for.cond37.preheader.i.for.body41.i_crit_edge ]
  %i.095.i = phi i32 [ %inc46.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %for.cond37.preheader.i.for.body41.i_crit_edge ]
  %div92.i = lshr i32 %i.095.i, 2
  %add.i = add nuw nsw i32 %div92.i, 2
  %rem.i = shl i32 %i.095.i, 3
  %sub.i = and i32 %rem.i, 24
  %mul.i = xor i32 %sub.i, 24
  %arrayidx42.i = getelementptr i32, ptr %add.ptr.i, i32 %add.i
  %34 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42.i, align 4
  %shr43.i = lshr i32 %35, %mul.i
  %conv44.i = trunc i32 %shr43.i to i8
  %arrayidx45.i = getelementptr %struct.can_frame, ptr %33, i32 0, i32 5, i32 %i.095.i
  %36 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv44.i, ptr %arrayidx45.i, align 1
  %inc46.i = add nuw nsw i32 %i.095.i, 1
  %37 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cf.i, align 4
  %39 = getelementptr inbounds %struct.can_frame, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv38.i = zext i8 %41 to i32
  %cmp39.i = icmp ult i32 %inc46.i, %conv38.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.for.end.i_crit_edge

for.body41.i.for.end.i_crit_edge:                 ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.i

for.end.i:                                        ; preds = %for.body41.i.for.end.i_crit_edge, %for.cond37.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ 0, %for.cond37.preheader.i.for.end.i_crit_edge ], [ %41, %for.body41.i.for.end.i_crit_edge ]
  %conv38.le.i = zext i8 %.lcssa.i to i32
  %42 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bytes.i, align 4
  %add48.i = add i32 %43, %conv38.le.i
  store i32 %add48.i, ptr %rx_bytes.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.end.i, %if.then33.i
  %44 = ptrtoint ptr %stats3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats3.i, align 4
  %inc50.i = add i32 %45, 1
  store i32 %inc50.i, ptr %stats3.i, align 4
  %call51.i = call i32 @netif_receive_skb(ptr noundef nonnull %call7.i) #10
  %46 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx.i, align 4
  %add.i.i = add i32 %rd.097.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %47)
  %cmp.i.i = icmp ult i32 %add.i.i, %47
  %sub.i.i = select i1 %cmp.i.i, i32 0, i32 %47
  %retval.0.i.i = sub i32 %add.i.i, %sub.i.i
  br label %for.inc54.i

for.inc54.i:                                      ; preds = %if.end49.i, %if.then9.i
  %rd.1.i = phi i32 [ %rd.097.i, %if.then9.i ], [ %retval.0.i.i, %if.end49.i ]
  %inc55.i = add nuw nsw i32 %work_done.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc55.i, %div
  br i1 %exitcond.not.i, label %for.inc54.i.do.body.i_crit_edge, label %for.inc54.i.for.body.i_crit_edge

for.inc54.i.for.body.i_crit_edge:                 ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc54.i.do.body.i_crit_edge:                  ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc54.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %rd.0.lcssa.i = phi i32 [ %7, %entry.do.body.i_crit_edge ], [ %rd.097.i, %for.body.i.do.body.i_crit_edge ], [ %rd.1.i, %for.inc54.i.do.body.i_crit_edge ]
  %work_done.0.lcssa.i = phi i32 [ 0, %entry.do.body.i_crit_edge ], [ %work_done.098.i, %for.body.i.do.body.i_crit_edge ], [ %div, %for.inc54.i.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %rd.0.lcssa.i, i32 %7)
  %cmp57.not.i = icmp eq i32 %rd.0.lcssa.i, %7
  br i1 %cmp57.not.i, label %do.body.i.grcan_receive.exit_crit_edge, label %if.then61.i, !prof !197

do.body.i.grcan_receive.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_receive.exit

if.then61.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxrd.i, i32 %rd.0.lcssa.i) #10, !srcloc !193
  br label %grcan_receive.exit

grcan_receive.exit:                               ; preds = %if.then61.i, %do.body.i.grcan_receive.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #10
  %lock.i = getelementptr i8, ptr %1, i32 2912
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %48 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs1.i, align 8
  %txrd4.i.i = getelementptr inbounds %struct.grcan_registers, ptr %49, i32 0, i32 18
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i.i) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %eskbp.i.i = getelementptr i8, ptr %1, i32 2908
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6.i.i = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %budget)
  %.not.i.i = icmp eq i32 %div, %budget
  br i1 %.not.i.i, label %grcan_receive.exit.grcan_transmit_catch_up.exit_crit_edge, label %for.body.lr.ph.i.i

grcan_receive.exit.grcan_transmit_catch_up.exit_crit_edge: ; preds = %grcan_receive.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_transmit_catch_up.exit

for.body.lr.ph.i.i:                               ; preds = %grcan_receive.exit
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %tx.i.i = getelementptr i8, ptr %1, i32 2880
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %txrd.036.i.i = phi i32 [ %50, %for.body.lr.ph.i.i ], [ %62, %if.end.i.i.for.body.i.i_crit_edge ]
  %work_done.035.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc17.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %51 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eskbp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %txrd.036.i.i)
  %cmp7.i.i = icmp eq i32 %52, %txrd.036.i.i
  br i1 %cmp7.i.i, label %for.body.i.i.catch_up_echo_skb.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.catch_up_echo_skb.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %div32.i.i = lshr i32 %52, 4
  %53 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_packets.i.i, align 4
  %inc.i.i = add i32 %54, 1
  store i32 %inc.i.i, ptr %tx_packets.i.i, align 4
  %call10.i.i = call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %div32.i.i, ptr noundef null) #10
  %55 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i.i25 = add i32 %56, %call10.i.i
  store i32 %add.i.i25, ptr %tx_bytes.i.i, align 4
  %57 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eskbp.i.i, align 4
  %59 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx.i.i, align 4
  %add.i.i.i = add i32 %58, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %60)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %60
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %60
  %retval.0.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i
  %61 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i, ptr %eskbp.i.i, align 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i.i) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %inc17.i.i = add i32 %work_done.035.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i.i, i32 %sub)
  %cmp.i.i26 = icmp slt i32 %inc17.i.i, %sub
  %or.cond.i.i = or i1 %cmp6.i.i, %cmp.i.i26
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.catch_up_echo_skb.exit.i_crit_edge

if.end.i.i.catch_up_echo_skb.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

catch_up_echo_skb.exit.i:                         ; preds = %if.end.i.i.catch_up_echo_skb.exit.i_crit_edge, %for.body.i.i.catch_up_echo_skb.exit.i_crit_edge
  %work_done.0.lcssa.i.i = phi i32 [ %inc17.i.i, %if.end.i.i.catch_up_echo_skb.exit.i_crit_edge ], [ %work_done.035.i.i, %for.body.i.i.catch_up_echo_skb.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.0.lcssa.i.i)
  %tobool.not.i27 = icmp eq i32 %work_done.0.lcssa.i.i, 0
  br i1 %tobool.not.i27, label %catch_up_echo_skb.exit.i.grcan_transmit_catch_up.exit_crit_edge, label %if.then.i

catch_up_echo_skb.exit.i.grcan_transmit_catch_up.exit_crit_edge: ; preds = %catch_up_echo_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_transmit_catch_up.exit

if.then.i:                                        ; preds = %catch_up_echo_skb.exit.i
  %resetting.i = getelementptr i8, ptr %1, i32 3056
  %63 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %resetting.i, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool7.not.i = icmp eq i8 %64, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.then.i.if.end.i28_crit_edge

if.then.i.if.end.i28_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

land.lhs.true.i:                                  ; preds = %if.then.i
  %closing.i = getelementptr i8, ptr %1, i32 3057
  %65 = ptrtoint ptr %closing.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %closing.i, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool8.not.i = icmp eq i8 %66, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.end.i28_crit_edge

land.lhs.true.i.if.end.i28_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %ctrlmode.i = getelementptr i8, ptr %1, i32 2476
  %67 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctrlmode.i, align 4
  %and.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %land.lhs.true9.i.if.end.i28_crit_edge

land.lhs.true9.i.if.end.i28_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i28

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %69 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %70) #10
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.then11.i, %land.lhs.true9.i.if.end.i28_crit_edge, %land.lhs.true.i.if.end.i28_crit_edge, %if.then.i.if.end.i28_crit_edge
  %need_txbug_workaround.i = getelementptr i8, ptr %1, i32 2956
  %71 = ptrtoint ptr %need_txbug_workaround.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %need_txbug_workaround.i, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool12.not.i = icmp eq i8 %72, 0
  br i1 %tobool12.not.i, label %if.end.i28.grcan_transmit_catch_up.exit_crit_edge, label %if.then13.i29

if.end.i28.grcan_transmit_catch_up.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_transmit_catch_up.exit

if.then13.i29:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  %hang_timer.i = getelementptr i8, ptr %1, i32 2960
  %call14.i = call i32 @del_timer(ptr noundef %hang_timer.i) #10
  br label %grcan_transmit_catch_up.exit

grcan_transmit_catch_up.exit:                     ; preds = %if.then13.i29, %if.end.i28.grcan_transmit_catch_up.exit_crit_edge, %catch_up_echo_skb.exit.i.grcan_transmit_catch_up.exit_crit_edge, %grcan_receive.exit.grcan_transmit_catch_up.exit_crit_edge
  %work_done.0.lcssa.i29.i = phi i32 [ %work_done.0.lcssa.i.i, %if.end.i28.grcan_transmit_catch_up.exit_crit_edge ], [ %work_done.0.lcssa.i.i, %if.then13.i29 ], [ 0, %catch_up_echo_skb.exit.i.grcan_transmit_catch_up.exit_crit_edge ], [ 0, %grcan_receive.exit.grcan_transmit_catch_up.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa.i, i32 %div)
  %cmp = icmp slt i32 %work_done.0.lcssa.i, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.lcssa.i29.i, i32 %sub)
  %cmp4 = icmp slt i32 %work_done.0.lcssa.i29.i, %sub
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %grcan_transmit_catch_up.exit.if.end_crit_edge

grcan_transmit_catch_up.exit.if.end_crit_edge:    ; preds = %grcan_transmit_catch_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %grcan_transmit_catch_up.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #10
  %lock = getelementptr i8, ptr %napi, i32 288
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %imr = getelementptr inbounds %struct.grcan_registers, ptr %3, i32 0, i32 11
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imr) #10, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i30 = or i32 %73, 1536
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr, i32 %or.i30) #10, !srcloc !193
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %grcan_transmit_catch_up.exit.if.end_crit_edge
  %add = add i32 %work_done.0.lcssa.i29.i, %work_done.0.lcssa.i
  ret i32 %add
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txsize = getelementptr i8, ptr %dev, i32 2860
  %0 = ptrtoint ptr %txsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txsize, align 4
  %rxsize = getelementptr i8, ptr %dev, i32 2864
  %2 = ptrtoint ptr %rxsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxsize, align 4
  %dma1.i = getelementptr i8, ptr %dev, i32 2868
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3) #10
  %add.i = add i32 %4, 1023
  %and.i = and i32 %add.i, -1024
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 %1) #10
  %add20.i = add i32 %5, 1024
  %add21.i = add i32 %add20.i, %and.i
  %6 = ptrtoint ptr %dma1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add21.i, ptr %dma1.i, align 4
  %dev22.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %base_handle.i = getelementptr i8, ptr %dev, i32 2876
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev22.i, i32 noundef %add21.i, ptr noundef %base_handle.i, i32 noundef 3264, i32 noundef 0) #10
  %base_buf.i = getelementptr i8, ptr %dev, i32 2872
  %7 = ptrtoint ptr %base_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %base_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp ugt i32 %3, %1
  %tx.i = getelementptr i8, ptr %dev, i32 2880
  %rx.i = getelementptr i8, ptr %dev, i32 2892
  %cond8.i = select i1 %cmp.i, ptr %tx.i, ptr %rx.i
  %cond.i = select i1 %cmp.i, ptr %rx.i, ptr %tx.i
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %tx.i, align 4
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %rx.i, align 4
  %10 = ptrtoint ptr %base_handle.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_handle.i, align 4
  %add30.i = add i32 %11, 1023
  %and31.i = and i32 %add30.i, -1024
  %handle.i = getelementptr inbounds %struct.grcan_dma_buffer, ptr %cond.i, i32 0, i32 2
  %12 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and31.i, ptr %handle.i, align 4
  %add33.i = add i32 %and31.i, %and.i
  %handle34.i = getelementptr inbounds %struct.grcan_dma_buffer, ptr %cond8.i, i32 0, i32 2
  %13 = ptrtoint ptr %handle34.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add33.i, ptr %handle34.i, align 4
  %14 = load i32, ptr %base_handle.i, align 4
  %sub.i = sub i32 %and31.i, %14
  %15 = ptrtoint ptr %base_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_buf.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %16, i32 %sub.i
  %buf.i = getelementptr inbounds %struct.grcan_dma_buffer, ptr %cond.i, i32 0, i32 1
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i66, ptr %buf.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %add.ptr.i66, i32 %and.i
  %buf40.i = getelementptr inbounds %struct.grcan_dma_buffer, ptr %cond8.i, i32 0, i32 1
  %18 = ptrtoint ptr %buf40.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr39.i, ptr %buf40.i, align 4
  %19 = load i32, ptr %tx.i, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !197

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %echo_skb73 = getelementptr i8, ptr %dev, i32 2904
  %22 = ptrtoint ptr %echo_skb73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %echo_skb73, align 8
  br label %exit_free_dma_buffers

if.end7.i.i:                                      ; preds = %if.end
  %23 = extractvalue { i32, i1 } %20, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #14
  %echo_skb = getelementptr i8, ptr %dev, i32 2904
  %24 = ptrtoint ptr %echo_skb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i, ptr %echo_skb, align 8
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.exit_free_dma_buffers_crit_edge, label %if.end8

if.end7.i.i.exit_free_dma_buffers_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_free_dma_buffers

if.end8:                                          ; preds = %if.end7.i.i
  %25 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx.i, align 4
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %27 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %echo_skb_max, align 8
  %echo_skb13 = getelementptr i8, ptr %dev, i32 2468
  %28 = ptrtoint ptr %echo_skb13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i.i, ptr %echo_skb13, align 4
  %call14 = tail call i32 @open_candev(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.exit_free_echo_skb_crit_edge

if.end8.exit_free_echo_skb_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_free_echo_skb

if.end17:                                         ; preds = %if.end8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @grcan_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %do.body22, label %exit_close_candev

do.body22:                                        ; preds = %if.end17
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %napi = getelementptr i8, ptr %dev, i32 2624
  tail call void @napi_enable(ptr noundef %napi) #10
  tail call fastcc void @grcan_start(ptr noundef %dev)
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %31 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %do.body22.if.end31_crit_edge

do.body22.if.end31_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %34, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.body22.if.end31_crit_edge
  %resetting = getelementptr i8, ptr %dev, i32 3056
  %35 = ptrtoint ptr %resetting to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %resetting, align 8
  %closing = getelementptr i8, ptr %dev, i32 3057
  %36 = ptrtoint ptr %closing to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %closing, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #10
  br label %cleanup

exit_close_candev:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @close_candev(ptr noundef %dev) #10
  br label %exit_free_echo_skb

exit_free_echo_skb:                               ; preds = %exit_close_candev, %if.end8.exit_free_echo_skb_crit_edge
  %err.0 = phi i32 [ %call14, %if.end8.exit_free_echo_skb_crit_edge ], [ %call.i, %exit_close_candev ]
  %37 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %echo_skb, align 8
  tail call void @kfree(ptr noundef %38) #10
  br label %exit_free_dma_buffers

exit_free_dma_buffers:                            ; preds = %exit_free_echo_skb, %if.end7.i.i.exit_free_dma_buffers_crit_edge, %kcalloc.exit.thread
  %err.1 = phi i32 [ %err.0, %exit_free_echo_skb ], [ -12, %if.end7.i.i.exit_free_dma_buffers_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %39 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma1.i, align 4
  %41 = ptrtoint ptr %base_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_buf.i, align 4
  %43 = ptrtoint ptr %base_handle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22.i, i32 noundef %40, ptr noundef %42, i32 noundef %44, i32 noundef 0) #10
  %45 = call ptr @memset(ptr %dma1.i, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %exit_free_dma_buffers, %if.end31, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %err.1, %exit_free_dma_buffers ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %dev, i32 2624
  tail call void @napi_disable(ptr noundef %napi) #10
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %closing = getelementptr i8, ptr %dev, i32 3057
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %closing, align 1
  %need_txbug_workaround = getelementptr i8, ptr %dev, i32 2956
  %1 = ptrtoint ptr %need_txbug_workaround to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %need_txbug_workaround, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hang_timer = getelementptr i8, ptr %dev, i32 2960
  %call6 = tail call i32 @del_timer_sync(ptr noundef %hang_timer) #10
  %rr_timer = getelementptr i8, ptr %dev, i32 3008
  %call7 = tail call i32 @del_timer_sync(ptr noundef %rr_timer) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %regs1.i = getelementptr i8, ptr %dev, i32 2848
  %5 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs1.i, align 8
  %imr.i = getelementptr inbounds %struct.grcan_registers, ptr %6, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr.i, i32 0) #10, !srcloc !193
  %txctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %6, i32 0, i32 14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i.i = and i32 %7, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl.i, i32 %and.i.i) #10, !srcloc !193
  %rxctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %6, i32 0, i32 21
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i5.i = and i32 %8, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl.i, i32 %and.i5.i) #10, !srcloc !193
  %ctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %6, i32 0, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i6.i = and i32 %9, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i, i32 %and.i6.i) #10, !srcloc !193
  %state = getelementptr i8, ptr %dev, i32 2472
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %state, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %dev) #10
  tail call void @close_candev(ptr noundef %dev) #10
  %dma1.i = getelementptr i8, ptr %dev, i32 2868
  %dev2.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %13 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma1.i, align 4
  %base_buf.i = getelementptr i8, ptr %dev, i32 2872
  %15 = ptrtoint ptr %base_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_buf.i, align 4
  %base_handle.i = getelementptr i8, ptr %dev, i32 2876
  %17 = ptrtoint ptr %base_handle.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2.i, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #10
  %19 = call ptr @memset(ptr %dma1.i, i32 0, i32 36)
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %20 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %echo_skb_max, align 8
  %echo_skb = getelementptr i8, ptr %dev, i32 2468
  %21 = ptrtoint ptr %echo_skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %echo_skb, align 4
  %echo_skb12 = getelementptr i8, ptr %dev, i32 2904
  %22 = ptrtoint ptr %echo_skb12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %echo_skb12, align 8
  tail call void @kfree(ptr noundef %23) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %txstatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %4 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrlmode, align 4
  %and = and i32 %5, 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !198

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp6.i = icmp ugt i8 %12, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !197

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %14)
  %cmp16.not.i = icmp eq i32 %14, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !198

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp21.i = icmp ugt i8 %16, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !197

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !198

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %19 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %20 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp38.i.i = icmp eq i16 %20, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex.i.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %18, align 8
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %skbcnt.i.i, align 4
  %27 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %30 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %33 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %37 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %38 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup110

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %40 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrlmode, align 4
  %and6 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.body9, label %if.end.cleanup110_crit_edge

if.end.cleanup110_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup110

do.body9:                                         ; preds = %if.end
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %txwr15 = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 17
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txwr15) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %tx = getelementptr i8, ptr %dev, i32 2880
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx, align 4
  %eskbp = getelementptr i8, ptr %dev, i32 2908
  %45 = ptrtoint ptr %eskbp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %eskbp, align 4
  %div4.i = lshr i32 %44, 4
  %sub.i.i = sub i32 %44, %46
  %add.i.i.i = add i32 %sub.i.i, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %44)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %44
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %44
  %retval.0.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i
  %div15.i = lshr i32 %retval.0.i.i.i, 4
  %47 = xor i32 %div15.i, -1
  %sub2.i = add nsw i32 %div4.i, %47
  %div179 = lshr i32 %42, 4
  %buf = getelementptr i8, ptr %dev, i32 2884
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub2.i)
  %cmp19 = icmp eq i32 %sub2.i, 1
  br i1 %cmp19, label %if.end24.thread, label %if.end24, !prof !197

if.end24.thread:                                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %50 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #10
  br label %if.end36

if.end24:                                         ; preds = %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %tobool26.not = icmp eq i32 %sub2.i, 0
  br i1 %tobool26.not, label %if.then35, label %if.end24.if.end36_crit_edge, !prof !197

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #13
  br label %cleanup110

if.end36:                                         ; preds = %if.end24.if.end36_crit_edge, %if.end24.thread
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %3, align 8
  %54 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 4
  %conv43 = zext i8 %56 to i32
  %and42 = and i32 %53, 536870911
  %shl47 = shl i32 %53, 18
  %and48 = and i32 %shl47, 536608768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool41.not188 = icmp slt i32 %53, 0
  %tmp.0 = select i1 %tobool41.not188, i32 %and42, i32 %and48
  %or = and i32 %53, -1073741824
  %or54 = or i32 %tmp.0, %or
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or54, ptr %add.ptr, align 4
  %shl55 = shl i32 %conv43, 28
  %arrayidx57 = getelementptr i32, ptr %add.ptr, i32 1
  %58 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl55, ptr %arrayidx57, align 4
  %arrayidx58 = getelementptr i32, ptr %add.ptr, i32 2
  %59 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr i32, ptr %add.ptr, i32 3
  %60 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp60189.not = icmp eq i8 %56, 0
  br i1 %cmp60189.not, label %if.end36.for.end_crit_edge, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  br label %for.body

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end36.for.body_crit_edge
  %i.0190 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end36.for.body_crit_edge ]
  %div62180 = lshr i32 %i.0190, 2
  %add = add nuw nsw i32 %div62180, 2
  %rem = shl i32 %i.0190, 3
  %sub = and i32 %rem, 24
  %mul = xor i32 %sub, 24
  %arrayidx64 = getelementptr %struct.can_frame, ptr %3, i32 0, i32 5, i32 %i.0190
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %62 to i32
  %shl66 = shl i32 %conv65, %mul
  %arrayidx67 = getelementptr i32, ptr %add.ptr, i32 %add
  %63 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx67, align 4
  %or68 = or i32 %shl66, %64
  store i32 %or68, ptr %arrayidx67, align 4
  %inc = add nuw nsw i32 %i.0190, 1
  %exitcond.not = icmp eq i32 %inc, %conv43
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end36.for.end_crit_edge
  %txctrl69 = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 14
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl69) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and71 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %for.end.if.end74_crit_edge

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end.if.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp ne i32 %and, 0
  %and76 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond = select i1 %tobool75.not, i1 %tobool77.not, i1 false
  br i1 %or.cond, label %if.then78, label %if.end74.if.end79_crit_edge

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74.if.end79_crit_edge
  %need_txbug_workaround = getelementptr i8, ptr %dev, i32 2956
  %66 = ptrtoint ptr %need_txbug_workaround to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %need_txbug_workaround, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool80.not = icmp eq i8 %67, 0
  br i1 %tobool80.not, label %if.end79.if.end101_crit_edge, label %if.then81

if.end79.if.end101_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then81:                                        ; preds = %if.end79
  %txrd82 = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 18
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd82) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %69 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx, align 4
  %sub.i = sub i32 %70, %68
  %add.i.i = add i32 %sub.i, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %70)
  %cmp.i.i181 = icmp ult i32 %add.i.i, %70
  %sub.i.i182 = select i1 %cmp.i.i181, i32 0, i32 %70
  %retval.0.i.i = sub i32 %add.i.i, %sub.i.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp87 = icmp eq i32 %retval.0.i.i, 1
  br i1 %cmp87, label %if.then95, label %if.then81.if.end101_crit_edge, !prof !197

if.then81.if.end101_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then95:                                        ; preds = %if.then81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txstatus) #10
  %71 = ptrtoint ptr %txstatus to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %txstatus, align 4, !annotation !189
  %call96 = call fastcc i32 @grcan_txbug_workaround(ptr noundef %dev, ptr noundef %skb, i32 noundef %42, i32 noundef %and, ptr noundef nonnull %txstatus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txstatus) #10
  br label %if.end101

cleanup:                                          ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %txstatus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %txstatus, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txstatus) #10
  br label %cleanup110

if.end101:                                        ; preds = %cleanup.thread, %if.then81.if.end101_crit_edge, %if.end79.if.end101_crit_edge
  %call102 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef %div179, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx, align 4
  %add.i = add i32 %42, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %75)
  %cmp.i = icmp ult i32 %add.i, %75
  %sub.i183 = select i1 %cmp.i, i32 0, i32 %75
  %retval.0.i184 = sub i32 %add.i, %sub.i183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txwr15, i32 %retval.0.i184) #10, !srcloc !193
  br label %cleanup110

cleanup110:                                       ; preds = %if.end101, %cleanup, %if.then35, %if.end.cleanup110_crit_edge, %can_dropped_invalid_skb.exit
  %retval.1 = phi i32 [ 16, %if.then35 ], [ 0, %if.end101 ], [ %73, %cleanup ], [ 0, %can_dropped_invalid_skb.exit ], [ 16, %if.end.cleanup110_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev_id, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %pimsr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pimsr) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %picr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %picr, i32 %2) #10, !srcloc !193
  %stat = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %need_txbug_workaround = getelementptr i8, ptr %dev_id, i32 2956
  %4 = ptrtoint ptr %need_txbug_workaround to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %need_txbug_workaround, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %and = and i32 %2, 66560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %hang_timer = getelementptr i8, ptr %dev_id, i32 2960
  %call7 = tail call i32 @del_timer(ptr noundef %hang_timer) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %and9 = and i32 %2, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %imr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imr) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %6, -1537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr, i32 %and.i) #10, !srcloc !193
  %napi = getelementptr i8, ptr %dev_id, i32 2624
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %if.then11.if.end12_crit_edge

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %and13 = and i32 %2, 90143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @grcan_err(ptr noundef %dev_id, i32 noundef %2, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then15 ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @grcan_start(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %ctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i.i = or i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i, i32 %or.i.i) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #10, !srcloc !193
  %txrd.i = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 18
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %eskbp.i = getelementptr i8, ptr %dev, i32 2908
  %5 = ptrtoint ptr %eskbp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %eskbp.i, align 4
  %state.i = getelementptr i8, ptr %dev, i32 2472
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %state.i, align 8
  %rxmask.i = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxmask.i, i32 0) #10, !srcloc !193
  %txaddr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 15
  %tx = getelementptr i8, ptr %dev, i32 2880
  %handle = getelementptr i8, ptr %dev, i32 2888
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txaddr, i32 %8) #10, !srcloc !193
  %txsize = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txsize, i32 %10) #10, !srcloc !193
  %rxaddr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 22
  %rx = getelementptr i8, ptr %dev, i32 2892
  %handle5 = getelementptr i8, ptr %dev, i32 2900
  %11 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handle5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxaddr, i32 %12) #10, !srcloc !193
  %rxsize = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxsize, i32 %14) #10, !srcloc !193
  %pir = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pir) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %imr = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr, i32 91679) #10, !srcloc !193
  %config = getelementptr i8, ptr %dev, i32 2852
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  %or = select i1 %tobool.not, i32 1, i32 3
  %enable1 = getelementptr i8, ptr %dev, i32 2854
  %18 = ptrtoint ptr %enable1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %enable1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool12.not = icmp eq i16 %19, 0
  %cond13 = select i1 %tobool12.not, i32 0, i32 4
  %or14 = or i32 %cond13, %or
  %select = getelementptr i8, ptr %dev, i32 2856
  %20 = ptrtoint ptr %select to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %select, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool17.not = icmp eq i16 %21, 0
  %cond18 = select i1 %tobool17.not, i32 0, i32 8
  %or19 = or i32 %or14, %cond18
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %22 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrlmode, align 4
  %and = shl i32 %23, 3
  %24 = and i32 %and, 16
  %or22 = or i32 %or19, %24
  %25 = and i32 %and, 32
  %or28 = or i32 %or22, %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %26, -64
  %or.i = or i32 %or28, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or.i) #10, !srcloc !193
  %27 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctrlmode, align 4
  %and31 = lshr i32 %28, 1
  %29 = and i32 %and31, 4
  %or34 = or i32 %29, 1
  %txctrl35 = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl35, i32 %or34) #10, !srcloc !193
  %rxctrl = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl, i32 1) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i, i32 1) #10, !srcloc !193
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @grcan_err(ptr noundef %dev, i32 noundef %sources, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  %skb_cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %and = and i32 %sources, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %status, 3
  br label %if.end21

if.then:                                          ; preds = %entry
  %ctrlmode = getelementptr i8, ptr %dev, i32 2476
  %2 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrlmode, align 4
  %and4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then6:                                         ; preds = %if.then
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 8
  %lock.i = getelementptr i8, ptr %dev, i32 2912
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %6 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1, align 8
  %txrd4.i.i = getelementptr inbounds %struct.grcan_registers, ptr %7, i32 0, i32 18
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %eskbp.i.i = getelementptr i8, ptr %dev, i32 2908
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %tx.i.i = getelementptr i8, ptr %dev, i32 2880
  %9 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eskbp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp7.i60.i = icmp eq i32 %10, %8
  br i1 %cmp7.i60.i, label %if.then6.catch_up_echo_skb.exit.i_crit_edge, label %if.then6.if.end.i.i_crit_edge

if.then6.if.end.i.i_crit_edge:                    ; preds = %if.then6
  br label %if.end.i.i

if.then6.catch_up_echo_skb.exit.i_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %if.then6.if.end.i.i_crit_edge
  %11 = phi i32 [ %23, %if.end.i.i.if.end.i.i_crit_edge ], [ %10, %if.then6.if.end.i.i_crit_edge ]
  %div32.i.i = lshr i32 %11, 4
  %12 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_packets.i.i, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %tx_packets.i.i, align 4
  %call10.i.i = tail call i32 @can_get_echo_skb(ptr noundef %dev, i32 noundef %div32.i.i, ptr noundef null) #10
  %14 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_bytes.i.i, align 4
  %add.i.i = add i32 %15, %call10.i.i
  store i32 %add.i.i, ptr %tx_bytes.i.i, align 4
  %16 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eskbp.i.i, align 4
  %18 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx.i.i, align 4
  %add.i.i.i = add i32 %17, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %19)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %19
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %19
  %retval.0.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i
  %20 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i.i.i, ptr %eskbp.i.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %22 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eskbp.i.i, align 4
  %cmp7.i.i = icmp eq i32 %23, %21
  br i1 %cmp7.i.i, label %if.end.i.i.catch_up_echo_skb.exit.i_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i.catch_up_echo_skb.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit.i

catch_up_echo_skb.exit.i:                         ; preds = %if.end.i.i.catch_up_echo_skb.exit.i_crit_edge, %if.then6.catch_up_echo_skb.exit.i_crit_edge
  %txctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %5, i32 0, i32 14
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !198

if.then.i:                                        ; preds = %catch_up_echo_skb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #13
  br label %grcan_lost_one_shot_frame.exit

if.else.i:                                        ; preds = %catch_up_echo_skb.exit.i
  %txrd12.i = getelementptr inbounds %struct.grcan_registers, ptr %5, i32 0, i32 18
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd12.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %26 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx.i.i, align 4
  %add.i39.i = add i32 %25, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i39.i, i32 %27)
  %cmp.i40.i = icmp ult i32 %add.i39.i, %27
  %sub.i.i = select i1 %cmp.i40.i, i32 0, i32 %27
  %retval.0.i.i = sub i32 %add.i39.i, %sub.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txrd12.i, i32 %retval.0.i.i) #10, !srcloc !193
  %28 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs1, align 8
  %txrd4.i42.i = getelementptr inbounds %struct.grcan_registers, ptr %29, i32 0, i32 18
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i42.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %31 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eskbp.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp7.i4961.i = icmp eq i32 %32, %30
  br i1 %cmp7.i4961.i, label %if.else.i.catch_up_echo_skb.exit59.i_crit_edge, label %if.else.i.if.end.i52.i_crit_edge

if.else.i.if.end.i52.i_crit_edge:                 ; preds = %if.else.i
  br label %if.end.i52.i

if.else.i.catch_up_echo_skb.exit59.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit59.i

if.end.i52.i:                                     ; preds = %if.end.i52.i.if.end.i52.i_crit_edge, %if.else.i.if.end.i52.i_crit_edge
  %33 = phi i32 [ %41, %if.end.i52.i.if.end.i52.i_crit_edge ], [ %32, %if.else.i.if.end.i52.i_crit_edge ]
  %div32.i51.i = lshr i32 %33, 4
  tail call void @can_free_echo_skb(ptr noundef %dev, i32 noundef %div32.i51.i, ptr noundef null) #10
  %34 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %eskbp.i.i, align 4
  %36 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx.i.i, align 4
  %add.i.i53.i = add i32 %35, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i53.i, i32 %37)
  %cmp.i.i54.i = icmp ult i32 %add.i.i53.i, %37
  %sub.i.i55.i = select i1 %cmp.i.i54.i, i32 0, i32 %37
  %retval.0.i.i56.i = sub i32 %add.i.i53.i, %sub.i.i55.i
  %38 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.i56.i, ptr %eskbp.i.i, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd4.i42.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %40 = ptrtoint ptr %eskbp.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eskbp.i.i, align 4
  %cmp7.i49.i = icmp eq i32 %41, %39
  br i1 %cmp7.i49.i, label %if.end.i52.i.catch_up_echo_skb.exit59.i_crit_edge, label %if.end.i52.i.if.end.i52.i_crit_edge

if.end.i52.i.if.end.i52.i_crit_edge:              ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i52.i

if.end.i52.i.catch_up_echo_skb.exit59.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %catch_up_echo_skb.exit59.i

catch_up_echo_skb.exit59.i:                       ; preds = %if.end.i52.i.catch_up_echo_skb.exit59.i_crit_edge, %if.else.i.catch_up_echo_skb.exit59.i_crit_edge
  %resetting.i = getelementptr i8, ptr %dev, i32 3056
  %42 = ptrtoint ptr %resetting.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %resetting.i, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool17.not.i = icmp eq i8 %43, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %catch_up_echo_skb.exit59.i.grcan_lost_one_shot_frame.exit_crit_edge

catch_up_echo_skb.exit59.i.grcan_lost_one_shot_frame.exit_crit_edge: ; preds = %catch_up_echo_skb.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_lost_one_shot_frame.exit

land.lhs.true.i:                                  ; preds = %catch_up_echo_skb.exit59.i
  %closing.i = getelementptr i8, ptr %dev, i32 3057
  %44 = ptrtoint ptr %closing.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %closing.i, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool18.not.i = icmp eq i8 %45, 0
  br i1 %tobool18.not.i, label %land.lhs.true19.i, label %land.lhs.true.i.grcan_lost_one_shot_frame.exit_crit_edge

land.lhs.true.i.grcan_lost_one_shot_frame.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_lost_one_shot_frame.exit

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrlmode, align 4
  %and.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %land.lhs.true19.i.grcan_lost_one_shot_frame.exit_crit_edge

land.lhs.true19.i.grcan_lost_one_shot_frame.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %grcan_lost_one_shot_frame.exit

if.then21.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %48 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %49) #10
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %or.i.i = or i32 %50, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl.i, i32 %or.i.i) #10, !srcloc !193
  br label %grcan_lost_one_shot_frame.exit

grcan_lost_one_shot_frame.exit:                   ; preds = %if.then21.i, %land.lhs.true19.i.grcan_lost_one_shot_frame.exit_crit_edge, %land.lhs.true.i.grcan_lost_one_shot_frame.exit_crit_edge, %catch_up_echo_skb.exit59.i.grcan_lost_one_shot_frame.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #10
  br label %if.end

if.end:                                           ; preds = %grcan_lost_one_shot_frame.exit, %if.then.if.end_crit_edge
  %and7 = and i32 %status, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body10, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.body10:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end19)) #10
          to label %if.then16 [label %do.end19], !srcloc !194

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug460, ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %51 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %and24.pre-phi = phi i32 [ %.pre, %entry.if.end21_crit_edge ], [ %and7, %if.end.if.end21_crit_edge ], [ 0, %do.end19 ]
  %and22 = and i32 %sources, 24579
  %53 = or i32 %and24.pre-phi, %and22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %if.end21.if.end250_crit_edge, label %if.then26

if.end21.if.end250_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

if.then26:                                        ; preds = %if.end21
  %state28 = getelementptr i8, ptr %dev, i32 2472
  %55 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %state28, align 8
  %and29 = lshr i32 %status, 16
  %shr = and i32 %and29, 255
  %and30 = lshr i32 %status, 8
  %shr31 = and i32 %and30, 255
  %and32 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then26.if.end45_crit_edge

if.then26.if.end45_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.else:                                          ; preds = %if.then26
  %and35 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else38, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %shr)
  %cmp = icmp ugt i32 %shr, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %shr31)
  %cmp40 = icmp ugt i32 %shr31, 95
  %or.cond459 = or i1 %cmp, %cmp40
  %spec.select465 = zext i1 %or.cond459 to i32
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %if.else.if.end45_crit_edge, %if.then26.if.end45_crit_edge
  %state.0 = phi i32 [ 3, %if.then26.if.end45_crit_edge ], [ 2, %if.else.if.end45_crit_edge ], [ %spec.select465, %if.else38 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %state.0, i32 %56)
  %cmp46.not = icmp eq i32 %state.0, %56
  br i1 %cmp46.not, label %if.end45.if.end193_crit_edge, label %if.then47

if.end45.if.end193_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end193

if.then47:                                        ; preds = %if.end45
  %57 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %state.0, label %if.then47.unreachabledefault [
    i32 3, label %do.body49
    i32 2, label %do.body77
    i32 1, label %do.body118
    i32 0, label %do.body163
  ]

do.body49:                                        ; preds = %if.then47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end68)) #10
          to label %if.then63 [label %do.end68], !srcloc !194

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug461, ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then63, %do.body49
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  %bus_off = getelementptr i8, ptr %dev, i32 2320
  %58 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus_off, align 4
  %inc70 = add i32 %59, 1
  store i32 %inc70, ptr %bus_off, align 4
  %restart_ms = getelementptr i8, ptr %dev, i32 2484
  %60 = ptrtoint ptr %restart_ms to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %restart_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool72.not = icmp eq i32 %61, 0
  br i1 %tobool72.not, label %if.then73, label %do.end68.sw.epilog_crit_edge

do.end68.sw.epilog_crit_edge:                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs1, align 8
  %imr.i = getelementptr inbounds %struct.grcan_registers, ptr %63, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr.i, i32 0) #10, !srcloc !193
  %txctrl.i490 = getelementptr inbounds %struct.grcan_registers, ptr %63, i32 0, i32 14
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl.i490) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i.i491 = and i32 %64, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl.i490, i32 %and.i.i491) #10, !srcloc !193
  %rxctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %63, i32 0, i32 21
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i5.i = and i32 %65, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl.i, i32 %and.i5.i) #10, !srcloc !193
  %ctrl.i = getelementptr inbounds %struct.grcan_registers, ptr %63, i32 0, i32 2
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl.i) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i6.i = and i32 %66, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i, i32 %and.i6.i) #10, !srcloc !193
  br label %sw.epilog

do.body77:                                        ; preds = %if.then47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end96)) #10
          to label %if.then91 [label %do.end96], !srcloc !194

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug462, ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %do.body77
  %error_passive = getelementptr i8, ptr %dev, i32 2316
  %67 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error_passive, align 4
  %inc99 = add i32 %68, 1
  store i32 %inc99, ptr %error_passive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %shr)
  %cmp102 = icmp ugt i32 %shr, 126
  %spec.select = select i1 %cmp102, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %shr31)
  %cmp107 = icmp ugt i32 %shr31, 126
  %69 = or i8 %spec.select, 16
  %spec.select466 = select i1 %cmp107, i8 %69, i8 %spec.select
  br label %sw.epilog

do.body118:                                       ; preds = %if.then47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end137)) #10
          to label %if.then132 [label %do.end137], !srcloc !194

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug463, ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %do.end137

do.end137:                                        ; preds = %if.then132, %do.body118
  %error_warning = getelementptr i8, ptr %dev, i32 2312
  %70 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %error_warning, align 4
  %inc140 = add i32 %71, 1
  store i32 %inc140, ptr %error_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %shr)
  %cmp143 = icmp ugt i32 %shr, 95
  %spec.select460 = select i1 %cmp143, i8 8, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %shr31)
  %cmp152 = icmp ugt i32 %shr31, 95
  %72 = or i8 %spec.select460, 4
  %spec.select467 = select i1 %cmp152, i8 %72, i8 %spec.select460
  br label %sw.epilog

do.body163:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %sw.epilog)) #10
          to label %if.then177 [label %sw.epilog], !srcloc !194

if.then177:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.39) #10
  br label %sw.epilog

if.then47.unreachabledefault:                     ; preds = %if.then47
  unreachable

sw.epilog:                                        ; preds = %if.then177, %do.body163, %do.end137, %do.end96, %if.then73, %do.end68.sw.epilog_crit_edge
  %cf.sroa.24.2 = phi i8 [ 0, %if.then73 ], [ 0, %do.end68.sw.epilog_crit_edge ], [ 0, %if.then177 ], [ %spec.select466, %do.end96 ], [ %spec.select467, %do.end137 ], [ 0, %do.body163 ]
  %cf.sroa.0.0 = phi i32 [ 64, %if.then73 ], [ 64, %do.end68.sw.epilog_crit_edge ], [ 4, %if.then177 ], [ 4, %do.end96 ], [ 4, %do.end137 ], [ 4, %do.body163 ]
  %conv185 = trunc i32 %and29 to i8
  %conv188 = trunc i32 %and30 to i8
  %73 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %state.0, ptr %state28, align 8
  br label %if.end193

if.end193:                                        ; preds = %sw.epilog, %if.end45.if.end193_crit_edge
  %cf.sroa.41.0 = phi i8 [ %conv188, %sw.epilog ], [ 0, %if.end45.if.end193_crit_edge ]
  %cf.sroa.39.0 = phi i8 [ %conv185, %sw.epilog ], [ 0, %if.end45.if.end193_crit_edge ]
  %cf.sroa.24.3 = phi i8 [ %cf.sroa.24.2, %sw.epilog ], [ 0, %if.end45.if.end193_crit_edge ]
  %cf.sroa.0.1 = phi i32 [ %cf.sroa.0.0, %sw.epilog ], [ 0, %if.end45.if.end193_crit_edge ]
  %restart_ms195 = getelementptr i8, ptr %dev, i32 2484
  %74 = ptrtoint ptr %restart_ms195 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %restart_ms195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool196.not = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp197 = icmp eq i32 %56, 3
  %or.cond461 = select i1 %tobool196.not, i1 %cmp197, i1 false
  br i1 %or.cond461, label %if.then199, label %if.end193.if.end250_crit_edge

if.end193.if.end250_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end250

if.then199:                                       ; preds = %if.end193
  %or201 = or i32 %cf.sroa.0.1, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end222)) #10
          to label %if.then217 [label %do.end222], !srcloc !194

if.then217:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug465, ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %do.end222

do.end222:                                        ; preds = %if.then217, %if.then199
  %restarts = getelementptr i8, ptr %dev, i32 2328
  %76 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %restarts, align 4
  %inc225 = add i32 %77, 1
  store i32 %inc225, ptr %restarts, align 4
  tail call void @netif_carrier_on(ptr noundef %dev) #10
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call232 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %resetting = getelementptr i8, ptr %dev, i32 3056
  %78 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %resetting, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool237.not = icmp eq i8 %79, 0
  br i1 %tobool237.not, label %land.lhs.true238, label %do.end222.if.end247_crit_edge

do.end222.if.end247_crit_edge:                    ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

land.lhs.true238:                                 ; preds = %do.end222
  %closing = getelementptr i8, ptr %dev, i32 3057
  %80 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %closing, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool239.not = icmp eq i8 %81, 0
  br i1 %tobool239.not, label %if.then240, label %land.lhs.true238.if.end247_crit_edge

land.lhs.true238.if.end247_crit_edge:             ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then240:                                       ; preds = %land.lhs.true238
  %txwr241 = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 17
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txwr241) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %tx = getelementptr i8, ptr %dev, i32 2880
  %83 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx, align 4
  %eskbp = getelementptr i8, ptr %dev, i32 2908
  %85 = ptrtoint ptr %eskbp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %eskbp, align 4
  %div4.i = lshr i32 %84, 4
  %sub.i.i492 = sub i32 %84, %86
  %add.i.i.i493 = add i32 %sub.i.i492, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i493, i32 %84)
  %cmp.i.i.i494 = icmp ult i32 %add.i.i.i493, %84
  %sub.i.i.i495 = select i1 %cmp.i.i.i494, i32 0, i32 %84
  %retval.0.i.i.i496 = sub i32 %add.i.i.i493, %sub.i.i.i495
  %div15.i = lshr i32 %retval.0.i.i.i496, 4
  %.neg = add nuw nsw i32 %div15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i, i32 %.neg)
  %tobool244.not = icmp eq i32 %div4.i, %.neg
  br i1 %tobool244.not, label %if.then240.if.end247_crit_edge, label %if.then245

if.then240.if.end247_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then245:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %87 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %88) #10
  br label %if.end247

if.end247:                                        ; preds = %if.then245, %if.then240.if.end247_crit_edge, %land.lhs.true238.if.end247_crit_edge, %do.end222.if.end247_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call232) #10
  br label %if.end250

if.end250:                                        ; preds = %if.end247, %if.end193.if.end250_crit_edge, %if.end21.if.end250_crit_edge
  %cf.sroa.41.1 = phi i8 [ 0, %if.end21.if.end250_crit_edge ], [ %cf.sroa.41.0, %if.end247 ], [ %cf.sroa.41.0, %if.end193.if.end250_crit_edge ]
  %cf.sroa.39.1 = phi i8 [ 0, %if.end21.if.end250_crit_edge ], [ %cf.sroa.39.0, %if.end247 ], [ %cf.sroa.39.0, %if.end193.if.end250_crit_edge ]
  %cf.sroa.24.4 = phi i8 [ 0, %if.end21.if.end250_crit_edge ], [ %cf.sroa.24.3, %if.end247 ], [ %cf.sroa.24.3, %if.end193.if.end250_crit_edge ]
  %cf.sroa.0.3 = phi i32 [ 0, %if.end21.if.end250_crit_edge ], [ %or201, %if.end247 ], [ %cf.sroa.0.1, %if.end193.if.end250_crit_edge ]
  %89 = or i32 %status, %sources
  %90 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %if.end250.if.end287_crit_edge, label %do.body258

if.end250.if.end287_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287

do.body258:                                       ; preds = %if.end250
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %do.end277)) #10
          to label %if.then272 [label %do.end277], !srcloc !194

if.then272:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug466, ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %do.end277

do.end277:                                        ; preds = %if.then272, %do.body258
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %92 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_over_errors, align 4
  %inc278 = add i32 %93, 1
  store i32 %inc278, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %94 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_errors, align 4
  %inc279 = add i32 %95, 1
  store i32 %inc279, ptr %rx_errors, align 4
  %or281 = or i32 %cf.sroa.0.3, 4
  %96 = or i8 %cf.sroa.24.4, 1
  br label %if.end287

if.end287:                                        ; preds = %do.end277, %if.end250.if.end287_crit_edge
  %cf.sroa.24.5 = phi i8 [ %96, %do.end277 ], [ %cf.sroa.24.4, %if.end250.if.end287_crit_edge ]
  %cf.sroa.0.4 = phi i32 [ %or281, %do.end277 ], [ %cf.sroa.0.3, %if.end250.if.end287_crit_edge ]
  %and288 = and i32 %sources, 24
  %and291 = and i32 %status, 8
  %97 = or i32 %and291, %and288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %if.end287.if.end326_crit_edge, label %if.then293

if.end287.if.end326_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end326

if.then293:                                       ; preds = %if.end287
  %and295 = and i32 %sources, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %if.else300, label %if.then297

if.then297:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #12
  %tx_errors298 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %if.end307.sink.split

if.else300:                                       ; preds = %if.then293
  %and301 = and i32 %sources, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %if.else300.if.end307_crit_edge, label %if.then303

if.else300.if.end307_crit_edge:                   ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307

if.then303:                                       ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #12
  %rx_errors304 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  br label %if.end307.sink.split

if.end307.sink.split:                             ; preds = %if.then303, %if.then297
  %rx_errors304.sink514 = phi ptr [ %rx_errors304, %if.then303 ], [ %tx_errors298, %if.then297 ]
  %txrx.0.ph = phi ptr [ @.str.44, %if.then303 ], [ @.str.43, %if.then297 ]
  %99 = ptrtoint ptr %rx_errors304.sink514 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rx_errors304.sink514, align 4
  %inc305 = add i32 %100, 1
  store i32 %inc305, ptr %rx_errors304.sink514, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.end307.sink.split, %if.else300.if.end307_crit_edge
  %txrx.0 = phi ptr [ @.str.42, %if.else300.if.end307_crit_edge ], [ %txrx.0.ph, %if.end307.sink.split ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull %txrx.0) #13
  %lock315 = getelementptr i8, ptr %dev, i32 2912
  %call317 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock315) #10
  %closing322 = getelementptr i8, ptr %dev, i32 3057
  %101 = ptrtoint ptr %closing322 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %closing322, align 1
  %_tx.i.i497 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %102 = ptrtoint ptr %_tx.i.i497 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %_tx.i.i497, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %103, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %104 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs1, align 8
  %imr.i499 = getelementptr inbounds %struct.grcan_registers, ptr %105, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imr.i499, i32 0) #10, !srcloc !193
  %txctrl.i500 = getelementptr inbounds %struct.grcan_registers, ptr %105, i32 0, i32 14
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl.i500) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i.i501 = and i32 %106, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %txctrl.i500, i32 %and.i.i501) #10, !srcloc !193
  %rxctrl.i502 = getelementptr inbounds %struct.grcan_registers, ptr %105, i32 0, i32 21
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rxctrl.i502) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i5.i503 = and i32 %107, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rxctrl.i502, i32 %and.i5.i503) #10, !srcloc !193
  %ctrl.i504 = getelementptr inbounds %struct.grcan_registers, ptr %105, i32 0, i32 2
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ctrl.i504) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i6.i505 = and i32 %108, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ctrl.i504, i32 %and.i6.i505) #10, !srcloc !193
  %state324 = getelementptr i8, ptr %dev, i32 2472
  %109 = ptrtoint ptr %state324 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %state324, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock315, i32 noundef %call317) #10
  br label %if.end326

if.end326:                                        ; preds = %if.end307, %if.end287.if.end326_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cf.sroa.0.4)
  %tobool328.not = icmp eq i32 %cf.sroa.0.4, 0
  br i1 %tobool328.not, label %if.end326.cleanup365_crit_edge, label %if.then329

if.end326.cleanup365_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup365

if.then329:                                       ; preds = %if.end326
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_cf) #10
  %110 = ptrtoint ptr %skb_cf to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb_cf, align 4, !annotation !189
  %call330 = call ptr @alloc_can_err_skb(ptr noundef %dev, ptr noundef nonnull %skb_cf) #10
  %cmp331 = icmp eq ptr %call330, null
  br i1 %cmp331, label %do.body335, label %if.end355

do.body335:                                       ; preds = %if.then329
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grcan_err.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grcan_err, %cleanup365.critedge)) #10
          to label %if.then349 [label %cleanup365.critedge], !srcloc !194

if.then349:                                       ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @grcan_err.__UNIQUE_ID_ddebug467, ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_cf) #10
  br label %cleanup365

if.end355:                                        ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %skb_cf to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skb_cf, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %or358 = or i32 %114, %cf.sroa.0.4
  store i32 %or358, ptr %112, align 8
  %115 = load ptr, ptr %skb_cf, align 4
  %data359 = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %data359 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %data359, align 8
  %cf.sroa.24.8.arraydecay.sroa_idx = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 5, i32 1
  %117 = ptrtoint ptr %cf.sroa.24.8.arraydecay.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %cf.sroa.24.5, ptr %cf.sroa.24.8.arraydecay.sroa_idx, align 1
  %cf.sroa.35.8.arraydecay.sroa_idx = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 5, i32 2
  %cf.sroa.39.8.arraydecay.sroa_idx = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 5, i32 6
  %118 = ptrtoint ptr %cf.sroa.35.8.arraydecay.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 0, ptr %cf.sroa.35.8.arraydecay.sroa_idx, align 2
  %119 = ptrtoint ptr %cf.sroa.39.8.arraydecay.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %cf.sroa.39.1, ptr %cf.sroa.39.8.arraydecay.sroa_idx, align 2
  %cf.sroa.41.8.arraydecay.sroa_idx = getelementptr inbounds %struct.can_frame, ptr %115, i32 0, i32 5, i32 7
  %120 = ptrtoint ptr %cf.sroa.41.8.arraydecay.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %cf.sroa.41.1, ptr %cf.sroa.41.8.arraydecay.sroa_idx, align 1
  %call362 = call i32 @netif_rx(ptr noundef nonnull %call330) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_cf) #10
  br label %cleanup365

cleanup365.critedge:                              ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_cf) #10
  br label %cleanup365

cleanup365:                                       ; preds = %cleanup365.critedge, %if.end355, %if.then349, %if.end326.cleanup365_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_free_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @grcan_write_bits(ptr noundef %reg, i32 noundef %value, i32 noundef %mask) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %neg = xor i32 %mask, -1
  %and = and i32 %0, %neg
  %and1 = and i32 %mask, %value
  %or = or i32 %and, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %or) #10, !srcloc !193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grcan_txbug_workaround(ptr noundef %dev, ptr noundef %skb, i32 noundef %txwr, i32 noundef %oneshotmode, ptr nocapture noundef writeonly %netdev_tx_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr i8, ptr %dev, i32 2848
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %txctrl = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 14
  %txrd = getelementptr inbounds %struct.grcan_registers, ptr %1, i32 0, i32 18
  br label %for.body

for.cond:                                         ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body6, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txctrl) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %txrd) #10, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %txwr)
  %cmp5 = icmp eq i32 %4, %txwr
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %for.cond
  %lock = getelementptr i8, ptr %dev, i32 2912
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %resetting = getelementptr i8, ptr %dev, i32 3056
  %5 = ptrtoint ptr %resetting to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %resetting, align 8, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body6.if.end24_crit_edge

do.body6.if.end24_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %do.body6
  %closing = getelementptr i8, ptr %dev, i32 3057
  %7 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %closing, align 1, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then14:                                        ; preds = %land.lhs.true
  %tx = getelementptr i8, ptr %dev, i32 2880
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx, align 4
  %eskbp = getelementptr i8, ptr %dev, i32 2908
  %11 = ptrtoint ptr %eskbp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eskbp, align 4
  %div4.i = lshr i32 %10, 4
  %sub.i.i = sub i32 %10, %12
  %add.i.i.i = add i32 %sub.i.i, %txwr
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %10)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %10
  %sub.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %10
  %retval.0.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i
  %div15.i = lshr i32 %retval.0.i.i.i, 4
  %.neg = add nuw nsw i32 %div15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.i, i32 %.neg)
  %tobool16.not = icmp eq i32 %div4.i, %.neg
  br i1 %tobool16.not, label %if.then14.if.end18_crit_edge, label %if.then17

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then14.if.end18_crit_edge
  %pprev.i.i = getelementptr i8, ptr %dev, i32 2964
  %15 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.not, label %if.else.i.i, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %hang_timer = getelementptr i8, ptr %dev, i32 2960
  %bittiming = getelementptr i8, ptr %dev, i32 2340
  %17 = ptrtoint ptr %bittiming to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bittiming, align 4
  %div.i.i = udiv i32 384000000, %18
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %div.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, %call3.i.i
  %call2.i = tail call i32 @mod_timer(ptr noundef %hang_timer, i32 noundef %add.i) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else.i.i, %if.end18.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %do.body6.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oneshotmode)
  %tobool26.not = icmp eq i32 %oneshotmode, 0
  br i1 %tobool26.not, label %if.end24.if.end28_crit_edge, label %if.then27

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %storemerge = phi i32 [ 0, %if.then27 ], [ 16, %if.end24.if.end28_crit_edge ]
  %20 = ptrtoint ptr %netdev_tx_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %netdev_tx_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end28 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_show_enable0(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readnone %att, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr i8, ptr %sdev, i32 1748
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %config, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_store_enable0(ptr nocapture noundef %sdev, ptr nocapture noundef readnone %att, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !189
  %flags = getelementptr i8, ptr %sdev, i32 -1000
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp2 = icmp ugt i8 %4, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %4 to i16
  %config = getelementptr i8, ptr %sdev, i32 1748
  %5 = ptrtoint ptr %config to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv6, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_show_enable1(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readnone %att, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %enable1 = getelementptr i8, ptr %sdev, i32 1750
  %0 = ptrtoint ptr %enable1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %enable1, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_store_enable1(ptr nocapture noundef %sdev, ptr nocapture noundef readnone %att, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !189
  %flags = getelementptr i8, ptr %sdev, i32 -1000
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp2 = icmp ugt i8 %4, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %4 to i16
  %enable1 = getelementptr i8, ptr %sdev, i32 1750
  %5 = ptrtoint ptr %enable1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv6, ptr %enable1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_show_select(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readnone %att, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %select = getelementptr i8, ptr %sdev, i32 1752
  %0 = ptrtoint ptr %select to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %select, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grcan_store_select(ptr nocapture noundef %sdev, ptr nocapture noundef readnone %att, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !189
  %flags = getelementptr i8, ptr %sdev, i32 -1000
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp2 = icmp ugt i8 %4, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %4 to i16
  %select = getelementptr i8, ptr %sdev, i32 1752
  %5 = ptrtoint ptr %select to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv6, ptr %select, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !129, !131, !133, !135, !136, !138, !140, !142, !144, !146, !147, !149, !151, !152, !153, !154, !155, !156, !157, !158, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__param_enable0, !1, !"__param_enable0", i1 false, i1 false}
!1 = !{!"../drivers/net/can/grcan.c", i32 1508, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable0type474, !1, !"__UNIQUE_ID_enable0type474", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable0475, !1, !"__UNIQUE_ID_enable0475", i1 false, i1 false}
!4 = !{ptr @__param_enable1, !5, !"__param_enable1", i1 false, i1 false}
!5 = !{!"../drivers/net/can/grcan.c", i32 1513, i32 1}
!6 = !{ptr @__UNIQUE_ID_enable1type476, !5, !"__UNIQUE_ID_enable1type476", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_enable1477, !5, !"__UNIQUE_ID_enable1477", i1 false, i1 false}
!8 = !{ptr @__param_select, !9, !"__param_select", i1 false, i1 false}
!9 = !{!"../drivers/net/can/grcan.c", i32 1518, i32 1}
!10 = !{ptr @__UNIQUE_ID_selecttype478, !9, !"__UNIQUE_ID_selecttype478", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_select479, !9, !"__UNIQUE_ID_select479", i1 false, i1 false}
!12 = !{ptr @__param_txsize, !13, !"__param_txsize", i1 false, i1 false}
!13 = !{!"../drivers/net/can/grcan.c", i32 1525, i32 1}
!14 = !{ptr @__UNIQUE_ID_txsizetype480, !13, !"__UNIQUE_ID_txsizetype480", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_txsize481, !13, !"__UNIQUE_ID_txsize481", i1 false, i1 false}
!16 = !{ptr @__param_rxsize, !17, !"__param_rxsize", i1 false, i1 false}
!17 = !{!"../drivers/net/can/grcan.c", i32 1529, i32 1}
!18 = !{ptr @__UNIQUE_ID_rxsizetype482, !17, !"__UNIQUE_ID_rxsizetype482", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_rxsize483, !17, !"__UNIQUE_ID_rxsize483", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_grcan__485_1724_grcan_driver_init6, !21, !"__initcall__kmod_grcan__485_1724_grcan_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/can/grcan.c", i32 1724, i32 1}
!22 = !{ptr @__exitcall_grcan_driver_exit, !21, !"__exitcall_grcan_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author486, !24, !"__UNIQUE_ID_author486", i1 false, i1 false}
!24 = !{!"../drivers/net/can/grcan.c", i32 1726, i32 1}
!25 = !{ptr @__UNIQUE_ID_description487, !26, !"__UNIQUE_ID_description487", i1 false, i1 false}
!26 = !{!"../drivers/net/can/grcan.c", i32 1727, i32 1}
!27 = !{ptr @__UNIQUE_ID_file488, !28, !"__UNIQUE_ID_file488", i1 false, i1 false}
!28 = !{!"../drivers/net/can/grcan.c", i32 1728, i32 1}
!29 = !{ptr @__UNIQUE_ID_license489, !28, !"__UNIQUE_ID_license489", i1 false, i1 false}
!30 = !{ptr @__param_str_enable0, !1, !"__param_str_enable0", i1 false, i1 false}
!31 = !{ptr @grcan_module_config, !32, !"grcan_module_config", i1 false, i1 false}
!32 = !{!"../drivers/net/can/grcan.c", i32 387, i32 35}
!33 = !{ptr @__param_str_enable1, !5, !"__param_str_enable1", i1 false, i1 false}
!34 = !{ptr @__param_str_select, !9, !"__param_str_select", i1 false, i1 false}
!35 = !{ptr @__param_str_txsize, !13, !"__param_str_txsize", i1 false, i1 false}
!36 = !{ptr @__param_str_rxsize, !17, !"__param_str_rxsize", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/grcan.c", i32 1717, i32 11}
!39 = !{ptr @grcan_driver, !40, !"grcan_driver", i1 false, i1 false}
!40 = !{!"../drivers/net/can/grcan.c", i32 1715, i32 31}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/grcan.c", i32 1650, i32 33}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/grcan.c", i32 1655, i32 33}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/grcan.c", i32 1657, i32 3}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @grcan_probe._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @grcan_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/grcan.c", i32 1669, i32 3}
!55 = !{ptr @grcan_probe._entry.8, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @grcan_probe._entry_ptr.10, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/grcan.c", i32 1685, i32 2}
!59 = !{ptr @grcan_probe._entry.11, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @grcan_probe._entry_ptr.13, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @grcan_sanitize_enable0._entry, !1, !"_entry", i1 false, i1 false}
!64 = !{ptr @grcan_sanitize_enable0._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @grcan_sanitize_enable1._entry, !5, !"_entry", i1 false, i1 false}
!68 = !{ptr @grcan_sanitize_enable1._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @grcan_sanitize_select._entry, !9, !"_entry", i1 false, i1 false}
!72 = !{ptr @grcan_sanitize_select._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @grcan_sanitize_txsize._entry, !13, !"_entry", i1 false, i1 false}
!76 = !{ptr @grcan_sanitize_txsize._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.22, !17, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.23, !17, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @grcan_sanitize_rxsize._entry, !17, !"_entry", i1 false, i1 false}
!80 = !{ptr @grcan_sanitize_rxsize._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/can/grcan.c", i32 1606, i32 3}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @grcan_setup_netdev.__UNIQUE_ID_ddebug484, !82, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!85 = !{ptr @grcan_setup_netdev.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/can/grcan.c", i32 1609, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @grcan_setup_netdev.__key.27, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/can/grcan.c", i32 1612, i32 3}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @grcan_setup_netdev.__key.29, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/net/can/grcan.c", i32 1613, i32 3}
!93 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/can/grcan.c", i32 1619, i32 2}
!96 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @grcan_setup_netdev._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @grcan_setup_netdev._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @grcan_netdev_ops, !100, !"grcan_netdev_ops", i1 false, i1 false}
!100 = !{!"../drivers/net/can/grcan.c", i32 1561, i32 36}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/grcan.c", i32 1049, i32 19}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/can/grcan.c", i32 595, i32 4}
!105 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @grcan_err.__UNIQUE_ID_ddebug460, !104, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/can/grcan.c", i32 629, i32 5}
!109 = !{ptr @grcan_err.__UNIQUE_ID_ddebug461, !108, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!110 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/grcan.c", i32 643, i32 5}
!112 = !{ptr @grcan_err.__UNIQUE_ID_ddebug462, !111, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/can/grcan.c", i32 654, i32 5}
!115 = !{ptr @grcan_err.__UNIQUE_ID_ddebug463, !114, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/can/grcan.c", i32 665, i32 5}
!118 = !{ptr @grcan_err.__UNIQUE_ID_ddebug464, !117, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/can/grcan.c", i32 683, i32 4}
!121 = !{ptr @grcan_err.__UNIQUE_ID_ddebug465, !120, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/can/grcan.c", i32 703, i32 3}
!124 = !{ptr @grcan_err.__UNIQUE_ID_ddebug466, !123, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/can/grcan.c", i32 716, i32 16}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/can/grcan.c", i32 720, i32 11}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/can/grcan.c", i32 723, i32 11}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/can/grcan.c", i32 726, i32 19}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/can/grcan.c", i32 748, i32 4}
!135 = !{ptr @grcan_err.__UNIQUE_ID_ddebug467, !134, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/can/grcan.c", i32 544, i32 19}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/can/grcan.c", i32 1382, i32 19}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/can/grcan.c", i32 1411, i32 19}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/can/grcan.c", i32 1414, i32 19}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!146 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sysfs_grcan_group, !148, !"sysfs_grcan_group", i1 false, i1 false}
!148 = !{!"../drivers/net/can/grcan.c", i32 1554, i32 37}
!149 = !{ptr @sysfs_grcan_attrs, !150, !"sysfs_grcan_attrs", i1 false, i1 false}
!150 = !{!"../drivers/net/can/grcan.c", i32 1546, i32 38}
!151 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dev_attr_enable0, !1, !"dev_attr_enable0", i1 false, i1 false}
!153 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.54, !5, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @dev_attr_enable1, !5, !"dev_attr_enable1", i1 false, i1 false}
!156 = !{ptr @.str.55, !9, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dev_attr_select, !9, !"dev_attr_select", i1 false, i1 false}
!158 = !{ptr @grcan_bittiming_const, !159, !"grcan_bittiming_const", i1 false, i1 false}
!159 = !{!"../drivers/net/can/grcan.c", i32 390, i32 41}
!160 = !{ptr @.str.56, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/can/grcan.c", i32 421, i32 2}
!162 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @grcan_set_bittiming.__UNIQUE_ID_ddebug459, !161, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/can/grcan.c", i32 424, i32 19}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/can/grcan.c", i32 429, i32 19}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/can/grcan.c", i32 439, i32 19}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/can/grcan.c", i32 1027, i32 21}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/can/grcan.c", i32 867, i32 18}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/can/grcan.c", i32 901, i32 18}
!176 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/can/grcan.c", i32 1176, i32 8}
!178 = !{ptr @grcan_match, !179, !"grcan_match", i1 false, i1 false}
!179 = !{!"../drivers/net/can/grcan.c", i32 1705, i32 34}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i64 4664444}
!191 = !{i64 2157124717}
!192 = !{i64 2157125113}
!193 = !{i64 4664026}
!194 = !{i64 2148739649, i64 2148739654, i64 2148739667, i64 2148739711, i64 2148739745, i64 2148739766}
!195 = !{i8 0, i8 2}
!196 = !{i64 2157160513}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2157163798}
