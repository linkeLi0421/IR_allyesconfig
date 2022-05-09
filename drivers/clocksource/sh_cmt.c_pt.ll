; ModuleID = '/llk/IR_all_yes/drivers/clocksource/sh_cmt.c_pt.bc'
source_filename = "../drivers/clocksource/sh_cmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sh_cmt_info = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.sh_cmt_device = type { ptr, ptr, ptr, ptr, i32, %struct.raw_spinlock, ptr, i32, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_cmt_channel = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, %struct.raw_spinlock, [44 x i8], %struct.clock_event_device, %struct.clocksource, i64, i8, [15 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sh_cmt_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_cmt_probe, ptr @sh_cmt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_cmt_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_cmt_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_sh_cmt__188_1147_sh_cmt_init4 = internal global ptr @sh_cmt_init, section ".initcall4.init", align 4
@__exitcall_sh_cmt_exit = internal global ptr @sh_cmt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [26 x i8] c"sh_cmt.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [43 x i8] c"sh_cmt.description=SuperH CMT Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [39 x i8] c"sh_cmt.file=drivers/clocksource/sh_cmt\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [22 x i8] c"sh_cmt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh_cmt\00", [25 x i8] zeroinitializer }, align 32
@sh_cmt_of_table = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cmt-48\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cmt-48-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh73a0-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 72) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmt0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 144) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmt0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 108) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmt1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @sh_cmt_info, i64 144) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@sh_cmt_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-cmt-16\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh_cmt_info to i32) }, %struct.platform_device_id { [20 x i8] c"sh-cmt-32\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @sh_cmt_info, i64 36) to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sh_cmt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kept as earlytimer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_cmt_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clocksource/sh_cmt.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_cmt_probe._entry_ptr = internal global ptr @sh_cmt_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sh_cmt_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cmt->lock\00", [21 x i8] zeroinitializer }, align 32
@sh_cmt_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 1007, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_cmt_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sh_cmt_setup._entry_ptr = internal global ptr @sh_cmt_setup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@sh_cmt_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 1014, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@sh_cmt_setup._entry_ptr.13 = internal global ptr @sh_cmt_setup._entry.11, section ".printk_index", align 4
@sh_cmt_map_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 929, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_cmt_map_memory\00", [46 x i8] zeroinitializer }, align 32
@sh_cmt_map_memory._entry_ptr = internal global ptr @sh_cmt_map_memory._entry, section ".printk_index", align 4
@sh_cmt_map_memory._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 935, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@sh_cmt_map_memory._entry_ptr.18 = internal global ptr @sh_cmt_map_memory._entry.16, section ".printk_index", align 4
@sh_cmt_setup_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@sh_cmt_setup_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 915, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch%u: registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_cmt_setup_channel\00", [43 x i8] zeroinitializer }, align 32
@sh_cmt_setup_channel._entry_ptr = internal global ptr @sh_cmt_setup_channel._entry, section ".printk_index", align 4
@sh_cmt_register_clockevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 810, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: failed to request irq %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sh_cmt_register_clockevent\00", [37 x i8] zeroinitializer }, align 32
@sh_cmt_register_clockevent._entry_ptr = internal global ptr @sh_cmt_register_clockevent._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@sh_cmt_register_clockevent._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 835, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ch%u: used for clock events\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_cmt_register_clockevent._entry_ptr.26 = internal global ptr @sh_cmt_register_clockevent._entry.24, section ".printk_index", align 4
@sh_cmt_clock_event_program_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 489, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ch%u: too long delay\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sh_cmt_clock_event_program_verify\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_cmt_clock_event_program_verify._entry_ptr = internal global ptr @sh_cmt_clock_event_program_verify._entry, section ".printk_index", align 4
@__sh_cmt_set_next._entry = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 498, ptr @.str.29, ptr @.str.5 }, align 1
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ch%u: delta out of range\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__sh_cmt_set_next\00", [46 x i8] zeroinitializer }, align 32
@__sh_cmt_set_next._entry_ptr = internal global ptr @__sh_cmt_set_next._entry, section ".printk_index", align 4
@sh_cmt_clock_event_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: used for %s clock events\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sh_cmt_clock_event_set_state\00", [35 x i8] zeroinitializer }, align 32
@sh_cmt_clock_event_set_state._entry_ptr = internal global ptr @sh_cmt_clock_event_set_state._entry, section ".printk_index", align 4
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"periodic\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oneshot\00", [24 x i8] zeroinitializer }, align 32
@sh_cmt_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 330, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch%u: cannot enable clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_cmt_enable\00", [18 x i8] zeroinitializer }, align 32
@sh_cmt_enable._entry_ptr = internal global ptr @sh_cmt_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sh_cmt_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 371, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ch%u: cannot clear CMCNT\0A\00", [38 x i8] zeroinitializer }, align 32
@sh_cmt_enable._entry_ptr.40 = internal global ptr @sh_cmt_enable._entry.38, section ".printk_index", align 4
@sh_cmt_register_clocksource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch%u: used as clock source\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_cmt_register_clocksource\00", [36 x i8] zeroinitializer }, align 32
@sh_cmt_register_clocksource._entry_ptr = internal global ptr @sh_cmt_register_clocksource._entry, section ".printk_index", align 4
@sh_cmt_info = internal constant { [5 x %struct.sh_cmt_info], [44 x i8] } { [5 x %struct.sh_cmt_info] [%struct.sh_cmt_info { i32 0, i32 0, i32 16, i32 128, i32 -129, ptr @sh_cmt_read16, ptr @sh_cmt_write16, ptr @sh_cmt_read16, ptr @sh_cmt_write16 }, %struct.sh_cmt_info { i32 1, i32 0, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read16, ptr @sh_cmt_write16, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 2, i32 63, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 3, i32 96, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }, %struct.sh_cmt_info { i32 4, i32 255, i32 32, i32 32768, i32 -49153, ptr @sh_cmt_read32, ptr @sh_cmt_write32, ptr @sh_cmt_read32, ptr @sh_cmt_write32 }], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"sh_cmt_device_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1123, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1127, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"sh_cmt_of_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 949, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"sh_cmt_id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 942, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1092, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 995, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1007, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1012, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1014, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 929, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 935, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 909, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 914, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 809, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 834, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 488, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 497, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 748, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 329, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 370, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 709, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"sh_cmt_info\00", align 1
@___asan_gen_.203 = private constant [32 x i8] c"../drivers/clocksource/sh_cmt.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 178, i32 33 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_sh_cmt_exit, ptr @__initcall__kmod_sh_cmt__188_1147_sh_cmt_init4, ptr @__sh_cmt_set_next._entry, ptr @__sh_cmt_set_next._entry_ptr, ptr @sh_cmt_clock_event_program_verify._entry, ptr @sh_cmt_clock_event_program_verify._entry_ptr, ptr @sh_cmt_clock_event_set_state._entry, ptr @sh_cmt_clock_event_set_state._entry_ptr, ptr @sh_cmt_enable._entry, ptr @sh_cmt_enable._entry.38, ptr @sh_cmt_enable._entry_ptr, ptr @sh_cmt_enable._entry_ptr.40, ptr @sh_cmt_exit, ptr @sh_cmt_map_memory._entry, ptr @sh_cmt_map_memory._entry.16, ptr @sh_cmt_map_memory._entry_ptr, ptr @sh_cmt_map_memory._entry_ptr.18, ptr @sh_cmt_probe._entry, ptr @sh_cmt_probe._entry_ptr, ptr @sh_cmt_register_clockevent._entry, ptr @sh_cmt_register_clockevent._entry.24, ptr @sh_cmt_register_clockevent._entry_ptr, ptr @sh_cmt_register_clockevent._entry_ptr.26, ptr @sh_cmt_register_clocksource._entry, ptr @sh_cmt_register_clocksource._entry_ptr, ptr @sh_cmt_setup._entry, ptr @sh_cmt_setup._entry.11, ptr @sh_cmt_setup._entry_ptr, ptr @sh_cmt_setup._entry_ptr.13, ptr @sh_cmt_setup_channel._entry, ptr @sh_cmt_setup_channel._entry_ptr, ptr @sh_cmt_device_driver, ptr @.str, ptr @sh_cmt_of_table, ptr @sh_cmt_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sh_cmt_setup.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @sh_cmt_setup_channel.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @sh_cmt_info], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_of_table to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_map_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_map_memory._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_setup_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_setup_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_register_clockevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_register_clockevent._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_clock_event_program_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_clock_event_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_register_clocksource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_cmt_info to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_cmt_device_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_cmt_device_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %out

if.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call7.i.i, align 8
  %lock.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sh_cmt_setup.__key, i16 noundef signext 2) #9
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %info.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i44, ptr %info.i, align 4
  %channels_mask.i = getelementptr inbounds %struct.sh_cmt_info, ptr %call.i44, i32 0, i32 1
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end10
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %do.end15.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data.i, align 4
  %13 = inttoptr i32 %12 to ptr
  %info9.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %info9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %info9.i, align 4
  br label %if.end18.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %dev17.i = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.7) #12
  br label %if.then13

if.end18.i:                                       ; preds = %if.then6.i, %if.then.i
  %.sink268.i = phi ptr [ %8, %if.then6.i ], [ %channels_mask.i, %if.then.i ]
  %17 = ptrtoint ptr %.sink268.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %.sink268.i, align 4
  %hw_channels11.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %hw_channels11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %hw_channels11.i, align 8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %dev20.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %call21.i = tail call ptr @clk_get(ptr noundef %dev20.i, ptr noundef nonnull @.str.10) #9
  %clk.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call21.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sh_cmt_setup.exit, label %if.end32.i

if.end32.i:                                       ; preds = %if.end18.i
  %call34.i = tail call i32 @clk_prepare(ptr noundef %call21.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp.i = icmp slt i32 %call34.i, 0
  br i1 %cmp.i, label %if.end32.i.err_clk_put.i_crit_edge, label %if.end36.i

if.end32.i.err_clk_put.i_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_put.i

if.end36.i:                                       ; preds = %if.end32.i
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i, align 4
  %call38.i = tail call i32 @clk_enable(ptr noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end36.i.err_clk_unprepare.i_crit_edge, label %if.end41.i

if.end36.i.err_clk_unprepare.i_crit_edge:         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_clk_unprepare.i

if.end41.i:                                       ; preds = %if.end36.i
  %info42.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %info42.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info42.i, align 4
  %width.i = getelementptr inbounds %struct.sh_cmt_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp43.i = icmp eq i32 %28, 16
  %29 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i, align 4
  %call46.i = tail call i32 @clk_get_rate(ptr noundef %30) #9
  %..i = select i1 %cmp43.i, i32 9, i32 3
  %div50227.i = lshr i32 %call46.i, %..i
  %31 = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div50227.i, ptr %31, align 8
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = tail call ptr @platform_get_resource(ptr noundef %34, i32 noundef 512, i32 noundef 0) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end41.i.sh_cmt_map_memory.exit.thread.i_crit_edge, label %if.end.i.i

if.end41.i.sh_cmt_map_memory.exit.thread.i_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_map_memory.exit.thread.i

if.end.i.i:                                       ; preds = %if.end41.i
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %36
  %add.i.i.i = add i32 %sub.i.i.i, %38
  %call3.i.i = tail call ptr @ioremap(i32 noundef %36, i32 noundef %add.i.i.i) #9
  %mapbase.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call3.i.i, ptr %mapbase.i.i, align 8
  %cmp.i229.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i229.i, label %if.end.i.i.sh_cmt_map_memory.exit.thread.i_crit_edge, label %cond.false.i

if.end.i.i.sh_cmt_map_memory.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_map_memory.exit.thread.i

sh_cmt_map_memory.exit.thread.i:                  ; preds = %if.end.i.i.sh_cmt_map_memory.exit.thread.i_crit_edge, %if.end41.i.sh_cmt_map_memory.exit.thread.i_crit_edge
  %.str.17.sink.i.i = phi ptr [ @.str.14, %if.end41.i.sh_cmt_map_memory.exit.thread.i_crit_edge ], [ @.str.17, %if.end.i.i.sh_cmt_map_memory.exit.thread.i_crit_edge ]
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %dev10.i.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull %.str.17.sink.i.i) #12
  br label %err_clk_disable.i

cond.false.i:                                     ; preds = %if.end.i.i
  %42 = ptrtoint ptr %hw_channels11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hw_channels11.i, align 8
  %call.i230.i = tail call i32 @__sw_hweight8(i32 noundef %43) #9
  %num_channels.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i230.i, ptr %num_channels.i, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i230.i, i32 512) #9
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !111

kcalloc.exit.thread.i:                            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %channels244.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %channels244.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %channels244.i, align 8
  br label %err_unmap.i

if.end7.i.i.i:                                    ; preds = %cond.false.i
  %48 = extractvalue { i32, i1 } %45, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #14
  %channels.i = getelementptr inbounds %struct.sh_cmt_device, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call8.i.i.i, ptr %channels.i, align 8
  %cmp128.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp128.i, label %if.end7.i.i.i.err_unmap.i_crit_edge, label %if.end131.i

if.end7.i.i.i.err_unmap.i_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap.i

if.end131.i:                                      ; preds = %if.end7.i.i.i
  %50 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp134259.not.i = icmp eq i32 %51, 0
  br i1 %cmp134259.not.i, label %if.end131.i.sh_cmt_setup.exit.thread50_crit_edge, label %for.body.lr.ph.i

if.end131.i.sh_cmt_setup.exit.thread50_crit_edge: ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_setup.exit.thread50

for.body.lr.ph.i:                                 ; preds = %if.end131.i
  %52 = ptrtoint ptr %hw_channels11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hw_channels11.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %54 = phi i32 [ %51, %for.body.lr.ph.i ], [ %185, %for.inc.i.for.body.i_crit_edge ]
  %mask.0267.i = phi i32 [ %53, %for.body.lr.ph.i ], [ %mask.1258.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0260.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %55 = tail call i32 @llvm.cttz.i32(i32 %mask.0267.i, i1 true) #9, !range !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0267.i)
  %iszero.i = icmp eq i32 %mask.0267.i, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0260.i)
  %cmp136.i = icmp eq i32 %i.0260.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp139.i = icmp eq i32 %54, 1
  %spec.select.i = select i1 %cmp136.i, i1 true, i1 %cmp139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0260.i)
  %cmp141.i = icmp eq i32 %i.0260.i, 0
  %56 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channels.i, align 8
  %arrayidx.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i
  %58 = freeze i1 %cmp139.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0260.i)
  %switch.i = icmp ult i32 %i.0260.i, 2
  %or.cond.i = select i1 %58, i1 true, i1 %switch.i
  br i1 %or.cond.i, label %if.end.i231.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i231.i:                                    ; preds = %for.body.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %arrayidx.i, align 128
  %index4.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 1
  %60 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %i.0260.i, ptr %index4.i.i, align 4
  %hwidx5.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 2
  %61 = ptrtoint ptr %hwidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i, ptr %hwidx5.i.i, align 8
  %timer_bit.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 5
  %62 = ptrtoint ptr %timer_bit.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i, ptr %timer_bit.i.i, align 4
  %63 = ptrtoint ptr %info42.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info42.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %66, label %if.end.i231.i.sw.epilog.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %if.end.i231.i.sw.bb8.i.i_crit_edge
    i32 2, label %if.end.i231.i.sw.bb8.i.i_crit_edge53
    i32 3, label %if.end.i231.i.sw.bb15.i.i_crit_edge
    i32 4, label %if.end.i231.i.sw.bb15.i.i_crit_edge54
  ]

if.end.i231.i.sw.bb15.i.i_crit_edge54:            ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i.i

if.end.i231.i.sw.bb15.i.i_crit_edge:              ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15.i.i

if.end.i231.i.sw.bb8.i.i_crit_edge53:             ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i.i

if.end.i231.i.sw.bb8.i.i_crit_edge:               ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i.i

if.end.i231.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end.i231.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mapbase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 2
  %mul.i.i = mul nsw i32 %sub.i, 6
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %ioctrl.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 4
  %70 = ptrtoint ptr %ioctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr7.i.i, ptr %ioctrl.i.i, align 16
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i231.i.sw.bb8.i.i_crit_edge, %if.end.i231.i.sw.bb8.i.i_crit_edge53
  %71 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mapbase.i.i, align 8
  %add.ptr10.i.i = getelementptr i8, ptr %72, i32 16
  %mul12.i.i = shl nsw i32 %sub.i, 4
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 %mul12.i.i
  %ioctrl14.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 4
  %73 = ptrtoint ptr %ioctrl14.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr13.i.i, ptr %ioctrl14.i.i, align 16
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.end.i231.i.sw.bb15.i.i_crit_edge, %if.end.i231.i.sw.bb15.i.i_crit_edge54
  %74 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mapbase.i.i, align 8
  %mul18.i.i = shl nsw i32 %sub.i, 8
  %add.ptr19.i.i = getelementptr i8, ptr %75, i32 %mul18.i.i
  %iostart.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 3
  %76 = ptrtoint ptr %iostart.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr19.i.i, ptr %iostart.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %add.ptr19.i.i, i32 16
  %ioctrl22.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 4
  %77 = ptrtoint ptr %ioctrl22.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr21.i.i, ptr %ioctrl22.i.i, align 16
  %78 = ptrtoint ptr %timer_bit.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %timer_bit.i.i, align 4
  %79 = load ptr, ptr %mapbase.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %79, i32 4096
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i) #9, !srcloc !113
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %shl.i.i = shl nuw i32 1, %sub.i
  %or.i.i = or i32 %81, %shl.i.i
  %82 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mapbase.i.i, align 8
  %add.ptr27.i.i = getelementptr i8, ptr %83, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.i, i32 %84) #9, !srcloc !116
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb15.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.end.i231.i.sw.epilog.i.i_crit_edge
  %85 = ptrtoint ptr %info42.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info42.i, align 4
  %width.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %88)
  %cmp.i233.i = icmp eq i32 %88, 32
  %notmask.i.i = shl nsw i32 -1, %88
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sub.sink.i.i = select i1 %cmp.i233.i, i32 -1, i32 %sub.i.i
  %89 = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 9
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub.sink.i.i, ptr %89, align 4
  %match_value.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 7
  %91 = ptrtoint ptr %match_value.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub.sink.i.i, ptr %match_value.i.i, align 4
  %lock.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @sh_cmt_setup_channel.__key, i16 noundef signext 2) #9
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i234.i, label %sw.epilog.i.i.dev_name.exit.i.i_crit_edge

sw.epilog.i.i.dev_name.exit.i.i_crit_edge:        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i234.i:                                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %93, i32 0, i32 3
  %96 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i234.i, %sw.epilog.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i235.i = phi ptr [ %97, %if.end.i.i234.i ], [ %95, %sw.epilog.i.i.dev_name.exit.i.i_crit_edge ]
  br i1 %cmp141.i, label %if.then.i.i.i, label %if.end3.i.i.i

if.then.i.i.i:                                    ; preds = %dev_name.exit.i.i
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 128
  %has_clockevent.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %has_clockevent.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %has_clockevent.i.i.i, align 4
  %ced1.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12
  %101 = load ptr, ptr %arrayidx.i, align 128
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %104 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index4.i.i, align 4
  %call.i.i.i.i = tail call i32 @platform_get_irq(ptr noundef %103, i32 noundef %105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i236.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i236.i, label %if.then.i.i.i.sh_cmt_setup_channel.exit.i_crit_edge, label %if.end.i.i.i238.i

if.then.i.i.i.sh_cmt_setup_channel.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_setup_channel.exit.i

if.end.i.i.i238.i:                                ; preds = %if.then.i.i.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i, align 128
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %109, i32 0, i32 3, i32 3
  %110 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i237.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i.i237.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i238.i.dev_name.exit.i.i.i.i_crit_edge

if.end.i.i.i238.i.dev_name.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i238.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i238.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %109, i32 0, i32 3
  %112 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i238.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %113, %if.end.i.i.i.i.i ], [ %111, %if.end.i.i.i238.i.dev_name.exit.i.i.i.i_crit_edge ]
  %call.i.i.i.i.i = tail call i32 @request_threaded_irq(i32 noundef %call.i.i.i.i, ptr noundef nonnull @sh_cmt_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %retval.0.i.i.i.i.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end11.i.i.i.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %dev_name.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i, align 128
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %dev9.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i.i.i.i, ptr noundef nonnull @.str.22, i32 noundef %119, i32 noundef %call.i.i.i.i) #12
  br label %sh_cmt_register_clockevent.exit.i.i.i

if.end11.i.i.i.i:                                 ; preds = %dev_name.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name12.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 21
  %120 = ptrtoint ptr %name12.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %retval.0.i.i235.i, ptr %name12.i.i.i.i, align 4
  %features.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 9
  %121 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %features.i.i.i.i, align 4
  %rating.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 22
  %122 = ptrtoint ptr %rating.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 125, ptr %rating.i.i.i.i, align 8
  %cpumask.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 25
  %123 = ptrtoint ptr %cpumask.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @__cpu_possible_mask, ptr %cpumask.i.i.i.i, align 4
  %set_next_event.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 1
  %124 = ptrtoint ptr %set_next_event.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @sh_cmt_clock_event_next, ptr %set_next_event.i.i.i.i, align 4
  %set_state_shutdown.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 14
  %125 = ptrtoint ptr %set_state_shutdown.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @sh_cmt_clock_event_shutdown, ptr %set_state_shutdown.i.i.i.i, align 8
  %set_state_periodic.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 11
  %126 = ptrtoint ptr %set_state_periodic.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @sh_cmt_clock_event_set_periodic, ptr %set_state_periodic.i.i.i.i, align 4
  %set_state_oneshot.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 12
  %127 = ptrtoint ptr %set_state_oneshot.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @sh_cmt_clock_event_set_oneshot, ptr %set_state_oneshot.i.i.i.i, align 64
  %suspend.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 17
  %128 = ptrtoint ptr %suspend.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @sh_cmt_clock_event_suspend, ptr %suspend.i.i.i.i, align 4
  %resume.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 18
  %129 = ptrtoint ptr %resume.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @sh_cmt_clock_event_resume, ptr %resume.i.i.i.i, align 8
  %shift.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 7
  %130 = ptrtoint ptr %shift.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 32, ptr %shift.i.i.i.i, align 4
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 128
  %rate.i.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %rate.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rate.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i32 %134 to i64
  %shl.i.i.i.i.i = shl nuw i64 %conv.i.i.i.i.i, 32
  %135 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shl.i.i.i.i.i, i32 0) #15, !srcloc !117
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %135, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %135, 1
  %136 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shl.i.i.i.i.i, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #15, !srcloc !118
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %136, 0
  %div1631.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 29
  %conv185.i.i.i.i.i = trunc i64 %div1631.i.i.i.i.i to i32
  %mult.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 6
  %137 = ptrtoint ptr %mult.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv185.i.i.i.i.i, ptr %mult.i.i.i.i, align 8
  %138 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %89, align 4
  %call17.i.i.i.i = tail call i64 @clockevent_delta2ns(i32 noundef %139, ptr noundef %ced1.i.i.i.i) #9
  %max_delta_ns.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 4
  %140 = ptrtoint ptr %max_delta_ns.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %call17.i.i.i.i, ptr %max_delta_ns.i.i.i.i, align 8
  %141 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %89, align 4
  %max_delta_ticks.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 20
  %143 = ptrtoint ptr %max_delta_ticks.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %max_delta_ticks.i.i.i.i, align 32
  %call19.i.i.i.i = tail call i64 @clockevent_delta2ns(i32 noundef 31, ptr noundef %ced1.i.i.i.i) #9
  %min_delta_ns.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 5
  %144 = ptrtoint ptr %min_delta_ns.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %call19.i.i.i.i, ptr %min_delta_ns.i.i.i.i, align 32
  %min_delta_ticks.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 0, i32 12, i32 19
  %145 = ptrtoint ptr %min_delta_ticks.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 31, ptr %min_delta_ticks.i.i.i.i, align 4
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i, align 128
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %dev25.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %151) #12
  tail call void @clockevents_register_device(ptr noundef %ced1.i.i.i.i) #9
  br label %sh_cmt_register_clockevent.exit.i.i.i

sh_cmt_register_clockevent.exit.i.i.i:            ; preds = %if.end11.i.i.i.i, %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  %152 = and i1 %spec.select.i, %cmp.i.i.i
  br i1 %152, label %sh_cmt_register_clockevent.exit.i.i.i.if.then5.i.i239.i_crit_edge, label %sh_cmt_register.exit.i.i

sh_cmt_register_clockevent.exit.i.i.i.if.then5.i.i239.i_crit_edge: ; preds = %sh_cmt_register_clockevent.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i239.i

if.end3.i.i.i:                                    ; preds = %dev_name.exit.i.i
  br i1 %spec.select.i, label %if.end3.i.i.i.if.then5.i.i239.i_crit_edge, label %if.end3.i.i.i.if.end48.i.i_crit_edge

if.end3.i.i.i.if.end48.i.i_crit_edge:             ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i

if.end3.i.i.i.if.then5.i.i239.i_crit_edge:        ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i239.i

if.then5.i.i239.i:                                ; preds = %if.end3.i.i.i.if.then5.i.i239.i_crit_edge, %sh_cmt_register_clockevent.exit.i.i.i.if.then5.i.i239.i_crit_edge
  %153 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i, align 128
  %has_clocksource.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %154, i32 0, i32 10
  %155 = ptrtoint ptr %has_clocksource.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %has_clocksource.i.i.i, align 1
  %cs1.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13
  %name2.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 8
  %156 = ptrtoint ptr %name2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %retval.0.i.i235.i, ptr %name2.i.i.i.i, align 8
  %rating.i14.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 10
  %157 = ptrtoint ptr %rating.i14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 125, ptr %rating.i14.i.i.i, align 4
  %158 = ptrtoint ptr %cs1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @sh_cmt_clocksource_read, ptr %cs1.i.i.i.i, align 8
  %enable.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 14
  %159 = ptrtoint ptr %enable.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @sh_cmt_clocksource_enable, ptr %enable.i.i.i.i, align 4
  %disable.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 15
  %160 = ptrtoint ptr %disable.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @sh_cmt_clocksource_disable, ptr %disable.i.i.i.i, align 8
  %suspend.i15.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 16
  %161 = ptrtoint ptr %suspend.i15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @sh_cmt_clocksource_suspend, ptr %suspend.i15.i.i.i, align 4
  %resume.i16.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 17
  %162 = ptrtoint ptr %resume.i16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @sh_cmt_clocksource_resume, ptr %resume.i16.i.i.i, align 8
  %163 = load ptr, ptr %arrayidx.i, align 128
  %info.i.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %info.i.i.i.i, align 4
  %width.i.i.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %width.i.i.i.i, align 4
  %sub3.i.i.i.i = sub i32 64, %167
  %sh_prom.i.i.i.i = zext i32 %sub3.i.i.i.i to i64
  %shr.i.i.i.i = lshr i64 -1, %sh_prom.i.i.i.i
  %mask.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 1
  %168 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %shr.i.i.i.i, ptr %mask.i.i.i.i, align 8
  %flags.i.i.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 13, i32 13
  %169 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1, ptr %flags.i.i.i.i, align 8
  %170 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %163, align 4
  %dev.i17.i.i.i = getelementptr inbounds %struct.platform_device, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i17.i.i.i, ptr noundef nonnull @.str.41, i32 noundef %173) #12
  %174 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx.i, align 128
  %rate.i19.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %rate.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rate.i19.i.i.i, align 4
  %call.i.i20.i.i.i = tail call i32 @__clocksource_register_scale(ptr noundef %cs1.i.i.i.i, i32 noundef 1, i32 noundef %177) #9
  br label %if.end48.i.i

sh_cmt_register.exit.i.i:                         ; preds = %sh_cmt_register_clockevent.exit.i.i.i
  %178 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i.i.i, i32 0) #9
  br i1 %cmp.i.i.i, label %sh_cmt_register.exit.i.i.if.end48.i.i_crit_edge, label %sh_cmt_register.exit.i.i.sh_cmt_setup_channel.exit.i_crit_edge

sh_cmt_register.exit.i.i.sh_cmt_setup_channel.exit.i_crit_edge: ; preds = %sh_cmt_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_setup_channel.exit.i

sh_cmt_register.exit.i.i.if.end48.i.i_crit_edge:  ; preds = %sh_cmt_register.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %sh_cmt_register.exit.i.i.if.end48.i.i_crit_edge, %if.then5.i.i239.i, %if.end3.i.i.i.if.end48.i.i_crit_edge
  %cs_enabled.i.i = getelementptr %struct.sh_cmt_channel, ptr %57, i32 %i.0260.i, i32 15
  %179 = ptrtoint ptr %cs_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %cs_enabled.i.i, align 16
  br label %for.inc.i

sh_cmt_setup_channel.exit.i:                      ; preds = %sh_cmt_register.exit.i.i.sh_cmt_setup_channel.exit.i_crit_edge, %if.then.i.i.i.sh_cmt_setup_channel.exit.i_crit_edge
  %retval.0.i8692.i.i = phi i32 [ %178, %sh_cmt_register.exit.i.i.sh_cmt_setup_channel.exit.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.sh_cmt_setup_channel.exit.i_crit_edge ]
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %call7.i.i, align 8
  %dev46.i.i = getelementptr inbounds %struct.platform_device, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %index4.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i.i, ptr noundef nonnull @.str.20, i32 noundef %183) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8692.i.i)
  %cmp148.i = icmp slt i32 %retval.0.i8692.i.i, 0
  br i1 %cmp148.i, label %sh_cmt_setup_channel.exit.i.err_unmap.i_crit_edge, label %sh_cmt_setup_channel.exit.i.for.inc.i_crit_edge

sh_cmt_setup_channel.exit.i.for.inc.i_crit_edge:  ; preds = %sh_cmt_setup_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sh_cmt_setup_channel.exit.i.err_unmap.i_crit_edge: ; preds = %sh_cmt_setup_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap.i

for.inc.i:                                        ; preds = %sh_cmt_setup_channel.exit.i.for.inc.i_crit_edge, %if.end48.i.i, %for.body.i.for.inc.i_crit_edge
  %neg255.pn.in.i = shl nuw i32 1, %sub.i
  %neg255.pn.i = xor i32 %neg255.pn.in.i, -1
  %mask.1258.i = and i32 %mask.0267.i, %neg255.pn.i
  %inc.i = add nuw i32 %i.0260.i, 1
  %184 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_channels.i, align 4
  %cmp134.i = icmp ult i32 %inc.i, %185
  br i1 %cmp134.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sh_cmt_setup.exit.thread50_crit_edge

for.inc.i.sh_cmt_setup.exit.thread50_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_setup.exit.thread50

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sh_cmt_setup.exit.thread50:                       ; preds = %for.inc.i.sh_cmt_setup.exit.thread50_crit_edge, %if.end131.i.sh_cmt_setup.exit.thread50_crit_edge
  %186 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %187) #9
  %188 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %out

err_unmap.i:                                      ; preds = %sh_cmt_setup_channel.exit.i.err_unmap.i_crit_edge, %if.end7.i.i.i.err_unmap.i_crit_edge, %kcalloc.exit.thread.i
  %channels246.i = phi ptr [ %channels.i, %if.end7.i.i.i.err_unmap.i_crit_edge ], [ %channels244.i, %kcalloc.exit.thread.i ], [ %channels.i, %sh_cmt_setup_channel.exit.i.err_unmap.i_crit_edge ]
  %ret.0.i = phi i32 [ -12, %if.end7.i.i.i.err_unmap.i_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ %retval.0.i8692.i.i, %sh_cmt_setup_channel.exit.i.err_unmap.i_crit_edge ]
  %189 = ptrtoint ptr %channels246.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %channels246.i, align 4
  tail call void @kfree(ptr noundef %190) #9
  %191 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mapbase.i.i, align 8
  tail call void @iounmap(ptr noundef %192) #9
  br label %err_clk_disable.i

err_clk_disable.i:                                ; preds = %err_unmap.i, %sh_cmt_map_memory.exit.thread.i
  %ret.1.i = phi i32 [ %ret.0.i, %err_unmap.i ], [ -6, %sh_cmt_map_memory.exit.thread.i ]
  %193 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %194) #9
  br label %err_clk_unprepare.i

err_clk_unprepare.i:                              ; preds = %err_clk_disable.i, %if.end36.i.err_clk_unprepare.i_crit_edge
  %ret.2.i = phi i32 [ %call38.i, %if.end36.i.err_clk_unprepare.i_crit_edge ], [ %ret.1.i, %err_clk_disable.i ]
  %195 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %clk.i, align 4
  tail call void @clk_unprepare(ptr noundef %196) #9
  br label %err_clk_put.i

err_clk_put.i:                                    ; preds = %err_clk_unprepare.i, %if.end32.i.err_clk_put.i_crit_edge
  %ret.3.i = phi i32 [ %call34.i, %if.end32.i.err_clk_put.i_crit_edge ], [ %ret.2.i, %err_clk_unprepare.i ]
  %197 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %clk.i, align 4
  tail call void @clk_put(ptr noundef %198) #9
  br label %if.then13

sh_cmt_setup.exit:                                ; preds = %if.end18.i
  %199 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %call7.i.i, align 8
  %dev29.i = getelementptr inbounds %struct.platform_device, ptr %200, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.12) #12
  %201 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %clk.i, align 4
  %203 = ptrtoint ptr %202 to i32
  %tobool12.not = icmp eq ptr %202, null
  br i1 %tobool12.not, label %sh_cmt_setup.exit.out_crit_edge, label %sh_cmt_setup.exit.if.then13_crit_edge

sh_cmt_setup.exit.if.then13_crit_edge:            ; preds = %sh_cmt_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

sh_cmt_setup.exit.out_crit_edge:                  ; preds = %sh_cmt_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then13:                                        ; preds = %sh_cmt_setup.exit.if.then13_crit_edge, %err_clk_put.i, %do.end15.i
  %retval.0.i49 = phi i32 [ %203, %sh_cmt_setup.exit.if.then13_crit_edge ], [ -6, %do.end15.i ], [ %ret.3.i, %err_clk_put.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup

out:                                              ; preds = %sh_cmt_setup.exit.out_crit_edge, %sh_cmt_setup.exit.thread50, %do.end
  %cmt.0 = phi ptr [ %1, %do.end ], [ %call7.i.i, %sh_cmt_setup.exit.thread50 ], [ %call7.i.i, %sh_cmt_setup.exit.out_crit_edge ]
  %has_clockevent = getelementptr inbounds %struct.sh_cmt_device, ptr %cmt.0, i32 0, i32 9
  %204 = ptrtoint ptr %has_clockevent to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %has_clockevent, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool21.not = icmp eq i8 %205, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %out.if.then23_crit_edge

out.if.then23_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false:                                    ; preds = %out
  %has_clocksource = getelementptr inbounds %struct.sh_cmt_device, ptr %cmt.0, i32 0, i32 10
  %206 = ptrtoint ptr %has_clocksource to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %has_clocksource, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool22.not = icmp eq i8 %207, 0
  br i1 %tobool22.not, label %if.else, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %out.if.then23_crit_edge
  tail call void @pm_runtime_irq_safe(ptr noundef %dev) #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call.i46 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %if.then13, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i49, %if.then13 ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_cmt_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  %info.i = getelementptr inbounds %struct.sh_cmt_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %read_control.i = getelementptr inbounds %struct.sh_cmt_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_control.i, align 4
  %ioctrl.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioctrl.i, align 16
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 0) #9
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 128
  %info = getelementptr inbounds %struct.sh_cmt_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %clear_bits = getelementptr inbounds %struct.sh_cmt_info, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %clear_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clear_bits, align 4
  %and = and i32 %13, %call.i
  %write_control.i = getelementptr inbounds %struct.sh_cmt_info, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %write_control.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_control.i, align 4
  %16 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioctrl.i, align 16
  tail call void %15(ptr noundef %17, i32 noundef 0, i32 noundef %and) #9
  %flags = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and1 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 7
  %20 = ptrtoint ptr %match_value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %match_value, align 4
  %add = add i32 %21, 1
  %conv = zext i32 %add to i64
  %total_cycles = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 14
  %22 = ptrtoint ptr %total_cycles to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total_cycles, align 8
  %add2 = add i64 %23, %conv
  store i64 %add2, ptr %total_cycles, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %max_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 9
  %24 = ptrtoint ptr %max_match_value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_match_value, align 4
  %next_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 8
  %26 = ptrtoint ptr %next_match_value to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %next_match_value, align 32
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %or = or i32 %19, 16
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %flags, align 8
  %28 = and i32 %19, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %if.then16, label %if.end7.if.end27_crit_edge

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then16:                                        ; preds = %if.end7
  %ced = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 12
  %state_use_accessors.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 12, i32 8
  %30 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i = icmp eq i32 %31, 3
  br i1 %cmp.i, label %if.then18, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %max_match_value19 = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 9
  %32 = ptrtoint ptr %max_match_value19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_match_value19, align 4
  %next_match_value20 = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 8
  %34 = ptrtoint ptr %next_match_value20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %next_match_value20, align 32
  %or22 = or i32 %19, 20
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or22, ptr %flags, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.then16.if.end23_crit_edge
  %36 = ptrtoint ptr %ced to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ced, align 128
  tail call void %37(ptr noundef %ced) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end7.if.end27_crit_edge
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and29 = and i32 %39, -9
  store i32 %and29, ptr %flags, align 8
  %and31 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end27.if.end51_crit_edge, label %if.then33

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then33:                                        ; preds = %if.end27
  %and35 = and i32 %39, -13
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and35, ptr %flags, align 8
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %dev_id, i32 noundef 1)
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 8
  %and37 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then33.if.end51_crit_edge, label %if.then39

if.then33.if.end51_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then39:                                        ; preds = %if.then33
  %state_use_accessors.i83 = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 12, i32 8
  %43 = ptrtoint ptr %state_use_accessors.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state_use_accessors.i83, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i84 = icmp eq i32 %44, 1
  br i1 %cmp.i84, label %if.then39.if.then46_crit_edge, label %lor.lhs.false

if.then39.if.then46_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.then39
  %match_value43 = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 7
  %45 = ptrtoint ptr %match_value43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %match_value43, align 4
  %next_match_value44 = getelementptr inbounds %struct.sh_cmt_channel, ptr %dev_id, i32 0, i32 8
  %47 = ptrtoint ptr %next_match_value44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %next_match_value44, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp = icmp eq i32 %46, %48
  br i1 %cmp, label %lor.lhs.false.if.then46_crit_edge, label %lor.lhs.false.if.end51_crit_edge

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.then39.if.then46_crit_edge
  %and48 = and i32 %42, -5
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and48, ptr %flags, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %lor.lhs.false.if.end51_crit_edge, %if.then33.if.end51_crit_edge, %if.end27.if.end51_crit_edge
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 8
  %and53 = and i32 %51, -17
  store i32 %and53, ptr %flags, align 8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_next(i32 noundef %delta, ptr noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %do.end9, label %do.body4, !prof !120

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clocksource/sh_cmt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 769, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

do.end9:                                          ; preds = %entry
  %flags = getelementptr i8, ptr %ced, i32 -104
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %sub18 = add i32 %delta, -1
  br i1 %tobool10.not, label %if.else, label %if.then17, !prof !111

if.then17:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %next_match_value = getelementptr i8, ptr %ced, i32 -96
  %4 = ptrtoint ptr %next_match_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub18, ptr %next_match_value, align 32
  br label %if.end19

if.else:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sh_cmt_set_next(ptr noundef %add.ptr.i, i32 noundef %sub18)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_shutdown(ptr noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  tail call fastcc void @sh_cmt_stop(ptr noundef %add.ptr.i, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_set_periodic(ptr noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sh_cmt_clock_event_set_state(ptr noundef %ced, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_clock_event_set_oneshot(ptr noundef %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sh_cmt_clock_event_set_state(ptr noundef %ced, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_clock_event_suspend(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %dev) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %clk = getelementptr inbounds %struct.sh_cmt_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_clock_event_resume(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %clk = getelementptr inbounds %struct.sh_cmt_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_prepare(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clockevent_delta2ns(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_clock_event_program_verify(ptr nocapture noundef %ch, i32 noundef %absolute) unnamed_addr #2 align 64 {
entry:
  %has_wrapped = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %next_match_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_match_value, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_wrapped) #9
  %2 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %has_wrapped, align 4, !annotation !122
  %call = call fastcc i32 @sh_cmt_get_counter(ptr noundef %ch, ptr noundef nonnull %has_wrapped)
  %flags = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or = or i32 %4, 4
  store i32 %or, ptr %flags, align 8
  %5 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %has_wrapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or2 = or i32 %4, 12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or2, ptr %flags, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %absolute)
  %tobool3.not = icmp eq i32 %absolute, 0
  %spec.select = select i1 %tobool3.not, i32 %call, i32 0
  %max_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 9
  %ioctrl.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %if.end
  %delay.0 = phi i32 [ 0, %if.end ], [ %delay.1, %if.end24.do.body_crit_edge ]
  %now.1 = phi i32 [ %spec.select, %if.end ], [ %call10, %if.end24.do.body_crit_edge ]
  %add = add i32 %delay.0, %1
  %add6 = add i32 %add, %now.1
  %8 = ptrtoint ptr %max_match_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_match_value, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %add6, i32 %9)
  %11 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch, align 128
  %info.i = getelementptr inbounds %struct.sh_cmt_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  %write_count.i = getelementptr inbounds %struct.sh_cmt_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_count.i, align 4
  %17 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioctrl.i, align 16
  tail call void %16(ptr noundef %18, i32 noundef 2, i32 noundef %10) #9
  %call10 = call fastcc i32 @sh_cmt_get_counter(ptr noundef %ch, ptr noundef nonnull %has_wrapped)
  %19 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %has_wrapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 7
  %21 = ptrtoint ptr %match_value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %match_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %22)
  %cmp12 = icmp ugt i32 %10, %22
  br i1 %cmp12, label %if.then13, label %if.then18

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %or15 = or i32 %24, 8
  store i32 %or15, ptr %flags, align 8
  br label %cleanup

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %match_value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %10, ptr %match_value, align 4
  br label %cleanup

if.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %10)
  %cmp21 = icmp ult i32 %call10, %10
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %match_value23 = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 7
  %26 = ptrtoint ptr %match_value23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %10, ptr %match_value23, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay.0)
  %tobool25.not = icmp eq i32 %delay.0, 0
  %shl = shl i32 %delay.0, 1
  %delay.1 = select i1 %tobool25.not, i32 1, i32 %shl
  %tobool28.not = icmp eq i32 %delay.1, 0
  br i1 %tobool28.not, label %do.end, label %if.end24.do.body_crit_edge

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ch, align 128
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %index = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 1
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %32) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then22, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_wrapped) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_cmt_get_counter(ptr nocapture noundef readonly %ch, ptr nocapture noundef writeonly %has_wrapped) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 128
  %info.i = getelementptr inbounds %struct.sh_cmt_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %read_control.i = getelementptr inbounds %struct.sh_cmt_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %read_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_control.i, align 4
  %ioctrl.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 4
  %6 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioctrl.i, align 16
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 0) #9
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch, align 128
  %info = getelementptr inbounds %struct.sh_cmt_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %overflow_bit = getelementptr inbounds %struct.sh_cmt_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %overflow_bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overflow_bit, align 4
  %and = and i32 %13, %call.i
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %o1.0 = phi i32 [ %and, %entry ], [ %and8, %do.body.backedge ]
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch, align 128
  %info.i39 = getelementptr inbounds %struct.sh_cmt_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %info.i39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i39, align 4
  %read_count.i = getelementptr inbounds %struct.sh_cmt_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_count.i, align 4
  %20 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioctrl.i, align 16
  %call.i41 = tail call i32 %19(ptr noundef %21, i32 noundef 1) #9
  %22 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ch, align 128
  %info.i42 = getelementptr inbounds %struct.sh_cmt_device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %info.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info.i42, align 4
  %read_count.i43 = getelementptr inbounds %struct.sh_cmt_info, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %read_count.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_count.i43, align 4
  %28 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioctrl.i, align 16
  %call.i45 = tail call i32 %27(ptr noundef %29, i32 noundef 1) #9
  %30 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ch, align 128
  %info.i46 = getelementptr inbounds %struct.sh_cmt_device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %info.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i46, align 4
  %read_count.i47 = getelementptr inbounds %struct.sh_cmt_info, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %read_count.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read_count.i47, align 4
  %36 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioctrl.i, align 16
  %call.i49 = tail call i32 %35(ptr noundef %37, i32 noundef 1) #9
  %38 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch, align 128
  %info.i50 = getelementptr inbounds %struct.sh_cmt_device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %info.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.i50, align 4
  %read_control.i51 = getelementptr inbounds %struct.sh_cmt_info, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %read_control.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_control.i51, align 4
  %44 = ptrtoint ptr %ioctrl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioctrl.i, align 16
  %call.i53 = tail call i32 %43(ptr noundef %45, i32 noundef 0) #9
  %46 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch, align 128
  %info6 = getelementptr inbounds %struct.sh_cmt_device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info6, align 4
  %overflow_bit7 = getelementptr inbounds %struct.sh_cmt_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %overflow_bit7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %overflow_bit7, align 4
  %and8 = and i32 %51, %call.i53
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %o1.0)
  %cmp.not = icmp eq i32 %and8, %o1.0
  br i1 %cmp.not, label %lor.lhs.false, label %do.body.do.body.backedge_crit_edge, !prof !120

do.body.do.body.backedge_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.lhs.false11.do.body.backedge_crit_edge, %lor.lhs.false.do.body.backedge_crit_edge, %do.body.do.body.backedge_crit_edge
  br label %do.body

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i41, i32 %call.i45)
  %cmp9 = icmp ugt i32 %call.i41, %call.i45
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i41, i32 %call.i49)
  %cmp10 = icmp ult i32 %call.i41, %call.i49
  %or.cond = select i1 %cmp9, i1 %cmp10, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body.backedge_crit_edge, label %lor.lhs.false11, !prof !123

lor.lhs.false.do.body.backedge_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i45, i32 %call.i49)
  %cmp12 = icmp ugt i32 %call.i45, %call.i49
  %52 = select i1 %cmp12, i1 %cmp9, i1 false
  %spec.select = select i1 %cmp10, i1 %cmp12, i1 false
  %or.cond38 = select i1 %52, i1 true, i1 %spec.select
  br i1 %or.cond38, label %lor.lhs.false11.do.body.backedge_crit_edge, label %do.end, !prof !124

lor.lhs.false11.do.body.backedge_crit_edge:       ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.end:                                           ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %o1.0, ptr %has_wrapped, align 4
  ret i32 %call.i45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_set_next(ptr noundef %ch, i32 noundef %delta) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 10
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %max_match_value.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 9
  %0 = ptrtoint ptr %max_match_value.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_match_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %delta)
  %cmp.i = icmp ult i32 %1, %delta
  br i1 %cmp.i, label %do.end.i, label %entry.__sh_cmt_set_next.exit_crit_edge

entry.__sh_cmt_set_next.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sh_cmt_set_next.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %index.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %7) #12
  br label %__sh_cmt_set_next.exit

__sh_cmt_set_next.exit:                           ; preds = %do.end.i, %entry.__sh_cmt_set_next.exit_crit_edge
  %next_match_value.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 8
  %8 = ptrtoint ptr %next_match_value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %delta, ptr %next_match_value.i, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %ch, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_stop(ptr noundef %ch, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 10
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %flags1 = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %and = and i32 %1, 3
  %neg = xor i32 %flag, -1
  %and3 = and i32 %1, %neg
  store i32 %and3, ptr %flags1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and5 = and i32 %and3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 128
  %lock.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %3, i32 0, i32 5
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %iostart.i.i.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 3
  %4 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch, align 128
  %info3.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %info3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info3.i.i.i, align 4
  %read_control4.i.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %read_control4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_control4.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 %11(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %mapbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapbase.i.i.i, align 4
  %call6.i.i.i = tail call i32 %11(ptr noundef %13, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i.i

sh_cmt_read_cmstr.exit.i.i:                       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %call6.i.i.i, %if.else.i.i.i ]
  %timer_bit2.i.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 5
  %14 = ptrtoint ptr %timer_bit2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timer_bit2.i.i, align 4
  %shl3.i.i = shl nuw i32 1, %15
  %neg.i.i = xor i32 %shl3.i.i, -1
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %16 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i22.i.i = icmp eq ptr %17, null
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch, align 128
  %info3.i23.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %info3.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info3.i23.i.i, align 4
  %write_control4.i.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %write_control4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_control4.i.i.i, align 4
  br i1 %tobool.not.i22.i.i, label %if.else.i26.i.i, label %if.then.i24.i.i

if.then.i24.i.i:                                  ; preds = %sh_cmt_read_cmstr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef nonnull %17, i32 noundef 0, i32 noundef %and.i.i) #9
  br label %sh_cmt_disable.exit

if.else.i26.i.i:                                  ; preds = %sh_cmt_read_cmstr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i25.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %mapbase.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mapbase.i25.i.i, align 4
  tail call void %23(ptr noundef %25, i32 noundef 0, i32 noundef %and.i.i) #9
  br label %sh_cmt_disable.exit

sh_cmt_disable.exit:                              ; preds = %if.else.i26.i.i, %if.then.i24.i.i
  %26 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch, align 128
  %lock11.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %27, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i.i, i32 noundef %call.i.i) #9
  %28 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch, align 128
  %info.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i.i, align 4
  %write_control.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %write_control.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_control.i.i, align 4
  %ioctrl.i.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 4
  %34 = ptrtoint ptr %ioctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioctrl.i.i, align 16
  tail call void %33(ptr noundef %35, i32 noundef 0, i32 noundef 0) #9
  %36 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch, align 128
  %clk.i = getelementptr inbounds %struct.sh_cmt_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %39) #9
  %40 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch, align 128
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %syscore.i.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 12, i32 7
  %44 = ptrtoint ptr %syscore.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i.i = load i8, ptr %syscore.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %syscore.i.i, align 4
  %and7 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %sh_cmt_disable.exit.if.end11_crit_edge, label %if.then9

sh_cmt_disable.exit.if.end11_crit_edge:           ; preds = %sh_cmt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %sh_cmt_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ch, align 128
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %sh_cmt_disable.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp12 = icmp eq i32 %flag, 1
  br i1 %cmp12, label %land.lhs.true14, label %do.body20

land.lhs.true14:                                  ; preds = %if.end11
  %49 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags1, align 8
  %and16 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true14.do.body20.thread_crit_edge, label %__sh_cmt_set_next.exit

land.lhs.true14.do.body20.thread_crit_edge:       ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20.thread

__sh_cmt_set_next.exit:                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %max_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 9
  %51 = ptrtoint ptr %max_match_value to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_match_value, align 4
  %next_match_value.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 8
  %53 = ptrtoint ptr %next_match_value.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %next_match_value.i, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %ch, i32 noundef 0) #9
  br label %do.body20.thread

do.body20.thread:                                 ; preds = %__sh_cmt_set_next.exit, %land.lhs.true14.do.body20.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #9
  br label %if.end36

do.body20:                                        ; preds = %if.end11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #9
  %and29 = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body20.if.end36_crit_edge, label %if.then31

do.body20.if.end36_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ch, align 128
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %dev34, i32 noundef 5) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body20.if.end36_crit_edge, %do.body20.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_cmt_clock_event_set_state(ptr noundef %ced, i32 noundef %periodic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sh_cmt_stop(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %index = getelementptr i8, ptr %ced, i32 -124
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %periodic)
  %tobool.not = icmp eq i32 %periodic, 0
  %cond = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %8, ptr noundef nonnull %cond) #12
  %call.i = tail call fastcc i32 @sh_cmt_start(ptr noundef %add.ptr.i, i32 noundef 1) #9
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 128
  %rate.i = getelementptr inbounds %struct.sh_cmt_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate.i, align 4
  %add.i = add i32 %12, 50
  %div.i = udiv i32 %add.i, 100
  %sub.i = add nsw i32 %div.i, -1
  %lock.i.i = getelementptr i8, ptr %ced, i32 -88
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %max_match_value.i.i.i = getelementptr i8, ptr %ced, i32 -92
  %13 = ptrtoint ptr %max_match_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_match_value.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i)
  %cmp.i.i.i = icmp ult i32 %14, %sub.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.sh_cmt_set_next.exit.i_crit_edge

if.then.i.sh_cmt_set_next.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_set_next.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i.i.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.30, i32 noundef %20) #12
  br label %sh_cmt_set_next.exit.i

sh_cmt_set_next.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.sh_cmt_set_next.exit.i_crit_edge
  %next_match_value.i.i.i = getelementptr i8, ptr %ced, i32 -96
  %21 = ptrtoint ptr %next_match_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i, ptr %next_match_value.i.i.i, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %add.ptr.i, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call.i.i) #9
  br label %sh_cmt_clock_event_start.exit

if.else.i:                                        ; preds = %do.end
  %max_match_value.i = getelementptr i8, ptr %ced, i32 -92
  %22 = ptrtoint ptr %max_match_value.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_match_value.i, align 4
  %lock.i5.i = getelementptr i8, ptr %ced, i32 -88
  %call.i6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i5.i) #9
  %24 = ptrtoint ptr %max_match_value.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_match_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.i.i8.i = icmp ult i32 %25, %23
  br i1 %cmp.i.i8.i, label %do.end.i.i11.i, label %if.else.i.sh_cmt_set_next.exit13.i_crit_edge

if.else.i.sh_cmt_set_next.exit13.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_cmt_set_next.exit13.i

do.end.i.i11.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i.i9.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i9.i, ptr noundef nonnull @.str.30, i32 noundef %31) #12
  br label %sh_cmt_set_next.exit13.i

sh_cmt_set_next.exit13.i:                         ; preds = %do.end.i.i11.i, %if.else.i.sh_cmt_set_next.exit13.i_crit_edge
  %next_match_value.i.i12.i = getelementptr i8, ptr %ced, i32 -96
  %32 = ptrtoint ptr %next_match_value.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %23, ptr %next_match_value.i.i12.i, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %add.ptr.i, i32 noundef 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i5.i, i32 noundef %call.i6.i) #9
  br label %sh_cmt_clock_event_start.exit

sh_cmt_clock_event_start.exit:                    ; preds = %sh_cmt_set_next.exit13.i, %sh_cmt_set_next.exit.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_cmt_start(ptr noundef %ch, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %lock = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 10
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %flags2 = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 8
  %and3 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then5:                                         ; preds = %do.body
  %and6 = and i32 %flag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %if.then8

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %call.i55 = tail call i32 @__pm_runtime_resume(ptr noundef %dev11, i32 noundef 4) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.then5.if.end13_crit_edge
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %syscore.i.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 12, i32 7
  %14 = ptrtoint ptr %syscore.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %syscore.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %syscore.i.i, align 4
  %15 = load ptr, ptr %ch, align 128
  %clk.i = getelementptr inbounds %struct.sh_cmt_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 4
  %call.i56 = tail call i32 @clk_enable(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i = icmp eq i32 %call.i56, 0
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ch, align 128
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %index.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 1
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.36, i32 noundef %23) #12
  br label %do.body31

if.end.i:                                         ; preds = %if.end13
  %lock.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %19, i32 0, i32 5
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %iostart.i.i.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 3
  %24 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  %26 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch, align 128
  %info3.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %info3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info3.i.i.i, align 4
  %read_control4.i.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %read_control4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_control4.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 %31(ptr noundef nonnull %25, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %mapbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapbase.i.i.i, align 4
  %call6.i.i.i = tail call i32 %31(ptr noundef %33, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i.i

sh_cmt_read_cmstr.exit.i.i:                       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %call6.i.i.i, %if.else.i.i.i ]
  %timer_bit2.i.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 5
  %34 = ptrtoint ptr %timer_bit2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timer_bit2.i.i, align 4
  %shl3.i.i = shl nuw i32 1, %35
  %neg.i.i = xor i32 %shl3.i.i, -1
  %and.i.i = and i32 %retval.0.i.i.i, %neg.i.i
  %36 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i22.i.i = icmp eq ptr %37, null
  %38 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch, align 128
  %info3.i23.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %info3.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info3.i23.i.i, align 4
  %write_control4.i.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %write_control4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_control4.i.i.i, align 4
  br i1 %tobool.not.i22.i.i, label %if.else.i26.i.i, label %if.then.i24.i.i

if.then.i24.i.i:                                  ; preds = %sh_cmt_read_cmstr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %43(ptr noundef nonnull %37, i32 noundef 0, i32 noundef %and.i.i) #9
  br label %sh_cmt_start_stop_ch.exit.i

if.else.i26.i.i:                                  ; preds = %sh_cmt_read_cmstr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i25.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %mapbase.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mapbase.i25.i.i, align 4
  tail call void %43(ptr noundef %45, i32 noundef 0, i32 noundef %and.i.i) #9
  br label %sh_cmt_start_stop_ch.exit.i

sh_cmt_start_stop_ch.exit.i:                      ; preds = %if.else.i26.i.i, %if.then.i24.i.i
  %46 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch, align 128
  %lock11.i.i = getelementptr inbounds %struct.sh_cmt_device, ptr %47, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i.i, i32 noundef %call.i.i) #9
  %48 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ch, align 128
  %info.i = getelementptr inbounds %struct.sh_cmt_device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info.i, align 4
  %width.i = getelementptr inbounds %struct.sh_cmt_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp.i = icmp eq i32 %53, 16
  br i1 %cmp.i, label %sh_cmt_start_stop_ch.exit.i.if.end12.i_crit_edge, label %if.else.i

sh_cmt_start_stop_ch.exit.i.if.end12.i_crit_edge: ; preds = %sh_cmt_start_stop_ch.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.else.i:                                        ; preds = %sh_cmt_start_stop_ch.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp9.i = icmp ult i32 %55, 3
  %or11.i = select i1 %cmp9.i, i32 420, i32 292
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %sh_cmt_start_stop_ch.exit.i.if.end12.i_crit_edge
  %or11.sink.i = phi i32 [ %or11.i, %if.else.i ], [ 67, %sh_cmt_start_stop_ch.exit.i.if.end12.i_crit_edge ]
  %write_control.i51.i = getelementptr inbounds %struct.sh_cmt_info, ptr %51, i32 0, i32 6
  %56 = ptrtoint ptr %write_control.i51.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_control.i51.i, align 4
  %ioctrl.i52.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 4
  %58 = ptrtoint ptr %ioctrl.i52.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioctrl.i52.i, align 16
  tail call void %57(ptr noundef %59, i32 noundef 0, i32 noundef %or11.sink.i) #9
  %60 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ch, align 128
  %info.i53.i = getelementptr inbounds %struct.sh_cmt_device, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %info.i53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info.i53.i, align 4
  %write_count.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %write_count.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write_count.i.i, align 4
  %66 = ptrtoint ptr %ioctrl.i52.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioctrl.i52.i, align 16
  tail call void %65(ptr noundef %67, i32 noundef 2, i32 noundef -1) #9
  %68 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ch, align 128
  %info.i55.i = getelementptr inbounds %struct.sh_cmt_device, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %info.i55.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info.i55.i, align 4
  %write_count.i56.i = getelementptr inbounds %struct.sh_cmt_info, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %write_count.i56.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_count.i56.i, align 4
  %74 = ptrtoint ptr %ioctrl.i52.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioctrl.i52.i, align 16
  tail call void %73(ptr noundef %75, i32 noundef 1, i32 noundef 0) #9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %if.end12.i
  %k.091.i = phi i32 [ 0, %if.end12.i ], [ %inc.i, %if.end17.i.for.body.i_crit_edge ]
  %76 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch, align 128
  %info.i58.i = getelementptr inbounds %struct.sh_cmt_device, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %info.i58.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info.i58.i, align 4
  %read_count.i.i = getelementptr inbounds %struct.sh_cmt_info, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read_count.i.i, align 4
  %82 = ptrtoint ptr %ioctrl.i52.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioctrl.i52.i, align 16
  %call.i60.i = tail call i32 %81(ptr noundef %83, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool15.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool15.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end17.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end17.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %k.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end17.i.for.end.i_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end17.i.for.end.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end17.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %85 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ch, align 128
  %info.i61.i = getelementptr inbounds %struct.sh_cmt_device, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %info.i61.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %info.i61.i, align 4
  %read_count.i62.i = getelementptr inbounds %struct.sh_cmt_info, ptr %88, i32 0, i32 7
  %89 = ptrtoint ptr %read_count.i62.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read_count.i62.i, align 4
  %91 = ptrtoint ptr %ioctrl.i52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioctrl.i52.i, align 16
  %call.i64.i = tail call i32 %90(ptr noundef %92, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool19.not.i = icmp eq i32 %call.i64.i, 0
  %93 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ch, align 128
  br i1 %tobool19.not.i, label %if.end28.i, label %do.end23.i

do.end23.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  %index27.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 1
  %97 = ptrtoint ptr %index27.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.39, i32 noundef %98) #12
  %99 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ch, align 128
  %clk30.i = getelementptr inbounds %struct.sh_cmt_device, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %clk30.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk30.i, align 4
  tail call void @clk_disable(ptr noundef %102) #9
  br label %do.body31

if.end28.i:                                       ; preds = %for.end.i
  %lock.i65.i = getelementptr inbounds %struct.sh_cmt_device, ptr %94, i32 0, i32 5
  %call.i66.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i65.i) #9
  %103 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i.i68.i = icmp eq ptr %104, null
  %105 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ch, align 128
  %info3.i.i69.i = getelementptr inbounds %struct.sh_cmt_device, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %info3.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %info3.i.i69.i, align 4
  %read_control4.i.i70.i = getelementptr inbounds %struct.sh_cmt_info, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %read_control4.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_control4.i.i70.i, align 4
  br i1 %tobool.not.i.i68.i, label %if.else.i.i75.i, label %if.then.i.i72.i

if.then.i.i72.i:                                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i71.i = tail call i32 %110(ptr noundef nonnull %104, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i85.i

if.else.i.i75.i:                                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i.i73.i = getelementptr inbounds %struct.sh_cmt_device, ptr %106, i32 0, i32 2
  %111 = ptrtoint ptr %mapbase.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mapbase.i.i73.i, align 4
  %call6.i.i74.i = tail call i32 %110(ptr noundef %112, i32 noundef 0) #9
  br label %sh_cmt_read_cmstr.exit.i85.i

sh_cmt_read_cmstr.exit.i85.i:                     ; preds = %if.else.i.i75.i, %if.then.i.i72.i
  %retval.0.i.i76.i = phi i32 [ %call.i.i71.i, %if.then.i.i72.i ], [ %call6.i.i74.i, %if.else.i.i75.i ]
  %113 = ptrtoint ptr %timer_bit2.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %timer_bit2.i.i, align 4
  %shl3.i78.i = shl nuw i32 1, %114
  %or.i79.i = or i32 %shl3.i78.i, %retval.0.i.i76.i
  %115 = ptrtoint ptr %iostart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %iostart.i.i.i, align 4
  %tobool.not.i22.i82.i = icmp eq ptr %116, null
  %117 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ch, align 128
  %info3.i23.i83.i = getelementptr inbounds %struct.sh_cmt_device, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %info3.i23.i83.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %info3.i23.i83.i, align 4
  %write_control4.i.i84.i = getelementptr inbounds %struct.sh_cmt_info, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %write_control4.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_control4.i.i84.i, align 4
  br i1 %tobool.not.i22.i82.i, label %if.else.i26.i88.i, label %if.then.i24.i86.i

if.then.i24.i86.i:                                ; preds = %sh_cmt_read_cmstr.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %122(ptr noundef nonnull %116, i32 noundef 0, i32 noundef %or.i79.i) #9
  br label %sh_cmt_start_stop_ch.exit90.i

if.else.i26.i88.i:                                ; preds = %sh_cmt_read_cmstr.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %mapbase.i25.i87.i = getelementptr inbounds %struct.sh_cmt_device, ptr %118, i32 0, i32 2
  %123 = ptrtoint ptr %mapbase.i25.i87.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mapbase.i25.i87.i, align 4
  tail call void %122(ptr noundef %124, i32 noundef 0, i32 noundef %or.i79.i) #9
  br label %sh_cmt_start_stop_ch.exit90.i

sh_cmt_start_stop_ch.exit90.i:                    ; preds = %if.else.i26.i88.i, %if.then.i24.i86.i
  %125 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ch, align 128
  %lock11.i89.i = getelementptr inbounds %struct.sh_cmt_device, ptr %126, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i89.i, i32 noundef %call.i66.i) #9
  br label %if.end18

if.end18:                                         ; preds = %sh_cmt_start_stop_ch.exit90.i, %do.body.if.end18_crit_edge
  %127 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags2, align 8
  %or = or i32 %128, %flag
  store i32 %or, ptr %flags2, align 8
  %129 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ch, align 128
  %num_channels = getelementptr inbounds %struct.sh_cmt_device, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp21 = icmp eq i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flag)
  %cmp23 = icmp eq i32 %flag, 2
  %or.cond = and i1 %cmp23, %cmp21
  %and27 = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond54 = select i1 %or.cond, i1 %tobool28.not, i1 false
  br i1 %or.cond54, label %__sh_cmt_set_next.exit, label %if.end18.do.body31_crit_edge

if.end18.do.body31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

__sh_cmt_set_next.exit:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %max_match_value = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 9
  %133 = ptrtoint ptr %max_match_value to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_match_value, align 4
  %next_match_value.i = getelementptr inbounds %struct.sh_cmt_channel, ptr %ch, i32 0, i32 8
  %135 = ptrtoint ptr %next_match_value.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %next_match_value.i, align 32
  tail call fastcc void @sh_cmt_clock_event_program_verify(ptr noundef %ch, i32 noundef 0) #9
  br label %do.body31

do.body31:                                        ; preds = %__sh_cmt_set_next.exit, %if.end18.do.body31_crit_edge, %do.end23.i, %do.end.i
  %ret.063 = phi i32 [ 0, %__sh_cmt_set_next.exit ], [ 0, %if.end18.do.body31_crit_edge ], [ %call.i56, %do.end.i ], [ -110, %do.end23.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #9
  ret i32 %ret.063
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sh_cmt_clocksource_read(ptr noundef %cs) #2 align 64 {
entry:
  %has_wrapped = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_wrapped) #9
  %0 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %has_wrapped, align 4, !annotation !122
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 128
  %num_channels = getelementptr inbounds %struct.sh_cmt_device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %lock = getelementptr i8, ptr %cs, i32 -344
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %total_cycles = getelementptr i8, ptr %cs, i32 104
  %5 = ptrtoint ptr %total_cycles to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %total_cycles, align 8
  %call3 = call fastcc i32 @sh_cmt_get_counter(ptr noundef %add.ptr.i, ptr noundef nonnull %has_wrapped)
  %7 = ptrtoint ptr %has_wrapped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %has_wrapped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.do.body8_crit_edge, label %if.then6, !prof !120

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %match_value = getelementptr i8, ptr %cs, i32 -356
  %9 = ptrtoint ptr %match_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %match_value, align 4
  %add = add i32 %call3, 1
  %add7 = add i32 %add, %10
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %if.then.do.body8_crit_edge
  %raw.0 = phi i32 [ %add7, %if.then6 ], [ %call3, %if.then.do.body8_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %conv17 = zext i32 %raw.0 to i64
  %add18 = add i64 %6, %conv17
  br label %cleanup

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call fastcc i32 @sh_cmt_get_counter(ptr noundef %add.ptr.i, ptr noundef nonnull %has_wrapped)
  %conv21 = zext i32 %call20 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.body8
  %retval.0 = phi i64 [ %add18, %do.body8 ], [ %conv21, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_wrapped) #9
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_clocksource_enable(ptr noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  %cs_enabled = getelementptr i8, ptr %cs, i32 112
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 16, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 651, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %total_cycles = getelementptr i8, ptr %cs, i32 104
  %2 = ptrtoint ptr %total_cycles to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %total_cycles, align 8
  %call20 = tail call fastcc i32 @sh_cmt_start(ptr noundef %add.ptr.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %cs_enabled, align 16
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_disable(ptr noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr i8, ptr %cs, i32 112
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 16, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 666, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  tail call fastcc void @sh_cmt_stop(ptr noundef %add.ptr.i, i32 noundef 2)
  %2 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %cs_enabled, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_suspend(ptr noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr i8, ptr %cs, i32 112
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 16, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  tail call fastcc void @sh_cmt_stop(ptr noundef %add.ptr.i, i32 noundef 2)
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_clocksource_resume(ptr noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr i8, ptr %cs, i32 112
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs_enabled, align 16, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %cs, i32 -384
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %dev) #9
  %call1 = tail call fastcc i32 @sh_cmt_start(ptr noundef %add.ptr.i, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_read16(ptr noundef %base, i32 noundef %offs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %offs, 1
  %add.ptr = getelementptr i8, ptr %base, i32 %shl
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !125
  %1 = tail call i16 @llvm.bswap.i16(i16 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_write16(ptr noundef %base, i32 noundef %offs, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %value to i16
  %shl = shl i32 %offs, 1
  %add.ptr = getelementptr i8, ptr %base, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_cmt_read32(ptr noundef %base, i32 noundef %offs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %offs, 2
  %add.ptr = getelementptr i8, ptr %base, i32 %shl
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !113
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_cmt_write32(ptr noundef %base, i32 noundef %offs, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %offs, 2
  %add.ptr = getelementptr i8, ptr %base, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !116
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_sh_cmt__188_1147_sh_cmt_init4, !1, !"__initcall__kmod_sh_cmt__188_1147_sh_cmt_init4", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/sh_cmt.c", i32 1147, i32 1}
!2 = !{ptr @__exitcall_sh_cmt_exit, !3, !"__exitcall_sh_cmt_exit", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/sh_cmt.c", i32 1148, i32 1}
!4 = !{ptr @__UNIQUE_ID_author189, !5, !"__UNIQUE_ID_author189", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/sh_cmt.c", i32 1150, i32 1}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/sh_cmt.c", i32 1151, i32 1}
!8 = !{ptr @__UNIQUE_ID_file191, !9, !"__UNIQUE_ID_file191", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/sh_cmt.c", i32 1152, i32 1}
!10 = !{ptr @__UNIQUE_ID_license192, !9, !"__UNIQUE_ID_license192", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/sh_cmt.c", i32 1127, i32 11}
!13 = !{ptr @sh_cmt_device_driver, !14, !"sh_cmt_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/sh_cmt.c", i32 1123, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/sh_cmt.c", i32 1092, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sh_cmt_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sh_cmt_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sh_cmt_setup.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/sh_cmt.c", i32 995, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/sh_cmt.c", i32 1007, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sh_cmt_setup._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sh_cmt_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/sh_cmt.c", i32 1012, i32 38}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/sh_cmt.c", i32 1014, i32 3}
!36 = !{ptr @sh_cmt_setup._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_cmt_setup._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/sh_cmt.c", i32 929, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sh_cmt_map_memory._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sh_cmt_map_memory._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/sh_cmt.c", i32 935, i32 3}
!45 = !{ptr @sh_cmt_map_memory._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sh_cmt_map_memory._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sh_cmt_setup_channel.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/sh_cmt.c", i32 909, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/sh_cmt.c", i32 914, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sh_cmt_setup_channel._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sh_cmt_setup_channel._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/sh_cmt.c", i32 809, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sh_cmt_register_clockevent._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sh_cmt_register_clockevent._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clocksource/sh_cmt.c", i32 834, i32 2}
!62 = !{ptr @sh_cmt_register_clockevent._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sh_cmt_register_clockevent._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clocksource/sh_cmt.c", i32 488, i32 4}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sh_cmt_clock_event_program_verify._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @sh_cmt_clock_event_program_verify._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clocksource/sh_cmt.c", i32 497, i32 3}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__sh_cmt_set_next._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @__sh_cmt_set_next._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clocksource/sh_cmt.c", i32 748, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sh_cmt_clock_event_set_state._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sh_cmt_clock_event_set_state._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clocksource/sh_cmt.c", i32 329, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sh_cmt_enable._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sh_cmt_enable._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clocksource/sh_cmt.c", i32 370, i32 3}
!89 = !{ptr @sh_cmt_enable._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sh_cmt_enable._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clocksource/sh_cmt.c", i32 709, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sh_cmt_register_clocksource._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @sh_cmt_register_clocksource._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @sh_cmt_of_table, !97, !"sh_cmt_of_table", i1 false, i1 false}
!97 = !{!"../drivers/clocksource/sh_cmt.c", i32 949, i32 34}
!98 = !{ptr @sh_cmt_info, !99, !"sh_cmt_info", i1 false, i1 false}
!99 = !{!"../drivers/clocksource/sh_cmt.c", i32 178, i32 33}
!100 = !{ptr @sh_cmt_id_table, !101, !"sh_cmt_id_table", i1 false, i1 false}
!101 = !{!"../drivers/clocksource/sh_cmt.c", i32 942, i32 40}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i32 0, i32 33}
!113 = !{i64 4037198}
!114 = !{i64 2151570057}
!115 = !{i64 2151571412}
!116 = !{i64 4036780}
!117 = !{i64 1172023, i64 1172050, i64 1172072, i64 1172100}
!118 = !{i64 1172431, i64 1172458, i64 1172491, i64 1172512, i64 1172539, i64 1172565}
!119 = !{i8 0, i8 2}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2153283701, i64 2153284194, i64 2153283738, i64 2153283794, i64 2153283828, i64 2153283852, i64 2153283893, i64 2153283914, i64 2153283942, i64 2153283976}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 1, i32 4001}
!124 = !{!"branch_weights", i32 6002, i32 8002000}
!125 = !{i64 4036360}
!126 = !{i64 2151569445}
!127 = !{i64 2151570862}
!128 = !{i64 4036160}
