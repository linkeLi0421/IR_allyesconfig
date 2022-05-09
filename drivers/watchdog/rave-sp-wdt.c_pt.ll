; ModuleID = '/llk/IR_all_yes/drivers/watchdog/rave-sp-wdt.c_pt.bc'
source_filename = "../drivers/watchdog/rave-sp-wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rave_sp_wdt_variant = type { i32, i32, ptr, ptr }
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
%struct.rave_sp_wdt = type { %struct.watchdog_device, ptr, ptr, %struct.notifier_block }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_rave_sp_wdt__185_328_rave_sp_wdt_driver_init6 = internal global ptr @rave_sp_wdt_driver_init, section ".initcall6.init", align 4
@rave_sp_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rave_sp_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rave_sp_wdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rave_sp_wdt_driver_exit = internal global ptr @rave_sp_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [46 x i8] c"rave_sp_wdt.file=drivers/watchdog/rave-sp-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [24 x i8] c"rave_sp_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [74 x i8] c"rave_sp_wdt.author=Andrey Vostrikov <andrey.vostrikov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [71 x i8] c"rave_sp_wdt.author=Nikita Yushchenko <nikita.yoush@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [61 x i8] c"rave_sp_wdt.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [48 x i8] c"rave_sp_wdt.description=RAVE SP Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [44 x i8] c"rave_sp_wdt.alias=platform:rave-sp-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rave_sp_wdt\00", [20 x i8] zeroinitializer }, align 32
@rave_sp_wdt_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-watchdog-legacy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_wdt_legacy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_wdt_rdu }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rave_sp_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"RAVE SP Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@rave_sp_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @rave_sp_wdt_start, ptr @rave_sp_wdt_stop, ptr @rave_sp_wdt_ping, ptr null, ptr @rave_sp_wdt_set_timeout, ptr null, ptr null, ptr @rave_sp_wdt_restart, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt-timeout\00", [20 x i8] zeroinitializer }, align 32
@rave_sp_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register reboot notifier\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rave_sp_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/rave-sp-wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rave_sp_wdt_probe._entry_ptr = internal global ptr @rave_sp_wdt_probe._entry, section ".printk_index", align 4
@rave_sp_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Watchdog didn't start\0A\00", [41 x i8] zeroinitializer }, align 32
@rave_sp_wdt_probe._entry_ptr.9 = internal global ptr @rave_sp_wdt_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rave_sp_wdt_reboot_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to issue restart command (%d)\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rave_sp_wdt_reboot_notifier\00", [36 x i8] zeroinitializer }, align 32
@rave_sp_wdt_reboot_notifier._entry_ptr = internal global ptr @rave_sp_wdt_reboot_notifier._entry, section ".printk_index", align 4
@rave_sp_wdt_legacy = internal constant { %struct.rave_sp_wdt_variant, [16 x i8] } { %struct.rave_sp_wdt_variant { i32 255, i32 1, ptr @rave_sp_wdt_legacy_configure, ptr @rave_sp_wdt_legacy_restart }, [16 x i8] zeroinitializer }, align 32
@rave_sp_wdt_rdu = internal constant { %struct.rave_sp_wdt_variant, [16 x i8] } { %struct.rave_sp_wdt_variant { i32 180, i32 60, ptr @rave_sp_wdt_rdu_configure, ptr @rave_sp_wdt_rdu_restart }, [16 x i8] zeroinitializer }, align 32
@__const.rave_sp_wdt_legacy_restart.cmd = private unnamed_addr constant [3 x i8] c"\A7\00\01", align 1
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"rave_sp_wdt_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 320, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 323, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"rave_sp_wdt_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 241, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"rave_sp_wdt_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 213, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"rave_sp_wdt_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 218, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 278, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 296, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 307, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 157, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"rave_sp_wdt_legacy\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 227, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"rave_sp_wdt_rdu\00", align 1
@___asan_gen_.67 = private constant [34 x i8] c"../drivers/watchdog/rave-sp-wdt.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 234, i32 41 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_rave_sp_wdt_driver_exit, ptr @__initcall__kmod_rave_sp_wdt__185_328_rave_sp_wdt_driver_init6, ptr @rave_sp_wdt_driver_exit, ptr @rave_sp_wdt_probe._entry, ptr @rave_sp_wdt_probe._entry.7, ptr @rave_sp_wdt_probe._entry_ptr, ptr @rave_sp_wdt_probe._entry_ptr.9, ptr @rave_sp_wdt_reboot_notifier._entry, ptr @rave_sp_wdt_reboot_notifier._entry_ptr, ptr @rave_sp_wdt_driver, ptr @.str, ptr @rave_sp_wdt_of_match, ptr @rave_sp_wdt_info, ptr @rave_sp_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @rave_sp_wdt_legacy, ptr @rave_sp_wdt_rdu], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_reboot_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_legacy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_wdt_rdu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rave_sp_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rave_sp_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rave_sp_wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %timeout = alloca i16, align 2
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %timeout)
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %timeout, align 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %variant = getelementptr inbounds %struct.rave_sp_wdt, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %variant, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %sp = getelementptr inbounds %struct.rave_sp_wdt, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sp, align 4
  %parent5 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %parent5, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rave_sp_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rave_sp_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %call2, i32 0, i32 1
  %10 = ptrtoint ptr %min_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_timeout, align 4
  %min_timeout7 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %min_timeout7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_timeout7, align 4
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call2, align 4
  %max_timeout9 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %max_timeout9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_timeout9, align 4
  %status = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %status, align 4
  %timeout10 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %timeout10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 60, ptr %timeout10, align 4
  %call11 = tail call ptr @nvmem_cell_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %len, align 4, !annotation !58
  %call14 = call ptr @nvmem_cell_read(ptr noundef %call11, ptr noundef nonnull %len) #6
  %cmp.i84 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 2)
  %22 = call ptr @memcpy(ptr %timeout, ptr %call14, i32 %21)
  call void @kfree(ptr noundef %call14) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  call void @nvmem_cell_put(ptr noundef %call11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end.if.end18_crit_edge
  %23 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %23)
  %timeout.0.timeout.0.timeout.0. = load i16, ptr %timeout, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %timeout.0.timeout.0.timeout.0.)
  %conv = zext i16 %24 to i32
  %call19 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef %conv, ptr noundef %dev1) #6
  call void @watchdog_set_restart_priority(ptr noundef nonnull %call.i, i32 noundef 255) #6
  call void @_set_bit(i32 noundef 4, ptr noundef %status) #6
  %reboot_notifier = getelementptr inbounds %struct.rave_sp_wdt, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %reboot_notifier to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @rave_sp_wdt_reboot_notifier, ptr %reboot_notifier, align 4
  %call21 = call i32 @devm_register_reboot_notifier(ptr noundef %dev1, ptr noundef %reboot_notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %26 = ptrtoint ptr %max_timeout9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_timeout9, align 4
  %mul = mul i32 %27, 1000
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 12
  %28 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %max_hw_heartbeat_ms, align 4
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 4
  %configure.i.i = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %configure.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %configure.i.i, align 4
  %call1.i.i = call i32 %32(ptr noundef nonnull %call.i, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end32, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  %call33 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant, align 4
  %configure.i.i87 = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %configure.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %configure.i.i87, align 4
  %call1.i.i88 = call i32 %36(ptr noundef nonnull %call.i, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end ], [ %call1.i.i, %do.end31 ], [ %call33, %if.then35 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timeout)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_reboot_notifier(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %action.off = add i32 %action, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action.off)
  %switch = icmp ult i32 %action.off, 2
  br i1 %switch, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -116
  %variant = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %restart = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restart, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr i8, ptr %nb, i32 -112
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %call) #9
  br label %return

return:                                           ; preds = %do.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_reboot_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_start(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 2
  %0 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant.i, align 4
  %configure.i = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure.i, align 4
  %call1.i = tail call i32 %3(ptr noundef %wdd, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 2
  %0 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant.i, align 4
  %configure.i = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure.i, align 4
  %call1.i = tail call i32 %3(ptr noundef %wdd, i1 noundef zeroext false) #6
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %cmd = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -24064, ptr %cmd, align 2
  %sp.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 1
  %1 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp.i, align 4
  %call1.i = call i32 @rave_sp_exec(ptr noundef %2, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_set_timeout(ptr noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %timeout1, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %1 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  %variant.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 2
  %3 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant.i, align 4
  %configure.i = getelementptr inbounds %struct.rave_sp_wdt_variant, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %configure.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %configure.i, align 4
  %call1.i = tail call i32 %6(ptr noundef %wdd, i1 noundef zeroext %tobool.i) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_restart(ptr nocapture noundef readnone %wdd, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.01 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 -5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rave_sp_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_legacy_configure(ptr nocapture noundef readonly %wdd, i1 noundef zeroext %on) #2 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -95, ptr %cmd, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %2, align 1
  br i1 %on, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %phi.cast = trunc i32 %8 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %9 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond, ptr %9, align 1
  %sp.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 1
  %11 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sp.i, align 4
  %call1.i = call i32 @rave_sp_exec(ptr noundef %12, ptr noundef nonnull %cmd, i32 noundef 5, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_legacy_restart(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %cmd = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cmd) #6
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.rave_sp_wdt_legacy_restart.cmd, i32 3)
  %sp.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 1
  %1 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp.i, align 4
  %call1.i = call i32 @rave_sp_exec(ptr noundef %2, ptr noundef nonnull %cmd, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cmd) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_rdu_configure(ptr nocapture noundef readonly %wdd, i1 noundef zeroext %on) #2 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -95, ptr %cmd, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %0, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %1, align 1
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %conv3 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %2, align 1
  %shr = lshr i32 %8, 8
  %conv6 = trunc i32 %shr to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %3, align 1
  %sp.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 1
  %11 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sp.i, align 4
  %call1.i = call i32 @rave_sp_exec(ptr noundef %12, ptr noundef nonnull %cmd, i32 noundef 5, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_wdt_rdu_restart(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  %cmd = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1493171968, ptr %cmd, align 4
  %sp.i = getelementptr inbounds %struct.rave_sp_wdt, ptr %wdd, i32 0, i32 1
  %1 = ptrtoint ptr %sp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sp.i, align 4
  %call1.i = call i32 @rave_sp_exec(ptr noundef %2, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #6
  ret i32 %call1.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_rave_sp_wdt__185_328_rave_sp_wdt_driver_init6, !1, !"__initcall__kmod_rave_sp_wdt__185_328_rave_sp_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 328, i32 1}
!2 = !{ptr @__exitcall_rave_sp_wdt_driver_exit, !1, !"__exitcall_rave_sp_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 331, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 332, i32 1}
!8 = !{ptr @__UNIQUE_ID_author189, !9, !"__UNIQUE_ID_author189", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 333, i32 1}
!10 = !{ptr @__UNIQUE_ID_author190, !11, !"__UNIQUE_ID_author190", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 334, i32 1}
!12 = !{ptr @__UNIQUE_ID_description191, !13, !"__UNIQUE_ID_description191", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 335, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias192, !15, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 336, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 323, i32 11}
!18 = !{ptr @rave_sp_wdt_driver, !19, !"rave_sp_wdt_driver", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 320, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 278, i32 29}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 296, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rave_sp_wdt_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rave_sp_wdt_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 307, i32 3}
!32 = !{ptr @rave_sp_wdt_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rave_sp_wdt_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rave_sp_wdt_info, !35, !"rave_sp_wdt_info", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 213, i32 35}
!36 = !{ptr @rave_sp_wdt_ops, !37, !"rave_sp_wdt_ops", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 218, i32 34}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 157, i32 4}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rave_sp_wdt_reboot_notifier._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rave_sp_wdt_reboot_notifier._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @rave_sp_wdt_of_match, !44, !"rave_sp_wdt_of_match", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 241, i32 34}
!45 = !{ptr @rave_sp_wdt_legacy, !46, !"rave_sp_wdt_legacy", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 227, i32 41}
!47 = !{ptr @rave_sp_wdt_rdu, !48, !"rave_sp_wdt_rdu", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/rave-sp-wdt.c", i32 234, i32 41}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
