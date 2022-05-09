; ModuleID = '/llk/IR_all_yes/drivers/clk/keystone/sci-clk.c_pt.bc'
source_filename = "../drivers/clk/keystone/sci-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_sci_handle = type { %struct.ti_sci_version_info, %struct.ti_sci_ops }
%struct.ti_sci_version_info = type { i8, i8, i16, [32 x i8] }
%struct.ti_sci_ops = type { %struct.ti_sci_core_ops, %struct.ti_sci_dev_ops, %struct.ti_sci_clk_ops, %struct.ti_sci_rm_core_ops, %struct.ti_sci_rm_irq_ops, %struct.ti_sci_rm_ringacc_ops, %struct.ti_sci_rm_psil_ops, %struct.ti_sci_rm_udmap_ops, %struct.ti_sci_proc_ops }
%struct.ti_sci_core_ops = type { ptr }
%struct.ti_sci_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_core_ops = type { ptr, ptr }
%struct.ti_sci_rm_irq_ops = type { ptr, ptr, ptr, ptr }
%struct.ti_sci_rm_ringacc_ops = type { ptr }
%struct.ti_sci_rm_psil_ops = type { ptr, ptr }
%struct.ti_sci_rm_udmap_ops = type { ptr, ptr, ptr }
%struct.ti_sci_proc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sci_clk_provider = type { ptr, ptr, ptr, ptr, i32 }
%struct.sci_clk = type { %struct.clk_hw, i16, i32, i32, ptr, i8, %struct.list_head, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_sci_clk__183_715_ti_sci_clk_driver_init6 = internal global ptr @ti_sci_clk_driver_init, section ".initcall6.init", align 4
@ti_sci_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_sci_clk_probe, ptr @ti_sci_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_sci_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_sci_clk_driver_exit = internal global ptr @ti_sci_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [42 x i8] c"sci_clk.file=drivers/clk/keystone/sci-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [23 x i8] c"sci_clk.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [66 x i8] c"sci_clk.description=TI System Control Interface(SCI) Clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [27 x i8] c"sci_clk.author=Tero Kristo\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [34 x i8] c"sci_clk.alias=platform:ti-sci-clk\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti-sci-clk\00", [21 x i8] zeroinitializer }, align 32
@ti_sci_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-sci-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_sci_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"scan clocks from FW failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_sci_clk_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/keystone/sci-clk.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_sci_clk_probe._entry_ptr = internal global ptr @ti_sci_clk_probe._entry, section ".printk_index", align 4
@ti_sci_clk_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ti-sci-init-clocks failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_sci_clk_probe._entry_ptr.8 = internal global ptr @ti_sci_clk_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk:%d:%d\00", [22 x i8] zeroinitializer }, align 32
@sci_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @sci_clk_prepare, ptr @sci_clk_unprepare, ptr @sci_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sci_clk_recalc_rate, ptr null, ptr @sci_clk_determine_rate, ptr @sci_clk_set_parent, ptr @sci_clk_get_parent, ptr @sci_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@_sci_clk_build._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed clk register with %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_sci_clk_build\00", [17 x i8] zeroinitializer }, align 32
@_sci_clk_build._entry_ptr = internal global ptr @_sci_clk_build._entry, section ".printk_index", align 4
@sci_clk_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unprepare failed for dev=%d, clk=%d, ret=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sci_clk_unprepare\00", [46 x i8] zeroinitializer }, align 32
@sci_clk_unprepare._entry_ptr = internal global ptr @sci_clk_unprepare._entry, section ".printk_index", align 4
@sci_clk_is_prepared._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"is_prepared failed for dev=%d, clk=%d, ret=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sci_clk_is_prepared\00", [44 x i8] zeroinitializer }, align 32
@sci_clk_is_prepared._entry_ptr = internal global ptr @sci_clk_is_prepared._entry, section ".printk_index", align 4
@sci_clk_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"recalc-rate failed for dev=%d, clk=%d, ret=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sci_clk_recalc_rate\00", [44 x i8] zeroinitializer }, align 32
@sci_clk_recalc_rate._entry_ptr = internal global ptr @sci_clk_recalc_rate._entry, section ".printk_index", align 4
@sci_clk_determine_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"determine-rate failed for dev=%d, clk=%d, ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sci_clk_determine_rate\00", [41 x i8] zeroinitializer }, align 32
@sci_clk_determine_rate._entry_ptr = internal global ptr @sci_clk_determine_rate._entry, section ".printk_index", align 4
@sci_clk_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"get-parent failed for dev=%d, clk=%d, ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sci_clk_get_parent\00", [45 x i8] zeroinitializer }, align 32
@sci_clk_get_parent._entry_ptr = internal global ptr @sci_clk_get_parent._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"ti_sci_clk_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 707, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 711, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"ti_sci_clk_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 420, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 672, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 685, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 303, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"sci_clk_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 272, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 347, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 107, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 129, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 156, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 195, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [34 x i8] c"../drivers/clk/keystone/sci-clk.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 243, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_ti_sci_clk_driver_exit, ptr @__initcall__kmod_sci_clk__183_715_ti_sci_clk_driver_init6, ptr @_sci_clk_build._entry, ptr @_sci_clk_build._entry_ptr, ptr @sci_clk_determine_rate._entry, ptr @sci_clk_determine_rate._entry_ptr, ptr @sci_clk_get_parent._entry, ptr @sci_clk_get_parent._entry_ptr, ptr @sci_clk_is_prepared._entry, ptr @sci_clk_is_prepared._entry_ptr, ptr @sci_clk_recalc_rate._entry, ptr @sci_clk_recalc_rate._entry_ptr, ptr @sci_clk_unprepare._entry, ptr @sci_clk_unprepare._entry_ptr, ptr @ti_sci_clk_driver_exit, ptr @ti_sci_clk_probe._entry, ptr @ti_sci_clk_probe._entry.6, ptr @ti_sci_clk_probe._entry_ptr, ptr @ti_sci_clk_probe._entry_ptr.8, ptr @ti_sci_clk_driver, ptr @.str, ptr @ti_sci_clk_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @sci_clk_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sci_clk_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_sci_clk_build._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_is_prepared._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_determine_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sci_clk_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_sci_clk_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_sci_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_sci_clk_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i.i = alloca %struct.clk_init_data, align 4
  %num_parents.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_ti_sci_get_handle(ptr noundef %dev1) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %call.i, align 4
  %clk_ops = getelementptr inbounds %struct.ti_sci_handle, ptr %call, i32 0, i32 1, i32 2
  %ops7 = getelementptr inbounds %struct.sci_clk_provider, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clk_ops, ptr %ops7, align 4
  %dev8 = getelementptr inbounds %struct.sci_clk_provider, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_parents.i) #8
  %6 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_parents.i, align 4
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end25.i, %if.end6
  %num_clks.0.ph.i = phi i32 [ %inc31.i, %if.end25.i ], [ 0, %if.end6 ]
  %clks.0.ph.i = phi ptr [ %clks.1.i, %if.end25.i ], [ null, %if.end6 ]
  %max_clks.0.ph.i = phi i32 [ %max_clks.1.i, %if.end25.i ], [ 0, %if.end6 ]
  %clk_id.0.ph.i = phi i32 [ %inc30.i, %if.end25.i ], [ 0, %if.end6 ]
  %dev_id.0.ph.i = phi i32 [ %dev_id.0.lcssa.i, %if.end25.i ], [ 0, %if.end6 ]
  %7 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops7, align 4
  %get_num_parents99.i = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %get_num_parents99.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_num_parents99.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call100.i = call i32 %10(ptr noundef %12, i32 noundef %dev_id.0.ph.i, i32 noundef %clk_id.0.ph.i, ptr noundef nonnull %num_parents.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool.not101.i = icmp eq i32 %call100.i, 0
  br i1 %tobool.not101.i, label %while.cond.outer.i.if.end13.i_crit_edge, label %while.cond.outer.i.if.then.i_crit_edge

while.cond.outer.i.if.then.i_crit_edge:           ; preds = %while.cond.outer.i
  br label %if.then.i

while.cond.outer.i.if.end13.i_crit_edge:          ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %if.end12.i.if.then.i_crit_edge, %while.cond.outer.i.if.then.i_crit_edge
  %gap_size.0104.i = phi i32 [ %gap_size.1.i, %if.end12.i.if.then.i_crit_edge ], [ 0, %while.cond.outer.i.if.then.i_crit_edge ]
  %dev_id.0103.i = phi i32 [ %dev_id.1.i, %if.end12.i.if.then.i_crit_edge ], [ %dev_id.0.ph.i, %while.cond.outer.i.if.then.i_crit_edge ]
  %clk_id.0102.i = phi i32 [ %clk_id.1.i, %if.end12.i.if.then.i_crit_edge ], [ %clk_id.0.ph.i, %while.cond.outer.i.if.then.i_crit_edge ]
  %inc.i = add nsw i32 %gap_size.0104.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id.0102.i)
  %tobool2.not.i = icmp eq i32 %clk_id.0102.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %gap_size.0104.i)
  %cmp.i43 = icmp sgt i32 %gap_size.0104.i, 3
  br i1 %cmp.i43, label %while.end.i, label %if.end.i

if.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc5.i = add i32 %dev_id.0103.i, 1
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gap_size.0104.i)
  %cmp6.i = icmp sgt i32 %gap_size.0104.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else9.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc8.i = add i32 %dev_id.0103.i, 1
  br label %if.end12.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc10.i = add i32 %clk_id.0102.i, 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else9.i, %if.then7.i, %if.end.i
  %clk_id.1.i = phi i32 [ 0, %if.then7.i ], [ %inc10.i, %if.else9.i ], [ 0, %if.end.i ]
  %dev_id.1.i = phi i32 [ %inc8.i, %if.then7.i ], [ %dev_id.0103.i, %if.else9.i ], [ %inc5.i, %if.end.i ]
  %gap_size.1.i = phi i32 [ 0, %if.then7.i ], [ %inc.i, %if.else9.i ], [ %inc.i, %if.end.i ]
  %13 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops7, align 4
  %get_num_parents.i = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %get_num_parents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_num_parents.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call.i44 = call i32 %16(ptr noundef %18, i32 noundef %dev_id.1.i, i32 noundef %clk_id.1.i, ptr noundef nonnull %num_parents.i) #8
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.end12.i.if.end13.i_crit_edge, label %if.end12.i.if.then.i_crit_edge

if.end12.i.if.then.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end12.i.if.end13.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end12.i.if.end13.i_crit_edge, %while.cond.outer.i.if.end13.i_crit_edge
  %clk_id.0.lcssa.i = phi i32 [ %clk_id.0.ph.i, %while.cond.outer.i.if.end13.i_crit_edge ], [ %clk_id.1.i, %if.end12.i.if.end13.i_crit_edge ]
  %dev_id.0.lcssa.i = phi i32 [ %dev_id.0.ph.i, %while.cond.outer.i.if.end13.i_crit_edge ], [ %dev_id.1.i, %if.end12.i.if.end13.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clks.0.ph.i, i32 %max_clks.0.ph.i)
  %cmp14.i = icmp eq i32 %num_clks.0.ph.i, %max_clks.0.ph.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end13.i.if.end21.i_crit_edge

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end13.i
  %add.i = add i32 %num_clks.0.ph.i, 64
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #8
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.then15.i.devm_kmalloc_array.exit.i_crit_edge, label %if.end.i.i, !prof !73

if.then15.i.devm_kmalloc_array.exit.i_crit_edge:  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kmalloc_array.exit.i

if.end.i.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = extractvalue { i32, i1 } %19, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %21, i32 noundef 3264) #8
  br label %devm_kmalloc_array.exit.i

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i.i, %if.then15.i.devm_kmalloc_array.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.then15.i.devm_kmalloc_array.exit.i_crit_edge ]
  %mul.i = shl i32 %num_clks.0.ph.i, 2
  %22 = call ptr @memcpy(ptr %retval.0.i.i, ptr %clks.0.ph.i, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clks.0.ph.i)
  %tobool17.not.i = icmp eq i32 %num_clks.0.ph.i, 0
  br i1 %tobool17.not.i, label %devm_kmalloc_array.exit.i.if.end21.i_crit_edge, label %if.then18.i

devm_kmalloc_array.exit.i.if.end21.i_crit_edge:   ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then18.i:                                      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @devm_kfree(ptr noundef %dev1, ptr noundef %clks.0.ph.i) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %devm_kmalloc_array.exit.i.if.end21.i_crit_edge, %if.end13.i.if.end21.i_crit_edge
  %clks.1.i = phi ptr [ %clks.0.ph.i, %if.end13.i.if.end21.i_crit_edge ], [ %retval.0.i.i, %if.then18.i ], [ %retval.0.i.i, %devm_kmalloc_array.exit.i.if.end21.i_crit_edge ]
  %max_clks.1.i = phi i32 [ %max_clks.0.ph.i, %if.end13.i.if.end21.i_crit_edge ], [ %add.i, %if.then18.i ], [ 64, %devm_kmalloc_array.exit.i.if.end21.i_crit_edge ]
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #8
  %tobool23.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool23.not.i, label %if.end21.i.do.end_crit_edge, label %if.end25.i

if.end21.i.do.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end25.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %dev_id.0.lcssa.i to i16
  %dev_id26.i = getelementptr inbounds %struct.sci_clk, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %dev_id26.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %dev_id26.i, align 4
  %clk_id27.i = getelementptr inbounds %struct.sci_clk, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %clk_id27.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %clk_id.0.lcssa.i, ptr %clk_id27.i, align 4
  %provider28.i = getelementptr inbounds %struct.sci_clk, ptr %call.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %provider28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %provider28.i, align 4
  %26 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_parents.i, align 4
  %num_parents29.i = getelementptr inbounds %struct.sci_clk, ptr %call.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %num_parents29.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_parents29.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %clks.1.i, i32 %num_clks.0.ph.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %inc30.i = add i32 %clk_id.0.lcssa.i, 1
  %inc31.i = add i32 %num_clks.0.ph.i, 1
  br label %while.cond.outer.i

while.end.i:                                      ; preds = %if.then3.i
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks.0.ph.i, i32 4) #8
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %devm_kmalloc_array.exit91.thread.i, label %devm_kmalloc_array.exit91.i, !prof !73

devm_kmalloc_array.exit91.thread.i:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %clocks93.i = getelementptr inbounds %struct.sci_clk_provider, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %clocks93.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %clocks93.i, align 4
  br label %do.end

devm_kmalloc_array.exit91.i:                      ; preds = %while.end.i
  %33 = extractvalue { i32, i1 } %30, 0
  %call5.i88.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %33, i32 noundef 3264) #8
  %clocks.i = getelementptr inbounds %struct.sci_clk_provider, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %clocks.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i88.i, ptr %clocks.i, align 4
  %tobool34.not.i = icmp eq ptr %call5.i88.i, null
  br i1 %tobool34.not.i, label %devm_kmalloc_array.exit91.i.do.end_crit_edge, label %if.end12

devm_kmalloc_array.exit91.i.do.end_crit_edge:     ; preds = %devm_kmalloc_array.exit91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %devm_kmalloc_array.exit91.i.do.end_crit_edge, %devm_kmalloc_array.exit91.thread.i, %if.end21.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parents.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef -12) #11
  br label %cleanup

if.end12:                                         ; preds = %devm_kmalloc_array.exit91.i
  %mul38.i = shl nuw i32 %num_clks.0.ph.i, 2
  %35 = call ptr @memcpy(ptr %call5.i88.i, ptr %clks.0.ph.i, i32 %mul38.i)
  %num_clocks.i = getelementptr inbounds %struct.sci_clk_provider, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %num_clks.0.ph.i, ptr %num_clocks.i, align 4
  call void @devm_kfree(ptr noundef %dev1, ptr noundef %clks.0.ph.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parents.i) #8
  %37 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_clocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.i = icmp sgt i32 %38, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.body.lr.ph.i:                                 ; preds = %if.end12
  %39 = getelementptr inbounds i8, ptr %init.i.i, i32 4
  %parent_names22.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  %num_parents26.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %_sci_clk_build.exit.i
  %inc.i47 = add nuw nsw i32 %i.010.i, 1
  %40 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clocks.i, align 4
  %cmp.i48 = icmp slt i32 %inc.i47, %41
  br i1 %cmp.i48, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end20_crit_edge

for.cond.i.if.end20_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i47, %for.cond.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clocks.i, align 4
  %arrayidx.i49 = getelementptr ptr, ptr %43, i32 %i.010.i
  %44 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i49, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #8
  %46 = call ptr @memset(ptr %39, i32 0, i32 24)
  %dev_id.i.i = getelementptr inbounds %struct.sci_clk, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dev_id.i.i, align 4
  %conv.i.i = zext i16 %48 to i32
  %clk_id.i.i = getelementptr inbounds %struct.sci_clk, ptr %45, i32 0, i32 2
  %49 = ptrtoint ptr %clk_id.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clk_id.i.i, align 4
  %call.i.i50 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %conv.i.i, i32 noundef %50) #8
  %51 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i50, ptr %init.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.sci_clk, ptr %45, i32 0, i32 3
  %52 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_parents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i.i = icmp ult i32 %53, 2
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.then5.i.i

if.end.thread.i.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_parents.i.i, align 4
  br label %if.end23.i.i

if.then5.i.i:                                     ; preds = %for.body.i
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #8
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %if.then5.i.i._sci_clk_build.exit.thread.i_crit_edge, label %if.end7.i.i.i.i, !prof !73

if.then5.i.i._sci_clk_build.exit.thread.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_sci_clk_build.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.then5.i.i
  %57 = extractvalue { i32, i1 } %55, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #12
  %tobool8.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.i.i._sci_clk_build.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i._sci_clk_build.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_sci_clk_build.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  %58 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_parents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1291.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp1291.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.092.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %60 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dev_id.i.i, align 4
  %conv15.i.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %clk_id.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clk_id.i.i, align 4
  %add.i.i = add nuw i32 %i.092.i.i, 1
  %add17.i.i = add i32 %63, %add.i.i
  %call18.i.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %conv15.i.i, i32 noundef %add17.i.i) #8
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %for.body.i.i.err.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.err.i.i_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.092.i.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call18.i.i, ptr %arrayidx.i.i, align 4
  %65 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_parents.i.i, align 4
  %cmp12.i.i = icmp ult i32 %add.i.i, %66
  br i1 %cmp12.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %67 = ptrtoint ptr %parent_names22.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call8.i.i.i.i, ptr %parent_names22.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %for.end.i.i, %if.end.thread.i.i
  %parent_names.0.i.i = phi ptr [ %call8.i.i.i.i, %for.end.i.i ], [ null, %if.end.thread.i.i ]
  %68 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @sci_clk_ops, ptr %39, align 4
  %69 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_parents.i.i, align 4
  %conv25.i.i = trunc i32 %70 to i8
  %71 = ptrtoint ptr %num_parents26.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv25.i.i, ptr %num_parents26.i.i, align 4
  %init27.i.i = getelementptr inbounds %struct.clk_hw, ptr %45, i32 0, i32 2
  %72 = ptrtoint ptr %init27.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %init.i.i, ptr %init27.i.i, align 4
  %73 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev8, align 4
  %call29.i.i = call i32 @devm_clk_hw_register(ptr noundef %74, ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end23.i.i.err.i.i_crit_edge, label %do.end.i.i

if.end23.i.i.err.i.i_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i.i

do.end.i.i:                                       ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.10, i32 noundef %call29.i.i) #11
  br label %err.i.i

err.i.i:                                          ; preds = %do.end.i.i, %if.end23.i.i.err.i.i_crit_edge, %for.body.i.i.err.i.i_crit_edge
  %parent_names.1.i.i = phi ptr [ %parent_names.0.i.i, %do.end.i.i ], [ %parent_names.0.i.i, %if.end23.i.i.err.i.i_crit_edge ], [ %call8.i.i.i.i, %for.body.i.i.err.i.i_crit_edge ]
  %ret.2.i.i = phi i32 [ %call29.i.i, %do.end.i.i ], [ 0, %if.end23.i.i.err.i.i_crit_edge ], [ -12, %for.body.i.i.err.i.i_crit_edge ]
  %tobool34.not.i.i = icmp eq ptr %parent_names.1.i.i, null
  br i1 %tobool34.not.i.i, label %err.i.i._sci_clk_build.exit.i_crit_edge, label %for.cond36.preheader.i.i

err.i.i._sci_clk_build.exit.i_crit_edge:          ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_sci_clk_build.exit.i

for.cond36.preheader.i.i:                         ; preds = %err.i.i
  %77 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_parents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp3893.not.i.i = icmp eq i32 %78, 0
  br i1 %cmp3893.not.i.i, label %for.cond36.preheader.i.i.for.end44.i.i_crit_edge, label %for.cond36.preheader.i.i.for.body40.i.i_crit_edge

for.cond36.preheader.i.i.for.body40.i.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  br label %for.body40.i.i

for.cond36.preheader.i.i.for.end44.i.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44.i.i

for.body40.i.i:                                   ; preds = %for.body40.i.i.for.body40.i.i_crit_edge, %for.cond36.preheader.i.i.for.body40.i.i_crit_edge
  %i.194.i.i = phi i32 [ %inc43.i.i, %for.body40.i.i.for.body40.i.i_crit_edge ], [ 0, %for.cond36.preheader.i.i.for.body40.i.i_crit_edge ]
  %arrayidx41.i.i = getelementptr ptr, ptr %parent_names.1.i.i, i32 %i.194.i.i
  %79 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx41.i.i, align 4
  call void @kfree(ptr noundef %80) #8
  %inc43.i.i = add nuw i32 %i.194.i.i, 1
  %81 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_parents.i.i, align 4
  %cmp38.i.i = icmp ult i32 %inc43.i.i, %82
  br i1 %cmp38.i.i, label %for.body40.i.i.for.body40.i.i_crit_edge, label %for.body40.i.i.for.end44.i.i_crit_edge

for.body40.i.i.for.end44.i.i_crit_edge:           ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44.i.i

for.body40.i.i.for.body40.i.i_crit_edge:          ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.i.i

for.end44.i.i:                                    ; preds = %for.body40.i.i.for.end44.i.i_crit_edge, %for.cond36.preheader.i.i.for.end44.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %parent_names.1.i.i) #8
  br label %_sci_clk_build.exit.i

_sci_clk_build.exit.thread.i:                     ; preds = %if.end7.i.i.i.i._sci_clk_build.exit.thread.i_crit_edge, %if.then5.i.i._sci_clk_build.exit.thread.i_crit_edge
  call void @kfree(ptr noundef %call.i.i50) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  br label %do.end18

_sci_clk_build.exit.i:                            ; preds = %for.end44.i.i, %err.i.i._sci_clk_build.exit.i_crit_edge
  call void @kfree(ptr noundef %call.i.i50) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %tobool.not.i51 = icmp eq i32 %ret.2.i.i, 0
  br i1 %tobool.not.i51, label %for.cond.i, label %_sci_clk_build.exit.i.do.end18_crit_edge

_sci_clk_build.exit.i.do.end18_crit_edge:         ; preds = %_sci_clk_build.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %_sci_clk_build.exit.i.do.end18_crit_edge, %_sci_clk_build.exit.thread.i
  %retval.0.i52 = phi i32 [ -12, %_sci_clk_build.exit.thread.i ], [ %ret.2.i.i, %_sci_clk_build.exit.i.do.end18_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end20:                                         ; preds = %for.cond.i.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %call21 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @sci_clk_get, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end18, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -12, %do.end ], [ %retval.0.i52, %do.end18 ], [ %call21, %if.end20 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sci_clk_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ti_sci_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sci_clk_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %key = alloca %struct.sci_clk, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %key) #8
  %0 = call ptr @memset(ptr %key, i32 255, i32 48)
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %1 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  %conv = trunc i32 %4 to i16
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %key, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %dev_id, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %clk_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk_id, align 4
  %clocks = getelementptr inbounds %struct.sci_clk_provider, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clocks, align 4
  %num_clocks = getelementptr inbounds %struct.sci_clk_provider, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_clocks, align 4
  %call3 = call ptr @bsearch(ptr noundef nonnull %key, ptr noundef %10, i32 noundef %12, i32 noundef 4, ptr noundef nonnull @_cmp_sci_clk) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.end6 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %key) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %and3 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  %and8 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp ne i32 %and8, 0
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dev_id, align 4
  %conv12 = zext i16 %11 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_id, align 4
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %conv12, i32 noundef %13, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool4, i1 noundef zeroext %tobool9) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sci_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %put_clock = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %put_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %put_clock, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %9 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_id, align 4
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %conv, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.sci_clk_provider, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dev_id, align 4
  %conv4 = zext i16 %17 to i32
  %18 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef %conv4, i32 noundef %19, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %req_state = alloca i8, align 1
  %current_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req_state) #8
  %0 = ptrtoint ptr %req_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %req_state, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_state) #8
  %1 = ptrtoint ptr %current_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %current_state, align 1, !annotation !74
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %is_on = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %is_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_on, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %11 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_id, align 4
  %call = call i32 %7(ptr noundef %9, i32 noundef %conv, i32 noundef %13, ptr noundef nonnull %req_state, ptr noundef nonnull %current_state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.sci_clk_provider, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dev_id, align 4
  %conv4 = zext i16 %19 to i32
  %20 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %conv4, i32 noundef %21, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %req_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %req_state, align 1, !range !75
  %24 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %24, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_state) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req_state) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %freq = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freq) #8
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %freq, align 8, !annotation !74
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_freq = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %get_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_freq, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %10 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_id, align 4
  %call = call i32 %6(ptr noundef %8, i32 noundef %conv, i32 noundef %12, ptr noundef nonnull %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.sci_clk_provider, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_id, align 4
  %conv4 = zext i16 %18 to i32
  %19 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %conv4, i32 noundef %20, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %freq to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %freq, align 8
  %conv6 = trunc i64 %22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_determine_rate(ptr nocapture noundef %hw, ptr nocapture noundef %req) #2 align 64 {
entry:
  %new_rate = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_rate) #8
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %new_rate, align 8, !annotation !74
  %cached_req = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 7
  %1 = ptrtoint ptr %cached_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cached_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %cached_res = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 8
  %5 = ptrtoint ptr %cached_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cached_res, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %req, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %get_best_match_freq = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %get_best_match_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_best_match_freq, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %17 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %18 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_id, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_rate, align 4
  %conv4 = zext i32 %21 to i64
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 4
  %conv6 = zext i32 %23 to i64
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_rate, align 4
  %conv7 = zext i32 %25 to i64
  %call = call i32 %13(ptr noundef %15, i32 noundef %conv, i32 noundef %19, i64 noundef %conv4, i64 noundef %conv6, i64 noundef %conv7, ptr noundef nonnull %new_rate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.sci_clk_provider, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dev_id, align 4
  %conv12 = zext i16 %31 to i32
  %32 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef %conv12, i32 noundef %33, i32 noundef %call) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %req, align 4
  %36 = ptrtoint ptr %cached_req to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cached_req, align 4
  %37 = ptrtoint ptr %new_rate to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %new_rate, align 8
  %conv17 = trunc i64 %38 to i32
  %cached_res18 = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 8
  %39 = ptrtoint ptr %cached_res18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv17, ptr %cached_res18, align 4
  store i32 %conv17, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %do.end ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_set_parent(ptr nocapture noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_req = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 7
  %0 = ptrtoint ptr %cached_req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cached_req, align 4
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %set_parent = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_parent, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %10 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_id, align 4
  %conv2 = zext i8 %index to i32
  %add = add nuw nsw i32 %conv2, 1
  %add4 = add i32 %add, %12
  %call = tail call i32 %6(ptr noundef %8, i32 noundef %conv, i32 noundef %12, i32 noundef %add4) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sci_clk_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %parent_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_id) #8
  %0 = ptrtoint ptr %parent_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %parent_id, align 4
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_parent = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_parent, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %10 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_id, align 4
  %call = call i32 %6(ptr noundef %8, i32 noundef %conv, i32 noundef %12, ptr noundef nonnull %parent_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %provider, align 4
  %dev = getelementptr inbounds %struct.sci_clk_provider, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dev_id, align 4
  %conv4 = zext i16 %18 to i32
  %19 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %conv4, i32 noundef %20, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %parent_id, align 4
  %23 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_id, align 4
  %25 = xor i32 %24, -1
  %sub7 = add i32 %22, %25
  %conv8 = trunc i32 %sub7 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ %conv8, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_id) #8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sci_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %ops = getelementptr inbounds %struct.sci_clk_provider, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %set_freq = getelementptr inbounds %struct.ti_sci_clk_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %set_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_freq, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_id, align 4
  %conv = zext i16 %9 to i32
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %hw, i32 0, i32 2
  %10 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_id, align 4
  %div = udiv i32 %rate, 10
  %mul = mul nuw i32 %div, 9
  %conv2 = zext i32 %mul to i64
  %conv3 = zext i32 %rate to i64
  %mul5 = mul i32 %div, 11
  %conv6 = zext i32 %mul5 to i64
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %conv, i32 noundef %11, i64 noundef %conv2, i64 noundef %conv3, i64 noundef %conv6) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_cmp_sci_clk(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b, align 4
  %dev_id = getelementptr inbounds %struct.sci_clk, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_id, align 4
  %dev_id1 = getelementptr inbounds %struct.sci_clk, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev_id1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %clk_id = getelementptr inbounds %struct.sci_clk, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_id, align 4
  %clk_id4 = getelementptr inbounds %struct.sci_clk, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk_id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_id4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp1135 = icmp ugt i16 %3, %5
  br i1 %cmp1135, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.if.end25_crit_edge

if.end.thread.if.end25_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true19:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_id, align 4
  %12 = ptrtoint ptr %clk_id4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_id4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp22 = icmp ugt i32 %11, %13
  br i1 %cmp22, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true19.if.end25_crit_edge

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %if.end.thread.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true19.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end25 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true19.cleanup_crit_edge ], [ 1, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_sci_clk__183_715_ti_sci_clk_driver_init6, !1, !"__initcall__kmod_sci_clk__183_715_ti_sci_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/keystone/sci-clk.c", i32 715, i32 1}
!2 = !{ptr @__exitcall_ti_sci_clk_driver_exit, !1, !"__exitcall_ti_sci_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/clk/keystone/sci-clk.c", i32 717, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description186, !7, !"__UNIQUE_ID_description186", i1 false, i1 false}
!7 = !{!"../drivers/clk/keystone/sci-clk.c", i32 718, i32 1}
!8 = !{ptr @__UNIQUE_ID_author187, !9, !"__UNIQUE_ID_author187", i1 false, i1 false}
!9 = !{!"../drivers/clk/keystone/sci-clk.c", i32 719, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/clk/keystone/sci-clk.c", i32 720, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/keystone/sci-clk.c", i32 711, i32 11}
!14 = !{ptr @ti_sci_clk_driver, !15, !"ti_sci_clk_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/keystone/sci-clk.c", i32 707, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/keystone/sci-clk.c", i32 672, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ti_sci_clk_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ti_sci_clk_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/keystone/sci-clk.c", i32 685, i32 3}
!26 = !{ptr @ti_sci_clk_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ti_sci_clk_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/keystone/sci-clk.c", i32 303, i32 31}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/keystone/sci-clk.c", i32 347, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_sci_clk_build._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @_sci_clk_build._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @sci_clk_ops, !36, !"sci_clk_ops", i1 false, i1 false}
!36 = !{!"../drivers/clk/keystone/sci-clk.c", i32 272, i32 29}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/keystone/sci-clk.c", i32 107, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sci_clk_unprepare._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sci_clk_unprepare._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/keystone/sci-clk.c", i32 129, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sci_clk_is_prepared._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @sci_clk_is_prepared._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/keystone/sci-clk.c", i32 156, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sci_clk_recalc_rate._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sci_clk_recalc_rate._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/keystone/sci-clk.c", i32 195, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sci_clk_determine_rate._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sci_clk_determine_rate._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/keystone/sci-clk.c", i32 243, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sci_clk_get_parent._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sci_clk_get_parent._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ti_sci_clk_of_match, !63, !"ti_sci_clk_of_match", i1 false, i1 false}
!63 = !{!"../drivers/clk/keystone/sci-clk.c", i32 420, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
