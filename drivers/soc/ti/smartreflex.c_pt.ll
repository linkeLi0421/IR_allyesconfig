; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/smartreflex.c_pt.bc'
source_filename = "../drivers/soc/ti/smartreflex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_sr = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.omap_sr_nvalue_table = type { i32, i32, i32, i32 }
%struct.omap_sr_class_data = type { ptr, ptr, ptr, ptr, i8, i8 }
%struct.omap_sr_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr }

@sr_configure_errgen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: NULL omap_sr from %pS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sr_configure_errgen\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/ti/smartreflex.c\00", [35 x i8] zeroinitializer }, align 32
@sr_configure_errgen._entry_ptr = internal global ptr @sr_configure_errgen._entry, section ".printk_index", align 4
@sr_configure_errgen._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: Trying to Configure smartreflex module without specifying the ip\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sr_configure_errgen._entry_ptr.7 = internal global ptr @sr_configure_errgen._entry.3, section ".printk_index", align 4
@sr_disable_errgen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr_disable_errgen\00", [46 x i8] zeroinitializer }, align 32
@sr_disable_errgen._entry_ptr = internal global ptr @sr_disable_errgen._entry, section ".printk_index", align 4
@sr_disable_errgen._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.2, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sr_disable_errgen._entry_ptr.10 = internal global ptr @sr_disable_errgen._entry.9, section ".printk_index", align 4
@sr_configure_minmax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sr_configure_minmax\00", [44 x i8] zeroinitializer }, align 32
@sr_configure_minmax._entry_ptr = internal global ptr @sr_configure_minmax._entry, section ".printk_index", align 4
@sr_configure_minmax._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sr_configure_minmax._entry_ptr.13 = internal global ptr @sr_configure_minmax._entry.12, section ".printk_index", align 4
@sr_configure_minmax._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sr_configure_minmax._entry_ptr.15 = internal global ptr @sr_configure_minmax._entry.14, section ".printk_index", align 4
@sr_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sr_enable\00", [22 x i8] zeroinitializer }, align 32
@sr_enable._entry_ptr = internal global ptr @sr_enable._entry, section ".printk_index", align 4
@sr_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 565, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Unable to get voltage table for nominal voltage %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sr_enable._entry_ptr.20 = internal global ptr @sr_enable._entry.17, section ".printk_index", align 4
@sr_enable._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 573, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: failure getting SR data for this voltage %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@sr_enable._entry_ptr.23 = internal global ptr @sr_enable._entry.21, section ".printk_index", align 4
@sr_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sr_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sr_disable\00", [21 x i8] zeroinitializer }, align 32
@sr_disable._entry_ptr = internal global ptr @sr_disable._entry, section ".printk_index", align 4
@sr_disable._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UNKNOWN IP type %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sr_disable._entry_ptr.27 = internal global ptr @sr_disable._entry.25, section ".printk_index", align 4
@sr_register_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s:, Smartreflex class data passed is NULL\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr_register_class\00", [46 x i8] zeroinitializer }, align 32
@sr_register_class._entry_ptr = internal global ptr @sr_register_class._entry, section ".printk_index", align 4
@sr_register_class._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Smartreflex class driver already registered\0A\00", [45 x i8] zeroinitializer }, align 32
@sr_register_class._entry_ptr.32 = internal global ptr @sr_register_class._entry.30, section ".printk_index", align 4
@sr_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sr_list, ptr @sr_list }, [24 x i8] zeroinitializer }, align 32
@omap_sr_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: omap_sr struct for voltdm not found\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_sr_enable\00", [17 x i8] zeroinitializer }, align 32
@omap_sr_enable._entry_ptr = internal global ptr @omap_sr_enable._entry, section ".printk_index", align 4
@omap_sr_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 703, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: smartreflex class driver not registered\0A\00", [51 x i8] zeroinitializer }, align 32
@omap_sr_enable._entry_ptr.37 = internal global ptr @omap_sr_enable._entry.35, section ".printk_index", align 4
@omap_sr_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.38, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_sr_disable\00", [16 x i8] zeroinitializer }, align 32
@omap_sr_disable._entry_ptr = internal global ptr @omap_sr_disable._entry, section ".printk_index", align 4
@omap_sr_disable._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.38, ptr @.str.2, i32 735, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_sr_disable._entry_ptr.40 = internal global ptr @omap_sr_disable._entry.39, section ".printk_index", align 4
@omap_sr_disable_reset_volt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.41, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_sr_disable_reset_volt\00", [37 x i8] zeroinitializer }, align 32
@omap_sr_disable_reset_volt._entry_ptr = internal global ptr @omap_sr_disable_reset_volt._entry, section ".printk_index", align 4
@omap_sr_disable_reset_volt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.41, ptr @.str.2, i32 767, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_sr_disable_reset_volt._entry_ptr.43 = internal global ptr @omap_sr_disable_reset_volt._entry.42, section ".printk_index", align 4
@__initcall__kmod_smartreflex__228_1024_sr_init7 = internal global ptr @sr_init, section ".initcall7.init", align 4
@smartreflex_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_sr_probe, ptr @omap_sr_remove, ptr @omap_sr_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.59, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_sr_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sr_exit = internal global ptr @sr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [48 x i8] c"smartreflex.description=OMAP Smartreflex Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [44 x i8] c"smartreflex.file=drivers/soc/ti/smartreflex\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [24 x i8] c"smartreflex.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [39 x i8] c"smartreflex.alias=platform:smartreflex\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [41 x i8] c"smartreflex.author=Texas Instruments Inc\00", section ".modinfo", align 1
@sr_set_clk_length._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid fclk rate: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr_set_clk_length\00", [46 x i8] zeroinitializer }, align 32
@sr_set_clk_length._entry_ptr = internal global ptr @sr_set_clk_length._entry, section ".printk_index", align 4
@sr_retrieve_nvalue_row._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 315, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Missing ntarget value table\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sr_retrieve_nvalue_row\00", [41 x i8] zeroinitializer }, align 32
@sr_retrieve_nvalue_row._entry_ptr = internal global ptr @sr_retrieve_nvalue_row._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sr_v1_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 256, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Smartreflex disable timedout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_v1_disable\00", [18 x i8] zeroinitializer }, align 32
@sr_v1_disable._entry_ptr = internal global ptr @sr_v1_disable._entry, section ".printk_index", align 4
@sr_v2_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.2, i32 301, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_v2_disable\00", [18 x i8] zeroinitializer }, align 32
@sr_v2_disable._entry_ptr = internal global ptr @sr_v2_disable._entry, section ".printk_index", align 4
@sr_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: ERROR in registering interrupt handler. Smartreflex will not function as desired\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr_late_init\00", [19 x i8] zeroinitializer }, align 32
@sr_late_init._entry_ptr = internal global ptr @sr_late_init._entry, section ".printk_index", align 4
@sr_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.53, ptr @.str.2, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr_interrupt\00", [19 x i8] zeroinitializer }, align 32
@sr_interrupt._entry_ptr = internal global ptr @sr_interrupt._entry, section ".printk_index", align 4
@sr_start_vddautocomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.54, ptr @.str.2, i32 165, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sr_start_vddautocomp\00", [43 x i8] zeroinitializer }, align 32
@sr_start_vddautocomp._entry_ptr = internal global ptr @sr_start_vddautocomp._entry, section ".printk_index", align 4
@_sr_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Null voltage domain passed!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_sr_lookup\00", [21 x i8] zeroinitializer }, align 32
@_sr_lookup._entry_ptr = internal global ptr @_sr_lookup._entry, section ".printk_index", align 4
@sr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: platform driver register failed for SR\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sr_init\00", [24 x i8] zeroinitializer }, align 32
@sr_init._entry_ptr = internal global ptr @sr_init._entry, section ".printk_index", align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smartreflex\00", [20 x i8] zeroinitializer }, align 32
@omap_sr_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-smartreflex-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-smartreflex-mpu-iva\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-smartreflex-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-smartreflex-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-smartreflex-iva\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: platform data missing\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_sr_probe\00", [18 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry_ptr = internal global ptr @omap_sr_probe._entry, section ".printk_index", align 4
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Error in SR late init\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry_ptr.66 = internal global ptr @omap_sr_probe._entry.64, section ".printk_index", align 4
@omap_sr_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.61, ptr @.str.2, i32 892, ptr @.str.69, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: SmartReflex driver initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry_ptr.70 = internal global ptr @omap_sr_probe._entry.67, section ".printk_index", align 4
@sr_dbg_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"autocomp\00", [23 x i8] zeroinitializer }, align 32
@pm_sr_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pm_sr_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"errweight\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"errmaxlimit\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nvalue\00", [25 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.61, ptr @.str.2, i32 909, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: %s: No Voltage table for the corresponding vdd. Cannot create debugfs entries for n-values\0A\00", [32 x i8] zeroinitializer }, align 32
@omap_sr_probe._entry_ptr.77 = internal global ptr @omap_sr_probe._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"volt_%lu\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errminlimit_%lu\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@omap_sr_autocomp_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: omap_sr struct not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_sr_autocomp_show\00", [42 x i8] zeroinitializer }, align 32
@omap_sr_autocomp_show._entry_ptr = internal global ptr @omap_sr_autocomp_show._entry, section ".printk_index", align 4
@omap_sr_autocomp_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.83, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_sr_autocomp_store\00", [41 x i8] zeroinitializer }, align 32
@omap_sr_autocomp_store._entry_ptr = internal global ptr @omap_sr_autocomp_store._entry, section ".printk_index", align 4
@omap_sr_autocomp_store._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Invalid argument %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_sr_autocomp_store._entry_ptr.86 = internal global ptr @omap_sr_autocomp_store._entry.84, section ".printk_index", align 4
@sr_stop_vddautocomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.87, ptr @.str.2, i32 178, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sr_stop_vddautocomp\00", [44 x i8] zeroinitializer }, align 32
@sr_stop_vddautocomp._entry_ptr = internal global ptr @sr_stop_vddautocomp._entry, section ".printk_index", align 4
@omap_sr_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.88, ptr @.str.2, i32 947, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_sr_remove\00", [17 x i8] zeroinitializer }, align 32
@omap_sr_remove._entry_ptr = internal global ptr @omap_sr_remove._entry, section ".printk_index", align 4
@omap_sr_remove._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 954, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: omap_sr struct not found\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_sr_remove._entry_ptr.91 = internal global ptr @omap_sr_remove._entry.89, section ".printk_index", align 4
@omap_sr_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.92, ptr @.str.2, i32 974, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_sr_shutdown\00", [47 x i8] zeroinitializer }, align 32
@omap_sr_shutdown._entry_ptr = internal global ptr @omap_sr_shutdown._entry, section ".printk_index", align 4
@omap_sr_shutdown._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.92, ptr @.str.2, i32 981, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_sr_shutdown._entry_ptr.94 = internal global ptr @omap_sr_shutdown._entry.93, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 13000000, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 349, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 380, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 416, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 433, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 471, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 497, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 530, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 556, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 564, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 572, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"sr_class\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 36, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 612, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 634, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 656, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 662, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [8 x i8] c"sr_list\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 34, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 694, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 702, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 726, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 734, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 758, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 766, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"smartreflex_driver\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1001, i32 31 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 154, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 314, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 255, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 300, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 219, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 116, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 163, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 83, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1017, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 1006, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant [14 x i8] c"omap_sr_match\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 991, i32 34 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 838, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 849, i32 48 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 856, i32 48 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 887, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 892, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [11 x i8] c"sr_dbg_dir\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 37, i32 24 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 898, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"pm_sr_fops\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 900, i32 21 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 902, i32 21 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 905, i32 34 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 908, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 918, i32 32 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 922, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 815, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 780, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 794, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 800, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 176, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 947, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 953, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 974, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.425 = private constant [32 x i8] c"../drivers/soc/ti/smartreflex.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 980, i32 3 }
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_sr_exit, ptr @__initcall__kmod_smartreflex__228_1024_sr_init7, ptr @_sr_lookup._entry, ptr @_sr_lookup._entry_ptr, ptr @omap_sr_autocomp_show._entry, ptr @omap_sr_autocomp_show._entry_ptr, ptr @omap_sr_autocomp_store._entry, ptr @omap_sr_autocomp_store._entry.84, ptr @omap_sr_autocomp_store._entry_ptr, ptr @omap_sr_autocomp_store._entry_ptr.86, ptr @omap_sr_disable._entry, ptr @omap_sr_disable._entry.39, ptr @omap_sr_disable._entry_ptr, ptr @omap_sr_disable._entry_ptr.40, ptr @omap_sr_disable_reset_volt._entry, ptr @omap_sr_disable_reset_volt._entry.42, ptr @omap_sr_disable_reset_volt._entry_ptr, ptr @omap_sr_disable_reset_volt._entry_ptr.43, ptr @omap_sr_enable._entry, ptr @omap_sr_enable._entry.35, ptr @omap_sr_enable._entry_ptr, ptr @omap_sr_enable._entry_ptr.37, ptr @omap_sr_probe._entry, ptr @omap_sr_probe._entry.64, ptr @omap_sr_probe._entry.67, ptr @omap_sr_probe._entry.75, ptr @omap_sr_probe._entry_ptr, ptr @omap_sr_probe._entry_ptr.66, ptr @omap_sr_probe._entry_ptr.70, ptr @omap_sr_probe._entry_ptr.77, ptr @omap_sr_remove._entry, ptr @omap_sr_remove._entry.89, ptr @omap_sr_remove._entry_ptr, ptr @omap_sr_remove._entry_ptr.91, ptr @omap_sr_shutdown._entry, ptr @omap_sr_shutdown._entry.93, ptr @omap_sr_shutdown._entry_ptr, ptr @omap_sr_shutdown._entry_ptr.94, ptr @sr_configure_errgen._entry, ptr @sr_configure_errgen._entry.3, ptr @sr_configure_errgen._entry_ptr, ptr @sr_configure_errgen._entry_ptr.7, ptr @sr_configure_minmax._entry, ptr @sr_configure_minmax._entry.12, ptr @sr_configure_minmax._entry.14, ptr @sr_configure_minmax._entry_ptr, ptr @sr_configure_minmax._entry_ptr.13, ptr @sr_configure_minmax._entry_ptr.15, ptr @sr_disable._entry, ptr @sr_disable._entry.25, ptr @sr_disable._entry_ptr, ptr @sr_disable._entry_ptr.27, ptr @sr_disable_errgen._entry, ptr @sr_disable_errgen._entry.9, ptr @sr_disable_errgen._entry_ptr, ptr @sr_disable_errgen._entry_ptr.10, ptr @sr_enable._entry, ptr @sr_enable._entry.17, ptr @sr_enable._entry.21, ptr @sr_enable._entry_ptr, ptr @sr_enable._entry_ptr.20, ptr @sr_enable._entry_ptr.23, ptr @sr_exit, ptr @sr_init._entry, ptr @sr_init._entry_ptr, ptr @sr_interrupt._entry, ptr @sr_interrupt._entry_ptr, ptr @sr_late_init._entry, ptr @sr_late_init._entry_ptr, ptr @sr_register_class._entry, ptr @sr_register_class._entry.30, ptr @sr_register_class._entry_ptr, ptr @sr_register_class._entry_ptr.32, ptr @sr_retrieve_nvalue_row._entry, ptr @sr_retrieve_nvalue_row._entry_ptr, ptr @sr_set_clk_length._entry, ptr @sr_set_clk_length._entry_ptr, ptr @sr_start_vddautocomp._entry, ptr @sr_start_vddautocomp._entry_ptr, ptr @sr_stop_vddautocomp._entry, ptr @sr_stop_vddautocomp._entry_ptr, ptr @sr_v1_disable._entry, ptr @sr_v1_disable._entry_ptr, ptr @sr_v2_disable._entry, ptr @sr_v2_disable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @sr_class, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @sr_list, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @smartreflex_driver, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @omap_sr_match, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @sr_dbg_dir, ptr @.str.71, ptr @pm_sr_fops, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_configure_errgen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_configure_errgen._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_disable_errgen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_disable_errgen._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_configure_minmax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_configure_minmax._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_configure_minmax._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_enable._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_disable._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_register_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_register_class._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_disable._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_disable_reset_volt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_disable_reset_volt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smartreflex_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_set_clk_length._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_retrieve_nvalue_row._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_v1_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_v2_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_start_vddautocomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sr_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_dbg_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_sr_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_autocomp_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_autocomp_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_autocomp_store._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_stop_vddautocomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_remove._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sr_shutdown._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_configure_errgen(ptr noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_length = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %1 = ptrtoint ptr %clk_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %fck.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 7
  %3 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fck.i, align 4
  %cmp.i.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then2.if.end3_crit_edge, label %if.end.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %5 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %do.end.i [
    i32 12000000, label %sw.bb.i
    i32 13000000, label %sw.bb3.i
    i32 19200000, label %sw.bb5.i
    i32 26000000, label %sw.bb7.i
    i32 38400000, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 60, ptr %clk_length, align 4
  br label %if.end3

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65, ptr %clk_length, align 4
  br label %if.end3

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 96, ptr %clk_length, align 4
  br label %if.end3

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 130, ptr %clk_length, align 4
  br label %if.end3

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 192, ptr %clk_length, align 4
  br label %if.end3

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %call2.i) #10
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %senp_mod = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 19
  %13 = ptrtoint ptr %senp_mod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %senp_mod, align 4
  %senn_mod = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 20
  %15 = ptrtoint ptr %senn_mod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %senn_mod, align 4
  %17 = ptrtoint ptr %clk_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_length, align 4
  %shl = shl i32 %18, 12
  %ip_type = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 9
  %19 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ip_type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %20, label %do.end10 [
    i32 1, label %if.end3.sw.epilog_crit_edge
    i32 2, label %sw.bb7
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %if.end3.sw.epilog_crit_edge
  %.sink = phi i32 [ 1536, %sw.bb7 ], [ 1540, %if.end3.sw.epilog_crit_edge ]
  %cmp1.i = phi i1 [ false, %sw.bb7 ], [ true, %if.end3.sw.epilog_crit_edge ]
  %cmp5.i = phi i1 [ true, %sw.bb7 ], [ false, %if.end3.sw.epilog_crit_edge ]
  %errconfig_offs.0 = phi i32 [ 56, %sw.bb7 ], [ 36, %if.end3.sw.epilog_crit_edge ]
  %vpboundint_en.0 = phi i32 [ 4194304, %sw.bb7 ], [ -2147483648, %if.end3.sw.epilog_crit_edge ]
  %vpboundint_st.0 = phi i32 [ 8388608, %sw.bb7 ], [ 1073741824, %if.end3.sw.epilog_crit_edge ]
  %senp_shift.0 = phi i32 [ 0, %sw.bb7 ], [ 3, %if.end3.sw.epilog_crit_edge ]
  %senn_shift.0 = phi i32 [ 1, %sw.bb7 ], [ 5, %if.end3.sw.epilog_crit_edge ]
  %or5 = or i32 %shl, %.sink
  %shl11 = shl i32 %16, %senn_shift.0
  %shl13 = shl i32 %14, %senp_shift.0
  %or14 = or i32 %shl13, %or5
  %or15 = or i32 %or14, %shl11
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 21
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %or15) #7, !srcloc !227
  %err_weight = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 13
  %26 = ptrtoint ptr %err_weight to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err_weight, align 4
  %shl16 = shl i32 %27, 16
  %err_maxlimit = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 15
  %28 = ptrtoint ptr %err_maxlimit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err_maxlimit, align 4
  %shl17 = shl i32 %29, 8
  %or18 = or i32 %shl17, %shl16
  %err_minlimit = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 14
  %30 = ptrtoint ptr %err_minlimit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err_minlimit, align 4
  %or20 = or i32 %or18, %31
  %32 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i = icmp eq i32 %33, 1
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp3.i = icmp eq i32 %33, 2
  %or.cond25.i = and i1 %cmp5.i, %cmp3.i
  %spec.select.i = select i1 %or.cond25.i, i32 8912895, i32 524287
  %mask.addr.0.i = select i1 %or.cond.i, i32 1430781951, i32 %spec.select.i
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %errconfig_offs.0
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !228
  %neg.i = xor i32 %mask.addr.0.i, -1
  %and.i = and i32 %36, %neg.i
  %and9.i = and i32 %mask.addr.0.i, %or20
  %or10.i = or i32 %and.i, %and9.i
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %38, i32 %errconfig_offs.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %or10.i) #7, !srcloc !227
  %or21 = or i32 %vpboundint_st.0, %vpboundint_en.0
  %39 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i49 = icmp eq i32 %40, 1
  %or.cond.i51 = and i1 %cmp1.i, %cmp.i49
  br i1 %or.cond.i51, label %if.then.i52, label %if.else.i57

if.then.i52:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %or21, 1430257664
  br label %sr_modify_reg.exit66

if.else.i57:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp3.i53 = icmp eq i32 %40, 2
  %or.cond25.i55 = and i1 %cmp5.i, %cmp3.i53
  %or7.i = or i32 %or21, 8388608
  %spec.select.i56 = select i1 %or.cond25.i55, i32 %or7.i, i32 %or21
  br label %sr_modify_reg.exit66

sr_modify_reg.exit66:                             ; preds = %if.else.i57, %if.then.i52
  %mask.addr.0.i58 = phi i32 [ %or.i, %if.then.i52 ], [ %spec.select.i56, %if.else.i57 ]
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %42, i32 %errconfig_offs.0
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #7, !srcloc !228
  %neg.i61 = xor i32 %mask.addr.0.i58, -1
  %and.i62 = and i32 %43, %neg.i61
  %and9.i63 = and i32 %mask.addr.0.i58, %vpboundint_en.0
  %or10.i64 = or i32 %and.i62, %and9.i63
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr12.i65 = getelementptr i8, ptr %45, i32 %errconfig_offs.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i65, i32 %or10.i64) #7, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %sr_modify_reg.exit66, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %sr_modify_reg.exit66 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sr_set_clk_length(ptr nocapture noundef %sr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fck = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 7
  %0 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fck, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %2 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call2, label %do.end [
    i32 12000000, label %sw.bb
    i32 13000000, label %sw.bb3
    i32 19200000, label %sw.bb5
    i32 26000000, label %sw.bb7
    i32 38400000, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk_length = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %3 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60, ptr %clk_length, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk_length4 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %4 = ptrtoint ptr %clk_length4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65, ptr %clk_length4, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk_length6 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %5 = ptrtoint ptr %clk_length6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 96, ptr %clk_length6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk_length8 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %6 = ptrtoint ptr %clk_length8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 130, ptr %clk_length8, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk_length10 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %7 = ptrtoint ptr %clk_length10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 192, ptr %clk_length10, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_disable_errgen(ptr noundef readonly %sr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_type = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 9
  %1 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ip_type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %2, label %do.end4 [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %cmp1.i = phi i1 [ true, %if.end.sw.epilog_crit_edge ], [ false, %sw.bb1 ]
  %cmp5.i = phi i1 [ false, %if.end.sw.epilog_crit_edge ], [ true, %sw.bb1 ]
  %errconfig_offs.0 = phi i32 [ 36, %if.end.sw.epilog_crit_edge ], [ 56, %sw.bb1 ]
  %vpboundint_en.0 = phi i32 [ -2147483648, %if.end.sw.epilog_crit_edge ], [ 4194304, %sw.bb1 ]
  %vpboundint_st.0 = phi i32 [ 1073741824, %if.end.sw.epilog_crit_edge ], [ 8388608, %sw.bb1 ]
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 21
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !228
  %and.i = and i32 %8, -1537
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i) #7, !srcloc !227
  %or = or i32 %vpboundint_st.0, %vpboundint_en.0
  %11 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i12 = icmp eq i32 %12, 1
  %or.cond.i = and i1 %cmp1.i, %cmp.i12
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %or, 1430257664
  br label %sr_modify_reg.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp3.i13 = icmp eq i32 %12, 2
  %or.cond25.i = and i1 %cmp5.i, %cmp3.i13
  %or7.i = or i32 %or, 8388608
  %spec.select.i = select i1 %or.cond25.i, i32 %or7.i, i32 %or
  br label %sr_modify_reg.exit

sr_modify_reg.exit:                               ; preds = %if.else.i, %if.then.i
  %mask.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %spec.select.i, %if.else.i ]
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %errconfig_offs.0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !228
  %neg.i = xor i32 %mask.addr.0.i, -1
  %and.i15 = and i32 %15, %neg.i
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %17, i32 %errconfig_offs.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %and.i15) #7, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %sr_modify_reg.exit, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ 0, %sr_modify_reg.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_configure_minmax(ptr noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_length = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 12
  %1 = ptrtoint ptr %clk_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %fck.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 7
  %3 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fck.i, align 4
  %cmp.i.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then2.if.end3_crit_edge, label %if.end.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %4) #7
  %5 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call2.i, label %do.end.i [
    i32 12000000, label %sw.bb.i
    i32 13000000, label %sw.bb3.i
    i32 19200000, label %sw.bb5.i
    i32 26000000, label %sw.bb7.i
    i32 38400000, label %sw.bb9.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 60, ptr %clk_length, align 4
  br label %if.end3

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65, ptr %clk_length, align 4
  br label %if.end3

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 96, ptr %clk_length, align 4
  br label %if.end3

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 130, ptr %clk_length, align 4
  br label %if.end3

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %clk_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 192, ptr %clk_length, align 4
  br label %if.end3

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %call2.i) #10
  br label %if.end3

if.end3:                                          ; preds = %do.end.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %senp_mod = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 19
  %13 = ptrtoint ptr %senp_mod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %senp_mod, align 4
  %senn_mod = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 20
  %15 = ptrtoint ptr %senn_mod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %senn_mod, align 4
  %17 = ptrtoint ptr %clk_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_length, align 4
  %shl = shl i32 %18, 12
  %accum_data = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 16
  %19 = ptrtoint ptr %accum_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %accum_data, align 4
  %shl5 = shl i32 %20, 22
  %or = or i32 %shl5, %shl
  %ip_type = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 9
  %21 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ip_type, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %22, label %do.end11 [
    i32 1, label %if.end3.sw.epilog_crit_edge
    i32 2, label %sw.bb8
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %if.end3.sw.epilog_crit_edge
  %.sink = phi i32 [ 1024, %sw.bb8 ], [ 1028, %if.end3.sw.epilog_crit_edge ]
  %senp_shift.0 = phi i32 [ 0, %sw.bb8 ], [ 3, %if.end3.sw.epilog_crit_edge ]
  %senn_shift.0 = phi i32 [ 1, %sw.bb8 ], [ 5, %if.end3.sw.epilog_crit_edge ]
  %or6 = or i32 %or, %.sink
  %shl12 = shl i32 %16, %senn_shift.0
  %shl14 = shl i32 %14, %senp_shift.0
  %or15 = or i32 %shl14, %or6
  %or16 = or i32 %or15, %shl12
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 21
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %or16) #7, !srcloc !227
  %senp_avgweight = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 18
  %28 = ptrtoint ptr %senp_avgweight to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %senp_avgweight, align 4
  %shl17 = shl i32 %29, 2
  %senn_avgweight = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 17
  %30 = ptrtoint ptr %senn_avgweight to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %senn_avgweight, align 4
  %or19 = or i32 %shl17, %31
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or19) #7, !srcloc !227
  %34 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ip_type, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %35, label %do.end26 [
    i32 1, label %sr_modify_reg.exit
    i32 2, label %sw.bb22
  ]

sr_modify_reg.exit:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #7, !srcloc !228
  %and.i = and i32 %39, -2134900737
  %or10.i = or i32 %and.i, 1056964608
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %or10.i) #7, !srcloc !227
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 15) #7, !srcloc !227
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 15) #7, !srcloc !227
  br label %cleanup

do.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pdev27 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %46 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev27, align 4
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %sw.bb22, %sr_modify_reg.exit, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end26 ], [ -22, %do.end ], [ 0, %sw.bb22 ], [ 0, %sr_modify_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_enable(ptr noundef %sr, i32 noundef %volt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltdm = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 4
  %1 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %voltdm, align 4
  %call1 = tail call ptr @omap_voltage_get_voltdata(ptr noundef %2, i32 noundef %volt) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %volt) #10
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %sr_efuse_offs = getelementptr inbounds %struct.omap_volt_data, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %sr_efuse_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr_efuse_offs, align 4
  %nvalue_table.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 3
  %8 = ptrtoint ptr %nvalue_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nvalue_table.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end8
  %nvalue_count.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 10
  %10 = ptrtoint ptr %nvalue_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvalue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.i = icmp sgt i32 %11, 0
  br i1 %cmp15.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.end14_crit_edge

for.cond.preheader.i.do.end14_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #10
  br label %do.end14

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.do.end14_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_sr_nvalue_table, ptr %9, i32 %i.016.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp3.i = icmp eq i32 %15, %7
  br i1 %cmp3.i, label %sr_retrieve_nvalue_row.exit, label %for.cond.i

sr_retrieve_nvalue_row.exit:                      ; preds = %for.body.i
  %tobool10.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool10.not, label %sr_retrieve_nvalue_row.exit.do.end14_crit_edge, label %if.end17

sr_retrieve_nvalue_row.exit.do.end14_crit_edge:   ; preds = %sr_retrieve_nvalue_row.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end14:                                         ; preds = %sr_retrieve_nvalue_row.exit.do.end14_crit_edge, %for.cond.i.do.end14_crit_edge, %do.end.i, %for.cond.preheader.i.do.end14_crit_edge
  %pdev15 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %16 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev15, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16, i32 noundef %volt) #10
  br label %cleanup

if.end17:                                         ; preds = %sr_retrieve_nvalue_row.exit
  %errminlimit = getelementptr %struct.omap_sr_nvalue_table, ptr %9, i32 %i.016.i, i32 2
  %18 = ptrtoint ptr %errminlimit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %errminlimit, align 4
  %err_minlimit = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 14
  %20 = ptrtoint ptr %err_minlimit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %err_minlimit, align 4
  %fck = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 7
  %21 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fck, align 4
  %call18 = tail call i32 @clk_enable(ptr noundef %22) #7
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 21
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !228
  %and = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.out_enabled_crit_edge

if.end17.out_enabled_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_enabled

if.end22:                                         ; preds = %if.end17
  %26 = load ptr, ptr @sr_class, align 4
  %configure = getelementptr inbounds %struct.omap_sr_class_data, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %configure, align 4
  %call23 = tail call i32 %28(ptr noundef nonnull %sr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_enabled_crit_edge

if.end22.out_enabled_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_enabled

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %nvalue = getelementptr %struct.omap_sr_nvalue_table, ptr %9, i32 %i.016.i, i32 1
  %29 = ptrtoint ptr %nvalue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nvalue, align 4
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #7, !srcloc !227
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !228
  %or10.i = or i32 %35, 2048
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %or10.i) #7, !srcloc !227
  br label %out_enabled

out_enabled:                                      ; preds = %if.end26, %if.end22.out_enabled_crit_edge, %if.end17.out_enabled_crit_edge
  %enabled = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 22
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load = load i8, ptr %enabled, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_enabled, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %5, %do.end6 ], [ 0, %out_enabled ], [ -61, %do.end14 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_voltage_get_voltdata(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sr_disable(ptr noundef %sr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sr, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, ptr noundef %0) #10
  br label %return

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 22
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 21
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !228
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  %ip_type = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 9
  %5 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %6, label %do.end9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !228
  %and.i.i = and i32 %10, -1438646273
  %or10.i.i = or i32 %and.i.i, 8388608
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %or10.i.i) #7, !srcloc !227
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7, !srcloc !228
  %and.i25.i = and i32 %15, -2049
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %and.i25.i) #7, !srcloc !227
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #7, !srcloc !228
  %and.i = and i32 %20, 1073741824
  %21 = or i32 %and.i, 352321536
  %22 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i29.i = icmp eq i32 %23, 1
  %mask.addr.0.i33.i = select i1 %cmp.i29.i, i32 -12582912, i32 -1442840576
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %25, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i) #7, !srcloc !228
  %neg.i36.i = xor i32 %mask.addr.0.i33.i, -1
  %and.i37.i = and i32 %26, %neg.i36.i
  %and9.i38.i = and i32 %mask.addr.0.i33.i, %21
  %or10.i39.i = or i32 %and.i37.i, %and9.i38.i
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr12.i40.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i40.i, i32 %or10.i39.i) #7, !srcloc !227
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %sw.bb
  %timeout.061.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %30, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #7, !srcloc !228
  %and2.i = and i32 %31, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %for.body.i.sr_v1_disable.exit_crit_edge

for.body.i.sr_v1_disable.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sr_v1_disable.exit

if.end5.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %timeout.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %do.end.i, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %33 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #10
  br label %sr_v1_disable.exit

sr_v1_disable.exit:                               ; preds = %do.end.i, %for.body.i.sr_v1_disable.exit_crit_edge
  %35 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i45.i = icmp eq i32 %36, 1
  %spec.select60.i = select i1 %cmp.i45.i, i32 1438646272, i32 8388608
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #7, !srcloc !228
  %neg.i52.i = xor i32 %spec.select60.i, -1
  %and.i53.i = and i32 %39, %neg.i52.i
  %and9.i54.i = and i32 %spec.select60.i, 4194304
  %or10.i55.i = or i32 %and.i53.i, %and9.i54.i
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr12.i56.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i56.i, i32 %or10.i55.i) #7, !srcloc !227
  br label %if.end11

sw.bb7:                                           ; preds = %if.then6
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 1) #7, !srcloc !227
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !228
  %and.i.i26 = and i32 %46, -2049
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %and.i.i26) #7, !srcloc !227
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %50, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #7, !srcloc !228
  %and.i27 = and i32 %51, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i = icmp eq i32 %and.i27, 0
  %52 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp3.i32.i = icmp eq i32 %53, 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select.i.i = select i1 %cmp3.i32.i, i32 12582912, i32 4194304
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %55, i32 56
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #7, !srcloc !228
  %neg.i.i28 = xor i32 %spec.select.i.i, -1
  %and.i29.i = and i32 %56, %neg.i.i28
  %and9.i.i = and i32 %spec.select.i.i, 8388608
  %or10.i.i29 = or i32 %and.i29.i, %and9.i.i
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr12.i.i30 = getelementptr i8, ptr %58, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i30, i32 %or10.i.i29) #7, !srcloc !227
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i35.i31 = getelementptr i8, ptr %60, i32 56
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i31) #7, !srcloc !228
  %neg.i36.i32 = select i1 %cmp3.i32.i, i32 -12582913, i32 -4194305
  %and.i37.i33 = and i32 %61, %neg.i36.i32
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr12.i38.i = getelementptr i8, ptr %63, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i38.i, i32 %and.i37.i33) #7, !srcloc !227
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %65, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 14) #7, !srcloc !227
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %67, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 14) #7, !srcloc !227
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end5.i39.for.body.i36_crit_edge, %if.end.i
  %timeout.050.i = phi i32 [ 0, %if.end.i ], [ %inc.i37, %if.end5.i39.for.body.i36_crit_edge ]
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #7, !srcloc !228
  %and2.i34 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i34)
  %tobool3.not.i35 = icmp eq i32 %and2.i34, 0
  br i1 %tobool3.not.i35, label %if.end5.i39, label %for.body.i36.sr_v2_disable.exit_crit_edge

for.body.i36.sr_v2_disable.exit_crit_edge:        ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sr_v2_disable.exit

if.end5.i39:                                      ; preds = %for.body.i36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #7
  %inc.i37 = add nuw nsw i32 %timeout.050.i, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, 200
  br i1 %exitcond.not.i38, label %do.end.i42, label %if.end5.i39.for.body.i36_crit_edge

if.end5.i39.for.body.i36_crit_edge:               ; preds = %if.end5.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i36

do.end.i42:                                       ; preds = %if.end5.i39
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i40 = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %72 = ptrtoint ptr %pdev.i40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i40, align 4
  %dev.i41 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i41, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.50) #10
  br label %sr_v2_disable.exit

sr_v2_disable.exit:                               ; preds = %do.end.i42, %for.body.i36.sr_v2_disable.exit_crit_edge
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %75, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 1) #7, !srcloc !227
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %77, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 1) #7, !srcloc !227
  br label %if.end11

do.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 2
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %6) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %sr_v2_disable.exit, %sr_v1_disable.exit, %if.end3.if.end11_crit_edge
  %fck = getelementptr inbounds %struct.omap_sr, ptr %sr, i32 0, i32 7
  %80 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %81) #7
  %82 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load13 = load i8, ptr %enabled, align 4
  %bf.clear = and i8 %bf.load13, 127
  store i8 %bf.clear, ptr %enabled, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_register_class(ptr noundef %class_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %class_data, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @sr_class, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  store ptr %class_data, ptr @sr_class, align 4
  %.pn18 = load ptr, ptr @sr_list, align 4
  %cmp.not19 = icmp eq ptr %.pn18, @sr_list
  br i1 %cmp.not19, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn18, %if.end8.for.body_crit_edge ]
  %sr_info.0 = getelementptr i8, ptr %.pn20, i32 -4
  %call10 = tail call fastcc i32 @sr_late_init(ptr noundef %sr_info.0)
  %1 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, @sr_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.28, %entry.cleanup.sink.split_crit_edge ], [ @.str.31, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink, ptr noundef nonnull @.str.29) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr_late_init(ptr noundef %sr_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %4 = load ptr, ptr @sr_class, align 4
  %notify = getelementptr inbounds %struct.omap_sr_class_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %notify_flags = getelementptr inbounds %struct.omap_sr_class_data, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %notify_flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %notify_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true2

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true2:                                   ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end10_crit_edge, label %if.then

land.lhs.true2.if.end10_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true2
  %11 = ptrtoint ptr %sr_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sr_info, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %10, ptr noundef nonnull @sr_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %12, ptr noundef %sr_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end, label %error

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %14) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true2.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true12:                                  ; preds = %if.end10
  %enable_on_init = getelementptr inbounds %struct.omap_sr_data, ptr %3, i32 0, i32 10
  %15 = ptrtoint ptr %enable_on_init to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_on_init, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %land.lhs.true12.cleanup_crit_edge, label %if.then15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true12
  %17 = load ptr, ptr @sr_class, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then15.do.end.i_crit_edge, label %lor.lhs.false.i

if.then15.do.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %configure.i = getelementptr inbounds %struct.omap_sr_class_data, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %configure.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false2.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.then15.do.end.i_crit_edge
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %call.i33 = tail call i32 %19(ptr noundef %sr_info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool5.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %autocomp_active.i = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 11
  %24 = ptrtoint ptr %autocomp_active.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %autocomp_active.i, align 4
  br label %cleanup

error:                                            ; preds = %if.then
  %node = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %error.list_del.exit_crit_edge

error.list_del.exit_crit_edge:                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %error.list_del.exit_crit_edge
  %31 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.omap_sr, ptr %sr_info, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then6.i, %if.end.i.cleanup_crit_edge, %do.end.i, %land.lhs.true12.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %list_del.exit ], [ 0, %land.lhs.true12.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_sr_enable(ptr noundef readnone %voltdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %voltdm, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #10
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @sr_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @sr_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %voltdm3.i = getelementptr i8, ptr %.pn.i, i32 16
  %1 = ptrtoint ptr %voltdm3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %voltdm3.i, align 4
  %cmp4.i = icmp eq ptr %2, %voltdm
  br i1 %cmp4.i, label %_sr_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_sr_lookup.exit:                                  ; preds = %for.body.i
  %sr_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp.i = icmp ugt ptr %sr_info.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_sr_lookup.exit.do.end_crit_edge, label %if.end

_sr_lookup.exit.do.end_crit_edge:                 ; preds = %_sr_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %_sr_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %do.end.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end:                                           ; preds = %_sr_lookup.exit
  %autocomp_active = getelementptr i8, ptr %.pn.i, i32 44
  %3 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autocomp_active, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr @sr_class, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.do.end12_crit_edge, label %lor.lhs.false

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end12_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %configure = getelementptr inbounds %struct.omap_sr_class_data, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %configure, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.end12_crit_edge, label %if.end13

lor.lhs.false7.do.end12_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end12:                                         ; preds = %lor.lhs.false7.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  %pdev = getelementptr i8, ptr %.pn.i, i32 8
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 %7(ptr noundef %sr_info.0.le.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end12, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_sr_disable(ptr noundef readnone %voltdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %voltdm, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #10
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @sr_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @sr_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %voltdm3.i = getelementptr i8, ptr %.pn.i, i32 16
  %1 = ptrtoint ptr %voltdm3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %voltdm3.i, align 4
  %cmp4.i = icmp eq ptr %2, %voltdm
  br i1 %cmp4.i, label %_sr_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_sr_lookup.exit:                                  ; preds = %for.body.i
  %sr_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp.i = icmp ugt ptr %sr_info.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_sr_lookup.exit.do.end_crit_edge, label %if.end

_sr_lookup.exit.do.end_crit_edge:                 ; preds = %_sr_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %_sr_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %do.end.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end:                                           ; preds = %_sr_lookup.exit
  %autocomp_active = getelementptr i8, ptr %.pn.i, i32 44
  %3 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autocomp_active, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr @sr_class, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.do.end10_crit_edge, label %lor.lhs.false

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.end4
  %disable = getelementptr inbounds %struct.omap_sr_class_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end10_crit_edge, label %if.end11

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %pdev = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38) #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %7(ptr noundef %sr_info.0.le.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_sr_disable_reset_volt(ptr noundef readnone %voltdm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %voltdm, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #10
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @sr_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @sr_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %voltdm3.i = getelementptr i8, ptr %.pn.i, i32 16
  %1 = ptrtoint ptr %voltdm3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %voltdm3.i, align 4
  %cmp4.i = icmp eq ptr %2, %voltdm
  br i1 %cmp4.i, label %_sr_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_sr_lookup.exit:                                  ; preds = %for.body.i
  %sr_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp.i = icmp ugt ptr %sr_info.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_sr_lookup.exit.do.end_crit_edge, label %if.end

_sr_lookup.exit.do.end_crit_edge:                 ; preds = %_sr_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %_sr_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %do.end.i
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end:                                           ; preds = %_sr_lookup.exit
  %autocomp_active = getelementptr i8, ptr %.pn.i, i32 44
  %3 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %autocomp_active, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr @sr_class, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.do.end10_crit_edge, label %lor.lhs.false

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.end4
  %disable = getelementptr inbounds %struct.omap_sr_class_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end10_crit_edge, label %if.end11

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %if.end4.do.end10_crit_edge
  %pdev = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 %7(ptr noundef %sr_info.0.le.i, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end10, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smartreflex_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sr_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @smartreflex_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_type = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 21
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !228
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %5) #7, !srcloc !227
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i18 = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 21
  %8 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !228
  %11 = ptrtoint ptr %base.i18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i18, align 4
  %add.ptr.i21 = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %10) #7, !srcloc !227
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %1) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %status.0 = phi i32 [ %10, %sw.bb1 ], [ %5, %sw.bb ]
  %15 = load ptr, ptr @sr_class, align 4
  %notify = getelementptr inbounds %struct.omap_sr_class_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 %17(ptr noundef %data, i32 noundef %status.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then ], [ 1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sr_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %name93 = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i199 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i199, ptr %call.i, align 4
  %tobool5.not = icmp eq ptr %call.i199, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call12) #7
  %base = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call23 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.62) #7
  %fck = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %fck to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %fck, align 4
  %cmp.i200 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %call31 = tail call i32 @clk_prepare(ptr noundef %call23) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef %13)
  %pdev36 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %pdev36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pdev36, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %srid = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %srid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %srid, align 4
  %voltdm = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %voltdm, align 4
  %voltdm37 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %voltdm37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %voltdm37, align 4
  %nvalue_table = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %nvalue_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nvalue_table, align 4
  %nvalue_table38 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %nvalue_table38, align 4
  %nvalue_count = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %nvalue_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nvalue_count, align 4
  %nvalue_count39 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %nvalue_count39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nvalue_count39, align 4
  %senn_mod = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %senn_mod to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %senn_mod, align 4
  %senn_mod40 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 20
  %29 = ptrtoint ptr %senn_mod40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %senn_mod40, align 4
  %senp_mod = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %senp_mod to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %senp_mod, align 4
  %senp_mod41 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 19
  %32 = ptrtoint ptr %senp_mod41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %senp_mod41, align 4
  %err_weight = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %err_weight to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err_weight, align 4
  %err_weight42 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 13
  %35 = ptrtoint ptr %err_weight42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %err_weight42, align 4
  %err_maxlimit = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %err_maxlimit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err_maxlimit, align 4
  %err_maxlimit43 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 15
  %38 = ptrtoint ptr %err_maxlimit43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %err_maxlimit43, align 4
  %accum_data = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %accum_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accum_data, align 4
  %accum_data44 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %accum_data44 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %accum_data44, align 4
  %senn_avgweight = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %senn_avgweight to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %senn_avgweight, align 4
  %senn_avgweight45 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 17
  %44 = ptrtoint ptr %senn_avgweight45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %senn_avgweight45, align 4
  %senp_avgweight = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 8
  %45 = ptrtoint ptr %senp_avgweight to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %senp_avgweight, align 4
  %senp_avgweight46 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 18
  %47 = ptrtoint ptr %senp_avgweight46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %senp_avgweight46, align 4
  %autocomp_active = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 11
  %48 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %autocomp_active, align 4
  %ip_type = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %ip_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ip_type, align 4
  %ip_type47 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 9
  %51 = ptrtoint ptr %ip_type47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ip_type47, align 4
  %tobool48.not = icmp eq ptr %call21, null
  br i1 %tobool48.not, label %if.end29.if.end51_crit_edge, label %if.then49

if.end29.if.end51_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call21, align 4
  %irq50 = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 6
  %54 = ptrtoint ptr %irq50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %irq50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end29.if.end51_crit_edge
  tail call fastcc void @sr_set_clk_length(ptr noundef nonnull %call.i)
  %node = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 1
  %55 = load ptr, ptr @sr_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @sr_list, ptr noundef %55) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.list_add.exit_crit_edge

if.end51.list_add.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %node, ptr %prev1.i.i, align 4
  %57 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @sr_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @sr_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end51.list_add.exit_crit_edge
  %59 = load ptr, ptr @sr_class, align 4
  %tobool52.not = icmp eq ptr %59, null
  br i1 %tobool52.not, label %list_add.exit.do.end65_crit_edge, label %if.then53

list_add.exit.do.end65_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

if.then53:                                        ; preds = %list_add.exit
  %call54 = tail call fastcc i32 @sr_late_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.do.end65_crit_edge, label %do.end59

if.then53.do.end65_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.61) #10
  br label %err_list_del

do.end65:                                         ; preds = %if.then53.do.end65_crit_edge, %list_add.exit.do.end65_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.61) #10
  %60 = load ptr, ptr @sr_dbg_dir, align 4
  %tobool67.not = icmp eq ptr %60, null
  br i1 %tobool67.not, label %if.then68, label %do.end65.if.end70_crit_edge

do.end65.if.end70_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.59, ptr noundef null) #7
  store ptr %call69, ptr @sr_dbg_dir, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.end65.if.end70_crit_edge
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %63 = load ptr, ptr @sr_dbg_dir, align 4
  %call72 = tail call ptr @debugfs_create_dir(ptr noundef %62, ptr noundef %63) #7
  %dbg_dir = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call72, ptr %dbg_dir, align 4
  %call74 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.71, i16 noundef zeroext 420, ptr noundef %call72, ptr noundef nonnull %call.i, ptr noundef nonnull @pm_sr_fops) #7
  %65 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dbg_dir, align 4
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.72, i16 noundef zeroext 292, ptr noundef %66, ptr noundef %err_weight42) #7
  %67 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dbg_dir, align 4
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.73, i16 noundef zeroext 292, ptr noundef %68, ptr noundef %err_maxlimit43) #7
  %69 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dbg_dir, align 4
  %call80 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.74, ptr noundef %70) #7
  %71 = ptrtoint ptr %nvalue_count39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nvalue_count39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp = icmp eq i32 %72, 0
  br i1 %cmp, label %if.end70.do.end87_crit_edge, label %lor.lhs.false

if.end70.do.end87_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

lor.lhs.false:                                    ; preds = %if.end70
  %73 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nvalue_table38, align 4
  %tobool83.not = icmp eq ptr %74, null
  br i1 %tobool83.not, label %lor.lhs.false.do.end87_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

for.cond.preheader:                               ; preds = %lor.lhs.false
  %75 = ptrtoint ptr %nvalue_count39 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nvalue_count39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp92203 = icmp sgt i32 %76, 0
  br i1 %cmp92203, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end87:                                         ; preds = %lor.lhs.false.do.end87_crit_edge, %if.end70.do.end87_crit_edge
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.61, ptr noundef %78) #10
  %79 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dbg_dir, align 4
  tail call void @debugfs_remove(ptr noundef %80) #7
  br label %err_list_del

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0204 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %name93) #7
  %81 = call ptr @memset(ptr %name93, i32 255, i32 41)
  %82 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nvalue_table38, align 4
  %volt_nominal = getelementptr %struct.omap_sr_nvalue_table, ptr %83, i32 %i.0204, i32 3
  %84 = ptrtoint ptr %volt_nominal to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %volt_nominal, align 4
  %call95 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name93, i32 noundef 41, ptr noundef nonnull @.str.78, i32 noundef %85)
  %86 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nvalue_table38, align 4
  %nvalue = getelementptr %struct.omap_sr_nvalue_table, ptr %87, i32 %i.0204, i32 1
  call void @debugfs_create_x32(ptr noundef nonnull %name93, i16 noundef zeroext 420, ptr noundef %call80, ptr noundef %nvalue) #7
  %88 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nvalue_table38, align 4
  %volt_nominal102 = getelementptr %struct.omap_sr_nvalue_table, ptr %89, i32 %i.0204, i32 3
  %90 = ptrtoint ptr %volt_nominal102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %volt_nominal102, align 4
  %call103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name93, i32 noundef 41, ptr noundef nonnull @.str.79, i32 noundef %91)
  %92 = ptrtoint ptr %nvalue_table38 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %nvalue_table38, align 4
  %errminlimit = getelementptr %struct.omap_sr_nvalue_table, ptr %93, i32 %i.0204, i32 2
  call void @debugfs_create_x32(ptr noundef nonnull %name93, i16 noundef zeroext 420, ptr noundef %call80, ptr noundef %errminlimit) #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %name93) #7
  %inc = add nuw nsw i32 %i.0204, 1
  %94 = ptrtoint ptr %nvalue_count39 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nvalue_count39, align 4
  %cmp92 = icmp slt i32 %inc, %95
  br i1 %cmp92, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_list_del:                                     ; preds = %do.end87, %do.end59
  %ret.1 = phi i32 [ %call54, %do.end59 ], [ -61, %do.end87 ]
  %call.i.i201 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i201, label %if.end.i.i202, label %err_list_del.list_del.exit_crit_edge

err_list_del.list_del.exit_crit_edge:             ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i202:                                    ; preds = %err_list_del
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i202, %err_list_del.list_del.exit_crit_edge
  %102 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.omap_sr, ptr %call.i, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %104 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fck, align 4
  tail call void @clk_unprepare(ptr noundef %105) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then26, %if.then17, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then17 ], [ %9, %if.then26 ], [ %ret.1, %list_del.exit ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sr_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.88) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltdm = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voltdm, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #10
  br label %do.end8

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @sr_list, %if.end.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @sr_list
  br i1 %cmp.not.i, label %for.cond.i.do.end8_crit_edge, label %for.body.i

for.cond.i.do.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

for.body.i:                                       ; preds = %for.cond.i
  %voltdm3.i = getelementptr i8, ptr %.pn.i, i32 16
  %5 = ptrtoint ptr %voltdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %voltdm3.i, align 4
  %cmp4.i = icmp eq ptr %6, %3
  br i1 %cmp4.i, label %_sr_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_sr_lookup.exit:                                  ; preds = %for.body.i
  %sr_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp.i = icmp ugt ptr %sr_info.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_sr_lookup.exit.do.end8_crit_edge, label %if.end11

_sr_lookup.exit.do.end8_crit_edge:                ; preds = %_sr_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end8:                                          ; preds = %_sr_lookup.exit.do.end8_crit_edge, %for.cond.i.do.end8_crit_edge, %do.end.i
  %retval.0.i32 = phi ptr [ %sr_info.0.le.i, %_sr_lookup.exit.do.end8_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ], [ inttoptr (i32 -61 to ptr), %for.cond.i.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88) #10
  %7 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end11:                                         ; preds = %_sr_lookup.exit
  %autocomp_active = getelementptr i8, ptr %.pn.i, i32 44
  %8 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %autocomp_active, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  %10 = load ptr, ptr @sr_class, align 4
  %tobool.not.i27 = icmp eq ptr %10, null
  br i1 %tobool.not.i27, label %if.then13.do.end.i28_crit_edge, label %lor.lhs.false.i

if.then13.do.end.i28_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i28

lor.lhs.false.i:                                  ; preds = %if.then13
  %disable.i = getelementptr inbounds %struct.omap_sr_class_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disable.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i28_crit_edge, label %if.then3.i

lor.lhs.false.i.do.end.i28_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i28

do.end.i28:                                       ; preds = %lor.lhs.false.i.do.end.i28_crit_edge, %if.then13.do.end.i28_crit_edge
  %pdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.87) #10
  br label %if.end14

if.then3.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i29 = tail call i32 %12(ptr noundef %sr_info.0.le.i, i32 noundef 1) #7
  %15 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %autocomp_active, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i, %do.end.i28, %if.end11.if.end14_crit_edge
  %dbg_dir = getelementptr i8, ptr %.pn.i, i32 20
  %16 = ptrtoint ptr %dbg_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dbg_dir, align 4
  tail call void @debugfs_remove(ptr noundef %17) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %fck = getelementptr i8, ptr %.pn.i, i32 28
  %18 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fck, align 4
  tail call void @clk_unprepare(ptr noundef %19) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %26 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end8, %do.end
  %retval.0 = phi i32 [ %7, %do.end8 ], [ 0, %list_del.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_sr_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.92) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltdm = getelementptr inbounds %struct.omap_sr_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voltdm, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.for.cond.i_crit_edge

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #10
  br label %do.end6

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @sr_list, %if.end.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @sr_list
  br i1 %cmp.not.i, label %for.cond.i.do.end6_crit_edge, label %for.body.i

for.cond.i.do.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

for.body.i:                                       ; preds = %for.cond.i
  %voltdm3.i = getelementptr i8, ptr %.pn.i, i32 16
  %5 = ptrtoint ptr %voltdm3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %voltdm3.i, align 4
  %cmp4.i = icmp eq ptr %6, %3
  br i1 %cmp4.i, label %_sr_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

_sr_lookup.exit:                                  ; preds = %for.body.i
  %sr_info.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %cmp.i = icmp ugt ptr %sr_info.0.le.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_sr_lookup.exit.do.end6_crit_edge, label %if.end8

_sr_lookup.exit.do.end6_crit_edge:                ; preds = %_sr_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end6:                                          ; preds = %_sr_lookup.exit.do.end6_crit_edge, %for.cond.i.do.end6_crit_edge, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.92) #10
  br label %cleanup

if.end8:                                          ; preds = %_sr_lookup.exit
  %autocomp_active = getelementptr i8, ptr %.pn.i, i32 44
  %7 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autocomp_active, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr @sr_class, align 4
  %tobool.not.i18 = icmp eq ptr %9, null
  br i1 %tobool.not.i18, label %if.then10.do.end.i19_crit_edge, label %lor.lhs.false.i

if.then10.do.end.i19_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i19

lor.lhs.false.i:                                  ; preds = %if.then10
  %disable.i = getelementptr inbounds %struct.omap_sr_class_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i19_crit_edge, label %if.then3.i

lor.lhs.false.i.do.end.i19_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i19

do.end.i19:                                       ; preds = %lor.lhs.false.i.do.end.i19_crit_edge, %if.then10.do.end.i19_crit_edge
  %pdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.87) #10
  br label %cleanup

if.then3.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i20 = tail call i32 %11(ptr noundef %sr_info.0.le.i, i32 noundef 1) #7
  %14 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %autocomp_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %do.end.i19, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_sr_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @omap_sr_autocomp_show, ptr noundef nonnull @omap_sr_autocomp_store, ptr noundef nonnull @.str.80) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sr_autocomp_show(ptr noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %autocomp_active = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autocomp_active, align 4, !range !229
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_sr_autocomp_store(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %val)
  %cmp = icmp ugt i64 %val, 1
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, i64 noundef %val) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %autocomp_active = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autocomp_active, align 4, !range !229
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %val)
  %cmp9.not = icmp eq i64 %2, %val
  br i1 %cmp9.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool12.not = icmp eq i64 %val, 0
  %3 = load ptr, ptr @sr_class, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  br i1 %tobool.not.i, label %if.then13.do.end.i_crit_edge, label %lor.lhs.false.i

if.then13.do.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then13
  %disable.i = getelementptr inbounds %struct.omap_sr_class_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then13.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.87) #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp eq i8 %1, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef nonnull %data, i32 noundef 1) #7
  %8 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %autocomp_active, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then11
  br i1 %tobool.not.i, label %if.else.do.end.i27_crit_edge, label %lor.lhs.false.i24

if.else.do.end.i27_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i27

lor.lhs.false.i24:                                ; preds = %if.else
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %tobool1.not.i23 = icmp eq ptr %10, null
  br i1 %tobool1.not.i23, label %lor.lhs.false.i24.do.end.i27_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i24.do.end.i27_crit_edge:           ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i27

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i24
  %configure.i = getelementptr inbounds %struct.omap_sr_class_data, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %configure.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.do.end.i27_crit_edge, label %if.end.i29

lor.lhs.false2.i.do.end.i27_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i27

do.end.i27:                                       ; preds = %lor.lhs.false2.i.do.end.i27_crit_edge, %lor.lhs.false.i24.do.end.i27_crit_edge, %if.else.do.end.i27_crit_edge
  %pdev.i25 = getelementptr inbounds %struct.omap_sr, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %pdev.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i25, align 4
  %dev.i26 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i26, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.end.i29:                                       ; preds = %lor.lhs.false2.i
  %call.i28 = tail call i32 %10(ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool5.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i29.cleanup_crit_edge

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %autocomp_active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %autocomp_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i29.cleanup_crit_edge, %do.end.i27, %if.then3.i, %if.end.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -22, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3.i ], [ 0, %do.end.i27 ], [ 0, %if.end.i29.cleanup_crit_edge ], [ 0, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !148, !149, !150, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !169, !171, !173, !174, !175, !177, !179, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216}
!llvm.module.flags = !{!218, !219, !220, !221, !222, !223, !224, !225}
!llvm.ident = !{!226}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/smartreflex.c", i32 349, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sr_configure_errgen._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sr_configure_errgen._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/ti/smartreflex.c", i32 380, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sr_configure_errgen._entry.3, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sr_configure_errgen._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/smartreflex.c", i32 416, i32 3}
!14 = !{ptr @sr_disable_errgen._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sr_disable_errgen._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @sr_disable_errgen._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/soc/ti/smartreflex.c", i32 433, i32 3}
!18 = !{ptr @sr_disable_errgen._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/ti/smartreflex.c", i32 471, i32 3}
!21 = !{ptr @sr_configure_minmax._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sr_configure_minmax._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sr_configure_minmax._entry.12, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/soc/ti/smartreflex.c", i32 497, i32 3}
!25 = !{ptr @sr_configure_minmax._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sr_configure_minmax._entry.14, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/soc/ti/smartreflex.c", i32 530, i32 3}
!28 = !{ptr @sr_configure_minmax._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/ti/smartreflex.c", i32 556, i32 3}
!31 = !{ptr @sr_enable._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sr_enable._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/ti/smartreflex.c", i32 564, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sr_enable._entry.17, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sr_enable._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/ti/smartreflex.c", i32 572, i32 3}
!40 = !{ptr @sr_enable._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sr_enable._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/ti/smartreflex.c", i32 612, i32 3}
!44 = !{ptr @sr_disable._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sr_disable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/ti/smartreflex.c", i32 634, i32 4}
!48 = !{ptr @sr_disable._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sr_disable._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/ti/smartreflex.c", i32 656, i32 3}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sr_register_class._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sr_register_class._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/ti/smartreflex.c", i32 662, i32 3}
!57 = !{ptr @sr_register_class._entry.30, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sr_register_class._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/ti/smartreflex.c", i32 694, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @omap_sr_enable._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @omap_sr_enable._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/soc/ti/smartreflex.c", i32 702, i32 3}
!66 = !{ptr @omap_sr_enable._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap_sr_enable._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/ti/smartreflex.c", i32 726, i32 3}
!70 = !{ptr @omap_sr_disable._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @omap_sr_disable._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @omap_sr_disable._entry.39, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/soc/ti/smartreflex.c", i32 734, i32 3}
!74 = !{ptr @omap_sr_disable._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/ti/smartreflex.c", i32 758, i32 3}
!77 = !{ptr @omap_sr_disable_reset_volt._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap_sr_disable_reset_volt._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @omap_sr_disable_reset_volt._entry.42, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/soc/ti/smartreflex.c", i32 766, i32 3}
!81 = !{ptr @omap_sr_disable_reset_volt._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @__initcall__kmod_smartreflex__228_1024_sr_init7, !83, !"__initcall__kmod_smartreflex__228_1024_sr_init7", i1 false, i1 false}
!83 = !{!"../drivers/soc/ti/smartreflex.c", i32 1024, i32 1}
!84 = !{ptr @__exitcall_sr_exit, !85, !"__exitcall_sr_exit", i1 false, i1 false}
!85 = !{!"../drivers/soc/ti/smartreflex.c", i32 1030, i32 1}
!86 = !{ptr @__UNIQUE_ID_description229, !87, !"__UNIQUE_ID_description229", i1 false, i1 false}
!87 = !{!"../drivers/soc/ti/smartreflex.c", i32 1032, i32 1}
!88 = !{ptr @__UNIQUE_ID_file230, !89, !"__UNIQUE_ID_file230", i1 false, i1 false}
!89 = !{!"../drivers/soc/ti/smartreflex.c", i32 1033, i32 1}
!90 = !{ptr @__UNIQUE_ID_license231, !89, !"__UNIQUE_ID_license231", i1 false, i1 false}
!91 = !{ptr @__UNIQUE_ID_alias232, !92, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!92 = !{!"../drivers/soc/ti/smartreflex.c", i32 1034, i32 1}
!93 = !{ptr @__UNIQUE_ID_author233, !94, !"__UNIQUE_ID_author233", i1 false, i1 false}
!94 = !{!"../drivers/soc/ti/smartreflex.c", i32 1035, i32 1}
!95 = !{ptr @sr_class, !96, !"sr_class", i1 false, i1 false}
!96 = !{!"../drivers/soc/ti/smartreflex.c", i32 36, i32 35}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/ti/smartreflex.c", i32 154, i32 3}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sr_set_clk_length._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @sr_set_clk_length._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/soc/ti/smartreflex.c", i32 314, i32 3}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sr_retrieve_nvalue_row._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sr_retrieve_nvalue_row._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/ti/smartreflex.c", i32 255, i32 3}
!109 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sr_v1_disable._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @sr_v1_disable._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/ti/smartreflex.c", i32 300, i32 3}
!114 = !{ptr @sr_v2_disable._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sr_v2_disable._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @sr_list, !117, !"sr_list", i1 false, i1 false}
!117 = !{!"../drivers/soc/ti/smartreflex.c", i32 34, i32 8}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/soc/ti/smartreflex.c", i32 219, i32 2}
!120 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sr_late_init._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sr_late_init._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/soc/ti/smartreflex.c", i32 116, i32 3}
!125 = !{ptr @sr_interrupt._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sr_interrupt._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/ti/smartreflex.c", i32 163, i32 3}
!129 = !{ptr @sr_start_vddautocomp._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sr_start_vddautocomp._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/soc/ti/smartreflex.c", i32 83, i32 3}
!133 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @_sr_lookup._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @_sr_lookup._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/soc/ti/smartreflex.c", i32 1017, i32 3}
!138 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @sr_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @sr_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/ti/smartreflex.c", i32 1006, i32 11}
!143 = !{ptr @smartreflex_driver, !144, !"smartreflex_driver", i1 false, i1 false}
!144 = !{!"../drivers/soc/ti/smartreflex.c", i32 1001, i32 31}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/soc/ti/smartreflex.c", i32 838, i32 3}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @omap_sr_probe._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @omap_sr_probe._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/soc/ti/smartreflex.c", i32 849, i32 48}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/soc/ti/smartreflex.c", i32 856, i32 48}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/soc/ti/smartreflex.c", i32 887, i32 4}
!156 = !{ptr @omap_sr_probe._entry.64, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @omap_sr_probe._entry_ptr.66, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/soc/ti/smartreflex.c", i32 892, i32 2}
!160 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @omap_sr_probe._entry.67, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @omap_sr_probe._entry_ptr.70, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/ti/smartreflex.c", i32 898, i32 22}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/ti/smartreflex.c", i32 900, i32 21}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/ti/smartreflex.c", i32 902, i32 21}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/ti/smartreflex.c", i32 905, i32 34}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/ti/smartreflex.c", i32 908, i32 3}
!173 = !{ptr @omap_sr_probe._entry.75, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @omap_sr_probe._entry_ptr.77, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/soc/ti/smartreflex.c", i32 918, i32 32}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/soc/ti/smartreflex.c", i32 922, i32 32}
!179 = !{ptr @sr_dbg_dir, !180, !"sr_dbg_dir", i1 false, i1 false}
!180 = !{!"../drivers/soc/ti/smartreflex.c", i32 37, i32 24}
!181 = !{ptr @pm_sr_fops, !182, !"pm_sr_fops", i1 false, i1 false}
!182 = !{!"../drivers/soc/ti/smartreflex.c", i32 815, i32 1}
!183 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/soc/ti/smartreflex.c", i32 780, i32 3}
!186 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @omap_sr_autocomp_show._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @omap_sr_autocomp_show._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/soc/ti/smartreflex.c", i32 794, i32 3}
!191 = !{ptr @omap_sr_autocomp_store._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @omap_sr_autocomp_store._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/soc/ti/smartreflex.c", i32 800, i32 3}
!195 = !{ptr @omap_sr_autocomp_store._entry.84, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @omap_sr_autocomp_store._entry_ptr.86, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/soc/ti/smartreflex.c", i32 176, i32 3}
!199 = !{ptr @sr_stop_vddautocomp._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @sr_stop_vddautocomp._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/soc/ti/smartreflex.c", i32 947, i32 3}
!203 = !{ptr @omap_sr_remove._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @omap_sr_remove._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/soc/ti/smartreflex.c", i32 953, i32 3}
!207 = !{ptr @omap_sr_remove._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @omap_sr_remove._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/soc/ti/smartreflex.c", i32 974, i32 3}
!211 = !{ptr @omap_sr_shutdown._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @omap_sr_shutdown._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @omap_sr_shutdown._entry.93, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/soc/ti/smartreflex.c", i32 980, i32 3}
!215 = !{ptr @omap_sr_shutdown._entry_ptr.94, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @omap_sr_match, !217, !"omap_sr_match", i1 false, i1 false}
!217 = !{!"../drivers/soc/ti/smartreflex.c", i32 991, i32 34}
!218 = !{i32 1, !"wchar_size", i32 2}
!219 = !{i32 1, !"min_enum_size", i32 4}
!220 = !{i32 8, !"branch-target-enforcement", i32 0}
!221 = !{i32 8, !"sign-return-address", i32 0}
!222 = !{i32 8, !"sign-return-address-all", i32 0}
!223 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!227 = !{i64 4671321}
!228 = !{i64 4671739}
!229 = !{i8 0, i8 2}
