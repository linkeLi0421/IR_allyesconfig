; ModuleID = '/llk/IR_all_yes/drivers/power/reset/ltc2952-poweroff.c_pt.bc'
source_filename = "../drivers/power/reset/ltc2952-poweroff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ltc2952_poweroff = type { %struct.hrtimer, %struct.hrtimer, i64, i64, ptr, ptr, ptr, ptr, i8, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_ltc2952_poweroff__187_316_ltc2952_poweroff_driver_init6 = internal global ptr @ltc2952_poweroff_driver_init, section ".initcall6.init", align 4
@ltc2952_poweroff_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ltc2952_poweroff_probe, ptr @ltc2952_poweroff_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ltc2952_poweroff_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ltc2952_poweroff_driver_exit = internal global ptr @ltc2952_poweroff_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"ltc2952_poweroff.author=Ren\C3\A9 Moll <rene.moll@xsens.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [60 x i8] c"ltc2952_poweroff.description=LTC PowerPath power-off driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [59 x i8] c"ltc2952_poweroff.file=drivers/power/reset/ltc2952-poweroff\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [32 x i8] c"ltc2952_poweroff.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ltc2952-poweroff\00", [47 x i8] zeroinitializer }, align 32
@of_ltc2952_poweroff_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2952\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@ltc2952_poweroff_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_power_off already registered\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ltc2952_poweroff_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/reset/ltc2952-poweroff.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_probe._entry_ptr = internal global ptr @ltc2952_poweroff_probe._entry, section ".printk_index", align 4
@ltc2952_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@ltc2952_poweroff_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"probe successful\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_probe._entry_ptr.9 = internal global ptr @ltc2952_poweroff_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trigger-delay-ms\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to claim gpio \22watchdog\22\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltc2952_poweroff_init\00", [42 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry_ptr = internal global ptr @ltc2952_poweroff_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kill\00", [27 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to claim gpio \22kill\22\0A\00", [35 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry_ptr.17 = internal global ptr @ltc2952_poweroff_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to claim gpio \22trigger\22\0A\00", [32 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry_ptr.21 = internal global ptr @ltc2952_poweroff_init._entry.19, section ".printk_index", align 4
@ltc2952_poweroff_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.13, ptr @.str.3, i32 235, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to configure the trigger interrupt\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry_ptr.25 = internal global ptr @ltc2952_poweroff_init._entry.22, section ".printk_index", align 4
@ltc2952_poweroff_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.3, i32 240, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"power down trigger input will not be used\0A\00", [53 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_init._entry_ptr.28 = internal global ptr @ltc2952_poweroff_init._entry.26, section ".printk_index", align 4
@ltc2952_poweroff_timer_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 122, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"executing shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ltc2952_poweroff_timer_trigger\00", [33 x i8] zeroinitializer }, align 32
@ltc2952_poweroff_timer_trigger._entry_ptr = internal global ptr @ltc2952_poweroff_timer_trigger._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"ltc2952_poweroff_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 307, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 311, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"of_ltc2952_poweroff_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 301, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 262, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"ltc2952_data\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 84, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 284, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 180, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 186, i32 51 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 190, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 194, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 197, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 201, i32 59 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 209, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 234, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 239, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [42 x i8] c"../drivers/power/reset/ltc2952-poweroff.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 122, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_ltc2952_poweroff_driver_exit, ptr @__initcall__kmod_ltc2952_poweroff__187_316_ltc2952_poweroff_driver_init6, ptr @ltc2952_poweroff_driver_exit, ptr @ltc2952_poweroff_init._entry, ptr @ltc2952_poweroff_init._entry.15, ptr @ltc2952_poweroff_init._entry.19, ptr @ltc2952_poweroff_init._entry.22, ptr @ltc2952_poweroff_init._entry.26, ptr @ltc2952_poweroff_init._entry_ptr, ptr @ltc2952_poweroff_init._entry_ptr.17, ptr @ltc2952_poweroff_init._entry_ptr.21, ptr @ltc2952_poweroff_init._entry_ptr.25, ptr @ltc2952_poweroff_init._entry_ptr.28, ptr @ltc2952_poweroff_probe._entry, ptr @ltc2952_poweroff_probe._entry.6, ptr @ltc2952_poweroff_probe._entry_ptr, ptr @ltc2952_poweroff_probe._entry_ptr.9, ptr @ltc2952_poweroff_timer_trigger._entry, ptr @ltc2952_poweroff_timer_trigger._entry_ptr, ptr @ltc2952_poweroff_driver, ptr @.str, ptr @of_ltc2952_poweroff_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ltc2952_data, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ltc2952_poweroff_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2952_poweroff_timer_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ltc2952_poweroff_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2952_poweroff_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ltc2952_poweroff_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %trigger_delay_ms.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %0 = load ptr, ptr @pm_power_off, align 4
  %tobool.not = icmp eq ptr %0, null
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev6, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trigger_delay_ms.i) #6
  %3 = ptrtoint ptr %trigger_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %trigger_delay_ms.i, align 4, !annotation !75
  %wde_interval.i.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %wde_interval.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 300000000, ptr %wde_interval.i.i, align 8
  %trigger_delay.i.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %trigger_delay.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2500000000, ptr %trigger_delay.i.i, align 8
  tail call void @hrtimer_init(ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 1) #6
  %function.i.i = getelementptr inbounds %struct.hrtimer, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ltc2952_poweroff_timer_trigger, ptr %function.i.i, align 8
  %timer_wde.i.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %timer_wde.i.i, i32 noundef 1, i32 noundef 1) #6
  %function3.i.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %function3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ltc2952_poweroff_timer_wde, ptr %function3.i.i, align 8
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %trigger_delay_ms.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %trigger_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trigger_delay_ms.i, align 4
  %.frozen = freeze i32 %9
  %div.i = udiv i32 %.frozen, 1000
  %conv.i = zext i32 %div.i to i64
  %10 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %.frozen, %10
  %mul.i = mul nuw nsw i32 %rem.i.decomposed, 1000000
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000000000
  %conv.i.i = zext i32 %mul.i to i64
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv.i.i
  %11 = ptrtoint ptr %trigger_delay.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i.i, ptr %trigger_delay.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %call4.i = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 3) #6
  %gpio_watchdog.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %gpio_watchdog.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4.i, ptr %gpio_watchdog.i, align 8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ltc2952_poweroff_init.exit_crit_edge, label %if.end11.i

if.end.i.ltc2952_poweroff_init.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2952_poweroff_init.exit

if.end11.i:                                       ; preds = %if.end.i
  %call13.i = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 3) #6
  %gpio_kill.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %gpio_kill.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13.i, ptr %gpio_kill.i, align 4
  %cmp.i87.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %if.end11.i.ltc2952_poweroff_init.exit_crit_edge, label %if.end23.i

if.end11.i.ltc2952_poweroff_init.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2952_poweroff_init.exit

if.end23.i:                                       ; preds = %if.end11.i
  %call25.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 1) #6
  %gpio_trigger.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25.i, ptr %gpio_trigger.i, align 4
  %cmp.i88.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i, label %do.end31.i, label %if.end23.i.if.end34.i_crit_edge

if.end23.i.if.end34.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %15 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %gpio_trigger.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %if.end23.i.if.end34.i_crit_edge
  %16 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_trigger.i, align 4
  %call37.i = call i32 @gpiod_to_irq(ptr noundef %17) #6
  %call.i89.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call37.i, ptr noundef nonnull @ltc2952_poweroff_handler, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %tobool39.not.i = icmp eq i32 %call.i89.i, 0
  br i1 %tobool39.not.i, label %if.end34.i.ltc2952_poweroff_init.exit.thread_crit_edge, label %if.then40.i

if.end34.i.ltc2952_poweroff_init.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2952_poweroff_init.exit.thread

if.then40.i:                                      ; preds = %if.end34.i
  %18 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_trigger.i, align 4
  %tobool42.not.i = icmp eq ptr %19, null
  br i1 %tobool42.not.i, label %if.then40.i.do.end54.i_crit_edge, label %do.end46.i

if.then40.i.do.end54.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

do.end46.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  %20 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_trigger.i, align 4
  call void @devm_gpiod_put(ptr noundef %dev1, ptr noundef %21) #6
  %22 = ptrtoint ptr %gpio_trigger.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %gpio_trigger.i, align 4
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end46.i, %if.then40.i.do.end54.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27) #9
  %23 = ptrtoint ptr %wde_interval.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wde_interval.i.i, align 8
  call void @hrtimer_start_range_ns(ptr noundef %timer_wde.i.i, i64 noundef %24, i64 noundef 0, i32 noundef 1) #6
  br label %ltc2952_poweroff_init.exit.thread

ltc2952_poweroff_init.exit.thread:                ; preds = %do.end54.i, %if.end34.i.ltc2952_poweroff_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trigger_delay_ms.i) #6
  store ptr %call.i, ptr @ltc2952_data, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @ltc2952_poweroff_kill, ptr @pm_power_off, align 4
  %panic_notifier = getelementptr inbounds %struct.ltc2952_poweroff, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %panic_notifier to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ltc2952_poweroff_notify_panic, ptr %panic_notifier, align 4
  %call12 = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_notifier) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

ltc2952_poweroff_init.exit:                       ; preds = %if.end11.i.ltc2952_poweroff_init.exit_crit_edge, %if.end.i.ltc2952_poweroff_init.exit_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.end.i.ltc2952_poweroff_init.exit_crit_edge ], [ @.str.16, %if.end11.i.ltc2952_poweroff_init.exit_crit_edge ]
  %retval.0.i.in = phi ptr [ %call4.i, %if.end.i.ltc2952_poweroff_init.exit_crit_edge ], [ %call13.i, %if.end11.i.ltc2952_poweroff_init.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.12.sink) #9
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trigger_delay_ms.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ltc2952_poweroff_init.exit, %ltc2952_poweroff_init.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %ltc2952_poweroff_init.exit.thread ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %ltc2952_poweroff_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %1) #6
  %timer_wde = getelementptr inbounds %struct.ltc2952_poweroff, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %timer_wde) #6
  %panic_notifier = getelementptr inbounds %struct.ltc2952_poweroff, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_notifier) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc2952_poweroff_kill() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ltc2952_data, align 4
  %gpio_kill = getelementptr inbounds %struct.ltc2952_poweroff, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %gpio_kill to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpio_kill, align 4
  tail call void @gpiod_set_value(ptr noundef %2, i32 noundef 1) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ltc2952_poweroff_notify_panic(ptr nocapture noundef writeonly %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_panic = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %kernel_panic to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %kernel_panic, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_panic = getelementptr inbounds %struct.ltc2952_poweroff, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %kernel_panic to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %kernel_panic, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %timer_wde = getelementptr inbounds %struct.ltc2952_poweroff, ptr %dev_id, i32 0, i32 1
  %call = tail call zeroext i1 @hrtimer_active(ptr noundef %timer_wde) #6
  br i1 %call, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %gpio_trigger = getelementptr inbounds %struct.ltc2952_poweroff, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_trigger to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_trigger, align 4
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %trigger_delay = getelementptr inbounds %struct.ltc2952_poweroff, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %trigger_delay to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %trigger_delay, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %dev_id, i64 noundef %5, i64 noundef 0, i32 noundef 1) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @hrtimer_cancel(ptr noundef %dev_id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_timer_trigger(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_wde.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %timer, i32 0, i32 1
  %wde_interval.i = getelementptr inbounds %struct.ltc2952_poweroff, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %wde_interval.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wde_interval.i, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %timer_wde.i, i64 noundef %1, i64 noundef 0, i32 noundef 1) #6
  %dev = getelementptr inbounds %struct.ltc2952_poweroff, ptr %timer, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.29) #9
  tail call void @orderly_poweroff(i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2952_poweroff_timer_wde(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_panic = getelementptr i8, ptr %timer, i32 80
  %0 = ptrtoint ptr %kernel_panic to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %kernel_panic, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_watchdog = getelementptr i8, ptr %timer, i32 72
  %2 = ptrtoint ptr %gpio_watchdog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_watchdog, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #6
  %4 = ptrtoint ptr %gpio_watchdog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_watchdog, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %lnot.ext) #6
  %wde_interval = getelementptr i8, ptr %timer, i32 56
  %6 = ptrtoint ptr %wde_interval to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %wde_interval, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %11() #6
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_ltc2952_poweroff__187_316_ltc2952_poweroff_driver_init6, !1, !"__initcall__kmod_ltc2952_poweroff__187_316_ltc2952_poweroff_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_ltc2952_poweroff_driver_exit, !1, !"__exitcall_ltc2952_poweroff_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 311, i32 11}
!12 = !{ptr @ltc2952_poweroff_driver, !13, !"ltc2952_poweroff_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 307, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 262, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ltc2952_poweroff_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ltc2952_poweroff_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 284, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ltc2952_poweroff_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ltc2952_poweroff_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 180, i32 44}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 186, i32 51}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 190, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ltc2952_poweroff_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ltc2952_poweroff_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 194, i32 47}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 197, i32 3}
!40 = !{ptr @ltc2952_poweroff_init._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ltc2952_poweroff_init._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 201, i32 59}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 209, i32 3}
!46 = !{ptr @ltc2952_poweroff_init._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ltc2952_poweroff_init._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 234, i32 4}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ltc2952_poweroff_init._entry.22, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ltc2952_poweroff_init._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 239, i32 3}
!55 = !{ptr @ltc2952_poweroff_init._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ltc2952_poweroff_init._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 122, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ltc2952_poweroff_timer_trigger._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ltc2952_poweroff_timer_trigger._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ltc2952_data, !63, !"ltc2952_data", i1 false, i1 false}
!63 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 84, i32 33}
!64 = !{ptr @of_ltc2952_poweroff_match, !65, !"of_ltc2952_poweroff_match", i1 false, i1 false}
!65 = !{!"../drivers/power/reset/ltc2952-poweroff.c", i32 301, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
