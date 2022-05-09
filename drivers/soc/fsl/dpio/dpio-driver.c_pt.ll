; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/dpio/dpio-driver.c_pt.bc'
source_filename = "../drivers/soc/fsl/dpio/dpio-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.fsl_mc_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_device_id = type { i16, [16 x i8] }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpio_attr = type { i32, i64, i64, i16, i32, i8, i32, i32 }
%struct.dpaa2_io_desc = type { i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_file234 = internal constant [50 x i8] c"fsl_mc_dpio.file=drivers/soc/fsl/dpio/fsl-mc-dpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [33 x i8] c"fsl_mc_dpio.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [48 x i8] c"fsl_mc_dpio.author=Freescale Semiconductor, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [36 x i8] c"fsl_mc_dpio.description=DPIO Driver\00", section ".modinfo", align 1
@__initcall__kmod_fsl_mc_dpio__240_343_dpio_driver_init6 = internal global ptr @dpio_driver_init, section ".initcall6.init", align 4
@__exitcall_dpio_driver_exit = internal global ptr @dpio_driver_exit, section ".exitcall.exit", align 4
@cpus_unused_mask = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@dpaa2_dpio_driver = internal global { %struct.fsl_mc_driver, [60 x i8] } { %struct.fsl_mc_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dpaa2_dpio_match_id_table, ptr @dpaa2_dpio_probe, ptr @dpaa2_dpio_remove, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_mc_dpio\00", [20 x i8] zeroinitializer }, align 32
@dpaa2_dpio_match_id_table = internal constant { [2 x %struct.fsl_mc_device_id], [60 x i8] } { [2 x %struct.fsl_mc_device_id] [%struct.fsl_mc_device_id { i16 6487, [16 x i8] c"dpio\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_mc_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpaa2_dpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/soc/fsl/dpio/dpio-driver.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MC portal allocation failed\0A\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpio_open() failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr = internal global ptr @dpaa2_dpio_probe._entry, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 154, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpio_reset() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.9 = internal global ptr @dpaa2_dpio_probe._entry.7, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpio_get_attributes() failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.12 = internal global ptr @dpaa2_dpio_probe._entry.10, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpio_enable() failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.15 = internal global ptr @dpaa2_dpio_probe._entry.13, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"probe failed. Number of DPIOs exceeds NR_CPUS.\0A\00", [48 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.18 = internal global ptr @dpaa2_dpio_probe._entry.16, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dpio_set_stashing_destination failed for cpu%d\0A\00", [48 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.21 = internal global ptr @dpaa2_dpio_probe._entry.19, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devm_memremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.24 = internal global ptr @dpaa2_dpio_probe._entry.22, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devm_ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.27 = internal global ptr @dpaa2_dpio_probe._entry.25, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fsl_mc_allocate_irqs failed. err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.30 = internal global ptr @dpaa2_dpio_probe._entry.28, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpaa2_io_create failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.33 = internal global ptr @dpaa2_dpio_probe._entry.31, section ".printk_index", align 4
@dpaa2_dpio_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 245, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dpaa2_dpio_probe._entry_ptr.37 = internal global ptr @dpaa2_dpio_probe._entry.34, section ".printk_index", align 4
@dpaa2_dpio_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.38, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"   receives_notifications = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ls1088a_soc = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.42, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ls2080a_soc = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.43, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ls2088a_soc = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.44, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@lx2160a_soc = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dpaa2_dpio_get_cluster_sdest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown SoC version\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpaa2_dpio_get_cluster_sdest\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_dpio_get_cluster_sdest._entry_ptr = internal global ptr @dpaa2_dpio_get_cluster_sdest._entry, section ".printk_index", align 4
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1088A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS2080A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS2088A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LX2160A\00", [18 x i8] zeroinitializer }, align 32
@register_dpio_irq_handlers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"devm_request_irq() failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register_dpio_irq_handlers\00", [37 x i8] zeroinitializer }, align 32
@register_dpio_irq_handlers._entry_ptr = internal global ptr @register_dpio_irq_handlers._entry, section ".printk_index", align 4
@register_dpio_irq_handlers._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"irq_set_affinity failed irq %d cpu %d\0A\00", [57 x i8] zeroinitializer }, align 32
@register_dpio_irq_handlers._entry_ptr.50 = internal global ptr @register_dpio_irq_handlers._entry.48, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@dpaa2_dpio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.51, ptr @.str.2, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpaa2_dpio_remove\00", [46 x i8] zeroinitializer }, align 32
@dpaa2_dpio_remove._entry_ptr = internal global ptr @dpaa2_dpio_remove._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"cpus_unused_mask\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 34, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"dpaa2_dpio_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 319, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 321, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"dpaa2_dpio_match_id_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 311, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 140, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 148, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 154, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 161, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 169, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 181, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 194, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 215, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 224, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 230, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 236, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 245, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 246, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"ls1088a_soc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 36, i32 42 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"ls2080a_soc\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 41, i32 42 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"ls2088a_soc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 46, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"lx2160a_soc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 51, i32 42 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 69, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 37, i32 13 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 42, i32 13 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 47, i32 13 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 52, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 107, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 115, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.206 = private constant [38 x i8] c"../drivers/soc/fsl/dpio/dpio-driver.c\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 293, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_dpio_driver_exit, ptr @__initcall__kmod_fsl_mc_dpio__240_343_dpio_driver_init6, ptr @dpaa2_dpio_get_cluster_sdest._entry, ptr @dpaa2_dpio_get_cluster_sdest._entry_ptr, ptr @dpaa2_dpio_probe._entry, ptr @dpaa2_dpio_probe._entry.10, ptr @dpaa2_dpio_probe._entry.13, ptr @dpaa2_dpio_probe._entry.16, ptr @dpaa2_dpio_probe._entry.19, ptr @dpaa2_dpio_probe._entry.22, ptr @dpaa2_dpio_probe._entry.25, ptr @dpaa2_dpio_probe._entry.28, ptr @dpaa2_dpio_probe._entry.31, ptr @dpaa2_dpio_probe._entry.34, ptr @dpaa2_dpio_probe._entry.7, ptr @dpaa2_dpio_probe._entry_ptr, ptr @dpaa2_dpio_probe._entry_ptr.12, ptr @dpaa2_dpio_probe._entry_ptr.15, ptr @dpaa2_dpio_probe._entry_ptr.18, ptr @dpaa2_dpio_probe._entry_ptr.21, ptr @dpaa2_dpio_probe._entry_ptr.24, ptr @dpaa2_dpio_probe._entry_ptr.27, ptr @dpaa2_dpio_probe._entry_ptr.30, ptr @dpaa2_dpio_probe._entry_ptr.33, ptr @dpaa2_dpio_probe._entry_ptr.37, ptr @dpaa2_dpio_probe._entry_ptr.9, ptr @dpaa2_dpio_remove._entry, ptr @dpaa2_dpio_remove._entry_ptr, ptr @register_dpio_irq_handlers._entry, ptr @register_dpio_irq_handlers._entry.48, ptr @register_dpio_irq_handlers._entry_ptr, ptr @register_dpio_irq_handlers._entry_ptr.50, ptr @cpus_unused_mask, ptr @dpaa2_dpio_driver, ptr @.str, ptr @dpaa2_dpio_match_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @ls1088a_soc, ptr @ls2080a_soc, ptr @ls2088a_soc, ptr @lx2160a_soc, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpus_unused_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_match_id_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1088a_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls2080a_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls2088a_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lx2160a_soc to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_get_cluster_sdest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dpio_irq_handlers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_dpio_irq_handlers._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_dpio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpio_driver_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull @cpus_unused_mask, i32 noundef 3264) #4
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @cpus_unused_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %1, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memcpy(ptr %0, ptr @__cpu_online_mask, i32 %mul.i.i)
  %call1 = tail call i32 @__fsl_mc_driver_register(ptr noundef nonnull @dpaa2_dpio_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpio_driver_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpus_unused_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %0) #4
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @dpaa2_dpio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsl_mc_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_dpio_probe(ptr noundef %dpio_dev) #0 align 64 {
entry:
  %dpio_attrs = alloca %struct.dpio_attr, align 8
  %desc = alloca %struct.dpaa2_io_desc, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dpio_attrs) #4
  %0 = call ptr @memset(ptr %dpio_attrs, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #4
  %1 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 3
  %4 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 4
  %5 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 5
  %6 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 6
  %7 = getelementptr inbounds %struct.dpaa2_io_desc, ptr %desc, i32 0, i32 7
  %8 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dpio_dev, i32 noundef 4, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dpio_dev, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i, align 4
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 5
  %call2 = tail call i32 @fsl_mc_portal_allocate(ptr noundef %dpio_dev, i16 noundef zeroext 0, ptr noundef %mc_io) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpaa2_dpio_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpaa2_dpio_probe, %if.then9)) #4
          to label %cleanup [label %if.then9], !srcloc !120

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dpaa2_dpio_probe.__UNIQUE_ID_ddebug238, ptr noundef %dpio_dev, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 4
  %call13 = tail call i32 @dpio_open(ptr noundef %11, i32 noundef 0, i32 noundef %13, ptr noundef %mc_handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.4) #7
  br label %err_open

if.end19:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_io, align 4
  %16 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mc_handle, align 8
  %call22 = tail call i32 @dpio_reset(ptr noundef %15, i32 noundef 0, i16 noundef zeroext %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.8) #7
  br label %err_reset

if.end28:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_io, align 4
  %20 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mc_handle, align 8
  %call31 = call i32 @dpio_get_attributes(ptr noundef %19, i32 noundef 0, i16 noundef zeroext %21, ptr noundef nonnull %dpio_attrs) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.11, i32 noundef %call31) #7
  br label %err_reset

if.end37:                                         ; preds = %if.end28
  %qbman_version = getelementptr inbounds %struct.dpio_attr, ptr %dpio_attrs, i32 0, i32 6
  %22 = ptrtoint ptr %qbman_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qbman_version, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %6, align 4
  %clk = getelementptr inbounds %struct.dpio_attr, ptr %dpio_attrs, i32 0, i32 7
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk, align 8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %7, align 4
  %28 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mc_io, align 4
  %30 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mc_handle, align 8
  %call40 = call i32 @dpio_enable(ptr noundef %29, i32 noundef 0, i16 noundef zeroext %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.14, i32 noundef %call40) #7
  br label %err_reset

if.end46:                                         ; preds = %if.end37
  %num_priorities = getelementptr inbounds %struct.dpio_attr, ptr %dpio_attrs, i32 0, i32 5
  %32 = ptrtoint ptr %num_priorities to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_priorities, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool47.not = icmp ne i8 %33, 0
  %cond = zext i1 %tobool47.not to i32
  %34 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp = icmp eq i8 %33, 8
  %cond51 = zext i1 %cmp to i32
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond51, ptr %1, align 4
  %36 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id, align 8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %5, align 4
  %39 = load ptr, ptr @cpus_unused_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %call.i247 = call i32 @_find_first_bit_be(ptr noundef %39, i32 noundef %40) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i247, i32 %41)
  %cmp55.not = icmp ult i32 %call.i247, %41
  br i1 %cmp55.not, label %cpumask_clear_cpu.exit, label %do.end60

do.end60:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.17) #7
  br label %err_allocate_irqs

cpumask_clear_cpu.exit:                           ; preds = %if.end46
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i247, ptr %2, align 4
  %43 = load ptr, ptr @cpus_unused_mask, align 4
  call void @_clear_bit(i32 noundef %call.i247, ptr noundef %43) #4
  %call.i248 = call ptr @soc_device_match(ptr noundef nonnull @ls1088a_soc) #4
  %tobool.not.i = icmp eq ptr %call.i248, null
  br i1 %tobool.not.i, label %if.else.i, label %cpumask_clear_cpu.exit.dpaa2_dpio_get_cluster_sdest.exit_crit_edge

cpumask_clear_cpu.exit.dpaa2_dpio_get_cluster_sdest.exit_crit_edge: ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dpaa2_dpio_get_cluster_sdest.exit

if.else.i:                                        ; preds = %cpumask_clear_cpu.exit
  %call1.i = call ptr @soc_device_match(ptr noundef nonnull @ls2080a_soc) #4
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.else.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge

if.else.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dpaa2_dpio_get_cluster_sdest.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %call3.i = call ptr @soc_device_match(ptr noundef nonnull @ls2088a_soc) #4
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge

lor.lhs.false.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dpaa2_dpio_get_cluster_sdest.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %call6.i = call ptr @soc_device_match(ptr noundef nonnull @lx2160a_soc) #4
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %dpaa2_dpio_get_cluster_sdest.exit.thread, label %lor.lhs.false5.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge

lor.lhs.false5.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dpaa2_dpio_get_cluster_sdest.exit

dpaa2_dpio_get_cluster_sdest.exit.thread:         ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.40) #7
  br label %if.end78

dpaa2_dpio_get_cluster_sdest.exit:                ; preds = %lor.lhs.false5.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge, %lor.lhs.false.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge, %if.else.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge, %cpumask_clear_cpu.exit.dpaa2_dpio_get_cluster_sdest.exit_crit_edge
  %cluster_base.0.i = phi i32 [ 2, %cpumask_clear_cpu.exit.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 0, %lor.lhs.false5.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 0, %lor.lhs.false.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 0, %if.else.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ]
  %cluster_size.0.i = phi i32 [ 4, %cpumask_clear_cpu.exit.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 2, %lor.lhs.false5.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 2, %lor.lhs.false.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ], [ 2, %if.else.i.dpaa2_dpio_get_cluster_sdest.exit_crit_edge ]
  %div.i = sdiv i32 %call.i247, %cluster_size.0.i
  %add.i = add nsw i32 %div.i, %cluster_base.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %cmp64 = icmp sgt i32 %add.i, -1
  br i1 %cmp64, label %if.then66, label %dpaa2_dpio_get_cluster_sdest.exit.if.end78_crit_edge

dpaa2_dpio_get_cluster_sdest.exit.if.end78_crit_edge: ; preds = %dpaa2_dpio_get_cluster_sdest.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then66:                                        ; preds = %dpaa2_dpio_get_cluster_sdest.exit
  %44 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mc_io, align 4
  %46 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mc_handle, align 8
  %conv69 = trunc i32 %add.i to i8
  %call70 = call i32 @dpio_set_stashing_destination(ptr noundef %45, i32 noundef 0, i16 noundef zeroext %47, i8 noundef zeroext %conv69) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then66.if.end78_crit_edge, label %do.end75

if.then66.if.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

do.end75:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.20, i32 noundef %49) #7
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.then66.if.end78_crit_edge, %dpaa2_dpio_get_cluster_sdest.exit.if.end78_crit_edge, %dpaa2_dpio_get_cluster_sdest.exit.thread
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 6, i32 6
  %50 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %region_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %51)
  %cmp81 = icmp ult i8 %51, 3
  %regions = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 7
  %52 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regions, align 4
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.resource, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %end.i = getelementptr %struct.resource, ptr %53, i32 1, i32 1
  %56 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %55
  %add.i250 = add i32 %sub.i, %57
  %call87 = call ptr @devm_memremap(ptr noundef %dpio_dev, i32 noundef %55, i32 noundef %add.i250, i32 noundef 4) #4
  br label %if.end96

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx89 = getelementptr %struct.resource, ptr %53, i32 2
  %58 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx89, align 4
  %end.i251 = getelementptr %struct.resource, ptr %53, i32 2, i32 1
  %60 = ptrtoint ptr %end.i251 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end.i251, align 4
  %sub.i252 = sub i32 1, %59
  %add.i253 = add i32 %sub.i252, %61
  %call94 = call ptr @devm_memremap(ptr noundef %dpio_dev, i32 noundef %59, i32 noundef %add.i253, i32 noundef 1) #4
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then83
  %storemerge = phi ptr [ %call94, %if.else ], [ %call87, %if.then83 ]
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %storemerge, ptr %3, align 4
  %cmp.i = icmp ugt ptr %storemerge, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end102, label %if.end105

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.23) #7
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %65 = ptrtoint ptr %64 to i32
  br label %err_allocate_irqs

if.end105:                                        ; preds = %if.end96
  %regions106 = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 7
  %66 = ptrtoint ptr %regions106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regions106, align 4
  %arrayidx107 = getelementptr %struct.resource, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx107, align 4
  %end.i254 = getelementptr %struct.resource, ptr %67, i32 1, i32 1
  %70 = ptrtoint ptr %end.i254 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %end.i254, align 4
  %sub.i255 = sub i32 1, %69
  %add.i256 = add i32 %sub.i255, %71
  %call112 = call ptr @devm_ioremap(ptr noundef %dpio_dev, i32 noundef %69, i32 noundef %add.i256) #4
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call112, ptr %4, align 4
  %tobool114.not = icmp eq ptr %call112, null
  br i1 %tobool114.not, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.26) #7
  br label %err_allocate_irqs

if.end119:                                        ; preds = %if.end105
  %call120 = call i32 @fsl_mc_allocate_irqs(ptr noundef %dpio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end126, label %do.end125

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.29, i32 noundef %call120) #7
  br label %err_allocate_irqs

if.end126:                                        ; preds = %if.end119
  %call127 = call ptr @dpaa2_io_create(ptr noundef nonnull %desc, ptr noundef %dpio_dev) #4
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call127, ptr %call.i, align 4
  %tobool129.not = icmp eq ptr %call127, null
  br i1 %tobool129.not, label %do.end133, label %if.end134

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.32) #7
  %irqs.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 8
  %74 = ptrtoint ptr %irqs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %irqs.i, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %call.i.i.i = call i32 @__irq_apply_affinity_hint(i32 noundef %79, ptr noundef null, i1 noundef zeroext true) #4
  br label %err_register_dpio_irq

if.end134:                                        ; preds = %if.end126
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %2, align 4
  %irqs.i257 = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 8
  %82 = ptrtoint ptr %irqs.i257 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %irqs.i257, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dpio_dev, i32 0, i32 3
  %88 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end134.dev_name.exit.i_crit_edge

if.end134.dev_name.exit.i_crit_edge:              ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %90 = ptrtoint ptr %dpio_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dpio_dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end134.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %91, %if.end.i.i ], [ %89, %if.end134.dev_name.exit.i_crit_edge ]
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dpio_dev, i32 noundef %87, ptr noundef nonnull @dpio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %dpio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i258 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i258, label %register_dpio_irq_handlers.exit, label %if.end.i

if.end.i:                                         ; preds = %dev_name.exit.i
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %85, align 4
  %rem.i.i = and i32 %81, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %81, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call.i.i.i260 = call i32 @__irq_apply_affinity_hint(i32 noundef %93, ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i260)
  %tobool.not.i261 = icmp eq i32 %call.i.i.i260, 0
  br i1 %tobool.not.i261, label %if.end.i.do.end142_crit_edge, label %do.end11.i

if.end.i.do.end142_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end142

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.49, i32 noundef %95, i32 noundef %81) #7
  br label %do.end142

register_dpio_irq_handlers.exit:                  ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.46, i32 noundef %call.i.i) #7
  br label %err_register_dpio_irq

do.end142:                                        ; preds = %do.end11.i, %if.end.i.do.end142_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dpio_dev, ptr noundef nonnull @.str.35) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpaa2_dpio_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpaa2_dpio_probe, %if.then155)) #4
          to label %do.end159 [label %if.then155], !srcloc !120

if.then155:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %desc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dpaa2_dpio_probe.__UNIQUE_ID_ddebug239, ptr noundef %dpio_dev, ptr noundef nonnull @.str.38, i32 noundef %97) #4
  br label %do.end159

do.end159:                                        ; preds = %if.then155, %do.end142
  %98 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mc_io, align 4
  %100 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mc_handle, align 8
  %call162 = call i32 @dpio_close(ptr noundef %99, i32 noundef 0, i16 noundef zeroext %101) #4
  br label %cleanup

err_register_dpio_irq:                            ; preds = %register_dpio_irq_handlers.exit, %do.end133
  %err.0 = phi i32 [ %call.i.i, %register_dpio_irq_handlers.exit ], [ -12, %do.end133 ]
  call void @fsl_mc_free_irqs(ptr noundef %dpio_dev) #4
  br label %err_allocate_irqs

err_allocate_irqs:                                ; preds = %err_register_dpio_irq, %do.end125, %if.then115, %do.end102, %do.end60
  %err.1 = phi i32 [ -34, %do.end60 ], [ %65, %do.end102 ], [ %call120, %do.end125 ], [ %err.0, %err_register_dpio_irq ], [ -12, %if.then115 ]
  %102 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mc_io, align 4
  %104 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %mc_handle, align 8
  %call165 = call i32 @dpio_disable(ptr noundef %103, i32 noundef 0, i16 noundef zeroext %105) #4
  br label %err_reset

err_reset:                                        ; preds = %err_allocate_irqs, %do.end45, %do.end36, %do.end27
  %err.2 = phi i32 [ %call22, %do.end27 ], [ %call31, %do.end36 ], [ %call40, %do.end45 ], [ %err.1, %err_allocate_irqs ]
  %106 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mc_io, align 4
  %108 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mc_handle, align 8
  %call168 = call i32 @dpio_close(ptr noundef %107, i32 noundef 0, i16 noundef zeroext %109) #4
  br label %err_open

err_open:                                         ; preds = %err_reset, %do.end18
  %err.3 = phi i32 [ %call13, %do.end18 ], [ %err.2, %err_reset ]
  %110 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mc_io, align 4
  call void @fsl_mc_portal_free(ptr noundef %111) #4
  br label %cleanup

cleanup:                                          ; preds = %err_open, %do.end159, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end159 ], [ %err.3, %err_open ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then9 ], [ -517, %do.body ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dpio_attrs) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_dpio_remove(ptr noundef %dpio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dpio_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @dpaa2_io_get_cpu(ptr noundef %3) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @dpaa2_io_down(ptr noundef %5) #4
  %irqs.i.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 8
  %6 = ptrtoint ptr %irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irqs.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call.i.i.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %11, ptr noundef null, i1 noundef zeroext true) #4
  tail call void @fsl_mc_free_irqs(ptr noundef %dpio_dev) #4
  %12 = load ptr, ptr @cpus_unused_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call2)
  %cmp.not.i.i.i = icmp ugt i32 %13, %call2
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !121

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 108, i32 noundef 9, ptr noundef null) #4
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %call2, ptr noundef %12) #4
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 5
  %14 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mc_io, align 4
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %dpio_dev, i32 0, i32 4
  %call4 = tail call i32 @dpio_open(ptr noundef %15, i32 noundef 0, i32 noundef %17, ptr noundef %mc_handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dpio_dev, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end:                                           ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_io, align 4
  %20 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mc_handle, align 8
  %call7 = tail call i32 @dpio_disable(ptr noundef %19, i32 noundef 0, i16 noundef zeroext %21) #4
  %22 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc_io, align 4
  %24 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mc_handle, align 8
  %call10 = tail call i32 @dpio_close(ptr noundef %23, i32 noundef 0, i16 noundef zeroext %25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %26 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mc_io, align 4
  tail call void @fsl_mc_portal_free(ptr noundef %27) #4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_portal_allocate(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_reset(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_get_attributes(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_enable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_set_stashing_destination(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_allocate_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpaa2_io_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_free_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpio_disable(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_portal_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpio_irq_handler(i32 noundef %irq_num, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %arg, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @dpaa2_io_irq(ptr noundef %3) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpaa2_io_get_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpaa2_io_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__UNIQUE_ID_file234, !1, !"__UNIQUE_ID_file234", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_license235, !1, !"__UNIQUE_ID_license235", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 28, i32 1}
!7 = !{ptr @__initcall__kmod_fsl_mc_dpio__240_343_dpio_driver_init6, !8, !"__initcall__kmod_fsl_mc_dpio__240_343_dpio_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 343, i32 1}
!9 = !{ptr @__exitcall_dpio_driver_exit, !10, !"__exitcall_dpio_driver_exit", i1 false, i1 false}
!10 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 344, i32 1}
!11 = !{ptr @cpus_unused_mask, !12, !"cpus_unused_mask", i1 false, i1 false}
!12 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 34, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 321, i32 12}
!15 = !{ptr @dpaa2_dpio_driver, !16, !"dpaa2_dpio_driver", i1 false, i1 false}
!16 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 319, i32 29}
!17 = !{ptr @dpaa2_dpio_match_id_table, !18, !"dpaa2_dpio_match_id_table", i1 false, i1 false}
!18 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 311, i32 38}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 140, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dpaa2_dpio_probe.__UNIQUE_ID_ddebug238, !20, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 148, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dpaa2_dpio_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @dpaa2_dpio_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 154, i32 3}
!32 = !{ptr @dpaa2_dpio_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dpaa2_dpio_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 161, i32 3}
!36 = !{ptr @dpaa2_dpio_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dpaa2_dpio_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 169, i32 3}
!40 = !{ptr @dpaa2_dpio_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dpaa2_dpio_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 181, i32 3}
!44 = !{ptr @dpaa2_dpio_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dpaa2_dpio_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 194, i32 4}
!48 = !{ptr @dpaa2_dpio_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dpaa2_dpio_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 215, i32 3}
!52 = !{ptr @dpaa2_dpio_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dpaa2_dpio_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 224, i32 3}
!56 = !{ptr @dpaa2_dpio_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dpaa2_dpio_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 230, i32 3}
!60 = !{ptr @dpaa2_dpio_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dpaa2_dpio_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 236, i32 3}
!64 = !{ptr @dpaa2_dpio_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dpaa2_dpio_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 245, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @dpaa2_dpio_probe._entry.34, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @dpaa2_dpio_probe._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 246, i32 2}
!73 = !{ptr @dpaa2_dpio_probe.__UNIQUE_ID_ddebug239, !72, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 69, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dpaa2_dpio_get_cluster_sdest._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dpaa2_dpio_get_cluster_sdest._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 37, i32 13}
!84 = !{ptr @ls1088a_soc, !85, !"ls1088a_soc", i1 false, i1 false}
!85 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 36, i32 42}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 42, i32 13}
!88 = !{ptr @ls2080a_soc, !89, !"ls2080a_soc", i1 false, i1 false}
!89 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 41, i32 42}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 47, i32 13}
!92 = !{ptr @ls2088a_soc, !93, !"ls2088a_soc", i1 false, i1 false}
!93 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 46, i32 42}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 52, i32 13}
!96 = !{ptr @lx2160a_soc, !97, !"lx2160a_soc", i1 false, i1 false}
!97 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 51, i32 42}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 107, i32 3}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @register_dpio_irq_handlers._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @register_dpio_irq_handlers._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 115, i32 3}
!105 = !{ptr @register_dpio_irq_handlers._entry.48, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @register_dpio_irq_handlers._entry_ptr.50, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/fsl/dpio/dpio-driver.c", i32 293, i32 3}
!109 = !{ptr @dpaa2_dpio_remove._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @dpaa2_dpio_remove._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148959697, i64 2148959702, i64 2148959715, i64 2148959759, i64 2148959793, i64 2148959814}
!121 = !{!"branch_weights", i32 2000, i32 1}
