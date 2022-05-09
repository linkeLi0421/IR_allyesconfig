; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-m48t59.c_pt.bc'
source_filename = "../drivers/rtc/rtc-m48t59.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.m48t59_plat_data = type { ptr, ptr, i32, ptr, i32 }
%struct.m48t59_private = type { ptr, i32, ptr, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_m48t59.alias=platform:rtc-m48t59\00", section ".modinfo", align 1
@__initcall__kmod_rtc_m48t59__233_484_m48t59_rtc_driver_init6 = internal global ptr @m48t59_rtc_driver_init, section ".initcall6.init", align 4
@m48t59_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @m48t59_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_m48t59_rtc_driver_exit = internal global ptr @m48t59_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [57 x i8] c"rtc_m48t59.author=Mark Zhan <rongkai.zhan@windriver.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [55 x i8] c"rtc_m48t59.description=M48T59/M48T02/M48T08 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [39 x i8] c"rtc_m48t59.file=drivers/rtc/rtc-m48t59\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [23 x i8] c"rtc_m48t59.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-m48t59\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m48t59-\00", [24 x i8] zeroinitializer }, align 32
@m48t59_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown RTC type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m48t59_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-m48t59.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m48t59_rtc_probe._entry_ptr = internal global ptr @m48t59_rtc_probe._entry, section ".printk_index", align 4
@m48t59_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&m48t59->lock\00", [18 x i8] zeroinitializer }, align 32
@m48t59_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @m48t59_rtc_read_time, ptr @m48t59_rtc_set_time, ptr @m48t59_rtc_readalarm, ptr @m48t59_rtc_setalarm, ptr @m48t59_rtc_proc, ptr @m48t59_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@m48t59_rtc_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_m48t59\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m48t59_rtc_read_time\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Century bit is enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@m48t59_rtc_read_time.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.11, i8 0, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RTC read time %ptR\0A\00", [44 x i8] zeroinitializer }, align 32
@m48t59_rtc_set_time.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m48t59_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RTC set time %04d-%02d-%02d %02d/%02d/%02d\0A\00", [52 x i8] zeroinitializer }, align 32
@m48t59_rtc_readalarm.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 46, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m48t59_rtc_readalarm\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RTC read alarm time %ptR\0A\00", [38 x i8] zeroinitializer }, align 32
@m48t59_rtc_setalarm.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"m48t59_rtc_setalarm\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RTC set alarm time %04d-%02d-%02d %02d/%02d/%02d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"battery\09\09: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"m48t59_rtc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 477, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 479, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 365, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 453, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 457, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"m48t59_rtc_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 307, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 82, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 99, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 116, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 186, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 244, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 280, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 281, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [28 x i8] c"../drivers/rtc/rtc-m48t59.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 281, i32 38 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_m48t59_rtc_driver_exit, ptr @__initcall__kmod_rtc_m48t59__233_484_m48t59_rtc_driver_init6, ptr @m48t59_rtc_driver_exit, ptr @m48t59_rtc_probe._entry, ptr @m48t59_rtc_probe._entry_ptr, ptr @m48t59_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @m48t59_rtc_probe.__key, ptr @.str.7, ptr @m48t59_rtc_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t59_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t59_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t59_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m48t59_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @m48t59_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m48t59_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @m48t59_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #6
  %2 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %7 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %8 = call ptr @memset(ptr %id, i32 0, i32 35)
  %9 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @m48t59_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @m48t59_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %11 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %14 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdev, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %16 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %17 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %base_dev, align 4
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %res.0 = phi ptr [ %call2, %entry.if.end6_crit_edge ], [ %call3, %if.then.if.end6_crit_edge ]
  %flags = getelementptr inbounds %struct.resource, ptr %res.0, i32 0, i32 3
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %lor.lhs.false

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tobool10.not = icmp eq ptr %21, null
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_byte, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false11.if.end44_crit_edge

lor.lhs.false11.if.end44_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %and16 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else.if.end44_crit_edge, label %if.then18

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then18:                                        ; preds = %if.else
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %if.then20, label %if.then18.if.end27_crit_edge

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then20:                                        ; preds = %if.then18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.then20.cleanup_crit_edge, label %if.end25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %platform_data.i, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.then18.if.end27_crit_edge
  %pdata.0 = phi ptr [ %1, %if.then18.if.end27_crit_edge ], [ %call.i, %if.end25 ]
  %type28 = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.0, i32 0, i32 2
  %25 = ptrtoint ptr %type28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type28, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %28 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.0, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @m48t59_mem_writeb, ptr %pdata.0, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %read_byte38 = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.0, i32 0, i32 1
  %31 = ptrtoint ptr %read_byte38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_byte38, align 4
  %tobool39.not = icmp eq ptr %32, null
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %read_byte38 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @m48t59_mem_readb, ptr %read_byte38, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge, %if.else.if.end44_crit_edge, %lor.lhs.false11.if.end44_crit_edge
  %pdata.1 = phi ptr [ %1, %lor.lhs.false11.if.end44_crit_edge ], [ %pdata.0, %if.end37.if.end44_crit_edge ], [ %pdata.0, %if.then40 ], [ %1, %if.else.if.end44_crit_edge ]
  %call.i178 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool47.not = icmp eq ptr %call.i178, null
  br i1 %tobool47.not, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %ioaddr = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.1, i32 0, i32 3
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 4
  %36 = ptrtoint ptr %call.i178 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %call.i178, align 4
  %tobool52.not = icmp eq ptr %35, null
  br i1 %tobool52.not, label %if.then53, label %if.end49.if.end62_crit_edge

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then53:                                        ; preds = %if.end49
  %37 = ptrtoint ptr %res.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %res.0, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %res.0, i32 0, i32 1
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %38
  %add.i = add i32 %sub.i, %40
  %call56 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %38, i32 noundef %add.i) #6
  %41 = ptrtoint ptr %call.i178 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call56, ptr %call.i178, align 4
  %tobool59.not = icmp eq ptr %call56, null
  br i1 %tobool59.not, label %if.then53.cleanup_crit_edge, label %if.then53.if.end62_crit_edge

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.then53.if.end62_crit_edge, %if.end49.if.end62_crit_edge
  %call63 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.m48t59_private, ptr %call.i178, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp = icmp slt i32 %call63, 1
  %spec.select = select i1 %cmp, i32 -1, i32 %call63
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp69.not = icmp eq i32 %spec.select, -1
  br i1 %cmp69.not, label %if.end62.if.end78_crit_edge, label %if.then70

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then70:                                        ; preds = %if.end62
  %call.i179 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %spec.select, ptr noundef nonnull @m48t59_rtc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool75.not = icmp eq i32 %call.i179, 0
  br i1 %tobool75.not, label %if.then70.if.end78_crit_edge, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.end78:                                         ; preds = %if.then70.if.end78_crit_edge, %if.end62.if.end78_crit_edge
  %call80 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #6
  %rtc = getelementptr inbounds %struct.m48t59_private, ptr %call.i178, i32 0, i32 2
  %43 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call80, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %call80 to i32
  br label %cleanup

if.end86:                                         ; preds = %if.end78
  %type87 = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.1, i32 0, i32 2
  %45 = ptrtoint ptr %type87 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type87, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %do.end [
    i32 0, label %if.end86.do.body97_crit_edge
    i32 1, label %if.end86.do.body97.sink.split_crit_edge
    i32 2, label %sw.bb91
  ]

if.end86.do.body97.sink.split_crit_edge:          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97.sink.split

if.end86.do.body97_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97

sw.bb91:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body97.sink.split

do.end:                                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

do.body97.sink.split:                             ; preds = %sw.bb91, %if.end86.do.body97.sink.split_crit_edge
  %.sink.ph = phi i32 [ 8176, %sw.bb91 ], [ 2032, %if.end86.do.body97.sink.split_crit_edge ]
  %features = getelementptr inbounds %struct.rtc_device, ptr %call80, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #6
  br label %do.body97

do.body97:                                        ; preds = %do.body97.sink.split, %if.end86.do.body97_crit_edge
  %.sink = phi i32 [ 8176, %if.end86.do.body97_crit_edge ], [ %.sink.ph, %do.body97.sink.split ]
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.1, i32 0, i32 4
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %offset, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %call.i178, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @m48t59_rtc_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i178, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @m48t59_rtc_ops, ptr %ops, align 8
  %offset102 = getelementptr inbounds %struct.m48t59_plat_data, ptr %pdata.1, i32 0, i32 4
  %53 = ptrtoint ptr %offset102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset102, align 4
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %size, align 4
  %56 = load ptr, ptr %rtc, align 4
  %call105 = call i32 @devm_rtc_nvmem_register(ptr noundef %56, ptr noundef nonnull %nvmem_cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %do.body97.cleanup_crit_edge

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rtc, align 4
  %call110 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %do.body97.cleanup_crit_edge, %do.end, %if.then83, %if.then70.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.then83 ], [ -19, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -12, %if.then20.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ -12, %if.then53.cleanup_crit_edge ], [ %call.i179, %if.then70.cleanup_crit_edge ], [ %call105, %do.body97.cleanup_crit_edge ], [ %call110, %if.end108 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_nvram_read(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp920.not = icmp eq i32 %size, 0
  br i1 %cmp920.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %offset11 = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.022 = phi ptr [ %val, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_byte, align 4
  %6 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset11, align 4
  %add = add i32 %7, %cnt.021
  %call12 = tail call zeroext i8 %5(ptr noundef %dev1, i32 noundef %add) #6
  %incdec.ptr = getelementptr i8, ptr %buf.022, i32 1
  %8 = ptrtoint ptr %buf.022 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call12, ptr %buf.022, align 1
  %inc = add nuw i32 %cnt.021, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_nvram_write(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %priv, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp919.not = icmp eq i32 %size, 0
  br i1 %cmp919.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %offset11 = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.021 = phi ptr [ %val, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset11, align 4
  %add = add i32 %7, %cnt.020
  %incdec.ptr = getelementptr i8, ptr %buf.021, i32 1
  %8 = ptrtoint ptr %buf.021 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.021, align 1
  tail call void %5(ptr noundef %dev1, i32 noundef %add, i8 noundef zeroext %9) #6
  %inc = add nuw i32 %cnt.020, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m48t59_mem_writeb(ptr nocapture noundef readonly %dev, i32 noundef %ofs, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %ofs
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @m48t59_mem_readb(ptr nocapture noundef readonly %dev, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %ofs
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  ret i8 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_byte, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %call2 = tail call zeroext i8 %5(ptr noundef %dev_id, i32 noundef %7) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %8 = and i8 %call2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtc = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %10, i32 noundef 1, i32 noundef 160) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_read_time(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add = add i32 %7, 8
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_byte, align 4
  %call9 = tail call zeroext i8 %9(ptr noundef %dev, i32 noundef %add) #6
  %10 = or i8 %call9, 64
  tail call void %5(ptr noundef %dev, i32 noundef %add, i8 noundef zeroext %10) #6
  %11 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_byte, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add14 = add i32 %14, 15
  %call15 = tail call zeroext i8 %12(ptr noundef %dev, i32 noundef %add14) #6
  %call16 = tail call i32 @_bcd2bin(i8 noundef zeroext %call15) #10
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %15 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call16, ptr %tm_year, align 4
  %16 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_byte, align 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %add19 = add i32 %19, 14
  %call20 = tail call zeroext i8 %17(ptr noundef %dev, i32 noundef %add19) #6
  %call21 = tail call i32 @_bcd2bin(i8 noundef zeroext %call20) #10
  %sub = add i32 %call21, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %20 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %tm_mon, align 4
  %21 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_byte, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add24 = add i32 %24, 13
  %call25 = tail call zeroext i8 %22(ptr noundef %dev, i32 noundef %add24) #6
  %call26 = tail call i32 @_bcd2bin(i8 noundef zeroext %call25) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call26, ptr %tm_mday, align 4
  %26 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_byte, align 4
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %add29 = add i32 %29, 12
  %call30 = tail call zeroext i8 %27(ptr noundef %dev, i32 noundef %add29) #6
  %type = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31 = icmp eq i32 %31, 0
  %32 = and i8 %call30, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %32)
  %.not = icmp eq i8 %32, 48
  %or.cond = select i1 %cmp31, i1 %.not, i1 false
  br i1 %or.cond, label %do.body38, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

do.body38:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m48t59_rtc_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m48t59_rtc_read_time, %do.end47)) #6
          to label %if.then45 [label %do.end47], !srcloc !70

if.then45:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m48t59_rtc_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then45, %do.body38
  %33 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_year, align 4
  %add49 = add i32 %34, 100
  store i32 %add49, ptr %tm_year, align 4
  br label %cond.end

cond.end:                                         ; preds = %do.end47, %entry.cond.end_crit_edge
  %35 = and i8 %call30, 7
  %call63 = tail call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %36 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call63, ptr %tm_wday, align 4
  %37 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_byte, align 4
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %add66 = add i32 %40, 11
  %call67 = tail call zeroext i8 %38(ptr noundef %dev, i32 noundef %add66) #6
  %41 = and i8 %call67, 63
  %call71 = tail call i32 @_bcd2bin(i8 noundef zeroext %41) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %42 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call71, ptr %tm_hour, align 4
  %43 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_byte, align 4
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset, align 4
  %add74 = add i32 %46, 10
  %call75 = tail call zeroext i8 %44(ptr noundef %dev, i32 noundef %add74) #6
  %47 = and i8 %call75, 127
  %call79 = tail call i32 @_bcd2bin(i8 noundef zeroext %47) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %48 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call79, ptr %tm_min, align 4
  %49 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_byte, align 4
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset, align 4
  %add82 = add i32 %52, 9
  %call83 = tail call zeroext i8 %50(ptr noundef %dev, i32 noundef %add82) #6
  %53 = and i8 %call83, 127
  %call87 = tail call i32 @_bcd2bin(i8 noundef zeroext %53) #10
  %54 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call87, ptr %tm, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %offset, align 4
  %add90 = add i32 %58, 8
  %59 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_byte, align 4
  %call94 = tail call zeroext i8 %60(ptr noundef %dev, i32 noundef %add90) #6
  %61 = and i8 %call94, -65
  tail call void %56(ptr noundef %dev, i32 noundef %add90, i8 noundef zeroext %61) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m48t59_rtc_read_time.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m48t59_rtc_read_time, %do.end116)) #6
          to label %if.then113 [label %do.end116], !srcloc !70

if.then113:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m48t59_rtc_read_time.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %tm) #6
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %cond.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m48t59_rtc_set_time.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m48t59_rtc_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %5, 1900
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %6 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %14 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m48t59_rtc_set_time.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %add, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %add18 = add i32 %19, 8
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_byte, align 4
  %call21 = tail call zeroext i8 %21(ptr noundef %dev, i32 noundef %add18) #6
  %22 = or i8 %call21, -128
  tail call void %17(ptr noundef %dev, i32 noundef %add18, i8 noundef zeroext %22) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add26 = add i32 %26, 9
  %27 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #10
  %conv35 = and i8 %call33, 127
  tail call void %24(ptr noundef %dev, i32 noundef %add26, i8 noundef zeroext %conv35) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset, align 4
  %add38 = add i32 %32, 10
  %tm_min39 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %33 = ptrtoint ptr %tm_min39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_min39, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #10
  %conv55 = and i8 %call50, 127
  tail call void %30(ptr noundef %dev, i32 noundef %add38, i8 noundef zeroext %conv55) #6
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add58 = add i32 %38, 11
  %tm_hour59 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %39 = ptrtoint ptr %tm_hour59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_hour59, align 4
  %call70 = tail call zeroext i8 @_bin2bcd(i32 noundef %40) #10
  %conv75 = and i8 %call70, 63
  tail call void %36(ptr noundef %dev, i32 noundef %add58, i8 noundef zeroext %conv75) #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset, align 4
  %add78 = add i32 %44, 13
  %tm_mday79 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %45 = ptrtoint ptr %tm_mday79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_mday79, align 4
  %call90 = tail call zeroext i8 @_bin2bcd(i32 noundef %46) #10
  %conv95 = and i8 %call90, 63
  tail call void %42(ptr noundef %dev, i32 noundef %add78, i8 noundef zeroext %conv95) #6
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %add98 = add i32 %50, 14
  %tm_mon99 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %51 = ptrtoint ptr %tm_mon99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_mon99, align 4
  %add100 = add i32 %52, 1
  %call114 = tail call zeroext i8 @_bin2bcd(i32 noundef %add100) #10
  %conv119 = and i8 %call114, 31
  tail call void %48(ptr noundef %dev, i32 noundef %add98, i8 noundef zeroext %conv119) #6
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset, align 4
  %add122 = add i32 %56, 15
  %rem123254 = urem i32 %5, 100
  %call134 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem123254) #10
  tail call void %54(ptr noundef %dev, i32 noundef %add122, i8 noundef zeroext %call134) #6
  %type = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp139 = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %5)
  %59 = icmp ult i32 %5, 100
  %or.cond = select i1 %cmp139, i1 true, i1 %59
  %val.0 = select i1 %or.cond, i8 0, i8 48
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %60 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tm_wday, align 4
  %call155 = tail call zeroext i8 @_bin2bcd(i32 noundef %61) #10
  %62 = and i8 %call155, 7
  %or161 = or i8 %val.0, %62
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  %add165 = add i32 %66, 12
  tail call void %64(ptr noundef %dev, i32 noundef %add165, i8 noundef zeroext %or161) #6
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset, align 4
  %add168 = add i32 %70, 8
  %71 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_byte, align 4
  %call172 = tail call zeroext i8 %72(ptr noundef %dev, i32 noundef %add168) #6
  %73 = and i8 %call172, 127
  tail call void %68(ptr noundef %dev, i32 noundef %add168, i8 noundef zeroext %73) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_readalarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %irq = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add = add i32 %9, 8
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_byte, align 4
  %call10 = tail call zeroext i8 %11(ptr noundef %dev, i32 noundef %add) #6
  %12 = or i8 %call10, 64
  tail call void %7(ptr noundef %dev, i32 noundef %add, i8 noundef zeroext %12) #6
  %13 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_byte, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add15 = add i32 %16, 15
  %call16 = tail call zeroext i8 %14(ptr noundef %dev, i32 noundef %add15) #6
  %call17 = tail call i32 @_bcd2bin(i8 noundef zeroext %call16) #10
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17, ptr %tm_year, align 4
  %18 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_byte, align 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add20 = add i32 %21, 14
  %call21 = tail call zeroext i8 %19(ptr noundef %dev, i32 noundef %add20) #6
  %call22 = tail call i32 @_bcd2bin(i8 noundef zeroext %call21) #10
  %sub = add i32 %call22, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %tm_mon, align 4
  %23 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_byte, align 4
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %add25 = add i32 %26, 12
  %call26 = tail call zeroext i8 %24(ptr noundef %dev, i32 noundef %add25) #6
  %27 = and i8 %call26, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %27)
  %.not = icmp eq i8 %27, 48
  br i1 %.not, label %if.then31, label %do.body2.if.end34_crit_edge

do.body2.if.end34_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_year, align 4
  %add33 = add i32 %29, 100
  store i32 %add33, ptr %tm_year, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %do.body2.if.end34_crit_edge
  %30 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_byte, align 4
  %32 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset, align 4
  %add37 = add i32 %33, 5
  %call38 = tail call zeroext i8 %31(ptr noundef %dev, i32 noundef %add37) #6
  %call39 = tail call i32 @_bcd2bin(i8 noundef zeroext %call38) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call39, ptr %tm_mday, align 4
  %35 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_byte, align 4
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add42 = add i32 %38, 4
  %call43 = tail call zeroext i8 %36(ptr noundef %dev, i32 noundef %add42) #6
  %call44 = tail call i32 @_bcd2bin(i8 noundef zeroext %call43) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call44, ptr %tm_hour, align 4
  %40 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_byte, align 4
  %42 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset, align 4
  %add47 = add i32 %43, 3
  %call48 = tail call zeroext i8 %41(ptr noundef %dev, i32 noundef %add47) #6
  %call49 = tail call i32 @_bcd2bin(i8 noundef zeroext %call48) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call49, ptr %tm_min, align 4
  %45 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_byte, align 4
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset, align 4
  %add52 = add i32 %48, 2
  %call53 = tail call zeroext i8 %46(ptr noundef %dev, i32 noundef %add52) #6
  %call54 = tail call i32 @_bcd2bin(i8 noundef zeroext %call53) #10
  %49 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call54, ptr %time, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset, align 4
  %add57 = add i32 %53, 8
  %54 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_byte, align 4
  %call61 = tail call zeroext i8 %55(ptr noundef %dev, i32 noundef %add57) #6
  %56 = and i8 %call61, -65
  tail call void %51(ptr noundef %dev, i32 noundef %add57, i8 noundef zeroext %56) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m48t59_rtc_readalarm.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m48t59_rtc_readalarm, %do.end76)) #6
          to label %if.then73 [label %do.end76], !srcloc !70

if.then73:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m48t59_rtc_readalarm.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %time) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %if.end34
  %call77 = tail call i32 @rtc_valid_tm(ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %do.end76 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_setalarm(ptr noundef %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_year, align 4
  %irq = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %conv5 = and i32 %9, 255
  %10 = add nsw i32 %conv5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %11 = icmp ult i32 %10, 31
  br i1 %11, label %cond.end18, label %if.end4.if.then24_crit_edge

if.end4.if.then24_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

cond.end18:                                       ; preds = %if.end4
  %call15 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv5) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call15)
  %cmp22 = icmp eq i8 %call15, -1
  br i1 %cmp22, label %cond.end18.if.then24_crit_edge, label %cond.end18.if.end27_crit_edge

cond.end18.if.end27_crit_edge:                    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

cond.end18.if.then24_crit_edge:                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %cond.end18.if.then24_crit_edge, %if.end4.if.then24_crit_edge
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_byte, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add25 = add i32 %15, 13
  %call26 = tail call zeroext i8 %13(ptr noundef %dev, i32 noundef %add25) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %cond.end18.if.end27_crit_edge
  %mday.0 = phi i8 [ %call26, %if.then24 ], [ %call15, %cond.end18.if.end27_crit_edge ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %conv29 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %conv29)
  %cmp30 = icmp ult i32 %conv29, 24
  br i1 %cmp30, label %cond.false40, label %if.end27.cond.end47_crit_edge

if.end27.cond.end47_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end47

cond.false40:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv29) #10
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false40, %if.end27.cond.end47_crit_edge
  %cond48 = phi i8 [ %call42, %cond.false40 ], [ 0, %if.end27.cond.end47_crit_edge ]
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %conv51 = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv51)
  %cmp52 = icmp ult i32 %conv51, 60
  br i1 %cmp52, label %cond.false62, label %cond.end47.cond.end69_crit_edge

cond.end47.cond.end69_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end69

cond.false62:                                     ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv51) #10
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false62, %cond.end47.cond.end69_crit_edge
  %cond70 = phi i8 [ %call64, %cond.false62 ], [ 0, %cond.end47.cond.end69_crit_edge ]
  %20 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time, align 4
  %conv73 = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv73)
  %cmp74 = icmp ult i32 %conv73, 60
  br i1 %cmp74, label %cond.false84, label %cond.end69.cond.end91_crit_edge

cond.end69.cond.end91_crit_edge:                  ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end91

cond.false84:                                     ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv73) #10
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false84, %cond.end69.cond.end91_crit_edge
  %cond92 = phi i8 [ %call86, %cond.false84 ], [ 0, %cond.end69.cond.end91_crit_edge ]
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %offset101 = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset101, align 4
  %add102 = add i32 %25, 8
  %read_byte103 = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %read_byte103 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_byte103, align 4
  %call106 = tail call zeroext i8 %27(ptr noundef %dev, i32 noundef %add102) #6
  %28 = or i8 %call106, -128
  tail call void %23(ptr noundef %dev, i32 noundef %add102, i8 noundef zeroext %28) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset101, align 4
  %add111 = add i32 %32, 5
  tail call void %30(ptr noundef %dev, i32 noundef %add111, i8 noundef zeroext %mday.0) #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset101, align 4
  %add114 = add i32 %36, 4
  tail call void %34(ptr noundef %dev, i32 noundef %add114, i8 noundef zeroext %cond48) #6
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset101, align 4
  %add117 = add i32 %40, 3
  tail call void %38(ptr noundef %dev, i32 noundef %add117, i8 noundef zeroext %cond70) #6
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset101, align 4
  %add120 = add i32 %44, 2
  tail call void %42(ptr noundef %dev, i32 noundef %add120, i8 noundef zeroext %cond92) #6
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = ptrtoint ptr %offset101 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset101, align 4
  %add123 = add i32 %48, 8
  %49 = ptrtoint ptr %read_byte103 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_byte103, align 4
  %call127 = tail call zeroext i8 %50(ptr noundef %dev, i32 noundef %add123) #6
  %51 = and i8 %call127, 127
  tail call void %46(ptr noundef %dev, i32 noundef %add123, i8 noundef zeroext %51) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call98) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m48t59_rtc_setalarm.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m48t59_rtc_setalarm, %cleanup)) #6
          to label %if.then137 [label %cleanup], !srcloc !70

if.then137:                                       ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #8
  %add138 = add nuw i32 %5, 1900
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_mon, align 4
  %54 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_mday, align 4
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_hour, align 4
  %58 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tm_min, align 4
  %60 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %time, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m48t59_rtc_setalarm.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %add138, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %cond.end91, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then137 ], [ 0, %cond.end91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_proc(ptr noundef %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %read_byte = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_byte, align 4
  %offset = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %call7 = tail call zeroext i8 %5(ptr noundef %dev, i32 noundef %7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  %8 = and i8 %call7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m48t59_rtc_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.m48t59_private, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %offset8 = getelementptr inbounds %struct.m48t59_plat_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset8, align 4
  %add9 = add i32 %7, 6
  %. = select i1 %tobool.not, i8 0, i8 -128
  tail call void %5(ptr noundef %dev, i32 noundef %add9, i8 noundef zeroext %.) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_alias232, !1, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-m48t59.c", i32 475, i32 1}
!2 = !{ptr @__initcall__kmod_rtc_m48t59__233_484_m48t59_rtc_driver_init6, !3, !"__initcall__kmod_rtc_m48t59__233_484_m48t59_rtc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-m48t59.c", i32 484, i32 1}
!4 = !{ptr @__exitcall_m48t59_rtc_driver_exit, !3, !"__exitcall_m48t59_rtc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-m48t59.c", i32 486, i32 1}
!7 = !{ptr @__UNIQUE_ID_description235, !8, !"__UNIQUE_ID_description235", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-m48t59.c", i32 487, i32 1}
!9 = !{ptr @__UNIQUE_ID_file236, !10, !"__UNIQUE_ID_file236", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-m48t59.c", i32 488, i32 1}
!11 = !{ptr @__UNIQUE_ID_license237, !10, !"__UNIQUE_ID_license237", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-m48t59.c", i32 479, i32 11}
!14 = !{ptr @m48t59_rtc_driver, !15, !"m48t59_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-m48t59.c", i32 477, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-m48t59.c", i32 365, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-m48t59.c", i32 453, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @m48t59_rtc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @m48t59_rtc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @m48t59_rtc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-m48t59.c", i32 457, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @m48t59_rtc_ops, !30, !"m48t59_rtc_ops", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-m48t59.c", i32 307, i32 35}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-m48t59.c", i32 82, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @m48t59_rtc_read_time.__UNIQUE_ID_ddebug227, !32, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-m48t59.c", i32 99, i32 2}
!38 = !{ptr @m48t59_rtc_read_time.__UNIQUE_ID_ddebug228, !37, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-m48t59.c", i32 116, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @m48t59_rtc_set_time.__UNIQUE_ID_ddebug229, !40, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-m48t59.c", i32 186, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @m48t59_rtc_readalarm.__UNIQUE_ID_ddebug230, !44, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-m48t59.c", i32 244, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @m48t59_rtc_setalarm.__UNIQUE_ID_ddebug231, !48, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-m48t59.c", i32 280, i32 18}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-m48t59.c", i32 281, i32 30}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-m48t59.c", i32 281, i32 38}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2153807235}
!67 = !{i64 4046152}
!68 = !{i64 4046547}
!69 = !{i64 2153807523}
!70 = !{i64 2148702244, i64 2148702249, i64 2148702262, i64 2148702306, i64 2148702340, i64 2148702361}
