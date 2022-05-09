; ModuleID = '/llk/IR_all_yes/drivers/clocksource/sh_mtu2.c_pt.bc'
source_filename = "../drivers/clocksource/sh_mtu2.c"
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
%struct.sh_mtu2_device = type { ptr, ptr, ptr, %struct.raw_spinlock, ptr, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_mtu2_channel = type { ptr, i32, ptr, [116 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }

@sh_mtu2_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_mtu2_probe, ptr @sh_mtu2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_mtu2_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sh_mtu2_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_sh_mtu2__190_528_sh_mtu2_init4 = internal global ptr @sh_mtu2_init, section ".initcall4.init", align 4
@__exitcall_sh_mtu2_exit = internal global ptr @sh_mtu2_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author191 = internal constant [27 x i8] c"sh_mtu2.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [45 x i8] c"sh_mtu2.description=SuperH MTU2 Timer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [41 x i8] c"sh_mtu2.file=drivers/clocksource/sh_mtu2\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [23 x i8] c"sh_mtu2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sh_mtu2\00", [24 x i8] zeroinitializer }, align 32
@sh_mtu2_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,mtu2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sh_mtu2_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sh-mtu2\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sh_mtu2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kept as earlytimer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_mtu2_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clocksource/sh_mtu2.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_mtu2_probe._entry_ptr = internal global ptr @sh_mtu2_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sh_mtu2_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mtu->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@sh_mtu2_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 400, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_mtu2_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sh_mtu2_setup._entry_ptr = internal global ptr @sh_mtu2_setup._entry, section ".printk_index", align 4
@sh_mtu2_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 411, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@sh_mtu2_setup._entry_ptr.13 = internal global ptr @sh_mtu2_setup._entry.11, section ".printk_index", align 4
@sh_mtu2_map_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 376, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get I/O memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_mtu2_map_memory\00", [45 x i8] zeroinitializer }, align 32
@sh_mtu2_map_memory._entry_ptr = internal global ptr @sh_mtu2_map_memory._entry, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tgi%ua\00", [25 x i8] zeroinitializer }, align 32
@sh_mtu2_setup_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 360, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ch%u: failed to request irq %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mtu2_setup_channel\00", [42 x i8] zeroinitializer }, align 32
@sh_mtu2_setup_channel._entry_ptr = internal global ptr @sh_mtu2_setup_channel._entry, section ".printk_index", align 4
@sh_mtu2_channel_offsets = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 768, i32 896, i32 0], [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@sh_mtu2_register_clockevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 323, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ch%u: used for clock events\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sh_mtu2_register_clockevent\00", [36 x i8] zeroinitializer }, align 32
@sh_mtu2_register_clockevent._entry_ptr = internal global ptr @sh_mtu2_register_clockevent._entry, section ".printk_index", align 4
@sh_mtu2_clock_event_set_periodic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ch%u: used for periodic clock events\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sh_mtu2_clock_event_set_periodic\00", [63 x i8] zeroinitializer }, align 32
@sh_mtu2_clock_event_set_periodic._entry_ptr = internal global ptr @sh_mtu2_clock_event_set_periodic._entry, section ".printk_index", align 4
@sh_mtu2_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 217, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ch%u: cannot enable clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_mtu2_enable\00", [17 x i8] zeroinitializer }, align 32
@sh_mtu2_enable._entry_ptr = internal global ptr @sh_mtu2_enable._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"sh_mtu2_device_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 504, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 508, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"sh_mtu2_of_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 498, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"sh_mtu2_id_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 492, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 461, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 395, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 398, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 400, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 411, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 376, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 348, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 359, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"sh_mtu2_channel_offsets\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 335, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 322, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 292, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [33 x i8] c"../drivers/clocksource/sh_mtu2.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 216, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_sh_mtu2_exit, ptr @__initcall__kmod_sh_mtu2__190_528_sh_mtu2_init4, ptr @sh_mtu2_clock_event_set_periodic._entry, ptr @sh_mtu2_clock_event_set_periodic._entry_ptr, ptr @sh_mtu2_enable._entry, ptr @sh_mtu2_enable._entry_ptr, ptr @sh_mtu2_exit, ptr @sh_mtu2_map_memory._entry, ptr @sh_mtu2_map_memory._entry_ptr, ptr @sh_mtu2_probe._entry, ptr @sh_mtu2_probe._entry_ptr, ptr @sh_mtu2_register_clockevent._entry, ptr @sh_mtu2_register_clockevent._entry_ptr, ptr @sh_mtu2_setup._entry, ptr @sh_mtu2_setup._entry.11, ptr @sh_mtu2_setup._entry_ptr, ptr @sh_mtu2_setup._entry_ptr.13, ptr @sh_mtu2_setup_channel._entry, ptr @sh_mtu2_setup_channel._entry_ptr, ptr @sh_mtu2_device_driver, ptr @.str, ptr @sh_mtu2_of_table, ptr @sh_mtu2_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sh_mtu2_setup.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @sh_mtu2_channel_offsets, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_map_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_setup_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_channel_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_register_clockevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_clock_event_set_periodic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mtu2_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_mtu2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mtu2_device_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mtu2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mtu2_device_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mtu2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %out

if.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call7.i.i, align 8
  %lock.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @sh_mtu2_setup.__key, i16 noundef signext 2) #10
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i42 = tail call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #10
  %clk.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i42, ptr %clk.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sh_mtu2_setup.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end10
  %call13.i = tail call i32 @clk_prepare(ptr noundef %call.i42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp slt i32 %call13.i, 0
  br i1 %cmp.i, label %if.end.i.sh_mtu2_setup.exit.thread47_crit_edge, label %if.end15.i

if.end.i.sh_mtu2_setup.exit.thread47_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sh_mtu2_setup.exit.thread47

if.end15.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = tail call ptr @platform_get_resource(ptr noundef %8, i32 noundef 512, i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14) #13
  br label %do.end21.i

if.end.i.i:                                       ; preds = %if.end15.i
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %12
  %add.i.i.i = add i32 %sub.i.i.i, %14
  %call3.i.i = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i.i.i) #10
  %mapbase.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.i.i, ptr %mapbase.i.i, align 4
  %cmp.i80.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp.i80.i, label %if.end.i.i.do.end21.i_crit_edge, label %if.end24.i

if.end.i.i.do.end21.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.end.i.i.do.end21.i_crit_edge, %do.end.i.i
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %dev23.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.12) #13
  br label %err_clk_unprepare.i

if.end24.i:                                       ; preds = %if.end.i.i
  %call25.i = tail call i32 @platform_irq_count(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end24.i.err_unmap.i_crit_edge, label %if.end28.i

if.end24.i.err_unmap.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap.i

if.end28.i:                                       ; preds = %if.end24.i
  %18 = tail call i32 @llvm.umin.i32(i32 %call25.i, i32 3) #10
  %num_channels.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_channels.i, align 4
  %20 = mul nuw nsw i32 %18, 384
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #15
  %channels.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %channels.i, align 8
  %cmp33.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp33.i, label %if.end28.i.err_unmap.i_crit_edge, label %for.cond.preheader.i

if.end28.i.err_unmap.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap.i

for.cond.preheader.i:                             ; preds = %if.end28.i
  %22 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37100.not.i = icmp eq i32 %23, 0
  br i1 %cmp37100.not.i, label %for.cond.preheader.i.sh_mtu2_setup.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sh_mtu2_setup.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sh_mtu2_setup.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0101.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels.i, align 8
  %arrayidx.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name.i.i) #10
  %26 = call ptr @memset(ptr %name.i.i, i32 255, i32 6)
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %arrayidx.i, align 128
  %call.i81.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.16, i32 noundef %i.0101.i) #10
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %call3.i82.i = call i32 @platform_get_irq_byname(ptr noundef %29, ptr noundef nonnull %name.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i82.i)
  %cmp.i83.i = icmp slt i32 %call3.i82.i, 0
  br i1 %cmp.i83.i, label %for.body.i.sh_mtu2_setup_channel.exit.thread.i_crit_edge, label %if.end.i84.i

for.body.i.sh_mtu2_setup_channel.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sh_mtu2_setup_channel.exit.thread.i

if.end.i84.i:                                     ; preds = %for.body.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 128
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i86.i, label %if.end.i84.i.dev_name.exit.i.i_crit_edge

if.end.i84.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i86.i:                                   ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i85.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i85.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i85.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i86.i, %if.end.i84.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i87.i = phi ptr [ %37, %if.end.i.i86.i ], [ %35, %if.end.i84.i.dev_name.exit.i.i_crit_edge ]
  %call.i.i.i = call i32 @request_threaded_irq(i32 noundef %call3.i82.i, ptr noundef nonnull @sh_mtu2_interrupt, ptr noundef null, i32 noundef 88576, ptr noundef %retval.0.i.i87.i, ptr noundef %arrayidx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i88.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i88.i, label %if.end12.i.i, label %sh_mtu2_setup_channel.exit.i

if.end12.i.i:                                     ; preds = %dev_name.exit.i.i
  %38 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mapbase.i.i, align 4
  %arrayidx.i.i = getelementptr [3 x i32], ptr @sh_mtu2_channel_offsets, i32 0, i32 %i.0101.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %41
  %base.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 2
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i, ptr %base.i.i, align 8
  %index13.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 1
  %43 = ptrtoint ptr %index13.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.0101.i, ptr %index13.i.i, align 4
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i, align 8
  %init_name.i35.i.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %init_name.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i35.i.i, align 8
  %tobool.not.i36.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i36.i.i, label %if.end.i37.i.i, label %if.end12.i.i.dev_name.exit39.i.i_crit_edge

if.end12.i.i.dev_name.exit39.i.i_crit_edge:       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit39.i.i

if.end.i37.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev15.i.i = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev15.i.i, align 4
  br label %dev_name.exit39.i.i

dev_name.exit39.i.i:                              ; preds = %if.end.i37.i.i, %if.end12.i.i.dev_name.exit39.i.i_crit_edge
  %retval.0.i38.i.i = phi ptr [ %49, %if.end.i37.i.i ], [ %47, %if.end12.i.i.dev_name.exit39.i.i_crit_edge ]
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 128
  %has_clockevent.i.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %has_clockevent.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %has_clockevent.i.i.i, align 4
  %ced1.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4
  %name2.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 21
  %53 = ptrtoint ptr %name2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i38.i.i, ptr %name2.i.i.i.i, align 4
  %features.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 9
  %54 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %features.i.i.i.i, align 4
  %rating.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 22
  %55 = ptrtoint ptr %rating.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 200, ptr %rating.i.i.i.i, align 8
  %cpumask.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 25
  %56 = ptrtoint ptr %cpumask.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @__cpu_possible_mask, ptr %cpumask.i.i.i.i, align 4
  %set_state_shutdown.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 14
  %57 = ptrtoint ptr %set_state_shutdown.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @sh_mtu2_clock_event_shutdown, ptr %set_state_shutdown.i.i.i.i, align 8
  %set_state_periodic.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 11
  %58 = ptrtoint ptr %set_state_periodic.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @sh_mtu2_clock_event_set_periodic, ptr %set_state_periodic.i.i.i.i, align 4
  %suspend.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 17
  %59 = ptrtoint ptr %suspend.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @sh_mtu2_clock_event_suspend, ptr %suspend.i.i.i.i, align 4
  %resume.i.i.i.i = getelementptr %struct.sh_mtu2_channel, ptr %25, i32 %i.0101.i, i32 4, i32 18
  %60 = ptrtoint ptr %resume.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sh_mtu2_clock_event_resume, ptr %resume.i.i.i.i, align 8
  %61 = load ptr, ptr %arrayidx.i, align 128
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %index13.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index13.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.19, i32 noundef %65) #13
  call void @clockevents_register_device(ptr noundef %ced1.i.i.i.i) #10
  br label %sh_mtu2_setup_channel.exit.thread.i

sh_mtu2_setup_channel.exit.thread.i:              ; preds = %dev_name.exit39.i.i, %for.body.i.sh_mtu2_setup_channel.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name.i.i) #10
  br label %for.inc.i

sh_mtu2_setup_channel.exit.i:                     ; preds = %dev_name.exit.i.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 128
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dev11.i.i = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.17, i32 noundef %i.0101.i, i32 noundef %call3.i82.i) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp40.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp40.i, label %sh_mtu2_setup_channel.exit.i.err_unmap.i_crit_edge, label %sh_mtu2_setup_channel.exit.i.for.inc.i_crit_edge

sh_mtu2_setup_channel.exit.i.for.inc.i_crit_edge: ; preds = %sh_mtu2_setup_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sh_mtu2_setup_channel.exit.i.err_unmap.i_crit_edge: ; preds = %sh_mtu2_setup_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unmap.i

for.inc.i:                                        ; preds = %sh_mtu2_setup_channel.exit.i.for.inc.i_crit_edge, %sh_mtu2_setup_channel.exit.thread.i
  %inc.i = add nuw i32 %i.0101.i, 1
  %70 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_channels.i, align 4
  %cmp37.i = icmp ult i32 %inc.i, %71
  br i1 %cmp37.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sh_mtu2_setup.exit.thread_crit_edge

for.inc.i.sh_mtu2_setup.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sh_mtu2_setup.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sh_mtu2_setup.exit.thread:                        ; preds = %for.inc.i.sh_mtu2_setup.exit.thread_crit_edge, %for.cond.preheader.i.sh_mtu2_setup.exit.thread_crit_edge
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %out

err_unmap.i:                                      ; preds = %sh_mtu2_setup_channel.exit.i.err_unmap.i_crit_edge, %if.end28.i.err_unmap.i_crit_edge, %if.end24.i.err_unmap.i_crit_edge
  %ret.0.i = phi i32 [ %call25.i, %if.end24.i.err_unmap.i_crit_edge ], [ -12, %if.end28.i.err_unmap.i_crit_edge ], [ %call.i.i.i, %sh_mtu2_setup_channel.exit.i.err_unmap.i_crit_edge ]
  %channels43.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %call7.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %channels43.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %channels43.i, align 8
  call void @kfree(ptr noundef %74) #10
  %75 = ptrtoint ptr %mapbase.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mapbase.i.i, align 4
  call void @iounmap(ptr noundef %76) #10
  br label %err_clk_unprepare.i

err_clk_unprepare.i:                              ; preds = %err_unmap.i, %do.end21.i
  %ret.1.i = phi i32 [ -6, %do.end21.i ], [ %ret.0.i, %err_unmap.i ]
  %77 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk.i, align 8
  call void @clk_unprepare(ptr noundef %78) #10
  br label %sh_mtu2_setup.exit.thread47

sh_mtu2_setup.exit.thread47:                      ; preds = %err_clk_unprepare.i, %if.end.i.sh_mtu2_setup.exit.thread47_crit_edge
  %ret.2.i = phi i32 [ %call13.i, %if.end.i.sh_mtu2_setup.exit.thread47_crit_edge ], [ %ret.1.i, %err_clk_unprepare.i ]
  %79 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clk.i, align 8
  call void @clk_put(ptr noundef %80) #10
  br label %if.then13

sh_mtu2_setup.exit:                               ; preds = %if.end10
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call7.i.i, align 8
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.8) #13
  %83 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk.i, align 8
  %85 = ptrtoint ptr %84 to i32
  %tobool12.not = icmp eq ptr %84, null
  br i1 %tobool12.not, label %sh_mtu2_setup.exit.out_crit_edge, label %sh_mtu2_setup.exit.if.then13_crit_edge

sh_mtu2_setup.exit.if.then13_crit_edge:           ; preds = %sh_mtu2_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

sh_mtu2_setup.exit.out_crit_edge:                 ; preds = %sh_mtu2_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then13:                                        ; preds = %sh_mtu2_setup.exit.if.then13_crit_edge, %sh_mtu2_setup.exit.thread47
  %retval.0.i50 = phi i32 [ %ret.2.i, %sh_mtu2_setup.exit.thread47 ], [ %85, %sh_mtu2_setup.exit.if.then13_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %call.i43 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #10
  br label %cleanup

out:                                              ; preds = %sh_mtu2_setup.exit.out_crit_edge, %sh_mtu2_setup.exit.thread, %do.end
  %mtu.0 = phi ptr [ %1, %do.end ], [ %call7.i.i, %sh_mtu2_setup.exit.thread ], [ %call7.i.i, %sh_mtu2_setup.exit.out_crit_edge ]
  %has_clockevent = getelementptr inbounds %struct.sh_mtu2_device, ptr %mtu.0, i32 0, i32 6
  %86 = ptrtoint ptr %has_clockevent to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %has_clockevent, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool21.not = icmp eq i8 %87, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @pm_runtime_irq_safe(ptr noundef %dev) #10
  br label %cleanup

if.else:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call.i44 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %if.then13, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i50, %if.then13 ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mtu2_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mtu2_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base9.i = getelementptr inbounds %struct.sh_mtu2_channel, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base9.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10.i) #10, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %3 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base9.i, align 8
  %add.ptr10.i6 = getelementptr i8, ptr %4, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i6, i8 -2) #10, !srcloc !86
  %ced = getelementptr inbounds %struct.sh_mtu2_channel, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %ced to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ced, align 128
  tail call void %6(ptr noundef %ced) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mtu2_clock_event_shutdown(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %lock.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mapbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 640
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #10, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %index2.i.i = getelementptr i8, ptr %ced, i32 -124
  %9 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2.i.i, align 4
  %shl3.i.i = shl nuw i32 1, %10
  %11 = trunc i32 %shl3.i.i to i8
  %12 = xor i8 %11, -1
  %conv.i.i.i = and i8 %8, %12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i21.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mapbase.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapbase.i21.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %16, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i.i, i8 %conv.i.i.i) #10, !srcloc !86
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %lock11.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %18, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i.i, i32 noundef %call.i.i) #10
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %clk.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %syscore.i.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 7
  %27 = ptrtoint ptr %syscore.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %syscore.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %syscore.i.i, align 4
  %28 = load ptr, ptr %add.ptr.i, align 128
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev4.i, i32 noundef 5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mtu2_clock_event_set_periodic(ptr noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %ced, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %lock.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mapbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 640
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #10, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %index2.i.i = getelementptr i8, ptr %ced, i32 -124
  %9 = ptrtoint ptr %index2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index2.i.i, align 4
  %shl3.i.i = shl nuw i32 1, %10
  %11 = trunc i32 %shl3.i.i to i8
  %12 = xor i8 %11, -1
  %conv.i.i.i = and i8 %8, %12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i21.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %mapbase.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapbase.i21.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %16, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i.i, i8 %conv.i.i.i) #10, !srcloc !86
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 128
  %lock11.i.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %18, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i.i, i32 noundef %call.i.i) #10
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 128
  %clk.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %22) #10
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 128
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %syscore.i.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 12, i32 7
  %27 = ptrtoint ptr %syscore.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i = load i8, ptr %syscore.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -65
  store i8 %bf.clear.i.i, ptr %syscore.i.i, align 4
  %28 = load ptr, ptr %add.ptr.i, align 128
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call.i8.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev4.i, i32 noundef 5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 128
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %index = getelementptr i8, ptr %ced, i32 -124
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %36) #13
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 128
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %call.i.i7 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #10
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 128
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %syscore.i.i8 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3, i32 12, i32 7
  %45 = ptrtoint ptr %syscore.i.i8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i9 = load i8, ptr %syscore.i.i8, align 4
  %bf.set.i.i = or i8 %bf.load.i.i9, 64
  store i8 %bf.set.i.i, ptr %syscore.i.i8, align 4
  %46 = load ptr, ptr %add.ptr.i, align 128
  %clk.i10 = getelementptr inbounds %struct.sh_mtu2_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %clk.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i10, align 4
  %call5.i = tail call i32 @clk_enable(ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 128
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev8.i = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.23, i32 noundef %54) #13
  br label %sh_mtu2_enable.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock.i.i11 = getelementptr inbounds %struct.sh_mtu2_device, ptr %50, i32 0, i32 3
  %call.i2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i11) #10
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i.i.i12 = getelementptr inbounds %struct.sh_mtu2_device, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %mapbase.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mapbase.i.i.i12, align 4
  %add.ptr.i.i.i13 = getelementptr i8, ptr %58, i32 640
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i13) #10, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index, align 4
  %shl3.i.i15 = shl nuw i32 1, %61
  %62 = trunc i32 %shl3.i.i15 to i8
  %63 = xor i8 %62, -1
  %conv.i.i.i16 = and i8 %59, %63
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i21.i.i17 = getelementptr inbounds %struct.sh_mtu2_device, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %mapbase.i21.i.i17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mapbase.i21.i.i17, align 4
  %add.ptr.i22.i.i18 = getelementptr i8, ptr %67, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i.i18, i8 %conv.i.i.i16) #10, !srcloc !86
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 128
  %lock11.i.i19 = getelementptr inbounds %struct.sh_mtu2_device, ptr %69, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i.i19, i32 noundef %call.i2.i) #10
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 128
  %clk10.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %clk10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk10.i, align 4
  %call11.i = tail call i32 @clk_get_rate(ptr noundef %73) #10
  %div1.i = lshr i32 %call11.i, 6
  %add.i = add nuw nsw i32 %div1.i, 50
  %div12.i = udiv i32 %add.i, 100
  %base9.i.i = getelementptr i8, ptr %ced, i32 -120
  %74 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base9.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 35) #10, !srcloc !86
  %76 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base9.i.i, align 8
  %add.ptr10.i.i = getelementptr i8, ptr %77, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i.i, i8 17) #10, !srcloc !86
  %conv6.i.i = trunc i32 %div12.i to i16
  %78 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base9.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv6.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 %80) #10, !srcloc !88
  %81 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base9.i.i, align 8
  %add.ptr7.i5.i = getelementptr i8, ptr %82, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i5.i, i16 0) #10, !srcloc !88
  %83 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base9.i.i, align 8
  %add.ptr10.i7.i = getelementptr i8, ptr %84, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i7.i, i8 0) #10, !srcloc !86
  %85 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base9.i.i, align 8
  %add.ptr10.i9.i = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10.i9.i, i8 1) #10, !srcloc !86
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 128
  %lock.i10.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %88, i32 0, i32 3
  %call.i11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i10.i) #10
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i.i12.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %mapbase.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mapbase.i.i12.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %92, i32 640
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i13.i) #10, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %94 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index, align 4
  %shl3.i16.i = shl nuw i32 1, %95
  %96 = trunc i32 %shl3.i16.i to i8
  %conv.i.i20.i = or i8 %93, %96
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 128
  %mapbase.i21.i21.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %mapbase.i21.i21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mapbase.i21.i21.i, align 4
  %add.ptr.i22.i22.i = getelementptr i8, ptr %100, i32 640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i22.i, i8 %conv.i.i20.i) #10, !srcloc !86
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 128
  %lock11.i23.i = getelementptr inbounds %struct.sh_mtu2_device, ptr %102, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11.i23.i, i32 noundef %call.i11.i) #10
  br label %sh_mtu2_enable.exit

sh_mtu2_enable.exit:                              ; preds = %if.end.i, %do.end.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mtu2_clock_event_suspend(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @dev_pm_genpd_suspend(ptr noundef %dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mtu2_clock_event_resume(ptr nocapture noundef readonly %ced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ced, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @dev_pm_genpd_resume(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_genpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_sh_mtu2__190_528_sh_mtu2_init4, !1, !"__initcall__kmod_sh_mtu2__190_528_sh_mtu2_init4", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/sh_mtu2.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_sh_mtu2_exit, !3, !"__exitcall_sh_mtu2_exit", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/sh_mtu2.c", i32 529, i32 1}
!4 = !{ptr @__UNIQUE_ID_author191, !5, !"__UNIQUE_ID_author191", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/sh_mtu2.c", i32 531, i32 1}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/sh_mtu2.c", i32 532, i32 1}
!8 = !{ptr @__UNIQUE_ID_file193, !9, !"__UNIQUE_ID_file193", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/sh_mtu2.c", i32 533, i32 1}
!10 = !{ptr @__UNIQUE_ID_license194, !9, !"__UNIQUE_ID_license194", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/sh_mtu2.c", i32 508, i32 11}
!13 = !{ptr @sh_mtu2_device_driver, !14, !"sh_mtu2_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/sh_mtu2.c", i32 504, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/sh_mtu2.c", i32 461, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sh_mtu2_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sh_mtu2_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @sh_mtu2_setup.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/sh_mtu2.c", i32 395, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/sh_mtu2.c", i32 398, i32 38}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/sh_mtu2.c", i32 400, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sh_mtu2_setup._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @sh_mtu2_setup._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/sh_mtu2.c", i32 411, i32 3}
!36 = !{ptr @sh_mtu2_setup._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_mtu2_setup._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/sh_mtu2.c", i32 376, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sh_mtu2_map_memory._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sh_mtu2_map_memory._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/sh_mtu2.c", i32 348, i32 16}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/sh_mtu2.c", i32 359, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sh_mtu2_setup_channel._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sh_mtu2_setup_channel._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"mtu2_reg_offs", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/sh_mtu2.c", i32 146, i32 22}
!52 = !{ptr @sh_mtu2_channel_offsets, !53, !"sh_mtu2_channel_offsets", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/sh_mtu2.c", i32 335, i32 27}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/sh_mtu2.c", i32 322, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sh_mtu2_register_clockevent._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sh_mtu2_register_clockevent._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/sh_mtu2.c", i32 292, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sh_mtu2_clock_event_set_periodic._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sh_mtu2_clock_event_set_periodic._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clocksource/sh_mtu2.c", i32 216, i32 3}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sh_mtu2_enable._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sh_mtu2_enable._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @sh_mtu2_of_table, !70, !"sh_mtu2_of_table", i1 false, i1 false}
!70 = !{!"../drivers/clocksource/sh_mtu2.c", i32 498, i32 34}
!71 = !{ptr @sh_mtu2_id_table, !72, !"sh_mtu2_id_table", i1 false, i1 false}
!72 = !{!"../drivers/clocksource/sh_mtu2.c", i32 492, i32 40}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
!83 = !{i64 4020459}
!84 = !{i64 2151552314}
!85 = !{i64 2151553919}
!86 = !{i64 4020064}
!87 = !{i64 2151554343}
!88 = !{i64 4019641}
