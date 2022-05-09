; ModuleID = '/llk/IR_all_yes/drivers/watchdog/of_xilinx_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/of_xilinx_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.xwdt_device = type { ptr, i32, %struct.spinlock, %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_of_xilinx_wdt__172_308_xwdt_driver_init6 = internal global ptr @xwdt_driver_init, section ".initcall6.init", align 4
@xwdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xwdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xwdt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xwdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xwdt_driver_exit = internal global ptr @xwdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [58 x i8] c"of_xilinx_wdt.author=Alejandro Cabrera <aldaya@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [49 x i8] c"of_xilinx_wdt.description=Xilinx Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [50 x i8] c"of_xilinx_wdt.file=drivers/watchdog/of_xilinx_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [26 x i8] c"of_xilinx_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Xilinx Watchdog\00", [16 x i8] zeroinitializer }, align 32
@xwdt_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-timebase-wdt-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-timebase-wdt-1.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xwdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xwdt_suspend, ptr @xwdt_resume, ptr @xwdt_suspend, ptr @xwdt_resume, ptr @xwdt_suspend, ptr @xwdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xilinx_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33024, i32 1, [32 x i8] c"Xilinx Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@xilinx_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @xilinx_wdt_start, ptr @xilinx_wdt_stop, ptr @xilinx_wdt_keepalive, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,wdt-interval\00", [46 x i8] zeroinitializer }, align 32
@xwdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Parameter \22xlnx,wdt-interval\22 not found\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xwdt_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/watchdog/of_xilinx_wdt.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr = internal global ptr @xwdt_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xlnx,wdt-enable-once\00", [43 x i8] zeroinitializer }, align 32
@xwdt_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Parameter \22xlnx,wdt-enable-once\22 not found\0A\00", [52 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr.10 = internal global ptr @xwdt_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@xwdt_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"The watchdog clock freq cannot be obtained\0A\00", [52 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr.14 = internal global ptr @xwdt_probe._entry.12, section ".printk_index", align 4
@xwdt_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 216, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr.18 = internal global ptr @xwdt_probe._entry.15, section ".printk_index", align 4
@xwdt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&xdev->spinlock\00", [16 x i8] zeroinitializer }, align 32
@xwdt_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SelfTest routine error\0A\00", [40 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr.22 = internal global ptr @xwdt_probe._entry.20, section ".printk_index", align 4
@xwdt_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 249, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Xilinx Watchdog Timer with timeout %ds\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xwdt_probe._entry_ptr.26 = internal global ptr @xwdt_probe._entry.23, section ".printk_index", align 4
@xilinx_wdt_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 57, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilinx_wdt_start\00", [47 x i8] zeroinitializer }, align 32
@xilinx_wdt_start._entry_ptr = internal global ptr @xilinx_wdt_start._entry, section ".printk_index", align 4
@xilinx_wdt_start.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.28, ptr @.str.4, ptr @.str.30, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"of_xilinx_wdt\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Watchdog Started!\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_wdt_stop.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinx_wdt_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Watchdog Stopped!\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"xwdt_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 299, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 302, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"xwdt_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 292, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"xwdt_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 289, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"xilinx_wdt_ident\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 118, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"xilinx_wdt_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 125, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 183, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 186, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 188, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 191, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 207, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 210, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 216, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 233, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 238, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 248, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 57, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 74, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [36 x i8] c"../drivers/watchdog/of_xilinx_wdt.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 97, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_xwdt_driver_exit, ptr @__initcall__kmod_of_xilinx_wdt__172_308_xwdt_driver_init6, ptr @xilinx_wdt_start._entry, ptr @xilinx_wdt_start._entry_ptr, ptr @xwdt_driver_exit, ptr @xwdt_probe._entry, ptr @xwdt_probe._entry.12, ptr @xwdt_probe._entry.15, ptr @xwdt_probe._entry.20, ptr @xwdt_probe._entry.23, ptr @xwdt_probe._entry.8, ptr @xwdt_probe._entry_ptr, ptr @xwdt_probe._entry_ptr.10, ptr @xwdt_probe._entry_ptr.14, ptr @xwdt_probe._entry_ptr.18, ptr @xwdt_probe._entry_ptr.22, ptr @xwdt_probe._entry_ptr.26, ptr @xwdt_driver, ptr @.str, ptr @xwdt_of_match, ptr @xwdt_pm_ops, ptr @xilinx_wdt_ident, ptr @xilinx_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @xwdt_probe.__key, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xwdt_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_wdt_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xwdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xwdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xwdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @xwdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xwdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pfreq = alloca i32, align 4
  %enable_once = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfreq) #5
  %0 = ptrtoint ptr %pfreq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pfreq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_once) #5
  %1 = ptrtoint ptr %enable_once to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %enable_once, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 164, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %xilinx_wdt_wdd2 = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3
  %info = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xilinx_wdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xilinx_wdt_ops, ptr %ops, align 4
  %parent = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %wdt_interval = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef %wdt_interval, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %do.end

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end9.if.end13_crit_edge
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i142 = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef nonnull %enable_once, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142)
  %tobool16.not = icmp sgt i32 %call.i.i142, -1
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %do.end20

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end13.if.end21_crit_edge
  %11 = ptrtoint ptr %enable_once to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enable_once, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.end21.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end21.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end21.watchdog_set_nowayout.exit_crit_edge
  %call23 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %clk, align 4
  %cmp.i143 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then26, label %if.else

if.then26:                                        ; preds = %watchdog_set_nowayout.exit
  %14 = ptrtoint ptr %call23 to i32
  %cmp.not = icmp eq ptr %call23, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not, label %if.end32, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.then26
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %clk, align 4
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call.i.i144 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull %pfreq, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i144)
  %tobool36.not = icmp sgt i32 %call.i.i144, -1
  br i1 %tobool36.not, label %if.end32.if.end57_crit_edge, label %do.end40

if.end32.if.end57_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %if.end57

if.else:                                          ; preds = %watchdog_set_nowayout.exit
  %call43 = call i32 @clk_get_rate(ptr noundef %call23) #5
  %18 = ptrtoint ptr %pfreq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call43, ptr %pfreq, align 4
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call.i145 = call i32 @clk_prepare(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.do.end50_crit_edge

if.else.do.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end.i:                                         ; preds = %if.else
  %call1.i = call i32 @clk_enable(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end51, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %20) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then3.i, %if.else.do.end50_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i145, %if.else.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end.i
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call.i146 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @xwdt_clk_disable_unprepare, ptr noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.end51.if.end57_crit_edge, label %devm_add_action_or_reset.exit

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

devm_add_action_or_reset.exit:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_disable(ptr noundef %22) #5
  call void @clk_unprepare(ptr noundef %22) #5
  br label %cleanup

if.end57:                                         ; preds = %if.end51.if.end57_crit_edge, %do.end40, %if.end32.if.end57_crit_edge
  %23 = ptrtoint ptr %pfreq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pfreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool58.not = icmp eq i32 %24, 0
  br i1 %tobool58.not, label %if.end57.do.body64_crit_edge, label %land.lhs.true

if.end57.do.body64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

land.lhs.true:                                    ; preds = %if.end57
  %25 = ptrtoint ptr %wdt_interval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wdt_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool60.not = icmp eq i32 %26, 0
  br i1 %tobool60.not, label %land.lhs.true.do.body64_crit_edge, label %if.then61

land.lhs.true.do.body64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %26
  %div = udiv i32 %shl, %24
  %mul = shl i32 %div, 1
  %timeout = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 7
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %timeout, align 4
  br label %do.body64

do.body64:                                        ; preds = %if.then61, %land.lhs.true.do.body64_crit_edge, %if.end57.do.body64_crit_edge
  %spinlock = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.19, ptr noundef nonnull @xwdt_probe.__key, i16 noundef signext 3) #5
  %driver_data.i = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 16
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @_raw_spin_lock(ptr noundef %spinlock) #5
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 8
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %33, i32 8
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %31)
  %cmp419.i = icmp eq i32 %34, %31
  br i1 %cmp419.i, label %do.body64.for.body.i_crit_edge, label %xwdt_selftest.exit.thread

do.body64.for.body.i_crit_edge:                   ; preds = %do.body64
  br label %for.body.i

xwdt_selftest.exit.thread:                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef %spinlock) #5
  br label %if.end74

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body64.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body64.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %36, i32 8
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %inc.i = add nuw nsw i32 %i.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %i.020.i)
  %cmp.i150 = icmp ult i32 %i.020.i, 65536
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %31)
  %cmp4.i = icmp eq i32 %37, %31
  %or.cond.i = select i1 %cmp.i150, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %xwdt_selftest.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

xwdt_selftest.exit:                               ; preds = %for.body.i
  call void @_raw_spin_unlock(ptr noundef %spinlock) #5
  br i1 %cmp4.i, label %do.end73, label %xwdt_selftest.exit.if.end74_crit_edge

xwdt_selftest.exit.if.end74_crit_edge:            ; preds = %xwdt_selftest.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.end73:                                         ; preds = %xwdt_selftest.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end74:                                         ; preds = %xwdt_selftest.exit.if.end74_crit_edge, %xwdt_selftest.exit.thread
  %call75 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %xilinx_wdt_wdd2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %39) #5
  %timeout83 = getelementptr inbounds %struct.xwdt_device, ptr %call.i, i32 0, i32 3, i32 7
  %40 = ptrtoint ptr %timeout83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timeout83, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %41) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.end74.cleanup_crit_edge, %do.end73, %devm_add_action_or_reset.exit, %do.end50, %if.then26.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ -1, %do.end73 ], [ 0, %if.end78 ], [ %retval.0.i.ph, %do.end50 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i146, %devm_add_action_or_reset.exit ], [ %call75, %if.end74.cleanup_crit_edge ], [ %14, %if.then26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_once) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfreq) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xwdt_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spinlock = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %9 = or i32 %8, 234881024
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #5, !srcloc !86
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #5, !srcloc !86
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_wdt_start.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xilinx_wdt_start, %if.then14)) #5
          to label %cleanup [label %if.then14], !srcloc !87

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent15 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %14 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_wdt_start.__UNIQUE_ID_ddebug170, ptr noundef %15, ptr noundef nonnull @.str.30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %5 = and i32 %4, -33554433
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !86
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !86
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #5
  %clk = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_wdt_stop.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xilinx_wdt_stop, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_wdt_stop.__UNIQUE_ID_ddebug171, ptr noundef %13, ptr noundef nonnull @.str.32) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_wdt_keepalive(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %5 = or i32 %4, 201326592
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !86
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xwdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xilinx_wdt_wdd = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @xilinx_wdt_stop(ptr noundef %xilinx_wdt_wdd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xwdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xilinx_wdt_wdd = getelementptr inbounds %struct.xwdt_device, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @xilinx_wdt_start(ptr noundef %xilinx_wdt_wdd)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_of_xilinx_wdt__172_308_xwdt_driver_init6, !1, !"__initcall__kmod_of_xilinx_wdt__172_308_xwdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_xwdt_driver_exit, !1, !"__exitcall_xwdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_description174, !6, !"__UNIQUE_ID_description174", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_file175, !8, !"__UNIQUE_ID_file175", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 312, i32 1}
!9 = !{ptr @__UNIQUE_ID_license176, !8, !"__UNIQUE_ID_license176", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 302, i32 12}
!12 = !{ptr @xwdt_driver, !13, !"xwdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 299, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 183, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 186, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xwdt_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xwdt_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 188, i32 42}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 191, i32 3}
!28 = !{ptr @xwdt_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xwdt_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 207, i32 43}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 210, i32 4}
!34 = !{ptr @xwdt_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xwdt_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 216, i32 4}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xwdt_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @xwdt_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @xwdt_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 233, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 238, i32 3}
!46 = !{ptr @xwdt_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xwdt_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 248, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @xwdt_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @xwdt_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @xilinx_wdt_ident, !54, !"xilinx_wdt_ident", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 118, i32 35}
!55 = !{ptr @xilinx_wdt_ops, !56, !"xilinx_wdt_ops", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 125, i32 34}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 57, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @xilinx_wdt_start._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @xilinx_wdt_start._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 74, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @xilinx_wdt_start.__UNIQUE_ID_ddebug170, !63, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 97, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @xilinx_wdt_stop.__UNIQUE_ID_ddebug171, !67, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!70 = !{ptr @xwdt_of_match, !71, !"xwdt_of_match", i1 false, i1 false}
!71 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 292, i32 34}
!72 = !{ptr @xwdt_pm_ops, !73, !"xwdt_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/watchdog/of_xilinx_wdt.c", i32 289, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 4832132}
!84 = !{i64 2152372481}
!85 = !{i64 2152373836}
!86 = !{i64 4831714}
!87 = !{i64 2148727576, i64 2148727581, i64 2148727594, i64 2148727638, i64 2148727672, i64 2148727693}
