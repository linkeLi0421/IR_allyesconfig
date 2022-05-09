; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-moxart.c_pt.bc'
source_filename = "../drivers/rtc/rtc-moxart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.moxart_rtc = type { ptr, %struct.spinlock, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_moxart__228_321_moxart_rtc_driver_init6 = internal global ptr @moxart_rtc_driver_init, section ".initcall6.init", align 4
@moxart_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @moxart_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @moxart_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_moxart_rtc_driver_exit = internal global ptr @moxart_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"rtc_moxart.description=MOXART RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [39 x i8] c"rtc_moxart.file=drivers/rtc/rtc-moxart\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"rtc_moxart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [56 x i8] c"rtc_moxart.author=Jonas Jensen <jonas.jensen@gmail.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"moxart-rtc\00", [21 x i8] zeroinitializer }, align 32
@moxart_rtc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moxa,moxart-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio-rtc-data\00", [18 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid gpio (data): %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"moxart_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-moxart.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr = internal global ptr @moxart_rtc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio-rtc-sclk\00", [18 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid gpio (sclk): %d\0A\00", [39 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.10 = internal global ptr @moxart_rtc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-rtc-reset\00", [17 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid gpio (reset): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.14 = internal global ptr @moxart_rtc_probe._entry.12, section ".printk_index", align 4
@moxart_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&moxart_rtc->rtc_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_data\00", [23 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get rtc_data gpio\0A\00", [39 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.19 = internal global ptr @moxart_rtc_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_sclk\00", [23 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get rtc_sclk gpio\0A\00", [39 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.23 = internal global ptr @moxart_rtc_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_reset\00", [22 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get rtc_reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.27 = internal global ptr @moxart_rtc_probe._entry.25, section ".printk_index", align 4
@moxart_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @moxart_rtc_read_time, ptr @moxart_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"devm_rtc_device_register failed\0A\00", [63 x i8] zeroinitializer }, align 32
@moxart_rtc_probe._entry_ptr.30 = internal global ptr @moxart_rtc_probe._entry.28, section ".printk_index", align 4
@day_of_year = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@moxart_rtc_set_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_moxart\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"moxart_rtc_set_time\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: success tm_year=%d tm_mon=%d\0Atm_mday=%d tm_hour=%d tm_min=%d tm_sec=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"moxart_rtc_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 314, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 317, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"moxart_rtc_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 308, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 251, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 253, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 259, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 261, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 267, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 269, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 274, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 277, i32 61 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 279, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 284, i32 24 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 286, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 291, i32 24 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 293, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"moxart_rtc_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 236, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 301, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"day_of_year\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 61, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [28 x i8] c"../drivers/rtc/rtc-moxart.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 174, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_moxart_rtc_driver_exit, ptr @__initcall__kmod_rtc_moxart__228_321_moxart_rtc_driver_init6, ptr @moxart_rtc_driver_exit, ptr @moxart_rtc_probe._entry, ptr @moxart_rtc_probe._entry.12, ptr @moxart_rtc_probe._entry.17, ptr @moxart_rtc_probe._entry.21, ptr @moxart_rtc_probe._entry.25, ptr @moxart_rtc_probe._entry.28, ptr @moxart_rtc_probe._entry.8, ptr @moxart_rtc_probe._entry_ptr, ptr @moxart_rtc_probe._entry_ptr.10, ptr @moxart_rtc_probe._entry_ptr.14, ptr @moxart_rtc_probe._entry_ptr.19, ptr @moxart_rtc_probe._entry_ptr.23, ptr @moxart_rtc_probe._entry_ptr.27, ptr @moxart_rtc_probe._entry_ptr.30, ptr @moxart_rtc_driver, ptr @.str, ptr @moxart_rtc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @moxart_rtc_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @moxart_rtc_ops, ptr @.str.29, ptr @day_of_year, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxart_rtc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @day_of_year to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @moxart_rtc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moxart_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @moxart_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i124 = tail call i32 @of_get_named_gpio_flags(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null) #4
  %gpio_data = getelementptr inbounds %struct.moxart_rtc, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i124, ptr %gpio_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i124)
  %3 = icmp ult i32 %call.i124, 2048
  br i1 %3, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i124) #7
  %4 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_data, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i125 = tail call i32 @of_get_named_gpio_flags(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #4
  %gpio_sclk = getelementptr inbounds %struct.moxart_rtc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i125, ptr %gpio_sclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i125)
  %9 = icmp ult i32 %call.i125, 2048
  br i1 %9, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i125) #7
  %10 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_sclk, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i126 = tail call i32 @of_get_named_gpio_flags(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #4
  %gpio_reset = getelementptr inbounds %struct.moxart_rtc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i126, ptr %gpio_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i126)
  %15 = icmp ult i32 %call.i126, 2048
  br i1 %15, label %do.body36, label %do.end31

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i126) #7
  %16 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_reset, align 4
  br label %cleanup

do.body36:                                        ; preds = %if.end22
  %rtc_lock = getelementptr inbounds %struct.moxart_rtc, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %rtc_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @moxart_rtc_probe.__key, i16 noundef signext 3) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_data, align 4
  %call42 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end49:                                         ; preds = %do.body36
  %21 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_sclk, align 4
  %call52 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %22, i32 noundef 0, ptr noundef nonnull @.str.20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  %23 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_reset, align 4
  %call62 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %24, i32 noundef 0, ptr noundef nonnull @.str.24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end69, label %do.end67

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end69:                                         ; preds = %if.end59
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %call71 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %26, ptr noundef nonnull @moxart_rtc_ops, ptr noundef null) #4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call71, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end77, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #7
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end69.cleanup_crit_edge, %do.end67, %do.end57, %do.end47, %do.end31, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %do.end47 ], [ %call52, %do.end57 ], [ %call62, %do.end67 ], [ %30, %do.end77 ], [ %17, %do.end31 ], [ %11, %do.end18 ], [ %5, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_lock = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %rtc_lock) #4
  %call1 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -127)
  %conv = zext i8 %call1 to i32
  %and = lshr i32 %conv, 4
  %2 = and i32 %and, 7
  %mul = mul nuw nsw i32 %2, 10
  %and3 = and i32 %conv, 15
  %add = add nuw nsw i32 %mul, %and3
  %3 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %tm, align 4
  %call4 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -125)
  %conv5 = zext i8 %call4 to i32
  %and6 = lshr i32 %conv5, 4
  %4 = and i32 %and6, 7
  %mul8 = mul nuw nsw i32 %4, 10
  %and10 = and i32 %conv5, 15
  %add11 = add nuw nsw i32 %mul8, %and10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add11, ptr %tm_min, align 4
  %call12 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -123)
  %conv13 = zext i8 %call12 to i32
  %and14 = and i32 %conv13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  %and34 = lshr i32 %conv13, 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = and i32 %and34, 1
  %mul18 = mul nuw nsw i32 %6, 10
  %and20 = and i32 %conv13, 15
  %add21 = add nuw nsw i32 %mul18, %and20
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %7 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add21, ptr %tm_hour, align 4
  %and23 = and i32 %conv13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then.if.end41_crit_edge, label %if.then25

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add27 = add nuw nsw i32 %add21, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %add21)
  %cmp = icmp ugt i32 %add21, 11
  %spec.store.select = select i1 %cmp, i32 0, i32 %add27
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %tm_hour, align 4
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = and i32 %and34, 3
  %mul36 = mul nuw nsw i32 %9, 10
  %and38 = and i32 %conv13, 15
  %add39 = add nuw nsw i32 %mul36, %and38
  %tm_hour40 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add39, ptr %tm_hour40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then25, %if.then.if.end41_crit_edge
  %call42 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -121)
  %conv43 = zext i8 %call42 to i32
  %and44 = lshr i32 %conv43, 4
  %11 = and i32 %and44, 3
  %mul46 = mul nuw nsw i32 %11, 10
  %and48 = and i32 %conv43, 15
  %add49 = add nuw nsw i32 %mul46, %and48
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add49, ptr %tm_mday, align 4
  %call50 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -119)
  %conv51 = zext i8 %call50 to i32
  %and52 = lshr i32 %conv51, 4
  %13 = and i32 %and52, 1
  %mul54 = mul nuw nsw i32 %13, 10
  %and56 = and i32 %conv51, 15
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %add57 = add nsw i32 %and56, -1
  %dec = add nsw i32 %add57, %mul54
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec, ptr %tm_mon, align 4
  %call59 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -115)
  %conv60 = zext i8 %call59 to i32
  %15 = lshr i32 %conv60, 4
  %mul63 = mul nuw nsw i32 %15, 10
  %and65 = and i32 %conv60, 15
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add66 = add nuw nsw i32 %and65, 100
  %add68 = add nuw nsw i32 %add66, %mul63
  %16 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add68, ptr %tm_year, align 4
  %call76 = tail call fastcc zeroext i8 @moxart_rtc_read_register(ptr noundef %dev, i8 noundef zeroext -117)
  %17 = and i8 %call76, 15
  %and78 = zext i8 %17 to i32
  %sub = add nsw i32 %and78, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %18 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %tm_wday, align 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %arrayidx = getelementptr [12 x i32], ptr @day_of_year, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mday, align 4
  %sub81 = add i32 %24, %22
  %add83 = add i32 %sub81, -1
  %25 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add83, ptr %tm_yday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp85 = icmp sgt i32 %20, 1
  br i1 %cmp85, label %if.then87, label %if.end41.if.end96_crit_edge

if.end41.if.end96_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then87:                                        ; preds = %if.end41
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year, align 4
  %28 = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool89.not = icmp ne i32 %28, 0
  %rem91 = srem i32 %27, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem91)
  %tobool92.not = icmp eq i32 %rem91, 0
  %or.cond = or i1 %tobool89.not, %tobool92.not
  br i1 %or.cond, label %if.then87.if.end96_crit_edge, label %if.then93

if.then87.if.end96_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then93:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub81, ptr %tm_yday, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then87.if.end96_crit_edge, %if.end41.if.end96_crit_edge
  %tm_isdst = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %30 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tm_isdst, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rtc_lock) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxart_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rtc_lock = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %rtc_lock) #4
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -114, i8 noundef zeroext 0)
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %2 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_year, align 4
  %sub = add i32 %3, -100
  %sub.frozen = freeze i32 %sub
  %div = sdiv i32 %sub.frozen, 10
  %shl = shl i32 %div, 4
  %4 = mul i32 %div, 10
  %rem.decomposed = sub i32 %sub.frozen, %4
  %or = or i32 %shl, %rem.decomposed
  %conv = trunc i32 %or to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -116, i8 noundef zeroext %conv)
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %5 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_mon, align 4
  %add = add i32 %6, 1
  %add.frozen = freeze i32 %add
  %div3 = sdiv i32 %add.frozen, 10
  %shl4 = shl i32 %div3, 4
  %7 = mul i32 %div3, 10
  %rem7.decomposed = sub i32 %add.frozen, %7
  %or8 = or i32 %shl4, %rem7.decomposed
  %conv9 = trunc i32 %or8 to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -120, i8 noundef zeroext %conv9)
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %.frozen = freeze i32 %9
  %div10 = sdiv i32 %.frozen, 10
  %shl11 = shl i32 %div10, 4
  %10 = mul i32 %div10, 10
  %rem13.decomposed = sub i32 %.frozen, %10
  %or14 = or i32 %shl11, %rem13.decomposed
  %conv15 = trunc i32 %or14 to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -122, i8 noundef zeroext %conv15)
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_hour, align 4
  %.frozen73 = freeze i32 %12
  %div16 = sdiv i32 %.frozen73, 10
  %shl17 = shl i32 %div16, 4
  %13 = mul i32 %div16, 10
  %rem19.decomposed = sub i32 %.frozen73, %13
  %or20 = or i32 %shl17, %rem19.decomposed
  %conv21 = trunc i32 %or20 to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -124, i8 noundef zeroext %conv21)
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min, align 4
  %.frozen74 = freeze i32 %15
  %div22 = sdiv i32 %.frozen74, 10
  %shl23 = shl i32 %div22, 4
  %16 = mul i32 %div22, 10
  %rem25.decomposed = sub i32 %.frozen74, %16
  %or26 = or i32 %shl23, %rem25.decomposed
  %conv27 = trunc i32 %or26 to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -126, i8 noundef zeroext %conv27)
  %17 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm, align 4
  %.frozen75 = freeze i32 %18
  %div28 = sdiv i32 %.frozen75, 10
  %shl29 = shl i32 %div28, 4
  %19 = mul i32 %div28, 10
  %rem31.decomposed = sub i32 %.frozen75, %19
  %or32 = or i32 %shl29, %rem31.decomposed
  %conv33 = trunc i32 %or32 to i8
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -128, i8 noundef zeroext %conv33)
  tail call fastcc void @moxart_rtc_write_register(ptr noundef %dev, i8 noundef zeroext -114, i8 noundef zeroext -128)
  tail call void @_raw_spin_unlock_irq(ptr noundef %rtc_lock) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxart_rtc_set_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@moxart_rtc_set_time, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_year, align 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %24 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mday, align 4
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min, align 4
  %30 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxart_rtc_set_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @moxart_rtc_read_register(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !82
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %gpio_data = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_data, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %4) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  %gpio_reset = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_reset, align 4
  %call.i56 = tail call ptr @gpio_to_desc(i32 noundef %6) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i56, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1717984) #4
  tail call fastcc void @moxart_rtc_write_byte(ptr noundef %dev, i8 noundef zeroext %cmd)
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_data, align 4
  %call.i57 = tail call ptr @gpio_to_desc(i32 noundef %9) #4
  %call1.i58 = tail call i32 @gpiod_direction_input(ptr noundef %call.i57) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1717984) #4
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %gpio_sclk.i = getelementptr inbounds %struct.moxart_rtc, ptr %12, i32 0, i32 3
  %gpio_data.i = getelementptr inbounds %struct.moxart_rtc, ptr %12, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end11
  %data.012.i = phi i8 [ 0, %do.end11 ], [ %data.1.i, %for.body.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ 0, %do.end11 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %gpio_sclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_sclk.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %14) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1717984) #4
  %16 = ptrtoint ptr %gpio_sclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_sclk.i, align 4
  %call.i9.i = tail call ptr @gpio_to_desc(i32 noundef %17) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i9.i, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1717984) #4
  %19 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio_data.i, align 4
  %call.i10.i = tail call ptr @gpio_to_desc(i32 noundef %20) #4
  %call1.i.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i10.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  %shl.i = shl nuw nsw i32 1, %i.011.i
  %21 = trunc i32 %shl.i to i8
  %conv3.i = select i1 %tobool.not.i, i8 0, i8 %21
  %data.1.i = or i8 %conv3.i, %data.012.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1717984) #4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %moxart_rtc_read_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

moxart_rtc_read_byte.exit:                        ; preds = %for.body.i
  %gpio_sclk = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_sclk, align 4
  %call.i59 = tail call ptr @gpio_to_desc(i32 noundef %24) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i59, i32 noundef 0) #4
  %25 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_reset, align 4
  %call.i60 = tail call ptr @gpio_to_desc(i32 noundef %26) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i60, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1717984) #4
  br i1 %tobool.not, label %if.then26, label %moxart_rtc_read_byte.exit.do.body28_crit_edge

moxart_rtc_read_byte.exit.do.body28_crit_edge:    ; preds = %moxart_rtc_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body28

if.then26:                                        ; preds = %moxart_rtc_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %moxart_rtc_read_byte.exit.do.body28_crit_edge
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !83
  %and.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !84

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #4, !srcloc !85
  ret i8 %data.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxart_rtc_write_byte(ptr nocapture noundef readonly %dev, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio_sclk = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 3
  %gpio_data = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.012 = phi i8 [ %data, %entry ], [ %11, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_sclk, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #4
  %4 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_data, align 4
  %6 = and i8 %data.addr.012, 1
  %and = zext i8 %6 to i32
  %call.i10 = tail call ptr @gpio_to_desc(i32 noundef %5) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i10, i32 noundef %and) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1717984) #4
  %8 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_sclk, align 4
  %call.i11 = tail call ptr @gpio_to_desc(i32 noundef %9) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i11, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1717984) #4
  %inc = add nuw nsw i32 %i.013, 1
  %11 = lshr i8 %data.addr.012, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxart_rtc_write_register(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !82
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_off() #4
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %gpio_data = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio_data, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %4) #4
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #4
  %gpio_reset = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_reset, align 4
  %call.i52 = tail call ptr @gpio_to_desc(i32 noundef %6) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i52, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1717984) #4
  tail call fastcc void @moxart_rtc_write_byte(ptr noundef %dev, i8 noundef zeroext %cmd)
  tail call fastcc void @moxart_rtc_write_byte(ptr noundef %dev, i8 noundef zeroext %data)
  %gpio_sclk = getelementptr inbounds %struct.moxart_rtc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_sclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_sclk, align 4
  %call.i53 = tail call ptr @gpio_to_desc(i32 noundef %9) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i53, i32 noundef 0) #4
  %10 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_reset, align 4
  %call.i54 = tail call ptr @gpio_to_desc(i32 noundef %11) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i54, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1717984) #4
  br i1 %tobool.not, label %if.then23, label %do.end11.do.body25_crit_edge

do.end11.do.body25_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body25

if.then23:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @trace_hardirqs_on() #4
  br label %do.body25

do.body25:                                        ; preds = %if.then23, %do.end11.do.body25_crit_edge
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !83
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool33.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool33.not, label %if.then37, label %do.body25.do.end40_crit_edge, !prof !84

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #4, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_rtc_moxart__228_321_moxart_rtc_driver_init6, !1, !"__initcall__kmod_rtc_moxart__228_321_moxart_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-moxart.c", i32 321, i32 1}
!2 = !{ptr @__exitcall_moxart_rtc_driver_exit, !1, !"__exitcall_moxart_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-moxart.c", i32 323, i32 1}
!5 = !{ptr @__UNIQUE_ID_file230, !6, !"__UNIQUE_ID_file230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-moxart.c", i32 324, i32 1}
!7 = !{ptr @__UNIQUE_ID_license231, !6, !"__UNIQUE_ID_license231", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author232, !9, !"__UNIQUE_ID_author232", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-moxart.c", i32 325, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-moxart.c", i32 317, i32 12}
!12 = !{ptr @moxart_rtc_driver, !13, !"moxart_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-moxart.c", i32 314, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-moxart.c", i32 251, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-moxart.c", i32 253, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @moxart_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @moxart_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-moxart.c", i32 259, i32 9}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-moxart.c", i32 261, i32 3}
!28 = !{ptr @moxart_rtc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @moxart_rtc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-moxart.c", i32 267, i32 10}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-moxart.c", i32 269, i32 3}
!34 = !{ptr @moxart_rtc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @moxart_rtc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @moxart_rtc_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-moxart.c", i32 274, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-moxart.c", i32 277, i32 61}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-moxart.c", i32 279, i32 3}
!43 = !{ptr @moxart_rtc_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @moxart_rtc_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-moxart.c", i32 284, i32 24}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-moxart.c", i32 286, i32 3}
!49 = !{ptr @moxart_rtc_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @moxart_rtc_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-moxart.c", i32 291, i32 24}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-moxart.c", i32 293, i32 3}
!55 = !{ptr @moxart_rtc_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @moxart_rtc_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-moxart.c", i32 301, i32 3}
!59 = !{ptr @moxart_rtc_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @moxart_rtc_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @moxart_rtc_ops, !62, !"moxart_rtc_ops", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-moxart.c", i32 236, i32 35}
!63 = !{ptr @day_of_year, !64, !"day_of_year", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-moxart.c", i32 61, i32 12}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-moxart.c", i32 174, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @moxart_rtc_set_time.__UNIQUE_ID_ddebug227, !66, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!70 = !{ptr @moxart_rtc_match, !71, !"moxart_rtc_match", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-moxart.c", i32 308, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148698439, i64 2148698444, i64 2148698457, i64 2148698501, i64 2148698535, i64 2148698556}
!82 = !{i64 621589, i64 621650}
!83 = !{i64 624321}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 624606}
