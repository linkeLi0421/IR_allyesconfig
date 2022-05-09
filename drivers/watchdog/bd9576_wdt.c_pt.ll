; ModuleID = '/llk/IR_all_yes/drivers/watchdog/bd9576_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/bd9576_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.bd9576_wdt_priv = type { ptr, ptr, ptr, ptr, i8, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [20 x i8] c"bd9576_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype170 = internal constant [34 x i8] c"bd9576_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout171 = internal constant [83 x i8] c"bd9576_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=\22false\22)\00", section ".modinfo", align 1
@__initcall__kmod_bd9576_wdt__174_286_bd9576_wdt_driver_init6 = internal global ptr @bd9576_wdt_driver_init, section ".initcall6.init", align 4
@bd9576_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bd9576_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bd9576_wdt_driver_exit = internal global ptr @bd9576_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [70 x i8] c"bd9576_wdt.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [58 x i8] c"bd9576_wdt.description=ROHM BD9576/BD9573 Watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [44 x i8] c"bd9576_wdt.file=drivers/watchdog/bd9576_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [23 x i8] c"bd9576_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [37 x i8] c"bd9576_wdt.alias=platform:bd9576-wdt\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-wdt\00", [21 x i8] zeroinitializer }, align 32
@bd9576_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No regmap found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9576_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/bd9576_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd9576_wdt_probe._entry_ptr = internal global ptr @bd9576_wdt_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rohm,watchdog-enable-gpios\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watchdog-enable\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"getting watchdog-enable GPIO failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rohm,watchdog-ping-gpios\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"watchdog-ping\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"getting watchdog-ping GPIO failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rohm,hw-timeout-ms\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"always-running\00", [17 x i8] zeroinitializer }, align 32
@bd957x_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"BD957x Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@bd957x_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @bd9576_wdt_start, ptr @bd9576_wdt_stop, ptr @bd9576_wdt_ping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576_wdt\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bd957x_set_wdt_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Setting type WINDOW 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bad WDT window for fast timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode._entry_ptr = internal global ptr @bd957x_set_wdt_mode._entry, section ".printk_index", align 4
@bd957x_set_wdt_mode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad WDT window\0A\00", [16 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode._entry_ptr.20 = internal global ptr @bd957x_set_wdt_mode._entry.18, section ".printk_index", align 4
@bd957x_set_wdt_mode.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.21, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Setting type SLOW 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bd957x_set_wdt_mode._entry_ptr.23 = internal global ptr @bd957x_set_wdt_mode._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 17, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"bd9576_wdt_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 279, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 281, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 220, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 225, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 227, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 233, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 235, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 238, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 240, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 257, i32 51 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"bd957x_wdt_ident\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 73, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"bd957x_wdt_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 79, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 169, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 172, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 178, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 184, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private constant [33 x i8] c"../drivers/watchdog/bd9576_wdt.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 187, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_nowayout171, ptr @__UNIQUE_ID_nowayouttype170, ptr @__exitcall_bd9576_wdt_driver_exit, ptr @__initcall__kmod_bd9576_wdt__174_286_bd9576_wdt_driver_init6, ptr @__param_nowayout, ptr @bd9576_wdt_driver_exit, ptr @bd9576_wdt_probe._entry, ptr @bd9576_wdt_probe._entry_ptr, ptr @bd957x_set_wdt_mode._entry, ptr @bd957x_set_wdt_mode._entry.18, ptr @bd957x_set_wdt_mode._entry.22, ptr @bd957x_set_wdt_mode._entry_ptr, ptr @bd957x_set_wdt_mode._entry_ptr.20, ptr @bd957x_set_wdt_mode._entry_ptr.23, ptr @nowayout, ptr @bd9576_wdt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bd957x_wdt_ident, ptr @bd957x_wdt_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_set_wdt_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_set_wdt_mode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_set_wdt_mode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bd9576_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd9576_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bd9576_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hw_margin = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_margin) #5
  %4 = ptrtoint ptr %hw_margin to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %hw_margin, align 4, !annotation !84
  %5 = getelementptr inbounds [2 x i32], ptr %hw_margin, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !84
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev2, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %regmap, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %of_node10 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node10, align 8
  %call11 = tail call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev1, ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.7) #5
  %gpiod_en = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %gpiod_en, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %of_node20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node20, align 8
  %call21 = tail call ptr @devm_gpiod_get_from_of_node(ptr noundef %dev1, ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 3, ptr noundef nonnull @.str.10) #5
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i122 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call21 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %23, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %hw_margin, i32 noundef 1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp = icmp sgt i32 %call29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, -22
  %or.cond = or i1 %cmp, %cmp30.not
  br i1 %or.cond, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %24 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %if.end32.if.end41_crit_edge [
    i32 1, label %if.end36.thread
    i32 2, label %if.then38
  ]

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end36.thread:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hw_margin to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_margin, align 4
  br label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %29 = ptrtoint ptr %hw_margin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_margin, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36.thread, %if.end32.if.end41_crit_edge
  %hw_margin_max.1 = phi i32 [ %28, %if.then38 ], [ %26, %if.end36.thread ], [ 4416, %if.end32.if.end41_crit_edge ]
  %hw_margin_min.0 = phi i32 [ %30, %if.then38 ], [ 0, %if.end36.thread ], [ 0, %if.end32.if.end41_crit_edge ]
  %call42 = call fastcc i32 @bd957x_set_wdt_mode(ptr noundef nonnull %call.i, i32 noundef %hw_margin_max.1, i32 noundef %hw_margin_min.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call.i123 = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i123, null
  %always_running = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %31 = ptrtoint ptr %always_running to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %always_running, align 4
  %wdd = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5
  %driver_data.i = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 16
  %32 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 3
  %33 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bd957x_wdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bd957x_wdt_ops, ptr %ops, align 4
  %min_hw_heartbeat_ms = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 11
  %35 = ptrtoint ptr %min_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %hw_margin_min.0, ptr %min_hw_heartbeat_ms, align 4
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 12
  %36 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %hw_margin_max.1, ptr %max_hw_heartbeat_ms, align 4
  %parent52 = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %parent52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent52, align 4
  %timeout = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 7
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 30, ptr %timeout, align 4
  %call55 = call i32 @watchdog_init_timeout(ptr noundef %wdd, i32 noundef 0, ptr noundef %dev1) #5
  %39 = load i8, ptr @nowayout, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %if.end45.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end45.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end45.watchdog_set_nowayout.exit_crit_edge
  %status.i124 = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %call.i, i32 0, i32 5, i32 18
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i124) #5
  %40 = ptrtoint ptr %always_running to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %always_running, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool60.not = icmp eq i8 %41, 0
  br i1 %tobool60.not, label %watchdog_set_nowayout.exit.if.end64_crit_edge, label %if.then61

watchdog_set_nowayout.exit.if.end64_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then61:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = call i32 @bd9576_wdt_start(ptr noundef %wdd)
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %watchdog_set_nowayout.exit.if.end64_crit_edge
  %call66 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end41.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then24, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then14 ], [ %call27, %if.then24 ], [ %call66, %if.end64 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_margin) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_from_of_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd957x_set_wdt_mode(ptr nocapture noundef readonly %priv, i32 noundef %hw_margin, i32 noundef %hw_margin_min) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mul = mul i32 %hw_margin, 10
  %mul2 = mul i32 %hw_margin_min, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul2)
  %tobool.not = icmp eq i32 %mul2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bd957x_set_wdt_mode, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !86

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug172, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef 32) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %mul2)
  %cmp19.i = icmp sgt i32 %mul2, 23
  br i1 %cmp19.i, label %for.body.i, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

for.body.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %mul2)
  %cmp1.i = icmp sgt i32 %mul2, 46
  br i1 %cmp1.i, label %for.body.i.1, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %mul2)
  %cmp1.i.1 = icmp sgt i32 %mul2, 92
  br i1 %cmp1.i.1, label %for.body.i.2, label %for.body.i.1.for.end.i_crit_edge

for.body.i.1.for.end.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %mul2)
  %cmp1.i.2 = icmp sgt i32 %mul2, 184
  br i1 %cmp1.i.2, label %for.body.i.3, label %for.body.i.2.for.end.i_crit_edge

for.body.i.2.for.end.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 368, i32 %mul2)
  %cmp1.i.3 = icmp sgt i32 %mul2, 368
  br i1 %cmp1.i.3, label %for.body.i.4, label %for.body.i.3.for.end.i_crit_edge

for.body.i.3.for.end.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 736, i32 %mul2)
  %cmp1.i.4 = icmp sgt i32 %mul2, 736
  br i1 %cmp1.i.4, label %for.body.i.5, label %for.body.i.4.for.end.i_crit_edge

for.body.i.4.for.end.i_crit_edge:                 ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1472, i32 %mul2)
  %cmp1.i.5 = icmp sgt i32 %mul2, 1472
  br i1 %cmp1.i.5, label %for.body.i.6, label %for.body.i.5.for.end.i_crit_edge

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2944, i32 %mul2)
  %cmp1.i.6 = icmp sgt i32 %mul2, 2944
  br i1 %cmp1.i.6, label %for.body.i.7, label %for.body.i.6.for.end.i_crit_edge

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.7, %for.body.i.6.for.end.i_crit_edge, %for.body.i.5.for.end.i_crit_edge, %for.body.i.4.for.end.i_crit_edge, %for.body.i.3.for.end.i_crit_edge, %for.body.i.2.for.end.i_crit_edge, %for.body.i.1.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %shl.i.lcssa = phi i32 [ 46, %for.body.i.for.end.i_crit_edge ], [ 92, %for.body.i.1.for.end.i_crit_edge ], [ 184, %for.body.i.2.for.end.i_crit_edge ], [ 368, %for.body.i.3.for.end.i_crit_edge ], [ 736, %for.body.i.4.for.end.i_crit_edge ], [ 1472, %for.body.i.5.for.end.i_crit_edge ], [ 2944, %for.body.i.6.for.end.i_crit_edge ], [ 5888, %for.body.i.7 ]
  %cmp2.i = phi i1 [ false, %for.body.i.for.end.i_crit_edge ], [ false, %for.body.i.1.for.end.i_crit_edge ], [ false, %for.body.i.2.for.end.i_crit_edge ], [ false, %for.body.i.3.for.end.i_crit_edge ], [ false, %for.body.i.4.for.end.i_crit_edge ], [ false, %for.body.i.5.for.end.i_crit_edge ], [ false, %for.body.i.6.for.end.i_crit_edge ], [ true, %for.body.i.7 ]
  %inc.i.lcssa = phi i32 [ 1, %for.body.i.for.end.i_crit_edge ], [ 2, %for.body.i.1.for.end.i_crit_edge ], [ 3, %for.body.i.2.for.end.i_crit_edge ], [ 4, %for.body.i.3.for.end.i_crit_edge ], [ 5, %for.body.i.4.for.end.i_crit_edge ], [ 6, %for.body.i.5.for.end.i_crit_edge ], [ 7, %for.body.i.6.for.end.i_crit_edge ], [ 8, %for.body.i.7 ]
  br i1 %cmp2.i, label %do.end12, label %for.end.i.if.end13_crit_edge

for.end.i.if.end13_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end12:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  br label %cleanup47

if.end13:                                         ; preds = %for.end.i.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %fastng.0.ph = phi i32 [ 0, %do.end.if.end13_crit_edge ], [ %inc.i.lcssa, %for.end.i.if.end13_crit_edge ]
  %min.0.ph = phi i32 [ 23, %do.end.if.end13_crit_edge ], [ %shl.i.lcssa, %for.end.i.if.end13_crit_edge ]
  %mul.i = shl nsw i32 %min.0.ph, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul)
  %cmp1.i74 = icmp slt i32 %mul.i, %mul
  br i1 %cmp1.i74, label %for.inc.i, label %if.end13.if.end44_crit_edge

if.end13.if.end44_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

for.inc.i:                                        ; preds = %if.end13
  %mul.1.i = mul nsw i32 %min.0.ph, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %mul)
  %cmp1.1.i = icmp slt i32 %mul.1.i, %mul
  br i1 %cmp1.1.i, label %for.inc.1.i, label %for.inc.i.if.end44_crit_edge

for.inc.i.if.end44_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = mul nsw i32 %min.0.ph, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %mul)
  %cmp1.2.i = icmp slt i32 %mul.2.i, %mul
  br i1 %cmp1.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end44_crit_edge

for.inc.1.i.if.end44_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %mul.3.i = mul nsw i32 %min.0.ph, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %mul)
  %cmp1.3.i = icmp slt i32 %mul.3.i, %mul
  br i1 %cmp1.3.i, label %do.end19, label %for.inc.2.i.if.end44_crit_edge

for.inc.2.i.if.end44_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end19:                                         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %cleanup47

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bd957x_set_wdt_mode, %if.then33)) #5
          to label %for.cond1.preheader.i [label %if.then33], !srcloc !86

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug173, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 0) #5
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %if.end.3.i.for.cond1.preheader.i_crit_edge, %if.then33, %if.else
  %fastng.1 = phi i32 [ %fastng.5, %if.end.3.i.for.cond1.preheader.i_crit_edge ], [ -1, %if.else ], [ -1, %if.then33 ]
  %slowng.2 = phi i32 [ %slowng.6, %if.end.3.i.for.cond1.preheader.i_crit_edge ], [ -1, %if.else ], [ -1, %if.then33 ]
  %window.030.i = phi i32 [ %mul.i76, %if.end.3.i.for.cond1.preheader.i_crit_edge ], [ 23, %if.else ], [ 23, %if.then33 ]
  %val.029.i = phi i32 [ %val.2.3.i, %if.end.3.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.else ], [ 0, %if.then33 ]
  %i.028.i = phi i32 [ %inc7.i, %if.end.3.i.for.cond1.preheader.i_crit_edge ], [ 0, %if.else ], [ 0, %if.then33 ]
  %mul.i76 = shl i32 %window.030.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i76, i32 %mul)
  %cmp4.not.i = icmp slt i32 %mul.i76, %mul
  br i1 %cmp4.not.i, label %for.cond1.preheader.i.if.end.i79_crit_edge, label %land.lhs.true.i

for.cond1.preheader.i.if.end.i79_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i79

land.lhs.true.i:                                  ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.029.i)
  %tobool.not.i = icmp eq i32 %val.029.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i76, i32 %val.029.i)
  %cmp5.i = icmp slt i32 %mul.i76, %val.029.i
  %or.cond.i77 = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i77, label %if.then.i, label %land.lhs.true.i.if.end.i79_crit_edge

land.lhs.true.i.if.end.i79_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i79

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i79_crit_edge, %for.cond1.preheader.i.if.end.i79_crit_edge
  %fastng.2 = phi i32 [ %fastng.1, %for.cond1.preheader.i.if.end.i79_crit_edge ], [ %i.028.i, %if.then.i ], [ %fastng.1, %land.lhs.true.i.if.end.i79_crit_edge ]
  %slowng.3 = phi i32 [ %slowng.2, %for.cond1.preheader.i.if.end.i79_crit_edge ], [ 0, %if.then.i ], [ %slowng.2, %land.lhs.true.i.if.end.i79_crit_edge ]
  %val.2.i = phi i32 [ %val.029.i, %for.cond1.preheader.i.if.end.i79_crit_edge ], [ %mul.i76, %if.then.i ], [ %val.029.i, %land.lhs.true.i.if.end.i79_crit_edge ]
  %mul.1.i78 = mul nuw nsw i32 %window.030.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i78, i32 %mul)
  %cmp4.not.1.i = icmp slt i32 %mul.1.i78, %mul
  br i1 %cmp4.not.1.i, label %if.end.i79.if.end.1.i_crit_edge, label %land.lhs.true.1.i

if.end.i79.if.end.1.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

land.lhs.true.1.i:                                ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.2.i)
  %tobool.not.1.i = icmp eq i32 %val.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i78, i32 %val.2.i)
  %cmp5.1.i = icmp slt i32 %mul.1.i78, %val.2.i
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 true, i1 %cmp5.1.i
  br i1 %or.cond.1.i, label %if.then.1.i, label %land.lhs.true.1.i.if.end.1.i_crit_edge

land.lhs.true.1.i.if.end.1.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %land.lhs.true.1.i.if.end.1.i_crit_edge, %if.end.i79.if.end.1.i_crit_edge
  %fastng.3 = phi i32 [ %fastng.2, %if.end.i79.if.end.1.i_crit_edge ], [ %i.028.i, %if.then.1.i ], [ %fastng.2, %land.lhs.true.1.i.if.end.1.i_crit_edge ]
  %slowng.4 = phi i32 [ %slowng.3, %if.end.i79.if.end.1.i_crit_edge ], [ 1, %if.then.1.i ], [ %slowng.3, %land.lhs.true.1.i.if.end.1.i_crit_edge ]
  %val.2.1.i = phi i32 [ %val.2.i, %if.end.i79.if.end.1.i_crit_edge ], [ %mul.1.i78, %if.then.1.i ], [ %val.2.i, %land.lhs.true.1.i.if.end.1.i_crit_edge ]
  %mul.2.i80 = mul nuw nsw i32 %window.030.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i80, i32 %mul)
  %cmp4.not.2.i = icmp slt i32 %mul.2.i80, %mul
  br i1 %cmp4.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %land.lhs.true.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

land.lhs.true.2.i:                                ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.2.1.i)
  %tobool.not.2.i = icmp eq i32 %val.2.1.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i80, i32 %val.2.1.i)
  %cmp5.2.i = icmp slt i32 %mul.2.i80, %val.2.1.i
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 true, i1 %cmp5.2.i
  br i1 %or.cond.2.i, label %if.then.2.i, label %land.lhs.true.2.i.if.end.2.i_crit_edge

land.lhs.true.2.i.if.end.2.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %land.lhs.true.2.i.if.end.2.i_crit_edge, %if.end.1.i.if.end.2.i_crit_edge
  %fastng.4 = phi i32 [ %fastng.3, %if.end.1.i.if.end.2.i_crit_edge ], [ %i.028.i, %if.then.2.i ], [ %fastng.3, %land.lhs.true.2.i.if.end.2.i_crit_edge ]
  %slowng.5 = phi i32 [ %slowng.4, %if.end.1.i.if.end.2.i_crit_edge ], [ 2, %if.then.2.i ], [ %slowng.4, %land.lhs.true.2.i.if.end.2.i_crit_edge ]
  %val.2.2.i = phi i32 [ %val.2.1.i, %if.end.1.i.if.end.2.i_crit_edge ], [ %mul.2.i80, %if.then.2.i ], [ %val.2.1.i, %land.lhs.true.2.i.if.end.2.i_crit_edge ]
  %mul.3.i81 = mul nuw nsw i32 %window.030.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i81, i32 %mul)
  %cmp4.not.3.i = icmp slt i32 %mul.3.i81, %mul
  br i1 %cmp4.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %land.lhs.true.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3.i

land.lhs.true.3.i:                                ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.2.2.i)
  %tobool.not.3.i = icmp eq i32 %val.2.2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i81, i32 %val.2.2.i)
  %cmp5.3.i = icmp slt i32 %mul.3.i81, %val.2.2.i
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 true, i1 %cmp5.3.i
  br i1 %or.cond.3.i, label %if.then.3.i, label %land.lhs.true.3.i.if.end.3.i_crit_edge

land.lhs.true.3.i.if.end.3.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %land.lhs.true.3.i.if.end.3.i_crit_edge, %if.end.2.i.if.end.3.i_crit_edge
  %fastng.5 = phi i32 [ %fastng.4, %if.end.2.i.if.end.3.i_crit_edge ], [ %i.028.i, %if.then.3.i ], [ %fastng.4, %land.lhs.true.3.i.if.end.3.i_crit_edge ]
  %slowng.6 = phi i32 [ %slowng.5, %if.end.2.i.if.end.3.i_crit_edge ], [ 3, %if.then.3.i ], [ %slowng.5, %land.lhs.true.3.i.if.end.3.i_crit_edge ]
  %val.2.3.i = phi i32 [ %val.2.2.i, %if.end.2.i.if.end.3.i_crit_edge ], [ %mul.3.i81, %if.then.3.i ], [ %val.2.2.i, %land.lhs.true.3.i.if.end.3.i_crit_edge ]
  %inc7.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 8
  br i1 %exitcond.not.i, label %find_closest_slow.exit, label %if.end.3.i.for.cond1.preheader.i_crit_edge

if.end.3.i.for.cond1.preheader.i_crit_edge:       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

find_closest_slow.exit:                           ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.2.3.i)
  %tobool9.not.i.not = icmp eq i32 %val.2.3.i, 0
  br i1 %tobool9.not.i.not, label %do.end42, label %find_closest_slow.exit.if.end44_crit_edge

find_closest_slow.exit.if.end44_crit_edge:        ; preds = %find_closest_slow.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end42:                                         ; preds = %find_closest_slow.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %cleanup47

if.end44:                                         ; preds = %find_closest_slow.exit.if.end44_crit_edge, %for.inc.2.i.if.end44_crit_edge, %for.inc.1.i.if.end44_crit_edge, %for.inc.i.if.end44_crit_edge, %if.end13.if.end44_crit_edge
  %fastng.6 = phi i32 [ %fastng.5, %find_closest_slow.exit.if.end44_crit_edge ], [ %fastng.0.ph, %if.end13.if.end44_crit_edge ], [ %fastng.0.ph, %for.inc.i.if.end44_crit_edge ], [ %fastng.0.ph, %for.inc.1.i.if.end44_crit_edge ], [ %fastng.0.ph, %for.inc.2.i.if.end44_crit_edge ]
  %slowng.7 = phi i32 [ %slowng.6, %find_closest_slow.exit.if.end44_crit_edge ], [ 0, %if.end13.if.end44_crit_edge ], [ 1, %for.inc.i.if.end44_crit_edge ], [ 2, %for.inc.1.i.if.end44_crit_edge ], [ 3, %for.inc.2.i.if.end44_crit_edge ]
  %type.0 = phi i32 [ 0, %find_closest_slow.exit.if.end44_crit_edge ], [ 32, %if.end13.if.end44_crit_edge ], [ 32, %for.inc.i.if.end44_crit_edge ], [ 32, %for.inc.1.i.if.end44_crit_edge ], [ 32, %for.inc.2.i.if.end44_crit_edge ]
  %shl = shl i32 %slowng.7, 3
  %or = or i32 %shl, %fastng.6
  %or45 = or i32 %or, %type.0
  %regmap = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 22, i32 noundef 63, i32 noundef %or45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup47

cleanup47:                                        ; preds = %if.end44, %do.end42, %do.end19, %do.end12
  %retval.1 = phi i32 [ %call.i, %if.end44 ], [ -22, %do.end42 ], [ -22, %do.end12 ], [ -22, %do.end19 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_wdt_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpiod_en = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_en, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_wdt_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %always_running = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %always_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %always_running, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod_en.i = getelementptr inbounds %struct.bd9576_wdt_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_en.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9576_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype170, !1, !"__UNIQUE_ID_nowayouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout171, !4, !"__UNIQUE_ID_nowayout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 19, i32 1}
!5 = !{ptr @__initcall__kmod_bd9576_wdt__174_286_bd9576_wdt_driver_init6, !6, !"__initcall__kmod_bd9576_wdt__174_286_bd9576_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 286, i32 1}
!7 = !{ptr @__exitcall_bd9576_wdt_driver_exit, !6, !"__exitcall_bd9576_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author175, !9, !"__UNIQUE_ID_author175", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 288, i32 1}
!10 = !{ptr @__UNIQUE_ID_description176, !11, !"__UNIQUE_ID_description176", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 289, i32 1}
!12 = !{ptr @__UNIQUE_ID_file177, !13, !"__UNIQUE_ID_file177", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 290, i32 1}
!14 = !{ptr @__UNIQUE_ID_license178, !13, !"__UNIQUE_ID_license178", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias179, !16, !"__UNIQUE_ID_alias179", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 291, i32 1}
!17 = !{ptr @nowayout, !18, !"nowayout", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 17, i32 13}
!19 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 281, i32 11}
!22 = !{ptr @bd9576_wdt_driver, !23, !"bd9576_wdt_driver", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 279, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 220, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bd9576_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @bd9576_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 225, i32 12}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 227, i32 12}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 230, i32 10}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 233, i32 12}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 235, i32 12}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 238, i32 10}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 240, i32 48}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 257, i32 51}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 169, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug172, !49, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 172, i32 4}
!55 = !{ptr @bd957x_set_wdt_mode._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bd957x_set_wdt_mode._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 178, i32 4}
!59 = !{ptr @bd957x_set_wdt_mode._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bd957x_set_wdt_mode._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 184, i32 3}
!63 = !{ptr @bd957x_set_wdt_mode.__UNIQUE_ID_ddebug173, !62, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!64 = !{ptr @bd957x_set_wdt_mode._entry.22, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 187, i32 4}
!66 = !{ptr @bd957x_set_wdt_mode._entry_ptr.23, !65, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"multipliers", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 110, i32 19}
!69 = distinct !{null, !70, !"multipliers", i1 false, i1 false}
!70 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 126, i32 19}
!71 = !{ptr @bd957x_wdt_ident, !72, !"bd957x_wdt_ident", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 73, i32 35}
!73 = !{ptr @bd957x_wdt_ops, !74, !"bd957x_wdt_ops", i1 false, i1 false}
!74 = !{!"../drivers/watchdog/bd9576_wdt.c", i32 79, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148183015, i64 2148183020, i64 2148183033, i64 2148183077, i64 2148183111, i64 2148183132}
