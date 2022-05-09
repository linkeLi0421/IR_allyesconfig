; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rx4581.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rx4581.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_rx4581__237_287_rx4581_driver_init6 = internal global ptr @rx4581_driver_init, section ".initcall6.init", align 4
@rx4581_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @rx4581_id, ptr @rx4581_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rx4581_driver_exit = internal global ptr @rx4581_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [45 x i8] c"rtc_rx4581.description=rx4581 spi RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [30 x i8] c"rtc_rx4581.author=Torben Hohn\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"rtc_rx4581.file=drivers/rtc/rtc-rx4581\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"rtc_rx4581.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [32 x i8] c"rtc_rx4581.alias=spi:rtc-rx4581\00", section ".modinfo", align 1
@rx4581_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"rx4581\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rx4581\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx4581\00", [25 x i8] zeroinitializer }, align 32
@rx4581_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rx4581_get_datetime, ptr @rx4581_set_datetime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to read device flags\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx4581_get_datetime\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rx4581.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry_ptr = internal global ptr @rx4581_get_datetime._entry, section ".printk_index", align 4
@rx4581_get_datetime._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 119, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to write device flags\0A\00", [34 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry_ptr.9 = internal global ptr @rx4581_get_datetime._entry.7, section ".printk_index", align 4
@rx4581_get_datetime._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to read date\0A\00", [43 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry_ptr.12 = internal global ptr @rx4581_get_datetime._entry.10, section ".printk_index", align 4
@rx4581_get_datetime._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry_ptr.14 = internal global ptr @rx4581_get_datetime._entry.13, section ".printk_index", align 4
@rx4581_get_datetime._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 142, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"low voltage detected, date/time is not reliable.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rx4581_get_datetime._entry_ptr.18 = internal global ptr @rx4581_get_datetime._entry.15, section ".printk_index", align 4
@rx4581_get_datetime.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_rx4581\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: raw data is sec=%02x, min=%02x, hr=%02x, wday=%02x, mday=%02x, mon=%02x, year=%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@rx4581_get_datetime.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@rx4581_set_datetime.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx4581_set_datetime\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to read control register\0A\00", [63 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr = internal global ptr @rx4581_set_datetime._entry, section ".printk_index", align 4
@rx4581_set_datetime._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to write control register\0A\00", [62 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.27 = internal global ptr @rx4581_set_datetime._entry.25, section ".printk_index", align 4
@rx4581_set_datetime._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write to date registers\0A\00", [61 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.30 = internal global ptr @rx4581_set_datetime._entry.28, section ".printk_index", align 4
@rx4581_set_datetime._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to read flag register\0A\00", [34 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.33 = internal global ptr @rx4581_set_datetime._entry.31, section ".printk_index", align 4
@rx4581_set_datetime._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.4, i32 228, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to write flag register\0A\00", [33 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.36 = internal global ptr @rx4581_set_datetime._entry.34, section ".printk_index", align 4
@rx4581_set_datetime._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.38 = internal global ptr @rx4581_set_datetime._entry.37, section ".printk_index", align 4
@rx4581_set_datetime._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rx4581_set_datetime._entry_ptr.40 = internal global ptr @rx4581_set_datetime._entry.39, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"rx4581_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 279, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"rx4581_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 273, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 281, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 264, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"rx4581_rtc_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 249, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 118, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 128, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 135, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 141, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 144, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 161, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 176, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 200, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 207, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 214, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 221, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 228, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 235, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private constant [28 x i8] c"../drivers/rtc/rtc-rx4581.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 242, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_rx4581_driver_exit, ptr @__initcall__kmod_rtc_rx4581__237_287_rx4581_driver_init6, ptr @rx4581_driver_exit, ptr @rx4581_get_datetime._entry, ptr @rx4581_get_datetime._entry.10, ptr @rx4581_get_datetime._entry.13, ptr @rx4581_get_datetime._entry.15, ptr @rx4581_get_datetime._entry.7, ptr @rx4581_get_datetime._entry_ptr, ptr @rx4581_get_datetime._entry_ptr.12, ptr @rx4581_get_datetime._entry_ptr.14, ptr @rx4581_get_datetime._entry_ptr.18, ptr @rx4581_get_datetime._entry_ptr.9, ptr @rx4581_set_datetime._entry, ptr @rx4581_set_datetime._entry.25, ptr @rx4581_set_datetime._entry.28, ptr @rx4581_set_datetime._entry.31, ptr @rx4581_set_datetime._entry.34, ptr @rx4581_set_datetime._entry.37, ptr @rx4581_set_datetime._entry.39, ptr @rx4581_set_datetime._entry_ptr, ptr @rx4581_set_datetime._entry_ptr.27, ptr @rx4581_set_datetime._entry_ptr.30, ptr @rx4581_set_datetime._entry_ptr.33, ptr @rx4581_set_datetime._entry_ptr.36, ptr @rx4581_set_datetime._entry_ptr.38, ptr @rx4581_set_datetime._entry_ptr.40, ptr @rx4581_driver, ptr @rx4581_id, ptr @.str, ptr @.str.1, ptr @rx4581_rtc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_get_datetime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_get_datetime._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_get_datetime._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_get_datetime._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_get_datetime._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx4581_set_datetime._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx4581_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rx4581_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx4581_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rx4581_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx4581_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -128, ptr %tmp, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %tmp, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull @rx4581_rtc_ops, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ 0, %if.end6 ], [ %call2.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx4581_get_datetime(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %date = alloca [7 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #7
  %0 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %6 = call ptr @memset(ptr %date, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -114, ptr %data, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %do.body2.preheader, label %do.end

do.body2.preheader:                               ; preds = %entry
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.body2:                                         ; preds = %do.cond33.do.body2_crit_edge, %do.body2.preheader
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body2.if.end15_crit_edge, label %if.then3

do.body2.if.end15_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then3:                                         ; preds = %do.body2
  %and5 = and i8 %10, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 14, ptr %buf.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and5, ptr %8, align 1
  %call3.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8.not = icmp eq i32 %call3.i, 0
  br i1 %cmp8.not, label %if.then3.if.end15_crit_edge, label %do.end13

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end13:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end15:                                         ; preds = %if.then3.if.end15_crit_edge, %do.body2.if.end15_crit_edge
  %14 = ptrtoint ptr %date to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %date, align 1
  %call17 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %date, i32 noundef 1, ptr noundef nonnull %date, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -114, ptr %data, align 1
  %call2.i284 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i284)
  %cmp26.not = icmp eq i32 %call2.i284, 0
  br i1 %cmp26.not, label %do.cond33, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.cond33:                                        ; preds = %if.end24
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  %18 = and i8 %17, 32
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %do.end37, label %do.cond33.do.body2_crit_edge

do.cond33.do.body2_crit_edge:                     ; preds = %do.cond33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.end37:                                         ; preds = %do.cond33
  %19 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool40.not, label %do.end37.do.body46_crit_edge, label %do.end44

do.end37.do.body46_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

do.end44:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %do.body46

do.body46:                                        ; preds = %do.end44, %do.end37.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx4581_get_datetime.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx4581_get_datetime, %cond.end)) #7
          to label %if.then52 [label %cond.end], !srcloc !92

if.then52:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %date, align 1
  %conv54 = zext i8 %21 to i32
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %conv56 = zext i8 %23 to i32
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %conv58 = zext i8 %25 to i32
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %conv60 = zext i8 %27 to i32
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 1
  %conv62 = zext i8 %29 to i32
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %conv64 = zext i8 %31 to i32
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %conv66 = zext i8 %33 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx4581_get_datetime.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv64, i32 noundef %conv66) #7
  br label %cond.end

cond.end:                                         ; preds = %if.then52, %do.body46
  %34 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %date, align 1
  %36 = and i8 %35, 127
  %call85 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call85, ptr %tm, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  %40 = and i8 %39, 127
  %call106 = call i32 @_bcd2bin(i8 noundef zeroext %40) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %41 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call106, ptr %tm_min, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 1
  %44 = and i8 %43, 63
  %call129 = call i32 @_bcd2bin(i8 noundef zeroext %44) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %45 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call129, ptr %tm_hour, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %2, align 1
  %48 = and i8 %47, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  %and134 = zext i8 %48 to i32
  %49 = call i32 @llvm.ctlz.i32(i32 %and134, i1 true) #7, !range !93
  %sub.i.op.i = xor i32 %49, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %50 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i, ptr %tm_wday, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 1
  %53 = and i8 %52, 63
  %call176 = call i32 @_bcd2bin(i8 noundef zeroext %53) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %54 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call176, ptr %tm_mday, align 4
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %4, align 1
  %57 = and i8 %56, 31
  %call199 = call i32 @_bcd2bin(i8 noundef zeroext %57) #11
  %sub202 = add i32 %call199, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %58 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub202, ptr %tm_mon, align 4
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %5, align 1
  %call215 = call i32 @_bcd2bin(i8 noundef zeroext %60) #11
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call215)
  %cmp219 = icmp slt i32 %call215, 70
  %add223 = add i32 %call215, 100
  %spec.select = select i1 %cmp219, i32 %add223, i32 %call215
  %61 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx4581_get_datetime.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx4581_get_datetime, %cleanup)) #7
          to label %if.then239 [label %cleanup], !srcloc !92

if.then239:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm, align 4
  %64 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tm_min, align 4
  %66 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tm_hour, align 4
  %68 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm_mday, align 4
  %70 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tm_mon, align 4
  %72 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tm_year, align 4
  %74 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx4581_get_datetime.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then239, %cond.end, %do.end31, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ -5, %do.end23 ], [ -5, %do.end31 ], [ 0, %if.then239 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx4581_set_datetime(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %buf.i230 = alloca [2 x i8], align 1
  %buf.i227 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [8 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx4581_set_datetime.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx4581_set_datetime, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %13 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %15 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %17 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %19 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx4581_set_datetime.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf, align 1
  %22 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm, align 4
  %call9 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #11
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call9, ptr %0, align 1
  %tm_min13 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %25 = ptrtoint ptr %tm_min13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min13, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #11
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call24, ptr %1, align 1
  %tm_hour30 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %28 = ptrtoint ptr %tm_hour30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_hour30, align 4
  %call41 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #11
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call41, ptr %2, align 1
  %tm_mday47 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mday47, align 4
  %call58 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #11
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call58, ptr %4, align 1
  %tm_mon64 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %34 = ptrtoint ptr %tm_mon64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mon64, align 4
  %add65 = add i32 %35, 1
  %call79 = tail call zeroext i8 @_bin2bcd(i32 noundef %add65) #11
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call79, ptr %5, align 1
  %tm_year85 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %37 = ptrtoint ptr %tm_year85 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_year85, align 4
  %rem86 = srem i32 %38, 100
  %call100 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem86) #11
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call100, ptr %6, align 1
  %tm_wday106 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %40 = ptrtoint ptr %tm_wday106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_wday106, align 4
  %shl107 = shl nuw i32 1, %41
  %conv108 = trunc i32 %shl107 to i8
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv108, ptr %3, align 1
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -113, ptr %data, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not = icmp eq i32 %call2.i, 0
  br i1 %cmp.not, label %if.end116, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end116:                                        ; preds = %do.end
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data, align 1
  %46 = or i8 %45, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %buf.i, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %47, align 1
  %call3.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp120.not = icmp eq i32 %call3.i, 0
  br i1 %cmp120.not, label %if.end126, label %if.end116.cleanup.sink.split_crit_edge

if.end116.cleanup.sink.split_crit_edge:           ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end126:                                        ; preds = %if.end116
  %call127 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf, i32 noundef 8, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128.not = icmp eq i32 %call127, 0
  br i1 %cmp128.not, label %if.end134, label %if.end126.cleanup.sink.split_crit_edge

if.end126.cleanup.sink.split_crit_edge:           ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end134:                                        ; preds = %if.end126
  %50 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -114, ptr %data, align 1
  %call2.i226 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i226)
  %cmp136.not = icmp eq i32 %call2.i226, 0
  br i1 %cmp136.not, label %if.end142, label %if.end134.cleanup.sink.split_crit_edge

if.end134.cleanup.sink.split_crit_edge:           ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end142:                                        ; preds = %if.end134
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data, align 1
  %53 = and i8 %52, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i227) #7
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i227, i32 0, i32 1
  %55 = ptrtoint ptr %buf.i227 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 14, ptr %buf.i227, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %53, ptr %54, align 1
  %call3.i228 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i227, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i227) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i228)
  %cmp146.not = icmp eq i32 %call3.i228, 0
  br i1 %cmp146.not, label %if.end152, label %if.end142.cleanup.sink.split_crit_edge

if.end142.cleanup.sink.split_crit_edge:           ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end152:                                        ; preds = %if.end142
  %57 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -113, ptr %data, align 1
  %call2.i229 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %data, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i229)
  %cmp154.not = icmp eq i32 %call2.i229, 0
  br i1 %cmp154.not, label %if.end160, label %if.end152.cleanup.sink.split_crit_edge

if.end152.cleanup.sink.split_crit_edge:           ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end160:                                        ; preds = %if.end152
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data, align 1
  %60 = and i8 %59, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i230) #7
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i230, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i230 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 15, ptr %buf.i230, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %60, ptr %61, align 1
  %call3.i231 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %buf.i230, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i230) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i231)
  %cmp165.not = icmp eq i32 %call3.i231, 0
  br i1 %cmp165.not, label %if.end160.cleanup_crit_edge, label %if.end160.cleanup.sink.split_crit_edge

if.end160.cleanup.sink.split_crit_edge:           ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end160.cleanup.sink.split_crit_edge, %if.end152.cleanup.sink.split_crit_edge, %if.end142.cleanup.sink.split_crit_edge, %if.end134.cleanup.sink.split_crit_edge, %if.end126.cleanup.sink.split_crit_edge, %if.end116.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.24, %do.end.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end116.cleanup.sink.split_crit_edge ], [ @.str.29, %if.end126.cleanup.sink.split_crit_edge ], [ @.str.32, %if.end134.cleanup.sink.split_crit_edge ], [ @.str.35, %if.end142.cleanup.sink.split_crit_edge ], [ @.str.24, %if.end152.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end160.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.26.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end160.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end160.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_rtc_rx4581__237_287_rx4581_driver_init6, !1, !"__initcall__kmod_rtc_rx4581__237_287_rx4581_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rx4581.c", i32 287, i32 1}
!2 = !{ptr @__exitcall_rx4581_driver_exit, !1, !"__exitcall_rx4581_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rx4581.c", i32 289, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rx4581.c", i32 290, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rx4581.c", i32 291, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rx4581.c", i32 292, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rx4581.c", i32 281, i32 11}
!14 = !{ptr @rx4581_driver, !15, !"rx4581_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rx4581.c", i32 279, i32 26}
!16 = !{ptr @rx4581_id, !17, !"rx4581_id", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rx4581.c", i32 273, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-rx4581.c", i32 264, i32 44}
!20 = !{ptr @rx4581_rtc_ops, !21, !"rx4581_rtc_ops", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-rx4581.c", i32 249, i32 35}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-rx4581.c", i32 108, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rx4581_get_datetime._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rx4581_get_datetime._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-rx4581.c", i32 118, i32 5}
!32 = !{ptr @rx4581_get_datetime._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rx4581_get_datetime._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-rx4581.c", i32 128, i32 4}
!36 = !{ptr @rx4581_get_datetime._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rx4581_get_datetime._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @rx4581_get_datetime._entry.13, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-rx4581.c", i32 135, i32 4}
!40 = !{ptr @rx4581_get_datetime._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-rx4581.c", i32 141, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rx4581_get_datetime._entry.15, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rx4581_get_datetime._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-rx4581.c", i32 144, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rx4581_get_datetime.__UNIQUE_ID_ddebug234, !47, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rx4581.c", i32 161, i32 2}
!52 = !{ptr @rx4581_get_datetime.__UNIQUE_ID_ddebug235, !51, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rx4581.c", i32 176, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rx4581_set_datetime.__UNIQUE_ID_ddebug236, !54, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-rx4581.c", i32 200, i32 3}
!59 = !{ptr @rx4581_set_datetime._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rx4581_set_datetime._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-rx4581.c", i32 207, i32 3}
!63 = !{ptr @rx4581_set_datetime._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rx4581_set_datetime._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-rx4581.c", i32 214, i32 3}
!67 = !{ptr @rx4581_set_datetime._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rx4581_set_datetime._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-rx4581.c", i32 221, i32 3}
!71 = !{ptr @rx4581_set_datetime._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rx4581_set_datetime._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rx4581.c", i32 228, i32 3}
!75 = !{ptr @rx4581_set_datetime._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rx4581_set_datetime._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @rx4581_set_datetime._entry.37, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-rx4581.c", i32 235, i32 3}
!79 = !{ptr @rx4581_set_datetime._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @rx4581_set_datetime._entry.39, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-rx4581.c", i32 242, i32 3}
!82 = !{ptr @rx4581_set_datetime._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148959305, i64 2148959310, i64 2148959323, i64 2148959367, i64 2148959401, i64 2148959422}
!93 = !{i32 0, i32 33}
