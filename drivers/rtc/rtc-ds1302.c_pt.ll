; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1302.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1302.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_ds1302__234_216_ds1302_driver_init6 = internal global ptr @ds1302_driver_init, section ".initcall6.init", align 4
@ds1302_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ds1302_spi_ids, ptr @ds1302_probe, ptr @ds1302_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ds1302_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ds1302_driver_exit = internal global ptr @ds1302_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [48 x i8] c"rtc_ds1302.description=Dallas DS1302 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [47 x i8] c"rtc_ds1302.author=Paul Mundt, David McCullough\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [39 x i8] c"rtc_ds1302.file=drivers/rtc/rtc-ds1302\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"rtc_ds1302.license=GPL v2\00", section ".modinfo", align 1
@ds1302_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ds1302\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1302\00", [21 x i8] zeroinitializer }, align 32
@ds1302_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,ds1302\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ds1302_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad word length\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1302_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1302.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr = internal global ptr @ds1302_probe._entry, section ".printk_index", align 4
@ds1302_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speed is too high\0A\00", [45 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.8 = internal global ptr @ds1302_probe._entry.6, section ".printk_index", align 4
@ds1302_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 123, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bad mode\0A\00", [22 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.11 = internal global ptr @ds1302_probe._entry.9, section ".printk_index", align 4
@ds1302_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"control register read error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.14 = internal global ptr @ds1302_probe._entry.12, section ".printk_index", align 4
@ds1302_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.16 = internal global ptr @ds1302_probe._entry.15, section ".printk_index", align 4
@ds1302_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"junk in control register\0A\00", [38 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.19 = internal global ptr @ds1302_probe._entry.17, section ".printk_index", align 4
@ds1302_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"control register write error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.22 = internal global ptr @ds1302_probe._entry.20, section ".printk_index", align 4
@ds1302_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d reading control register\0A\00", [61 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.25 = internal global ptr @ds1302_probe._entry.23, section ".printk_index", align 4
@ds1302_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to detect chip\0A\00", [41 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.28 = internal global ptr @ds1302_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1302\00", [25 x i8] zeroinitializer }, align 32
@ds1302_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1302_rtc_get_time, ptr @ds1302_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1302_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error %d registering rtc\0A\00", [38 x i8] zeroinitializer }, align 32
@ds1302_probe._entry_ptr.32 = internal global ptr @ds1302_probe._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ds1302_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 208, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ds1302_spi_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 202, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 209, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"ds1302_dt_ids\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 195, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 117, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 123, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 130, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 138, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 144, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 155, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 163, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 170, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 177, i32 44 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"ds1302_rtc_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 99, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1302.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 181, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ds1302_driver_exit, ptr @__initcall__kmod_rtc_ds1302__234_216_ds1302_driver_init6, ptr @ds1302_driver_exit, ptr @ds1302_probe._entry, ptr @ds1302_probe._entry.12, ptr @ds1302_probe._entry.15, ptr @ds1302_probe._entry.17, ptr @ds1302_probe._entry.20, ptr @ds1302_probe._entry.23, ptr @ds1302_probe._entry.26, ptr @ds1302_probe._entry.30, ptr @ds1302_probe._entry.6, ptr @ds1302_probe._entry.9, ptr @ds1302_probe._entry_ptr, ptr @ds1302_probe._entry_ptr.11, ptr @ds1302_probe._entry_ptr.14, ptr @ds1302_probe._entry_ptr.16, ptr @ds1302_probe._entry_ptr.19, ptr @ds1302_probe._entry_ptr.22, ptr @ds1302_probe._entry_ptr.25, ptr @ds1302_probe._entry_ptr.28, ptr @ds1302_probe._entry_ptr.32, ptr @ds1302_probe._entry_ptr.8, ptr @ds1302_driver, ptr @ds1302_spi_ids, ptr @.str, ptr @ds1302_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @ds1302_rtc_ops, ptr @.str.31], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1302_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1302_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ds1302_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1302_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ds1302_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1302_probe(ptr noundef %spi) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf, align 4
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end [
    i8 0, label %entry.if.else_crit_edge
    i8 8, label %entry.if.else_crit_edge142
  ]

entry.if.else_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge142
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %5 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %6)
  %cmp4 = icmp ugt i32 %6, 2000000
  br i1 %cmp4, label %do.end9, label %if.else11

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.else11:                                        ; preds = %if.else
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end19:                                         ; preds = %if.else11
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -113, ptr %addr, align 1
  %call = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 4
  %12 = and i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp30.not = icmp eq i8 %12, 0
  br i1 %cmp30.not, label %if.end27.if.end54_crit_edge, label %if.then32

if.end27.if.end54_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then32:                                        ; preds = %if.end27
  %call34 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call34) #10
  br label %cleanup

if.end42:                                         ; preds = %if.then32
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 4
  %15 = and i8 %14, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp46.not = icmp eq i8 %15, 0
  br i1 %cmp46.not, label %if.end42.if.end54_crit_edge, label %do.end51

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end42.if.end54_crit_edge, %if.end27.if.end54_crit_edge
  %16 = phi i8 [ %14, %if.end42.if.end54_crit_edge ], [ %11, %if.end27.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp57 = icmp eq i8 %16, 0
  br i1 %cmp57, label %if.then59, label %if.end54.if.end92_crit_edge

if.end54.if.end92_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then59:                                        ; preds = %if.end54
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -114, ptr %buf, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %0, align 1
  %call63 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21, i32 noundef %call63) #10
  br label %cleanup

if.end71:                                         ; preds = %if.then59
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -113, ptr %addr, align 1
  %call73 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %call73) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end71
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %21)
  %cmp84.not = icmp eq i8 %21, -128
  br i1 %cmp84.not, label %if.end81.if.end92_crit_edge, label %do.end89

if.end81.if.end92_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end92:                                         ; preds = %if.end81.if.end92_crit_edge, %if.end54.if.end92_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spi, ptr %driver_data.i.i, align 4
  %call94 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef nonnull @.str.29, ptr noundef nonnull @ds1302_rtc_ops, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then96, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.31, i32 noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.end92.cleanup_crit_edge, %do.end89, %do.end79, %do.end69, %do.end51, %do.end40, %do.end25, %do.end16, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %do.end16 ], [ %call, %do.end25 ], [ %call34, %do.end40 ], [ -19, %do.end51 ], [ %call63, %do.end69 ], [ %call73, %do.end79 ], [ -19, %do.end89 ], [ %23, %if.then96 ], [ 0, %if.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ds1302_remove(ptr nocapture noundef writeonly %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1302_rtc_get_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %time) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -65, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #7
  %3 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %call1 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %9 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %call6 = call i32 @_bcd2bin(i8 noundef zeroext %11) #11
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call6, ptr %time, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %14) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %tm_min, align 4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 1
  %call34 = call i32 @_bcd2bin(i8 noundef zeroext %17) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call34, ptr %tm_hour, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %conv38 = zext i8 %20 to i32
  %sub = add nsw i32 %conv38, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %21 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %tm_wday, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 1
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %23) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %24 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call51, ptr %tm_mday, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  %call66 = call i32 @_bcd2bin(i8 noundef zeroext %26) #11
  %sub69 = add i32 %call66, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub69, ptr %tm_mon, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %call82 = call i32 @_bcd2bin(i8 noundef zeroext %29) #11
  %add85 = add i32 %call82, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %30 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add85, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1302_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %time) #2 align 64 {
entry:
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %buf, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 7)
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -114, ptr %buf, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %call3 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %10 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %11 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %12 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %13 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -66, ptr %buf, align 1
  %15 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %time, align 4
  %call9 = call zeroext i8 @_bin2bcd(i32 noundef %16) #11
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call9, ptr %2, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min, align 4
  %call23 = call zeroext i8 @_bin2bcd(i32 noundef %19) #11
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call23, ptr %13, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_hour, align 4
  %call39 = call zeroext i8 @_bin2bcd(i32 noundef %22) #11
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call39, ptr %12, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %24 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mday, align 4
  %call55 = call zeroext i8 @_bin2bcd(i32 noundef %25) #11
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call55, ptr %11, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_mon, align 4
  %add61 = add i32 %28, 1
  %call75 = call zeroext i8 @_bin2bcd(i32 noundef %add61) #11
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call75, ptr %10, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %30 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_wday, align 4
  %32 = trunc i32 %31 to i8
  %conv82 = add i8 %32, 1
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv82, ptr %9, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %34 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year, align 4
  %rem84 = srem i32 %35, 100
  %call98 = call zeroext i8 @_bin2bcd(i32 noundef %rem84) #11
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call98, ptr %8, align 1
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %7, align 1
  %call106 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 9, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call106, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_rtc_ds1302__234_216_ds1302_driver_init6, !1, !"__initcall__kmod_rtc_ds1302__234_216_ds1302_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1302.c", i32 216, i32 1}
!2 = !{ptr @__exitcall_ds1302_driver_exit, !1, !"__exitcall_ds1302_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1302.c", i32 218, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1302.c", i32 219, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds1302.c", i32 220, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds1302.c", i32 209, i32 17}
!12 = !{ptr @ds1302_driver, !13, !"ds1302_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1302.c", i32 208, i32 26}
!14 = !{ptr @ds1302_spi_ids, !15, !"ds1302_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1302.c", i32 202, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds1302.c", i32 117, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ds1302_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ds1302_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-ds1302.c", i32 120, i32 3}
!26 = !{ptr @ds1302_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ds1302_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-ds1302.c", i32 123, i32 3}
!30 = !{ptr @ds1302_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ds1302_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ds1302.c", i32 130, i32 3}
!34 = !{ptr @ds1302_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ds1302_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ds1302_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-ds1302.c", i32 138, i32 4}
!38 = !{ptr @ds1302_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-ds1302.c", i32 144, i32 4}
!41 = !{ptr @ds1302_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ds1302_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ds1302.c", i32 155, i32 4}
!45 = !{ptr @ds1302_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ds1302_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ds1302.c", i32 163, i32 4}
!49 = !{ptr @ds1302_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ds1302_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-ds1302.c", i32 170, i32 4}
!53 = !{ptr @ds1302_probe._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ds1302_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ds1302.c", i32 177, i32 44}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ds1302.c", i32 181, i32 3}
!59 = !{ptr @ds1302_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ds1302_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ds1302_rtc_ops, !62, !"ds1302_rtc_ops", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-ds1302.c", i32 99, i32 35}
!63 = !{ptr @ds1302_dt_ids, !64, !"ds1302_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-ds1302.c", i32 195, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
