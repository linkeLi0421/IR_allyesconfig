; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/omap_prm.c_pt.bc'
source_filename = "../drivers/soc/ti/omap_prm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_rst_map = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_prm_data = type { i32, ptr, ptr, i16, i16, ptr, i16, i16, ptr, i8 }
%struct.omap_prm_domain_map = type { i32, i8 }
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
%struct.omap_prm = type { ptr, ptr, ptr }
%struct.omap_prm_domain = type { ptr, ptr, %struct.generic_pm_domain, i16, i16, ptr, i32, i8 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.ti_prm_platform_data = type { ptr, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.omap_reset_data = type { %struct.reset_controller_dev, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, ptr, i32, i32, i32, i32, i64, ptr }
%struct.pm_domain_data = type { %struct.list_head, ptr }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_omap_prm__171_997_omap_prm_driver_init6 = internal global ptr @omap_prm_driver_init, section ".initcall6.init", align 4
@omap_prm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_prm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_prm_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_prm\00", [23 x i8] zeroinitializer }, align 32
@omap_prm_id_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3_prm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4-prm-inst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4_prm_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prm_%s\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/soc/ti/omap_prm.c\00", [38 x i8] zeroinitializer }, align 32
@omap_prm_domain_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 550, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s timed out\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_prm_domain_power_on\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_prm_domain_power_on._entry_ptr = internal global ptr @omap_prm_domain_power_on._entry, section ".printk_index", align 4
@omap_prm_domain_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.11, ptr @.str.4, i32 596, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap_prm_domain_power_off\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_prm_domain_power_off._entry_ptr = internal global ptr @omap_prm_domain_power_off._entry, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@omap_prm_domain_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 654, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: unusupported #power-domain-cells: %i\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_prm_domain_attach_dev\00", [37 x i8] zeroinitializer }, align 32
@omap_prm_domain_attach_dev._entry_ptr = internal global ptr @omap_prm_domain_attach_dev._entry, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"simple-pm-bus\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@omap_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @omap_reset_assert, ptr @omap_reset_deassert, ptr @omap_reset_status }, [16 x i8] zeroinitializer }, align 32
@omap_prm_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&reset->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_clkdm\00", [23 x i8] zeroinitializer }, align 32
@rst_map_012 = internal constant { [4 x %struct.omap_rst_map], [24 x i8] } { [4 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 1, i8 1 }, %struct.omap_rst_map { i8 2, i8 2 }, %struct.omap_rst_map { i8 -1, i8 0 }], [24 x i8] zeroinitializer }, align 32
@omap_prm_reset_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_prm_reset_init\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Asserting all resets: %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_reset_deassert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: timedout waiting for %s:%lu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_reset_deassert\00", [44 x i8] zeroinitializer }, align 32
@omap_reset_deassert._entry_ptr = internal global ptr @omap_reset_deassert._entry, section ".printk_index", align 4
@omap_reset_deassert._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_reset_deassert._entry_ptr.26 = internal global ptr @omap_reset_deassert._entry.25, section ".printk_index", align 4
@omap4_prm_data = internal constant { [16 x %struct.omap_prm_data], [128 x i8] } { [16 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1244685056, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244685312, ptr @.str.28, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1244685568, ptr @.str.29, ptr null, i16 0, i16 4, ptr @omap_prm_all, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244685824, ptr @.str.30, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244686080, ptr @.str.31, ptr @.str.32, i16 0, i16 4, ptr @omap_prm_reton, i16 528, i16 532, ptr @rst_map_012, i8 8 }, %struct.omap_prm_data { i32 1244688128, ptr @.str.33, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1244688384, ptr @.str.34, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244688640, ptr @.str.35, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244688896, ptr @.str.36, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244689152, ptr @.str.37, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244689408, ptr @.str.38, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 8 }, %struct.omap_prm_data { i32 1244689920, ptr @.str.39, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244690176, ptr @.str.40, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244690688, ptr @.str.41, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1244691200, ptr @.str.42, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data zeroinitializer], [128 x i8] zeroinitializer }, align 32
@omap5_prm_data = internal constant { [15 x %struct.omap_prm_data], [96 x i8] } { [15 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1256219392, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256219648, ptr @.str.43, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256219904, ptr @.str.29, ptr null, i16 0, i16 4, ptr @omap_prm_nooff, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220160, ptr @.str.44, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220416, ptr @.str.31, ptr @.str.45, i16 0, i16 4, ptr @omap_prm_reton, i16 528, i16 532, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256223232, ptr @.str.46, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256223488, ptr @.str.34, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223744, ptr @.str.35, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224000, ptr @.str.47, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224256, ptr @.str.37, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224512, ptr @.str.48, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224768, ptr @.str.49, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225280, ptr @.str.41, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225792, ptr @.str.42, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data zeroinitializer], [96 x i8] zeroinitializer }, align 32
@dra7_prm_data = internal constant { [22 x %struct.omap_prm_data], [160 x i8] } { [22 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1256219392, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_reton, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256219648, ptr @.str.50, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256219904, ptr @.str.45, ptr @.str.51, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256220200, ptr @.str.44, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256220416, ptr @.str.31, ptr @.str.52, i16 0, i16 4, ptr @omap_prm_alwon, i16 528, i16 532, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256222464, ptr @.str.46, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_012, i8 0 }, %struct.omap_prm_data { i32 1256222720, ptr @.str.34, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256222976, ptr @.str.35, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223232, ptr @.str.47, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256223488, ptr @.str.37, ptr @.str.53, i16 0, i16 4, ptr @omap_prm_alwon, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256223744, ptr @.str.38, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224256, ptr @.str.48, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256224548, ptr @.str.49, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225024, ptr @.str.41, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225536, ptr @.str.54, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225600, ptr @.str.55, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225664, ptr @.str.56, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225728, ptr @.str.57, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225792, ptr @.str.58, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_01, i8 0 }, %struct.omap_prm_data { i32 1256225888, ptr @.str.59, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1256225920, ptr @.str.60, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data zeroinitializer], [160 x i8] zeroinitializer }, align 32
@am3_prm_data = internal constant { [8 x %struct.omap_prm_data], [64 x i8] } { [8 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1155533824, ptr @.str.61, ptr @.str.62, i16 12, i16 8, ptr @omap_prm_noinact, i16 0, i16 0, ptr @am3_per_rst_map, i8 1 }, %struct.omap_prm_data { i32 1155534080, ptr @.str.40, ptr null, i16 4, i16 4, ptr @omap_prm_alwon, i16 0, i16 12, ptr @am3_wkup_rst_map, i8 5 }, %struct.omap_prm_data { i32 1155534336, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155534592, ptr @.str.42, ptr null, i16 0, i16 0, ptr null, i16 0, i16 8, ptr @rst_map_01, i8 5 }, %struct.omap_prm_data { i32 1155534848, ptr @.str.59, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155535104, ptr @.str.36, ptr @.str.63, i16 0, i16 16, ptr @omap_prm_noinact, i16 4, i16 20, ptr @rst_map_0, i8 0 }, %struct.omap_prm_data { i32 1155535360, ptr @.str.39, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data zeroinitializer], [64 x i8] zeroinitializer }, align 32
@am4_prm_data = internal constant { [9 x %struct.omap_prm_data], [64 x i8] } { [9 x %struct.omap_prm_data] [%struct.omap_prm_data { i32 1155465984, ptr @.str.27, ptr null, i16 0, i16 4, ptr @omap_prm_noinact, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155466240, ptr @.str.36, ptr @.str.63, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 16, i16 20, ptr @rst_map_0, i8 0 }, %struct.omap_prm_data { i32 1155466496, ptr @.str.59, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155466752, ptr @.str.64, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155467008, ptr @.str.39, ptr null, i16 0, i16 4, ptr @omap_prm_onoff_noauto, i16 0, i16 0, ptr null, i8 0 }, %struct.omap_prm_data { i32 1155467264, ptr @.str.61, ptr @.str.62, i16 0, i16 4, ptr @omap_prm_noinact, i16 16, i16 20, ptr @am4_per_rst_map, i8 0 }, %struct.omap_prm_data { i32 1155473408, ptr @.str.40, ptr null, i16 0, i16 4, ptr @omap_prm_alwon, i16 16, i16 20, ptr @am3_wkup_rst_map, i8 4 }, %struct.omap_prm_data { i32 1155481600, ptr @.str.42, ptr null, i16 0, i16 0, ptr null, i16 0, i16 4, ptr @am4_device_rst_map, i8 5 }, %struct.omap_prm_data zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap_prm_reton = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 10, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tesla\00", [26 x i8] zeroinitializer }, align 32
@omap_prm_noinact = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 11, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@rst_map_01 = internal constant { [3 x %struct.omap_rst_map], [26 x i8] } { [3 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 1, i8 1 }, %struct.omap_rst_map { i8 -1, i8 0 }], [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"abe\00", [28 x i8] zeroinitializer }, align 32
@omap_prm_all = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 15, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"always_on_core\00", [17 x i8] zeroinitializer }, align 32
@omap_prm_alwon = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ducati\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ivahd\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cam\00", [28 x i8] zeroinitializer }, align 32
@omap_prm_onoff_noauto = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 9, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dss\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gfx\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"l3init\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l4per\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cefuse\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wkup\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emu\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@omap_prm_nooff = internal constant { %struct.omap_prm_domain_map, [24 x i8] } { %struct.omap_prm_domain_map { i32 14, i8 -64 }, [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"coreaon\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipu\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"custefuse\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wkupaon\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsp1\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipu1\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipu2\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsp2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eve1\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eve2\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eve3\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eve4\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpe\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pruss_ocp\00", [22 x i8] zeroinitializer }, align 32
@am3_per_rst_map = internal constant { [2 x %struct.omap_rst_map], [28 x i8] } { [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], [28 x i8] zeroinitializer }, align 32
@am3_wkup_rst_map = internal constant { [2 x %struct.omap_rst_map], [28 x i8] } { [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 3, i8 5 }, %struct.omap_rst_map { i8 -1, i8 0 }], [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gfx_l3\00", [25 x i8] zeroinitializer }, align 32
@rst_map_0 = internal constant { [2 x %struct.omap_rst_map], [28 x i8] } { [2 x %struct.omap_rst_map] [%struct.omap_rst_map zeroinitializer, %struct.omap_rst_map { i8 -1, i8 0 }], [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tamper\00", [25 x i8] zeroinitializer }, align 32
@am4_per_rst_map = internal constant { [2 x %struct.omap_rst_map], [28 x i8] } { [2 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], [28 x i8] zeroinitializer }, align 32
@am4_device_rst_map = internal constant { [3 x %struct.omap_rst_map], [26 x i8] } { [3 x %struct.omap_rst_map] [%struct.omap_rst_map { i8 0, i8 1 }, %struct.omap_rst_map { i8 1, i8 0 }, %struct.omap_rst_map { i8 -1, i8 0 }], [26 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"omap_prm_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 990, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 993, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"omap_prm_id_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 494, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 687, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 697, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 545, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 549, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 595, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 647, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 653, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 614, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 617, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"omap_reset_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 854, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 908, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 912, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"rst_map_012\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 149, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 930, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 834, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 844, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"omap4_prm_data\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 156, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"omap5_prm_data\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 227, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"dra7_prm_data\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 292, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"am3_prm_data\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 403, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"am4_prm_data\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 452, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 158, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"omap_prm_reton\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 132, i32 41 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 162, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"omap_prm_noinact\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 109, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"rst_map_01\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 143, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 167, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [13 x i8] c"omap_prm_all\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 102, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 171, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"omap_prm_alwon\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 128, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 175, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 177, i32 51 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 182, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 187, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [22 x i8] c"omap_prm_onoff_noauto\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 123, i32 41 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 191, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 195, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 199, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 203, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 208, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 212, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 216, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 220, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 233, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"omap_prm_nooff\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 116, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 242, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 248, i32 51 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 252, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 265, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 273, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 277, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 298, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 306, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 316, i32 17 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 339, i32 17 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 358, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 363, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 368, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 373, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 378, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 383, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 387, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 405, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 408, i32 48 }
@___asan_gen_.302 = private unnamed_addr constant [16 x i8] c"am3_per_rst_map\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 393, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"am3_wkup_rst_map\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 398, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 432, i32 69 }
@___asan_gen_.311 = private unnamed_addr constant [10 x i8] c"rst_map_0\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 138, i32 34 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 467, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"am4_per_rst_map\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 441, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant [19 x i8] c"am4_device_rst_map\00", align 1
@___asan_gen_.321 = private constant [29 x i8] c"../drivers/soc/ti/omap_prm.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 446, i32 34 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__initcall__kmod_omap_prm__171_997_omap_prm_driver_init6, ptr @omap_prm_domain_attach_dev._entry, ptr @omap_prm_domain_attach_dev._entry_ptr, ptr @omap_prm_domain_power_off._entry, ptr @omap_prm_domain_power_off._entry_ptr, ptr @omap_prm_domain_power_on._entry, ptr @omap_prm_domain_power_on._entry_ptr, ptr @omap_reset_deassert._entry, ptr @omap_reset_deassert._entry.25, ptr @omap_reset_deassert._entry_ptr, ptr @omap_reset_deassert._entry_ptr.26, ptr @omap_prm_driver, ptr @.str, ptr @omap_prm_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @omap_reset_ops, ptr @omap_prm_reset_init.__key, ptr @.str.19, ptr @.str.20, ptr @rst_map_012, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @omap4_prm_data, ptr @omap5_prm_data, ptr @dra7_prm_data, ptr @am3_prm_data, ptr @am4_prm_data, ptr @.str.27, ptr @omap_prm_reton, ptr @.str.28, ptr @omap_prm_noinact, ptr @rst_map_01, ptr @.str.29, ptr @omap_prm_all, ptr @.str.30, ptr @omap_prm_alwon, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @omap_prm_onoff_noauto, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @omap_prm_nooff, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @am3_per_rst_map, ptr @am3_wkup_rst_map, ptr @.str.63, ptr @rst_map_0, ptr @.str.64, ptr @am4_per_rst_map, ptr @am4_device_rst_map], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_id_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_domain_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_domain_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_domain_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_map_012 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_reset_deassert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_reset_deassert._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_prm_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_prm_data to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7_prm_data to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3_prm_data to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am4_prm_data to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_reton to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_noinact to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_map_01 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_all to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_alwon to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_onoff_noauto to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_nooff to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3_per_rst_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am3_wkup_rst_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_map_0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am4_per_rst_map to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am4_device_rst_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_prm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_prm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_prm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @of_match_device(ptr noundef nonnull @omap_prm_id_table, ptr noundef %dev) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %data10 = getelementptr inbounds %struct.of_device_id, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data10, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not66 = icmp eq i32 %5, %3
  br i1 %cmp.not66, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end9.while.body_crit_edge
  %6 = phi i32 [ %8, %if.end14.while.body_crit_edge ], [ %5, %if.end9.while.body_crit_edge ]
  %data.067 = phi ptr [ %incdec.ptr, %if.end14.while.body_crit_edge ], [ %1, %if.end9.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %while.body.cleanup_crit_edge, label %if.end14

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %incdec.ptr = getelementptr %struct.omap_prm_data, ptr %data.067, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %8, %3
  br i1 %cmp.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.end9.while.end_crit_edge
  %data.0.lcssa = phi ptr [ %1, %if.end9.while.end_crit_edge ], [ %incdec.ptr, %if.end14.while.end_crit_edge ]
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.0.lcssa, ptr %call.i, align 4
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #8
  %base18 = getelementptr inbounds %struct.omap_prm, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %base18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %base18, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i62 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i, label %if.end24.if.end29_crit_edge, label %if.end.i

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end.i:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  tail call void @of_node_put(ptr noundef %15) #8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1376, i32 noundef 3520) #8
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %name8.i = getelementptr inbounds %struct.omap_prm_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name8.i, align 4
  %call9.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %19) #8
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call.i.i, align 8
  %prm11.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prm11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %prm11.i, align 4
  %dmap.i = getelementptr inbounds %struct.omap_prm_data, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %dmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmap.i, align 4
  %cap.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %cap.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %cap.i, align 4
  %pwrstctrl.i = getelementptr inbounds %struct.omap_prm_data, ptr %17, i32 0, i32 3
  %25 = ptrtoint ptr %pwrstctrl.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pwrstctrl.i, align 4
  %pwrstctrl16.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %pwrstctrl16.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %pwrstctrl16.i, align 8
  %pwrstst.i = getelementptr inbounds %struct.omap_prm_data, ptr %17, i32 0, i32 4
  %28 = ptrtoint ptr %pwrstst.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pwrstst.i, align 2
  %pwrstst19.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %pwrstst19.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %pwrstst19.i, align 2
  %pd.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2
  %name20.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 10
  %31 = ptrtoint ptr %name20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i, ptr %name20.i, align 8
  %power_on.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 19
  %32 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @omap_prm_domain_power_on, ptr %power_on.i, align 4
  %power_off.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 18
  %33 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @omap_prm_domain_power_off, ptr %power_off.i, align 8
  %attach_dev.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 30
  %34 = ptrtoint ptr %attach_dev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @omap_prm_domain_attach_dev, ptr %attach_dev.i, align 4
  %detach_dev.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 31
  %35 = ptrtoint ptr %detach_dev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @omap_prm_domain_detach_dev, ptr %detach_dev.i, align 8
  %flags.i = getelementptr inbounds %struct.omap_prm_domain, ptr %call.i.i, i32 0, i32 2, i32 32
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %flags.i, align 4
  %call27.i = tail call i32 @pm_genpd_init(ptr noundef %pd.i, ptr noundef null, i1 noundef zeroext true) #8
  %call29.i = tail call i32 @of_genpd_add_provider_simple(ptr noundef %13, ptr noundef %pd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = tail call i32 @pm_genpd_remove(ptr noundef %pd.i) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %prmd34.i = getelementptr inbounds %struct.omap_prm, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %prmd34.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %prmd34.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else.i, %if.end24.if.end29_crit_edge
  %call30 = tail call fastcc i32 @omap_prm_reset_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %err_domain

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_domain:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  tail call void @of_genpd_del_provider(ptr noundef %39) #8
  %prmd = getelementptr inbounds %struct.omap_prm, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %prmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prmd, align 4
  %pd = getelementptr inbounds %struct.omap_prm_domain, ptr %41, i32 0, i32 2
  %call35 = tail call i32 @pm_genpd_remove(ptr noundef %pd) #8
  br label %cleanup

cleanup:                                          ; preds = %err_domain, %if.end29.cleanup_crit_edge, %if.then31.i, %if.end.i.cleanup_crit_edge, %if.then21, %while.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then21 ], [ %call30, %err_domain ], [ -19, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call29.i, %if.then31.i ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_prm_reset_init(ptr noundef %pdev, ptr noundef %prm) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prm, align 4
  %rstctrl = getelementptr inbounds %struct.omap_prm_data, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %rstctrl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rstctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_prm_data, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %clkdm_lookup = getelementptr inbounds %struct.ti_prm_platform_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clkdm_lookup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clkdm_lookup, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %clkdm_allow_idle = getelementptr inbounds %struct.ti_prm_platform_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clkdm_allow_idle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkdm_allow_idle, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %rstmap = getelementptr inbounds %struct.omap_prm_data, ptr %4, i32 0, i32 8
  %16 = ptrtoint ptr %rstmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rstmap, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #8
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @omap_reset_ops, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node23 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %of_node23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node23, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %nr_resets, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @omap_prm_reset_xlate, ptr %of_xlate, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %of_reset_n_cells, align 4
  %dev28 = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev28, align 4
  %lock = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @omap_prm_reset_init.__key, i16 noundef signext 3) #8
  %prm30 = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %prm30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %prm, ptr %prm30, align 4
  %28 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prm, align 4
  %clkdm_name = getelementptr inbounds %struct.omap_prm_data, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clkdm_name, align 4
  %tobool32.not = icmp eq ptr %31, null
  br i1 %tobool32.not, label %cond.false, label %if.end19.cond.end_crit_edge

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.omap_prm_data, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end19.cond.end_crit_edge
  %cond = phi ptr [ %33, %cond.false ], [ %31, %if.end19.cond.end_crit_edge ]
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.20, ptr noundef %cond)
  %34 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prm, align 4
  %flags38 = getelementptr inbounds %struct.omap_prm_data, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %flags38 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags38, align 4
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool41.not = icmp eq i8 %38, 0
  br i1 %tobool41.not, label %if.then42, label %cond.end.if.end50_crit_edge

cond.end.if.end50_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then42:                                        ; preds = %cond.end
  %39 = ptrtoint ptr %clkdm_lookup to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clkdm_lookup, align 4
  %call45 = call ptr %40(ptr noundef nonnull %buf) #8
  %clkdm = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %clkdm to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call45, ptr %clkdm, align 4
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %if.then42.cleanup_crit_edge, label %if.then42.if.end50_crit_edge

if.then42.if.end50_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.then42.if.end50_crit_edge, %cond.end.if.end50_crit_edge
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp144 = icmp sgt i8 %43, -1
  br i1 %cmp144, label %while.body.lr.ph, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end50
  %mask = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %44 = phi i8 [ %43, %while.body.lr.ph ], [ %48, %while.body.while.body_crit_edge ]
  %map.0145 = phi ptr [ %17, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %conv51142 = zext i8 %44 to i32
  %shl = shl nuw i32 1, %conv51142
  %45 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask, align 4
  %or = or i32 %46, %shl
  store i32 %or, ptr %mask, align 4
  %incdec.ptr = getelementptr %struct.omap_rst_map, ptr %map.0145, i32 1
  %47 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr, align 1
  %cmp = icmp sgt i8 %48, -1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end50.while.end_crit_edge
  %49 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prm, align 4
  %rstmap56 = getelementptr inbounds %struct.omap_prm_data, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %rstmap56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rstmap56, align 4
  %cmp57 = icmp eq ptr %52, @rst_map_012
  br i1 %cmp57, label %if.then59, label %while.end.if.end92_crit_edge

while.end.if.end92_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then59:                                        ; preds = %while.end
  %53 = ptrtoint ptr %prm30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prm30, align 4
  %base = getelementptr inbounds %struct.omap_prm, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %rstctrl63 = getelementptr inbounds %struct.omap_prm_data, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %rstctrl63 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %rstctrl63, align 4
  %conv64 = zext i16 %60 to i32
  %add.ptr = getelementptr i8, ptr %56, i32 %conv64
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %mask66 = getelementptr inbounds %struct.omap_reset_data, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %mask66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mask66, align 4
  %and67 = and i32 %62, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %and67, i32 %64)
  %cmp69.not = icmp eq i32 %and67, %64
  br i1 %cmp69.not, label %if.then59.if.end92_crit_edge, label %do.body72

if.then59.if.end92_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.body72:                                        ; preds = %if.then59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_prm_reset_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_prm_reset_init, %if.then78)) #8
          to label %do.end82 [label %if.then78], !srcloc !186

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_prm_reset_init.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %62) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body72
  %65 = ptrtoint ptr %mask66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mask66, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %prm30 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prm30, align 4
  %base85 = getelementptr inbounds %struct.omap_prm, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %base85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base85, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %rstctrl88 = getelementptr inbounds %struct.omap_prm_data, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %rstctrl88 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %rstctrl88, align 4
  %conv89 = zext i16 %75 to i32
  %add.ptr90 = getelementptr i8, ptr %71, i32 %conv89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %67) #8, !srcloc !187
  br label %if.end92

if.end92:                                         ; preds = %do.end82, %if.then59.if.end92_crit_edge, %while.end.if.end92_crit_edge
  %call95 = call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then42.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call95, %if.end92 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -22, %if.then42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_power_on(ptr nocapture noundef readonly %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %cap = getelementptr i8, ptr %domain, i32 1356
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwrstctrl_saved = getelementptr i8, ptr %domain, i32 1360
  %2 = ptrtoint ptr %pwrstctrl_saved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwrstctrl_saved, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prm = getelementptr i8, ptr %domain, i32 -4
  %4 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prm, align 4
  %base = getelementptr inbounds %struct.omap_prm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %pwrstctrl = getelementptr i8, ptr %domain, i32 1352
  %8 = ptrtoint ptr %pwrstctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pwrstctrl, align 8
  %conv = zext i16 %9 to i32
  %add.ptr4 = getelementptr i8, ptr %7, i32 %conv
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !185
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end.if.end6_crit_edge
  %v.0 = phi i32 [ %11, %if.else ], [ %3, %if.end.if.end6_crit_edge ]
  %prm7 = getelementptr i8, ptr %domain, i32 -4
  %12 = ptrtoint ptr %prm7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prm7, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %flags = getelementptr inbounds %struct.omap_prm_data, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 4
  %18 = and i8 %17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool9.not = icmp eq i8 %18, 0
  %. = select i1 %tobool9.not, i32 3, i32 1
  %and13 = and i32 %v.0, -4
  %or = or i32 %., %and13
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base15 = getelementptr inbounds %struct.omap_prm, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base15, align 4
  %pwrstctrl16 = getelementptr i8, ptr %domain, i32 1352
  %22 = ptrtoint ptr %pwrstctrl16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pwrstctrl16, align 8
  %conv17 = zext i16 %23 to i32
  %add.ptr18 = getelementptr i8, ptr %21, i32 %conv17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %19) #8, !srcloc !187
  %call19 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call19, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 547) #8
  %pwrstst = getelementptr i8, ptr %domain, i32 1354
  %24 = ptrtoint ptr %prm7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prm7, align 4
  %base3295 = getelementptr inbounds %struct.omap_prm, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base3295 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base3295, align 4
  %28 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pwrstst, align 2
  %conv3396 = zext i16 %29 to i32
  %add.ptr3497 = getelementptr i8, ptr %27, i32 %conv3396
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3497) #8, !srcloc !185
  %31 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool38.not99 = icmp eq i32 %31, 0
  br i1 %tobool38.not99, label %if.end6.cleanup_crit_edge, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  br label %land.lhs.true

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then57.land.lhs.true_crit_edge, %if.end6.land.lhs.true_crit_edge
  %call42 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then57

if.then57:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %32 = ptrtoint ptr %prm7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prm7, align 4
  %base32 = getelementptr inbounds %struct.omap_prm, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base32, align 4
  %36 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pwrstst, align 2
  %conv33 = zext i16 %37 to i32
  %add.ptr34 = getelementptr i8, ptr %35, i32 %conv33
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !185
  %39 = and i32 %38, 4096
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.then57.cleanup_crit_edge, label %if.then57.land.lhs.true_crit_edge

if.then57.land.lhs.true_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %40 = ptrtoint ptr %prm7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prm7, align 4
  %base49 = getelementptr inbounds %struct.omap_prm, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base49, align 4
  %44 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pwrstst, align 2
  %conv51 = zext i16 %45 to i32
  %add.ptr52 = getelementptr i8, ptr %43, i32 %conv51
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !185
  %47 = and i32 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool61.not = icmp eq i32 %47, 0
  br i1 %tobool61.not, label %for.end.cleanup_crit_edge, label %do.end66

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end66:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %domain, i32 0, i32 10
  %50 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef %51, ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %for.end.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %do.end66 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_power_off(ptr nocapture noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %cap = getelementptr i8, ptr %domain, i32 1356
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %prm = getelementptr i8, ptr %domain, i32 -4
  %2 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prm, align 4
  %base = getelementptr inbounds %struct.omap_prm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %pwrstctrl = getelementptr i8, ptr %domain, i32 1352
  %6 = ptrtoint ptr %pwrstctrl to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pwrstctrl, align 8
  %conv = zext i16 %7 to i32
  %add.ptr1 = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !185
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %pwrstctrl_saved = getelementptr i8, ptr %domain, i32 1360
  %10 = ptrtoint ptr %pwrstctrl_saved to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pwrstctrl_saved, align 8
  %and = and i32 %9, -4
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cap, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #8, !range !188
  %or = or i32 %15, %and
  %statechange = getelementptr inbounds %struct.omap_prm_domain_map, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %statechange to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %statechange, align 4
  %or7 = or i32 %or, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool5.not102 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool5.not102, i32 %or7, i32 %or
  %and15 = and i32 %spec.select, -5
  %17 = lshr i8 %bf.load, 4
  %18 = and i8 %17, 4
  %19 = xor i8 %18, 4
  %20 = zext i8 %19 to i32
  %v.1 = or i32 %and15, %20
  %21 = tail call i32 @llvm.bswap.i32(i32 %v.1)
  %22 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prm, align 4
  %base19 = getelementptr inbounds %struct.omap_prm, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base19, align 4
  %26 = ptrtoint ptr %pwrstctrl to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pwrstctrl, align 8
  %conv21 = zext i16 %27 to i32
  %add.ptr22 = getelementptr i8, ptr %25, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %21) #8, !srcloc !187
  %call23 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call23, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 593) #8
  %pwrstst = getelementptr i8, ptr %domain, i32 1354
  %28 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prm, align 4
  %base36105 = getelementptr inbounds %struct.omap_prm, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %base36105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base36105, align 4
  %32 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pwrstst, align 2
  %conv37106 = zext i16 %33 to i32
  %add.ptr38107 = getelementptr i8, ptr %31, i32 %conv37106
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38107) #8, !srcloc !185
  %35 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool42.not109 = icmp eq i32 %35, 0
  br i1 %tobool42.not109, label %if.end.cleanup_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then61.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call46 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call46, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call46, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then61

if.then61:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %36 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prm, align 4
  %base36 = getelementptr inbounds %struct.omap_prm, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %base36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base36, align 4
  %40 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pwrstst, align 2
  %conv37 = zext i16 %41 to i32
  %add.ptr38 = getelementptr i8, ptr %39, i32 %conv37
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !185
  %43 = and i32 %42, 4096
  %tobool42.not = icmp eq i32 %43, 0
  br i1 %tobool42.not, label %if.then61.cleanup_crit_edge, label %if.then61.land.lhs.true_crit_edge

if.then61.land.lhs.true_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %44 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prm, align 4
  %base53 = getelementptr inbounds %struct.omap_prm, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base53, align 4
  %48 = ptrtoint ptr %pwrstst to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pwrstst, align 2
  %conv55 = zext i16 %49 to i32
  %add.ptr56 = getelementptr i8, ptr %47, i32 %conv55
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #8, !srcloc !185
  %51 = and i32 %50, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool65.not = icmp eq i32 %51, 0
  br i1 %tobool65.not, label %for.end.cleanup_crit_edge, label %do.end70

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %domain, i32 0, i32 10
  %54 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %55) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %for.end.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_prm_domain_attach_dev(ptr nocapture noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  %pd_args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pd_args) #8
  %0 = call ptr @memset(ptr %pd_args, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %pd_args) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %pd_args, i32 0, i32 1
  %3 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %domain, i32 0, i32 10
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %6, i32 noundef %4) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %7 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsys_data.i, align 8
  %domain_data.i = getelementptr inbounds %struct.pm_subsys_data, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %domain_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %domain_data.i, align 4
  %data = getelementptr inbounds %struct.generic_pm_domain_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data, align 8
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i20 = call i32 @of_device_is_compatible(ptr noundef %13, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %call.i.i = call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @pm_clk_create(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call i32 @of_pm_clk_add_clks(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @pm_clk_destroy(ptr noundef %dev) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %uses_pm_clk.i = getelementptr i8, ptr %domain, i32 1364
  %14 = ptrtoint ptr %uses_pm_clk.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %uses_pm_clk.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uses_pm_clk.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.then9.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call8.i, %if.then9.i ], [ 0, %if.end10.i ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call4.i, %if.end3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pd_args) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_prm_domain_detach_dev(ptr nocapture noundef readonly %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uses_pm_clk = getelementptr i8, ptr %domain, i32 1364
  %0 = ptrtoint ptr %uses_pm_clk to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %uses_pm_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pm_clk_destroy(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %1 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subsys_data.i, align 8
  %domain_data.i = getelementptr inbounds %struct.pm_subsys_data, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %domain_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %domain_data.i, align 4
  %data = getelementptr inbounds %struct.generic_pm_domain_data, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pm_clk_add_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_prm_reset_xlate(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef readonly %reset_spec) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %mask.i = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 2
  %2 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask.i, align 4
  %shl.i = shl nuw i32 1, %1
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.not.i.not, i32 -22, i32 %1
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %prm = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prm, align 4
  %base = getelementptr inbounds %struct.omap_prm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %rstctrl = getelementptr inbounds %struct.omap_prm_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rstctrl to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rstctrl, align 4
  %conv7 = zext i16 %7 to i32
  %add.ptr8 = getelementptr i8, ptr %3, i32 %conv7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !185
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shl = shl nuw i32 1, %id
  %or = or i32 %9, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prm, align 4
  %base12 = getelementptr inbounds %struct.omap_prm, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base12, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %rstctrl15 = getelementptr inbounds %struct.omap_prm_data, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %rstctrl15 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rstctrl15, align 4
  %conv16 = zext i16 %18 to i32
  %add.ptr17 = getelementptr i8, ptr %14, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #8, !srcloc !187
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %prm.i.i = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 1
  %4 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prm.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rstmap.i.i = getelementptr inbounds %struct.omap_prm_data, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %rstmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rstmap.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp13.i.i = icmp sgt i8 %11, -1
  br i1 %cmp13.i.i, label %entry.while.body.i.i_crit_edge, label %entry.omap_reset_get_st_bit.exit.i_crit_edge

entry.omap_reset_get_st_bit.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit.i

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %12 = phi i8 [ %16, %if.end.i.i.while.body.i.i_crit_edge ], [ %11, %entry.while.body.i.i_crit_edge ]
  %map.014.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %9, %entry.while.body.i.i_crit_edge ]
  %conv11.i.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %id)
  %cmp4.i.i = icmp eq i32 %conv11.i.i, %id
  br i1 %cmp4.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %st.i.i = getelementptr inbounds %struct.omap_rst_map, ptr %map.014.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %st.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %st.i.i, align 1
  %conv6.i.i = sext i8 %14 to i32
  br label %omap_reset_get_st_bit.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.omap_rst_map, ptr %map.014.i.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.i.i, align 1
  %cmp.i.i = icmp sgt i8 %16, -1
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.omap_reset_get_st_bit.exit.i_crit_edge

if.end.i.i.omap_reset_get_st_bit.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

omap_reset_get_st_bit.exit.i:                     ; preds = %if.end.i.i.omap_reset_get_st_bit.exit.i_crit_edge, %if.then.i.i, %entry.omap_reset_get_st_bit.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv6.i.i, %if.then.i.i ], [ %id, %entry.omap_reset_get_st_bit.exit.i_crit_edge ], [ %id, %if.end.i.i.omap_reset_get_st_bit.exit.i_crit_edge ]
  %rstst.i = getelementptr inbounds %struct.omap_prm_data, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %rstst.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rstst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %omap_reset_get_st_bit.exit.i.if.end.i_crit_edge

omap_reset_get_st_bit.exit.i.if.end.i_crit_edge:  ; preds = %omap_reset_get_st_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.rhs.i:                                        ; preds = %omap_reset_get_st_bit.exit.i
  %flags.i = getelementptr inbounds %struct.omap_prm_data, ptr %7, i32 0, i32 9
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 4
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  br i1 %tobool4.not.i, label %lor.rhs.i.if.end_crit_edge, label %lor.rhs.i.if.end.i_crit_edge

lor.rhs.i.if.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.rhs.i.if.end.i_crit_edge, %omap_reset_get_st_bit.exit.i.if.end.i_crit_edge
  %base.i = getelementptr inbounds %struct.omap_prm, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %rstctrl.i = getelementptr inbounds %struct.omap_prm_data, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %rstctrl.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rstctrl.i, align 4
  %conv9.i = zext i16 %25 to i32
  %add.ptr10.i = getelementptr i8, ptr %23, i32 %conv9.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !185
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  %shl.i = shl nuw i32 1, %id
  %and13.i = and i32 %27, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %omap_reset_status.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

omap_reset_status.exit:                           ; preds = %if.end.i
  %28 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prm.i.i, align 4
  %base19.i = getelementptr inbounds %struct.omap_prm, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %base19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base19.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %rstst22.i = getelementptr inbounds %struct.omap_prm_data, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %rstst22.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rstst22.i, align 2
  %conv23.i = zext i16 %35 to i32
  %add.ptr24.i = getelementptr i8, ptr %31, i32 %conv23.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #8, !srcloc !185
  %37 = xor i32 %36, -1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = shl nuw i32 1, %retval.0.i.i
  %40 = and i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %omap_reset_status.exit.cleanup_crit_edge, label %omap_reset_status.exit.if.end_crit_edge

omap_reset_status.exit.if.end_crit_edge:          ; preds = %omap_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

omap_reset_status.exit.cleanup_crit_edge:         ; preds = %omap_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %omap_reset_status.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %41 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prm.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %rstst = getelementptr inbounds %struct.omap_prm_data, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %rstst to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %rstst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool2.not = icmp eq i16 %46, 0
  br i1 %tobool2.not, label %lor.end, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.end:                                          ; preds = %if.end
  %flags5 = getelementptr inbounds %struct.omap_prm_data, ptr %44, i32 0, i32 9
  %47 = ptrtoint ptr %flags5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags5, align 4
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool7.not = icmp eq i8 %49, 0
  br i1 %tobool7.not, label %lor.end.if.end17_crit_edge, label %lor.end.if.then9_crit_edge

lor.end.if.then9_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.end.if.end17_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %lor.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %rstmap.i = getelementptr inbounds %struct.omap_prm_data, ptr %44, i32 0, i32 8
  %50 = ptrtoint ptr %rstmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rstmap.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp13.i = icmp sgt i8 %53, -1
  br i1 %cmp13.i, label %if.then9.while.body.i_crit_edge, label %if.then9.omap_reset_get_st_bit.exit_crit_edge

if.then9.omap_reset_get_st_bit.exit_crit_edge:    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit

if.then9.while.body.i_crit_edge:                  ; preds = %if.then9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i240.while.body.i_crit_edge, %if.then9.while.body.i_crit_edge
  %54 = phi i8 [ %58, %if.end.i240.while.body.i_crit_edge ], [ %53, %if.then9.while.body.i_crit_edge ]
  %map.014.i = phi ptr [ %incdec.ptr.i, %if.end.i240.while.body.i_crit_edge ], [ %51, %if.then9.while.body.i_crit_edge ]
  %conv11.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %id)
  %cmp4.i = icmp eq i32 %conv11.i, %id
  br i1 %cmp4.i, label %if.then.i, label %if.end.i240

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %st.i = getelementptr inbounds %struct.omap_rst_map, ptr %map.014.i, i32 0, i32 1
  %55 = ptrtoint ptr %st.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %st.i, align 1
  %conv6.i = sext i8 %56 to i32
  br label %omap_reset_get_st_bit.exit

if.end.i240:                                      ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.omap_rst_map, ptr %map.014.i, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.i = icmp sgt i8 %58, -1
  br i1 %cmp.i, label %if.end.i240.while.body.i_crit_edge, label %if.end.i240.omap_reset_get_st_bit.exit_crit_edge

if.end.i240.omap_reset_get_st_bit.exit_crit_edge: ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit

if.end.i240.while.body.i_crit_edge:               ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

omap_reset_get_st_bit.exit:                       ; preds = %if.end.i240.omap_reset_get_st_bit.exit_crit_edge, %if.then.i, %if.then9.omap_reset_get_st_bit.exit_crit_edge
  %retval.0.i241 = phi i32 [ %conv6.i, %if.then.i ], [ %id, %if.then9.omap_reset_get_st_bit.exit_crit_edge ], [ %id, %if.end.i240.omap_reset_get_st_bit.exit_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i241
  %59 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.omap_prm, ptr %42, i32 0, i32 1
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %conv15 = zext i16 %46 to i32
  %add.ptr16 = getelementptr i8, ptr %61, i32 %conv15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %59) #8, !srcloc !187
  br label %if.end17

if.end17:                                         ; preds = %omap_reset_get_st_bit.exit, %lor.end.if.end17_crit_edge
  %62 = phi i1 [ true, %omap_reset_get_st_bit.exit ], [ false, %lor.end.if.end17_crit_edge ]
  %st_bit.0 = phi i32 [ %retval.0.i241, %omap_reset_get_st_bit.exit ], [ -1, %lor.end.if.end17_crit_edge ]
  %clkdm = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 4
  %63 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clkdm, align 4
  %tobool18.not = icmp eq ptr %64, null
  br i1 %tobool18.not, label %if.end17.do.body22_crit_edge, label %if.then19

if.end17.do.body22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  tail call void %66(ptr noundef nonnull %64) #8
  br label %do.body22

do.body22:                                        ; preds = %if.then19, %if.end17.do.body22_crit_edge
  %lock = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 3
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %67 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prm.i.i, align 4
  %base30 = getelementptr inbounds %struct.omap_prm, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %base30 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base30, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %68, align 4
  %rstctrl = getelementptr inbounds %struct.omap_prm_data, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %rstctrl to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rstctrl, align 4
  %conv33 = zext i16 %74 to i32
  %add.ptr34 = getelementptr i8, ptr %70, i32 %conv33
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !185
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %shl37 = shl nuw i32 1, %id
  %neg = xor i32 %shl37, -1
  %and38 = and i32 %76, %neg
  %77 = tail call i32 @llvm.bswap.i32(i32 %and38)
  %78 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prm.i.i, align 4
  %base40 = getelementptr inbounds %struct.omap_prm, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base40, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %79, align 4
  %rstctrl43 = getelementptr inbounds %struct.omap_prm_data, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %rstctrl43 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %rstctrl43, align 4
  %conv44 = zext i16 %85 to i32
  %add.ptr45 = getelementptr i8, ptr %81, i32 %conv44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %77) #8, !srcloc !187
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26) #8
  %call47 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call47, 10000000
  %86 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prm.i.i, align 4
  %base51258 = getelementptr inbounds %struct.omap_prm, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %base51258 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base51258, align 4
  %90 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %87, align 4
  %rstctrl54259 = getelementptr inbounds %struct.omap_prm_data, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %rstctrl54259 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %rstctrl54259, align 4
  %conv55260 = zext i16 %93 to i32
  %add.ptr56261 = getelementptr i8, ptr %89, i32 %conv55260
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56261) #8, !srcloc !185
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %and60262 = and i32 %95, %shl37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60262)
  %tobool61.not263 = icmp eq i32 %and60262, 0
  br i1 %tobool61.not263, label %do.body22.if.end102_crit_edge, label %do.body22.land.lhs.true_crit_edge

do.body22.land.lhs.true_crit_edge:                ; preds = %do.body22
  br label %land.lhs.true

do.body22.if.end102_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.body22.land.lhs.true_crit_edge
  %call65 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call65, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call65, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #8
  %97 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prm.i.i, align 4
  %base51 = getelementptr inbounds %struct.omap_prm, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base51, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %98, align 4
  %rstctrl54 = getelementptr inbounds %struct.omap_prm_data, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %rstctrl54 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %rstctrl54, align 4
  %conv55 = zext i16 %104 to i32
  %add.ptr56 = getelementptr i8, ptr %100, i32 %conv55
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #8, !srcloc !185
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %and60 = and i32 %106, %shl37
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.false.if.end102_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.if.end102_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

for.end:                                          ; preds = %land.lhs.true
  %107 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prm.i.i, align 4
  %base72 = getelementptr inbounds %struct.omap_prm, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %base72 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base72, align 4
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %108, align 4
  %rstctrl75 = getelementptr inbounds %struct.omap_prm_data, ptr %112, i32 0, i32 6
  %113 = ptrtoint ptr %rstctrl75 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %rstctrl75, align 4
  %conv76 = zext i16 %114 to i32
  %add.ptr77 = getelementptr i8, ptr %110, i32 %conv76
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #8, !srcloc !185
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %.pre = and i32 %116, %shl37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool92.not = icmp eq i32 %.pre, 0
  br i1 %tobool92.not, label %for.end.if.end102_crit_edge, label %do.end97

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end97:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prm.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %name = getelementptr inbounds %struct.omap_prm_data, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %122, i32 noundef %id) #11
  br label %if.end102

if.end102:                                        ; preds = %do.end97, %for.end.if.end102_crit_edge, %cond.false.if.end102_crit_edge, %do.body22.if.end102_crit_edge
  %cond278 = phi i32 [ -110, %do.end97 ], [ 0, %for.end.if.end102_crit_edge ], [ 0, %do.body22.if.end102_crit_edge ], [ 0, %cond.false.if.end102_crit_edge ]
  br i1 %62, label %if.then104, label %if.end102.if.end173_crit_edge

if.end102.if.end173_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

if.then104:                                       ; preds = %if.end102
  %call108 = tail call i64 @ktime_get() #8
  %add.i244 = add i64 %call108, 10000000
  %123 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prm.i.i, align 4
  %base113264 = getelementptr inbounds %struct.omap_prm, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %base113264 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base113264, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %124, align 4
  %rstst116265 = getelementptr inbounds %struct.omap_prm_data, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %rstst116265 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %rstst116265, align 2
  %conv117266 = zext i16 %130 to i32
  %add.ptr118267 = getelementptr i8, ptr %126, i32 %conv117266
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118267) #8, !srcloc !185
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %shl121 = shl nuw i32 1, %st_bit.0
  %and122268 = and i32 %132, %shl121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122268)
  %tobool123.not269 = icmp eq i32 %and122268, 0
  br i1 %tobool123.not269, label %if.then104.land.lhs.true127_crit_edge, label %if.then104.for.end156_crit_edge

if.then104.for.end156_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end156

if.then104.land.lhs.true127_crit_edge:            ; preds = %if.then104
  br label %land.lhs.true127

land.lhs.true127:                                 ; preds = %cond.false150.land.lhs.true127_crit_edge, %if.then104.land.lhs.true127_crit_edge
  %call128 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call128, i64 %add.i244)
  %cmp3.i246 = icmp sgt i64 %call128, %add.i244
  br i1 %cmp3.i246, label %if.then132, label %cond.false150

if.then132:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prm.i.i, align 4
  %base135 = getelementptr inbounds %struct.omap_prm, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %base135 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base135, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 4
  %rstst138 = getelementptr inbounds %struct.omap_prm_data, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %rstst138 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %rstst138, align 2
  %conv139 = zext i16 %140 to i32
  %add.ptr140 = getelementptr i8, ptr %136, i32 %conv139
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #8, !srcloc !185
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  br label %for.end156

cond.false150:                                    ; preds = %land.lhs.true127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748) #8
  %144 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prm.i.i, align 4
  %base113 = getelementptr inbounds %struct.omap_prm, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base113, align 4
  %148 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %145, align 4
  %rstst116 = getelementptr inbounds %struct.omap_prm_data, ptr %149, i32 0, i32 7
  %150 = ptrtoint ptr %rstst116 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %rstst116, align 2
  %conv117 = zext i16 %151 to i32
  %add.ptr118 = getelementptr i8, ptr %147, i32 %conv117
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #8, !srcloc !185
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %and122 = and i32 %153, %shl121
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %cond.false150.land.lhs.true127_crit_edge, label %cond.false150.for.end156_crit_edge

cond.false150.for.end156_crit_edge:               ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end156

cond.false150.land.lhs.true127_crit_edge:         ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true127

for.end156:                                       ; preds = %cond.false150.for.end156_crit_edge, %if.then132, %if.then104.for.end156_crit_edge
  %v.1 = phi i32 [ %142, %if.then132 ], [ %132, %if.then104.for.end156_crit_edge ], [ %153, %cond.false150.for.end156_crit_edge ]
  %and159 = and i32 %v.1, %shl121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.end166, label %for.end156.if.end173_crit_edge

for.end156.if.end173_crit_edge:                   ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

do.end166:                                        ; preds = %for.end156
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %prm.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prm.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %name170 = getelementptr inbounds %struct.omap_prm_data, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %name170 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name170, align 4
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %159, i32 noundef %id) #11
  br label %if.end173

if.end173:                                        ; preds = %do.end166, %for.end156.if.end173_crit_edge, %if.end102.if.end173_crit_edge
  %ret.0 = phi i32 [ -110, %do.end166 ], [ 0, %for.end156.if.end173_crit_edge ], [ %cond278, %if.end102.if.end173_crit_edge ]
  %160 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %clkdm, align 4
  %tobool175.not = icmp eq ptr %161, null
  br i1 %tobool175.not, label %if.end173.cleanup_crit_edge, label %if.then176

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then176:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  %clkdm_allow_idle = getelementptr inbounds %struct.ti_prm_platform_data, ptr %3, i32 0, i32 1
  %162 = ptrtoint ptr %clkdm_allow_idle to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clkdm_allow_idle, align 4
  tail call void %163(ptr noundef nonnull %161) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then176, %if.end173.cleanup_crit_edge, %omap_reset_status.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_reset_status.exit.cleanup_crit_edge ], [ %ret.0, %if.then176 ], [ %ret.0, %if.end173.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prm.i = getelementptr inbounds %struct.omap_reset_data, ptr %rcdev, i32 0, i32 1
  %0 = ptrtoint ptr %prm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prm.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rstmap.i = getelementptr inbounds %struct.omap_prm_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rstmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstmap.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp13.i = icmp sgt i8 %7, -1
  br i1 %cmp13.i, label %entry.while.body.i_crit_edge, label %entry.omap_reset_get_st_bit.exit_crit_edge

entry.omap_reset_get_st_bit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %8 = phi i8 [ %12, %if.end.i.while.body.i_crit_edge ], [ %7, %entry.while.body.i_crit_edge ]
  %map.014.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %conv11.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %id)
  %cmp4.i = icmp eq i32 %conv11.i, %id
  br i1 %cmp4.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %st.i = getelementptr inbounds %struct.omap_rst_map, ptr %map.014.i, i32 0, i32 1
  %9 = ptrtoint ptr %st.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %st.i, align 1
  %conv6.i = sext i8 %10 to i32
  br label %omap_reset_get_st_bit.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.omap_rst_map, ptr %map.014.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i, align 1
  %cmp.i = icmp sgt i8 %12, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.omap_reset_get_st_bit.exit_crit_edge

if.end.i.omap_reset_get_st_bit.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %omap_reset_get_st_bit.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

omap_reset_get_st_bit.exit:                       ; preds = %if.end.i.omap_reset_get_st_bit.exit_crit_edge, %if.then.i, %entry.omap_reset_get_st_bit.exit_crit_edge
  %retval.0.i = phi i32 [ %conv6.i, %if.then.i ], [ %id, %entry.omap_reset_get_st_bit.exit_crit_edge ], [ %id, %if.end.i.omap_reset_get_st_bit.exit_crit_edge ]
  %rstst = getelementptr inbounds %struct.omap_prm_data, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %rstst to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rstst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %lor.rhs, label %omap_reset_get_st_bit.exit.if.end_crit_edge

omap_reset_get_st_bit.exit.if.end_crit_edge:      ; preds = %omap_reset_get_st_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs:                                          ; preds = %omap_reset_get_st_bit.exit
  %flags = getelementptr inbounds %struct.omap_prm_data, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 4
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.if.end_crit_edge

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.rhs.if.end_crit_edge, %omap_reset_get_st_bit.exit.if.end_crit_edge
  %base = getelementptr inbounds %struct.omap_prm, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %rstctrl = getelementptr inbounds %struct.omap_prm_data, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %rstctrl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rstctrl, align 4
  %conv9 = zext i16 %21 to i32
  %add.ptr10 = getelementptr i8, ptr %19, i32 %conv9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !185
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %shl = shl nuw i32 1, %id
  %and13 = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prm.i, align 4
  %base19 = getelementptr inbounds %struct.omap_prm, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base19, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %rstst22 = getelementptr inbounds %struct.omap_prm_data, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %rstst22 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rstst22, align 2
  %conv23 = zext i16 %31 to i32
  %add.ptr24 = getelementptr i8, ptr %27, i32 %conv23
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !185
  %33 = xor i32 %32, -1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = lshr i32 %34, %retval.0.i
  %36 = and i32 %35, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.end16 ], [ -524, %lor.rhs.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__initcall__kmod_omap_prm__171_997_omap_prm_driver_init6, !1, !"__initcall__kmod_omap_prm__171_997_omap_prm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/omap_prm.c", i32 997, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/ti/omap_prm.c", i32 993, i32 12}
!4 = !{ptr @omap_prm_driver, !5, !"omap_prm_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/ti/omap_prm.c", i32 990, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/ti/omap_prm.c", i32 687, i32 38}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/ti/omap_prm.c", i32 697, i32 41}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/omap_prm.c", i32 529, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/omap_prm.c", i32 545, i32 8}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/omap_prm.c", i32 549, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap_prm_domain_power_on._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @omap_prm_domain_power_on._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/ti/omap_prm.c", i32 552, i32 35}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/ti/omap_prm.c", i32 573, i32 35}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/ti/omap_prm.c", i32 595, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @omap_prm_domain_power_off._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap_prm_domain_power_off._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/ti/omap_prm.c", i32 598, i32 35}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/ti/omap_prm.c", i32 647, i32 39}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/ti/omap_prm.c", i32 653, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @omap_prm_domain_attach_dev._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_prm_domain_attach_dev._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/ti/omap_prm.c", i32 614, i32 35}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/ti/omap_prm.c", i32 617, i32 33}
!43 = !{ptr @omap_prm_reset_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/soc/ti/omap_prm.c", i32 908, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/ti/omap_prm.c", i32 912, i32 15}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/ti/omap_prm.c", i32 930, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @omap_prm_reset_init.__UNIQUE_ID_ddebug170, !49, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!52 = !{ptr @omap_reset_ops, !53, !"omap_reset_ops", i1 false, i1 false}
!53 = !{!"../drivers/soc/ti/omap_prm.c", i32 854, i32 39}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/ti/omap_prm.c", i32 834, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @omap_reset_deassert._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @omap_reset_deassert._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @omap_reset_deassert._entry.25, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/soc/ti/omap_prm.c", i32 844, i32 4}
!61 = !{ptr @omap_reset_deassert._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @rst_map_012, !63, !"rst_map_012", i1 false, i1 false}
!63 = !{!"../drivers/soc/ti/omap_prm.c", i32 149, i32 34}
!64 = !{ptr @omap_prm_id_table, !65, !"omap_prm_id_table", i1 false, i1 false}
!65 = !{!"../drivers/soc/ti/omap_prm.c", i32 494, i32 34}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/ti/omap_prm.c", i32 158, i32 11}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/ti/omap_prm.c", i32 162, i32 11}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/ti/omap_prm.c", i32 167, i32 11}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/ti/omap_prm.c", i32 171, i32 11}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/ti/omap_prm.c", i32 175, i32 11}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/soc/ti/omap_prm.c", i32 177, i32 51}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/ti/omap_prm.c", i32 182, i32 11}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/ti/omap_prm.c", i32 187, i32 11}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/ti/omap_prm.c", i32 191, i32 11}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/ti/omap_prm.c", i32 195, i32 11}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/ti/omap_prm.c", i32 199, i32 11}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/ti/omap_prm.c", i32 203, i32 11}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/ti/omap_prm.c", i32 208, i32 11}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/ti/omap_prm.c", i32 212, i32 11}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/ti/omap_prm.c", i32 216, i32 11}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/ti/omap_prm.c", i32 220, i32 11}
!98 = !{ptr @omap4_prm_data, !99, !"omap4_prm_data", i1 false, i1 false}
!99 = !{!"../drivers/soc/ti/omap_prm.c", i32 156, i32 35}
!100 = !{ptr @omap_prm_reton, !101, !"omap_prm_reton", i1 false, i1 false}
!101 = !{!"../drivers/soc/ti/omap_prm.c", i32 132, i32 41}
!102 = !{ptr @omap_prm_noinact, !103, !"omap_prm_noinact", i1 false, i1 false}
!103 = !{!"../drivers/soc/ti/omap_prm.c", i32 109, i32 41}
!104 = !{ptr @rst_map_01, !105, !"rst_map_01", i1 false, i1 false}
!105 = !{!"../drivers/soc/ti/omap_prm.c", i32 143, i32 34}
!106 = !{ptr @omap_prm_all, !107, !"omap_prm_all", i1 false, i1 false}
!107 = !{!"../drivers/soc/ti/omap_prm.c", i32 102, i32 41}
!108 = !{ptr @omap_prm_alwon, !109, !"omap_prm_alwon", i1 false, i1 false}
!109 = !{!"../drivers/soc/ti/omap_prm.c", i32 128, i32 41}
!110 = !{ptr @omap_prm_onoff_noauto, !111, !"omap_prm_onoff_noauto", i1 false, i1 false}
!111 = !{!"../drivers/soc/ti/omap_prm.c", i32 123, i32 41}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/soc/ti/omap_prm.c", i32 233, i32 11}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/soc/ti/omap_prm.c", i32 242, i32 11}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/soc/ti/omap_prm.c", i32 248, i32 51}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/soc/ti/omap_prm.c", i32 252, i32 11}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/soc/ti/omap_prm.c", i32 265, i32 11}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/soc/ti/omap_prm.c", i32 273, i32 11}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/soc/ti/omap_prm.c", i32 277, i32 11}
!126 = !{ptr @omap5_prm_data, !127, !"omap5_prm_data", i1 false, i1 false}
!127 = !{!"../drivers/soc/ti/omap_prm.c", i32 227, i32 35}
!128 = !{ptr @omap_prm_nooff, !129, !"omap_prm_nooff", i1 false, i1 false}
!129 = !{!"../drivers/soc/ti/omap_prm.c", i32 116, i32 41}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/soc/ti/omap_prm.c", i32 298, i32 11}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/soc/ti/omap_prm.c", i32 306, i32 17}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/soc/ti/omap_prm.c", i32 316, i32 17}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/soc/ti/omap_prm.c", i32 339, i32 17}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/soc/ti/omap_prm.c", i32 358, i32 11}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/soc/ti/omap_prm.c", i32 363, i32 11}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/soc/ti/omap_prm.c", i32 368, i32 11}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/soc/ti/omap_prm.c", i32 373, i32 11}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soc/ti/omap_prm.c", i32 378, i32 11}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/soc/ti/omap_prm.c", i32 383, i32 11}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/soc/ti/omap_prm.c", i32 387, i32 11}
!152 = !{ptr @dra7_prm_data, !153, !"dra7_prm_data", i1 false, i1 false}
!153 = !{!"../drivers/soc/ti/omap_prm.c", i32 292, i32 35}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/soc/ti/omap_prm.c", i32 405, i32 11}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/soc/ti/omap_prm.c", i32 408, i32 48}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/soc/ti/omap_prm.c", i32 432, i32 69}
!160 = !{ptr @am3_prm_data, !161, !"am3_prm_data", i1 false, i1 false}
!161 = !{!"../drivers/soc/ti/omap_prm.c", i32 403, i32 35}
!162 = !{ptr @am3_per_rst_map, !163, !"am3_per_rst_map", i1 false, i1 false}
!163 = !{!"../drivers/soc/ti/omap_prm.c", i32 393, i32 34}
!164 = !{ptr @am3_wkup_rst_map, !165, !"am3_wkup_rst_map", i1 false, i1 false}
!165 = !{!"../drivers/soc/ti/omap_prm.c", i32 398, i32 34}
!166 = !{ptr @rst_map_0, !167, !"rst_map_0", i1 false, i1 false}
!167 = !{!"../drivers/soc/ti/omap_prm.c", i32 138, i32 34}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/soc/ti/omap_prm.c", i32 467, i32 11}
!170 = !{ptr @am4_prm_data, !171, !"am4_prm_data", i1 false, i1 false}
!171 = !{!"../drivers/soc/ti/omap_prm.c", i32 452, i32 35}
!172 = !{ptr @am4_per_rst_map, !173, !"am4_per_rst_map", i1 false, i1 false}
!173 = !{!"../drivers/soc/ti/omap_prm.c", i32 441, i32 34}
!174 = !{ptr @am4_device_rst_map, !175, !"am4_device_rst_map", i1 false, i1 false}
!175 = !{!"../drivers/soc/ti/omap_prm.c", i32 446, i32 34}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 4826604}
!186 = !{i64 2148715451, i64 2148715456, i64 2148715469, i64 2148715513, i64 2148715547, i64 2148715568}
!187 = !{i64 4826186}
!188 = !{i32 0, i32 33}
