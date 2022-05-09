; ModuleID = '/llk/IR_all_yes/drivers/watchdog/rdc321x_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/rdc321x_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.72 = type { %struct.completion, i32, %struct.timer_list, i32, i32, i32, %struct.spinlock, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_rdc321x_wdt__236_280_rdc321x_wdt_driver_init6 = internal global ptr @rdc321x_wdt_driver_init, section ".initcall6.init", align 4
@rdc321x_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rdc321x_wdt_probe, ptr @rdc321x_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rdc321x_wdt_driver_exit = internal global ptr @rdc321x_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [58 x i8] c"rdc321x_wdt.author=Florian Fainelli <florian@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [48 x i8] c"rdc321x_wdt.description=RDC321x watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [46 x i8] c"rdc321x_wdt.file=drivers/watchdog/rdc321x_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"rdc321x_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rdc321x-wdt\00", [20 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rdc321x_wdt_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/watchdog/rdc321x_wdt.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry_ptr = internal global ptr @rdc321x_wdt_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wdt-reg\00", [24 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get wdt-reg resource\0A\00", [32 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry_ptr.9 = internal global ptr @rdc321x_wdt_probe._entry.7, section ".printk_index", align 4
@rdc321x_wdt_device = internal global { %struct.anon.72, [52 x i8] } zeroinitializer, align 32
@ticks = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@rdc321x_wdt_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.20, ptr @rdc321x_wdt_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"misc_register failed\0A\00", [42 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry_ptr.12 = internal global ptr @rdc321x_wdt_probe._entry.10, section ".printk_index", align 4
@rdc321x_wdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rdc321x_wdt_device.lock\00", [39 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&rdc321x_wdt_device.timer)\00", [36 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"watchdog init success\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rdc321x_wdt_probe._entry_ptr.19 = internal global ptr @rdc321x_wdt_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@rdc321x_wdt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @rdc321x_wdt_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdc321x_wdt_ioctl, ptr null, ptr null, i32 0, ptr @rdc321x_wdt_open, ptr null, ptr @rdc321x_wdt_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rdc321x_wdt_ioctl.ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32, i32 0, [32 x i8] c"RDC321x WDT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2147768065, i64 2147768068, i64 2147768069, i64 2150127360]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"rdc321x_wdt_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 272, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 276, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 222, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 226, i32 56 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 228, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"rdc321x_wdt_device\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 52, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"ticks\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 38, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"rdc321x_wdt_misc\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 208, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 239, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 243, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 253, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 255, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 210, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"rdc321x_wdt_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 198, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@___asan_gen_.102 = private constant [34 x i8] c"../drivers/watchdog/rdc321x_wdt.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 145, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 174, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_rdc321x_wdt_driver_exit, ptr @__initcall__kmod_rdc321x_wdt__236_280_rdc321x_wdt_driver_init6, ptr @rdc321x_wdt_driver_exit, ptr @rdc321x_wdt_probe._entry, ptr @rdc321x_wdt_probe._entry.10, ptr @rdc321x_wdt_probe._entry.16, ptr @rdc321x_wdt_probe._entry.7, ptr @rdc321x_wdt_probe._entry_ptr, ptr @rdc321x_wdt_probe._entry_ptr.12, ptr @rdc321x_wdt_probe._entry_ptr.19, ptr @rdc321x_wdt_probe._entry_ptr.9, ptr @rdc321x_wdt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rdc321x_wdt_device, ptr @ticks, ptr @rdc321x_wdt_misc, ptr @.str.11, ptr @rdc321x_wdt_probe.__key, ptr @.str.13, ptr @rdc321x_wdt_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @rdc321x_wdt_fops, ptr @rdc321x_wdt_ioctl.ident, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_device to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ticks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc321x_wdt_ioctl.ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rdc321x_wdt_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rdc321x_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rdc321x_wdt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 256, ptr noundef nonnull @.str.6) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  %6 = load i32, ptr @ticks, align 4
  store i32 %6, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 4), align 4
  %call10 = tail call i32 @misc_register(ptr noundef nonnull @rdc321x_wdt_misc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %do.body17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6), ptr noundef nonnull @.str.13, ptr noundef nonnull @rdc321x_wdt_probe.__key, i16 noundef signext 3) #7
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call21 = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef %8, i32 noundef 1048576) #7
  store i32 0, ptr @rdc321x_wdt_device, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 0, i32 1), ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 5)) #7
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 2), ptr noundef nonnull @rdc321x_wdt_trigger, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @rdc321x_wdt_probe.__key.14) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ 0, %do.body17 ], [ -19, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  tail call void @wait_for_completion(ptr noundef nonnull @rdc321x_wdt_device) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @rdc321x_wdt_misc) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdc321x_wdt_trigger(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !75
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @ticks, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @ticks, align 4
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6)) #7
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call5 = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %val) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %or = or i32 %6, 8388608
  store i32 %or, ptr %val, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call6 = call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef %8, i32 noundef %or) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6), i32 noundef %call2) #7
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %do.body1.if.else_crit_edge, label %land.lhs.true

do.body1.if.else_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %do.body1
  %10 = load i32, ptr @ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, 11
  %call10 = call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 2), i32 noundef %add) #7
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body1.if.else_crit_edge
  call void @complete(ptr noundef nonnull @rdc321x_wdt_device) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdc321x_wdt_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 4), align 4
  store i32 %0, ptr @ticks, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_ioctl(ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value, align 4, !annotation !75
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147199227, label %sw.bb
    i32 -2147199231, label %do.body2
    i32 -2144839936, label %if.end59.i.i30
    i32 -2147199228, label %if.then.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 4), align 4
  store i32 %3, ptr @ticks, align 4
  br label %sw.epilog22

do.body2:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6)) #7
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call6 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %5, ptr noundef nonnull %value) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6), i32 noundef %call3) #7
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %do.body2.cleanup_crit_edge, label %if.end.i.i

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %do.body2
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #11, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value, i32 noundef 4) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %value, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %copy_to_user.exit.sw.epilog22_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit.sw.epilog22_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

if.end59.i.i30:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #7
  %call.i.i31 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i31, label %if.end59.i.i30.cleanup_crit_edge, label %if.end.i.i34

if.end59.i.i30.cleanup_crit_edge:                 ; preds = %if.end59.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i34:                                     ; preds = %if.end59.i.i30
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #11, !srcloc !76
  %asmresult.i.i32 = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i32)
  %cmp.i6.i33 = icmp eq i32 %asmresult.i.i32, 0
  br i1 %cmp.i6.i33, label %copy_to_user.exit39, label %if.end.i.i34.cleanup_crit_edge

if.end.i.i34.cleanup_crit_edge:                   ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit39:                              ; preds = %if.end.i.i34
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rdc321x_wdt_ioctl.ident, i32 noundef 40) #7
  %call.i12.i.i36 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @rdc321x_wdt_ioctl.ident, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i36)
  %tobool10.not = icmp eq i32 %call.i12.i.i36, 0
  br i1 %tobool10.not, label %copy_to_user.exit39.sw.epilog22_crit_edge, label %copy_to_user.exit39.cleanup_crit_edge

copy_to_user.exit39.cleanup_crit_edge:            ; preds = %copy_to_user.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit39.sw.epilog22_crit_edge:        ; preds = %copy_to_user.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #7
  %call.i.i41 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i41, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #11, !srcloc !77
  %asmresult.i.i42 = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i42)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i42, 0
  br i1 %cmp.i1.i, label %if.end.i.i44, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !78

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i44:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i43 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value, i32 noundef 4) #7
  %9 = call i32 @llvm.read_register.i32(metadata !65) #7
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !79
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %value, ptr noundef %0, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end17, label %if.end.i.i44.if.then11.i.i_crit_edge, !prof !78

if.end.i.i44.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i44.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i44.if.then11.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %value, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end17:                                         ; preds = %if.end.i.i44
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %14, label %if.end17.cleanup_crit_edge [
    i32 2, label %sw.bb18
    i32 1, label %sw.bb19
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb18:                                          ; preds = %if.end17
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i46, label %sw.bb18.rdc321x_wdt_start.exit_crit_edge

sw.bb18.rdc321x_wdt_start.exit_crit_edge:         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdc321x_wdt_start.exit

if.then.i46:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 3), align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6)) #7
  %17 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef %18, i32 noundef -2147469244) #7
  %19 = load ptr, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 7), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 8), align 4
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef %20, i32 noundef 8388609) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 6), i32 noundef %call2.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %21, 11
  %call7.i = call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 2), i32 noundef %add.i) #7
  br label %rdc321x_wdt_start.exit

rdc321x_wdt_start.exit:                           ; preds = %if.then.i46, %sw.bb18.rdc321x_wdt_start.exit_crit_edge
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 1), align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 1), align 4
  br label %sw.epilog22

sw.bb19:                                          ; preds = %if.end17
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i47 = icmp eq i32 %23, 0
  br i1 %tobool.not.i47, label %sw.bb19.rdc321x_wdt_stop.exit_crit_edge, label %if.then.i48

sw.bb19.rdc321x_wdt_stop.exit_crit_edge:          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rdc321x_wdt_stop.exit

if.then.i48:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 1), align 4
  br label %rdc321x_wdt_stop.exit

rdc321x_wdt_stop.exit:                            ; preds = %if.then.i48, %sw.bb19.rdc321x_wdt_stop.exit_crit_edge
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 4), align 4
  store i32 %24, ptr @ticks, align 4
  br label %cleanup

sw.epilog22:                                      ; preds = %rdc321x_wdt_start.exit, %copy_to_user.exit39.sw.epilog22_crit_edge, %copy_to_user.exit.sw.epilog22_crit_edge, %sw.bb
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %rdc321x_wdt_stop.exit, %if.end17.cleanup_crit_edge, %if.then11.i.i, %copy_to_user.exit39.cleanup_crit_edge, %if.end.i.i34.cleanup_crit_edge, %if.end59.i.i30.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.body2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %rdc321x_wdt_stop.exit ], [ 0, %sw.epilog22 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit39.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ], [ -14, %do.body2.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end59.i.i30.cleanup_crit_edge ], [ -14, %if.end.i.i34.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 5)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc321x_wdt_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_clear_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.anon.72, ptr @rdc321x_wdt_device, i32 0, i32 5)) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_rdc321x_wdt__236_280_rdc321x_wdt_driver_init6, !1, !"__initcall__kmod_rdc321x_wdt__236_280_rdc321x_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 280, i32 1}
!2 = !{ptr @__exitcall_rdc321x_wdt_driver_exit, !1, !"__exitcall_rdc321x_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 282, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 283, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 284, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 276, i32 11}
!12 = !{ptr @rdc321x_wdt_driver, !13, !"rdc321x_wdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 272, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 222, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rdc321x_wdt_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rdc321x_wdt_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 226, i32 56}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 228, i32 3}
!26 = !{ptr @rdc321x_wdt_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rdc321x_wdt_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 239, i32 3}
!30 = !{ptr @rdc321x_wdt_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rdc321x_wdt_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rdc321x_wdt_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 243, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rdc321x_wdt_probe.__key.14, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 253, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 255, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rdc321x_wdt_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rdc321x_wdt_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @rdc321x_wdt_device, !44, !"rdc321x_wdt_device", i1 false, i1 false}
!44 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 52, i32 3}
!45 = !{ptr @ticks, !46, !"ticks", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 38, i32 12}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 210, i32 10}
!49 = !{ptr @rdc321x_wdt_misc, !50, !"rdc321x_wdt_misc", i1 false, i1 false}
!50 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 208, i32 26}
!51 = !{ptr @rdc321x_wdt_fops, !52, !"rdc321x_wdt_fops", i1 false, i1 false}
!52 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 198, i32 37}
!53 = !{ptr @rdc321x_wdt_ioctl.ident, !54, !"ident", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/rdc321x_wdt.c", i32 145, i32 36}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!62 = !{ptr @init_completion.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../include/linux/completion.h", i32 87, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{!"sp"}
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
!76 = !{i64 2152656713, i64 2152656738}
!77 = !{i64 2152656032, i64 2152656057}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 5151587}
!80 = !{i64 5151784}
!81 = !{i64 2152637017}
