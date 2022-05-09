; ModuleID = '/llk/IR_all_yes/drivers/watchdog/st_lpc_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/st_lpc_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_wdog_syscfg = type { i32, i32, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.st_wdog = type { ptr, ptr, ptr, ptr, ptr, i32, i8 }

@__initcall__kmod_st_lpc_wdt__170_303_st_wdog_driver_init6 = internal global ptr @st_wdog_driver_init, section ".initcall6.init", align 4
@st_wdog_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_wdog_probe, ptr @st_wdog_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_wdog_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_wdog_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_wdog_driver_exit = internal global ptr @st_wdog_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [51 x i8] c"st_lpc_wdt.author=David Paris <david.paris@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [46 x i8] c"st_lpc_wdt.description=ST LPC Watchdog Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [44 x i8] c"st_lpc_wdt.file=drivers/watchdog/st_lpc_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"st_lpc_wdt.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st-lpc-wdt\00", [21 x i8] zeroinitializer }, align 32
@st_wdog_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-lpc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_syscfg }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_wdog_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr @st_wdog_suspend, ptr @st_wdog_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,lpc-mode\00", [20 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"An LPC mode must be provided\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_wdog_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/st_lpc_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr = internal global ptr @st_wdog_probe._entry, section ".printk_index", align 4
@st_wdog_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't match device\0A\00", [41 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.9 = internal global ptr @st_wdog_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No syscfg phandle specified\0A\00", [35 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.13 = internal global ptr @st_wdog_probe._entry.11, section ".printk_index", align 4
@st_wdog_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.16 = internal global ptr @st_wdog_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,warm_reset\00", [18 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to fetch clock rate\0A\00", [36 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.20 = internal global ptr @st_wdog_probe._entry.18, section ".printk_index", align 4
@st_wdog_dev = internal global { %struct.watchdog_device, [52 x i8] } { %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @st_wdog_info, ptr @st_wdog_ops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.23 = internal global ptr @st_wdog_probe._entry.21, section ".printk_index", align 4
@st_wdog_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 237, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"LPC Watchdog driver registered, reset type is %s\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_wdog_probe._entry_ptr.27 = internal global ptr @st_wdog_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warm\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cold\00", [27 x i8] zeroinitializer }, align 32
@st_wdog_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"ST LPC WDT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@st_wdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @st_wdog_start, ptr @st_wdog_stop, ptr @st_wdog_keepalive, ptr null, ptr @st_wdog_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stih407_syscfg = internal global { %struct.st_wdog_syscfg, [16 x i8] } { %struct.st_wdog_syscfg { i32 0, i32 0, i32 516, i32 524288 }, [16 x i8] zeroinitializer }, align 32
@st_wdog_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 273, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to re-enable clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_wdog_resume\00", [17 x i8] zeroinitializer }, align 32
@st_wdog_resume._entry_ptr = internal global ptr @st_wdog_resume._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"st_wdog_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 294, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 296, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"st_wdog_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 56, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"st_wdog_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 290, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 162, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 164, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 178, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 187, i32 47 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 189, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 195, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 203, i32 50 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 207, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"st_wdog_dev\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 140, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 215, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 236, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"st_wdog_info\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 127, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"st_wdog_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 132, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"stih407_syscfg\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 51, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [33 x i8] c"../drivers/watchdog/st_lpc_wdt.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 273, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_st_wdog_driver_exit, ptr @__initcall__kmod_st_lpc_wdt__170_303_st_wdog_driver_init6, ptr @st_wdog_driver_exit, ptr @st_wdog_probe._entry, ptr @st_wdog_probe._entry.11, ptr @st_wdog_probe._entry.14, ptr @st_wdog_probe._entry.18, ptr @st_wdog_probe._entry.21, ptr @st_wdog_probe._entry.24, ptr @st_wdog_probe._entry.7, ptr @st_wdog_probe._entry_ptr, ptr @st_wdog_probe._entry_ptr.13, ptr @st_wdog_probe._entry_ptr.16, ptr @st_wdog_probe._entry_ptr.20, ptr @st_wdog_probe._entry_ptr.23, ptr @st_wdog_probe._entry_ptr.27, ptr @st_wdog_probe._entry_ptr.9, ptr @st_wdog_resume._entry, ptr @st_wdog_resume._entry_ptr, ptr @st_wdog_driver, ptr @.str, ptr @st_wdog_match, ptr @st_wdog_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @st_wdog_dev, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @st_wdog_info, ptr @st_wdog_ops, ptr @stih407_syscfg, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_dev to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_syscfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_wdog_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_wdog_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_wdog_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_wdog_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !81
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %mode, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call ptr @of_match_device(ptr noundef nonnull @st_wdog_match, ptr noundef %dev1) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %syscfg = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %syscfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %syscfg, align 4
  %call15 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  %cmp.i132 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %9 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %call28 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i133 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  %10 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %dev36 = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev36, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %call.i, align 4
  %clk38 = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %clk38, align 4
  %regmap39 = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %regmap39, align 4
  %call.i134 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i134, null
  %warm_reset = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %warm_reset to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %warm_reset, align 4
  %call42 = call i32 @clk_get_rate(ptr noundef %call28) #6
  %clkrate = getelementptr inbounds %struct.st_wdog, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %clkrate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call42, ptr %clkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool44.not = icmp eq i32 %call42, 0
  br i1 %tobool44.not, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end35
  %div = udiv i32 -1, %call42
  store i32 %div, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 10), align 4
  store ptr %dev1, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 1), align 4
  %call.i135 = call i32 @clk_prepare(ptr noundef %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end49.do.end56_crit_edge

if.end49.do.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

if.end.i:                                         ; preds = %if.end49
  %call1.i = call i32 @clk_enable(ptr noundef %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end57, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call28) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then3.i, %if.end49.do.end56_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i135, %if.end49.do.end56_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end.i
  %call.i136 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @st_clk_disable_unprepare, ptr noundef %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.end61, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %call28) #6
  call void @clk_unprepare(ptr noundef %call28) #6
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  store ptr %call.i, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  call void @_set_bit(i32 noundef 1, ptr noundef getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 18)) #6
  %call62 = call i32 @watchdog_init_timeout(ptr noundef nonnull @st_wdog_dev, i32 noundef 0, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %call66 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull @st_wdog_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @st_wdog_setup(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %17 = ptrtoint ptr %warm_reset to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %warm_reset, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool74.not = icmp eq i8 %18, 0
  %cond = select i1 %tobool74.not, ptr @.str.29, ptr @.str.28
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end65.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end56, %do.end48, %do.end33, %do.end25, %if.then17, %do.end13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %if.then17 ], [ %9, %do.end25 ], [ %10, %do.end33 ], [ %retval.0.i.ph, %do.end56 ], [ 0, %if.end69 ], [ -22, %do.end48 ], [ -19, %do.end13 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call.i136, %devm_add_action_or_reset.exit ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %syscfg.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %syscfg.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.st_wdog_setup.exit_crit_edge, label %if.then.i

entry.st_wdog_setup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %st_wdog_setup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %reset_type_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %reset_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_type_mask.i, align 4
  %warm_reset.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 6
  %9 = ptrtoint ptr %warm_reset.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %warm_reset.i, align 4, !range !82
  %11 = zext i8 %10 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %4, i32 noundef %8, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %st_wdog_setup.exit

st_wdog_setup.exit:                               ; preds = %if.then.i, %entry.st_wdog_setup.exit_crit_edge
  %regmap5.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %12 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5.i, align 4
  %14 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syscfg.i, align 4
  %enable_reg.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_mask.i, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %17, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_clk_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_wdog_setup(ptr nocapture noundef readonly %st_wdog, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %syscfg = getelementptr inbounds %struct.st_wdog, ptr %st_wdog, i32 0, i32 3
  %0 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %syscfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.st_wdog, ptr %st_wdog, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %reset_type_mask = getelementptr inbounds %struct.st_wdog_syscfg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %reset_type_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reset_type_mask, align 4
  %warm_reset = getelementptr inbounds %struct.st_wdog, ptr %st_wdog, i32 0, i32 6
  %8 = ptrtoint ptr %warm_reset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %warm_reset, align 4, !range !82
  %10 = zext i8 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %3, i32 noundef %7, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap5 = getelementptr inbounds %struct.st_wdog, ptr %st_wdog, i32 0, i32 2
  %11 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5, align 4
  %13 = ptrtoint ptr %syscfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %syscfg, align 4
  %enable_reg = getelementptr inbounds %struct.st_wdog_syscfg, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.st_wdog_syscfg, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_mask, align 4
  %spec.select = select i1 %enable, i32 0, i32 %18
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %16, i32 noundef %18, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_keepalive(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %clkrate1.i = getelementptr inbounds %struct.st_wdog, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clkrate1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clkrate1.i, align 4
  %mul.i = mul i32 %5, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !83
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %timeout1, align 4
  %clkrate1.i = getelementptr inbounds %struct.st_wdog, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %clkrate1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clkrate1.i, align 4
  %mul.i = mul i32 %4, %timeout
  %5 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !83
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 18), align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %syscfg.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscfg.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.st_wdog_setup.exit_crit_edge, label %if.then.i

if.end.st_wdog_setup.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %st_wdog_setup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %reset_type_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %reset_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_type_mask.i, align 4
  %warm_reset.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 6
  %12 = ptrtoint ptr %warm_reset.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %warm_reset.i, align 4, !range !82
  %14 = zext i8 %13 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %7, i32 noundef %11, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %st_wdog_setup.exit

st_wdog_setup.exit:                               ; preds = %if.then.i, %if.end.st_wdog_setup.exit_crit_edge
  %regmap5.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap5.i, align 4
  %17 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %syscfg.i, align 4
  %enable_reg.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_mask.i, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_wdog_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %clk = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  tail call void @watchdog_unregister_device(ptr noundef nonnull @st_wdog_dev) #6
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %syscfg.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %syscfg.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.st_wdog_setup.exit_crit_edge, label %if.then.i

if.end.st_wdog_setup.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %st_wdog_setup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %reset_type_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %reset_type_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_type_mask.i, align 4
  %warm_reset.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 6
  %13 = ptrtoint ptr %warm_reset.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %warm_reset.i, align 4, !range !82
  %15 = zext i8 %14 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %8, i32 noundef %12, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %st_wdog_setup.exit

st_wdog_setup.exit:                               ; preds = %if.then.i, %if.end.st_wdog_setup.exit_crit_edge
  %regmap5.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 2
  %16 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap5.i, align 4
  %18 = ptrtoint ptr %syscfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %syscfg.i, align 4
  %enable_reg.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_reg.i, align 4
  %enable_mask.i = getelementptr inbounds %struct.st_wdog_syscfg, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_mask.i, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %21, i32 noundef %23, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 18), align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %st_wdog_setup.exit.cleanup_crit_edge, label %if.then4

st_wdog_setup.exit.cleanup_crit_edge:             ; preds = %st_wdog_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %st_wdog_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = load i32, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 7), align 4
  %clkrate1.i = getelementptr inbounds %struct.st_wdog, ptr %0, i32 0, i32 5
  %26 = ptrtoint ptr %clkrate1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clkrate1.i, align 4
  %mul.i = mul i32 %27, %25
  %28 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #6
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #6, !srcloc !83
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %0, align 4
  %add.ptr3.i = getelementptr i8, ptr %32, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #6, !srcloc !83
  %33 = load ptr, ptr getelementptr inbounds (%struct.watchdog_device, ptr @st_wdog_dev, i32 0, i32 16), align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i12 = getelementptr i8, ptr %35, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 16777216) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %st_wdog_setup.exit.cleanup_crit_edge, %do.end
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_st_lpc_wdt__170_303_st_wdog_driver_init6, !1, !"__initcall__kmod_st_lpc_wdt__170_303_st_wdog_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_st_wdog_driver_exit, !1, !"__exitcall_st_wdog_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 306, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 307, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 296, i32 11}
!12 = !{ptr @st_wdog_driver, !13, !"st_wdog_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 294, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 162, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 164, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @st_wdog_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @st_wdog_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 178, i32 3}
!26 = !{ptr @st_wdog_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @st_wdog_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 187, i32 47}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 189, i32 3}
!32 = !{ptr @st_wdog_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @st_wdog_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 195, i32 3}
!36 = !{ptr @st_wdog_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @st_wdog_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 203, i32 50}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 207, i32 3}
!42 = !{ptr @st_wdog_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @st_wdog_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 215, i32 3}
!46 = !{ptr @st_wdog_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @st_wdog_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 236, i32 2}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @st_wdog_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @st_wdog_probe._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @st_wdog_dev, !56, !"st_wdog_dev", i1 false, i1 false}
!56 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 140, i32 31}
!57 = !{ptr @st_wdog_info, !58, !"st_wdog_info", i1 false, i1 false}
!58 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 127, i32 35}
!59 = !{ptr @st_wdog_ops, !60, !"st_wdog_ops", i1 false, i1 false}
!60 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 132, i32 34}
!61 = !{ptr @st_wdog_match, !62, !"st_wdog_match", i1 false, i1 false}
!62 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 56, i32 34}
!63 = !{ptr @stih407_syscfg, !64, !"stih407_syscfg", i1 false, i1 false}
!64 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 51, i32 30}
!65 = !{ptr @st_wdog_pm_ops, !66, !"st_wdog_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 290, i32 8}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/watchdog/st_lpc_wdt.c", i32 273, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @st_wdog_resume._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @st_wdog_resume._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
!83 = !{i64 2034020}
