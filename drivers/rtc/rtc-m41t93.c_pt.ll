; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-m41t93.c_pt.bc'
source_filename = "../drivers/rtc/rtc-m41t93.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_m41t93__237_201_m41t93_driver_init6 = internal global ptr @m41t93_driver_init, section ".initcall6.init", align 4
@m41t93_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @m41t93_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_m41t93_driver_exit = internal global ptr @m41t93_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [53 x i8] c"rtc_m41t93.author=Nikolaus Voss <n.voss@weinmann.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [52 x i8] c"rtc_m41t93.description=Driver for ST M41T93 SPI RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"rtc_m41t93.file=drivers/rtc/rtc-m41t93\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"rtc_m41t93.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [32 x i8] c"rtc_m41t93.alias=spi:rtc-m41t93\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-m41t93\00", [21 x i8] zeroinitializer }, align 32
@m41t93_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not found 0x%x.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m41t93_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-m41t93.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m41t93_probe._entry_ptr = internal global ptr @m41t93_probe._entry, section ".printk_index", align 4
@m41t93_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @m41t93_get_time, ptr @m41t93_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@m41t93_get_time.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_m41t93\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m41t93_get_time\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HT bit is set, reenable clock update.\0A\00", [57 x i8] zeroinitializer }, align 32
@m41t93_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 132, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"OF bit is set, write time to restart.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@m41t93_get_time._entry_ptr = internal global ptr @m41t93_get_time._entry, section ".printk_index", align 4
@m41t93_get_time._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 136, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BL bit is set, replace battery.\0A\00", [63 x i8] zeroinitializer }, align 32
@m41t93_get_time._entry_ptr.13 = internal global ptr @m41t93_get_time._entry.11, section ".printk_index", align 4
@m41t93_get_time.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.14, i8 0, i8 39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@__const.m41t93_set_time.buf = private unnamed_addr constant <{ i8, [8 x i8] }> <{ i8 -128, [8 x i8] zeroinitializer }>, align 1
@m41t93_set_time.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.3, ptr @.str.14, i8 0, i8 14, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m41t93_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@m41t93_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 59, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported date (before 2000-01-01).\0A\00", [57 x i8] zeroinitializer }, align 32
@m41t93_set_time._entry_ptr = internal global ptr @m41t93_set_time._entry, section ".printk_index", align 4
@m41t93_set_time._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 68, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"OF bit is set, resetting.\0A\00", [37 x i8] zeroinitializer }, align 32
@m41t93_set_time._entry_ptr.21 = internal global ptr @m41t93_set_time._entry.19, section ".printk_index", align 4
@m41t93_set_time._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.3, i32 80, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"OF bit is still set, kickstarting clock.\0A\00", [54 x i8] zeroinitializer }, align 32
@m41t93_set_time._entry_ptr.24 = internal global ptr @m41t93_set_time._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"m41t93_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 194, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 196, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 180, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"m41t93_rtc_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 163, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 121, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 132, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 136, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 153, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 52, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 59, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 68, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [28 x i8] c"../drivers/rtc/rtc-m41t93.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 79, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_m41t93_driver_exit, ptr @__initcall__kmod_rtc_m41t93__237_201_m41t93_driver_init6, ptr @m41t93_driver_exit, ptr @m41t93_get_time._entry, ptr @m41t93_get_time._entry.11, ptr @m41t93_get_time._entry_ptr, ptr @m41t93_get_time._entry_ptr.13, ptr @m41t93_probe._entry, ptr @m41t93_probe._entry_ptr, ptr @m41t93_set_time._entry, ptr @m41t93_set_time._entry.19, ptr @m41t93_set_time._entry.22, ptr @m41t93_set_time._entry_ptr, ptr @m41t93_set_time._entry_ptr.21, ptr @m41t93_set_time._entry_ptr.24, ptr @m41t93_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m41t93_rtc_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_get_time._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_set_time._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41t93_set_time._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t93_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @m41t93_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m41t93_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @m41t93_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t93_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %1 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #7
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %result.i, align 1, !annotation !69
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %do.end

spi_w8r8.exit:                                    ; preds = %entry
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %and = and i32 %conv.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.end, label %spi_w8r8.exit.do.end_crit_edge

spi_w8r8.exit.do.end_crit_edge:                   ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %spi_w8r8.exit.do.end_crit_edge, %spi_w8r8.exit.thread
  %cond.i25 = phi i32 [ %call.i, %spi_w8r8.exit.thread ], [ %conv.i, %spi_w8r8.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %cond.i25) #10
  br label %cleanup

if.end:                                           ; preds = %spi_w8r8.exit
  %5 = load ptr, ptr getelementptr inbounds (%struct.spi_driver, ptr @m41t93_driver, i32 0, i32 4), align 4
  %call4 = call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef %5, ptr noundef nonnull @m41t93_rtc_ops, ptr noundef null) #7
  %cmp.i19 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %6, %if.then6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t93_get_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %cmd.addr.i223 = alloca i8, align 1
  %result.i224 = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [2 x i8], align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %start_addr = alloca i8, align 1
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_addr) #7
  %0 = ptrtoint ptr %start_addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %start_addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %9 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 12, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #7
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %result.i, align 1, !annotation !69
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %entry
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %result.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %spi_w8r8.exit.if.end14_crit_edge, label %do.body

spi_w8r8.exit.if.end14_crit_edge:                 ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %spi_w8r8.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m41t93_get_time.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m41t93_get_time, %do.end)) #7
          to label %if.then9 [label %do.end], !srcloc !70

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m41t93_get_time.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %conv = and i8 %12, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -116, ptr %buf.i, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end.m41t93_set_reg.exit_crit_edge

do.end.m41t93_set_reg.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %m41t93_set_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %m41t93_set_reg.exit

m41t93_set_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %do.end.m41t93_set_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end14

if.end14:                                         ; preds = %m41t93_set_reg.exit, %spi_w8r8.exit.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i223)
  %31 = ptrtoint ptr %cmd.addr.i223 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 15, ptr %cmd.addr.i223, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i224) #7
  %32 = ptrtoint ptr %result.i224 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %result.i224, align 1, !annotation !69
  %call.i225 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i223, i32 noundef 1, ptr noundef nonnull %result.i224, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp.i226 = icmp slt i32 %call.i225, 0
  br i1 %cmp.i226, label %spi_w8r8.exit230.thread, label %spi_w8r8.exit230

spi_w8r8.exit230.thread:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i224) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i223)
  br label %cleanup

spi_w8r8.exit230:                                 ; preds = %if.end14
  %33 = ptrtoint ptr %result.i224 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %result.i224, align 1
  %conv.i227 = zext i8 %34 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i224) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i223)
  %and20 = and i32 %conv.i227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %spi_w8r8.exit230.if.end27_crit_edge, label %if.then22

spi_w8r8.exit230.if.end27_crit_edge:              ; preds = %spi_w8r8.exit230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %spi_w8r8.exit230
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %spi_w8r8.exit230.if.end27_crit_edge
  %ret.0 = phi i32 [ -22, %if.then22 ], [ 0, %spi_w8r8.exit230.if.end27_crit_edge ]
  %and28 = and i32 %conv.i227, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end35_crit_edge, label %do.end33

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end33, %if.end27.if.end35_crit_edge
  %call36 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %start_addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %cond.end

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %1, align 1
  %call47 = call i32 @_bcd2bin(i8 noundef zeroext %36) #11
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call47, ptr %tm, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 2
  %call60 = call i32 @_bcd2bin(i8 noundef zeroext %39) #11
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %40 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call60, ptr %tm_min, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  %43 = and i8 %42, 63
  %call83 = call i32 @_bcd2bin(i8 noundef zeroext %43) #11
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %44 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call83, ptr %tm_hour, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %5, align 1
  %call98 = call i32 @_bcd2bin(i8 noundef zeroext %46) #11
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %47 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call98, ptr %tm_mday, align 4
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %6, align 2
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %49) #11
  %sub = add i32 %call113, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %50 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub, ptr %tm_mon, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 4
  %53 = and i8 %52, 15
  %call136 = call i32 @_bcd2bin(i8 noundef zeroext %53) #11
  %sub139 = add i32 %call136, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %54 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub139, ptr %tm_wday, align 4
  %55 = lshr i8 %42, 6
  %narrow = add nuw nsw i8 %55, 1
  %add143 = zext i8 %narrow to i32
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %7, align 1
  %call156 = call i32 @_bcd2bin(i8 noundef zeroext %57) #11
  %mul159 = mul nuw nsw i32 %add143, 100
  %add160 = add i32 %call156, %mul159
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %58 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add160, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m41t93_get_time.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m41t93_get_time, %cleanup)) #7
          to label %if.then175 [label %cleanup], !srcloc !70

if.then175:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm, align 4
  %61 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tm_min, align 4
  %63 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tm_hour, align 4
  %65 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_mday, align 4
  %67 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tm_mon, align 4
  %69 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tm_year, align 4
  %71 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m41t93_get_time.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %cond.end, %if.end35.cleanup_crit_edge, %spi_w8r8.exit230.thread, %spi_w8r8.exit.thread
  %retval.0 = phi i32 [ %call36, %if.end35.cleanup_crit_edge ], [ %ret.0, %if.then175 ], [ %call.i, %spi_w8r8.exit.thread ], [ %call.i225, %spi_w8r8.exit230.thread ], [ %ret.0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41t93_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd.addr.i239 = alloca i8, align 1
  %result.i240 = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [2 x i8], align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #7
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.m41t93_set_time.buf, i32 9)
  %arrayidx = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m41t93_set_time.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@m41t93_set_time, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %3 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %5 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %7 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %9 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %11 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %13 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m41t93_set_time.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tm_year6 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %15 = ptrtoint ptr %tm_year6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_year6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %16)
  %cmp = icmp slt i32 %16, 100
  br i1 %cmp, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %17 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #7
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %result.i, align 1, !annotation !69
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %if.end12
  %19 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %result.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool17.not = icmp eq i8 %21, 0
  br i1 %tobool17.not, label %spi_w8r8.exit.if.end46_crit_edge, label %do.end21

spi_w8r8.exit.if.end46_crit_edge:                 ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end21:                                         ; preds = %spi_w8r8.exit
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %conv = and i8 %20, -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -113, ptr %buf.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %25 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 92)
  %27 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %29 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end21.m41t93_set_reg.exit_crit_edge

do.end21.m41t93_set_reg.exit_crit_edge:           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %m41t93_set_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %m41t93_set_reg.exit

m41t93_set_reg.exit:                              ; preds = %if.end.i.i.i.i.i.i.i, %do.end21.m41t93_set_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i239)
  %39 = ptrtoint ptr %cmd.addr.i239 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 15, ptr %cmd.addr.i239, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i240) #7
  %40 = ptrtoint ptr %result.i240 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %result.i240, align 1, !annotation !69
  %call.i241 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i239, i32 noundef 1, ptr noundef nonnull %result.i240, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp.i242 = icmp slt i32 %call.i241, 0
  br i1 %cmp.i242, label %spi_w8r8.exit246.thread, label %spi_w8r8.exit246

spi_w8r8.exit246.thread:                          ; preds = %m41t93_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i240) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i239)
  br label %cleanup

spi_w8r8.exit246:                                 ; preds = %m41t93_set_reg.exit
  %41 = ptrtoint ptr %result.i240 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %result.i240, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i240) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i239)
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool30.not = icmp eq i8 %43, 0
  br i1 %tobool30.not, label %spi_w8r8.exit246.if.end46_crit_edge, label %if.then31

spi_w8r8.exit246.if.end46_crit_edge:              ; preds = %spi_w8r8.exit246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then31:                                        ; preds = %spi_w8r8.exit246
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %46 = or i8 %45, -128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  call fastcc void @m41t93_set_reg(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext %46)
  %47 = and i8 %45, 127
  call fastcc void @m41t93_set_reg(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext %47)
  br label %if.end46

if.end46:                                         ; preds = %if.then31, %spi_w8r8.exit246.if.end46_crit_edge, %spi_w8r8.exit.if.end46_crit_edge
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx, align 1
  %49 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm, align 4
  %call53 = call zeroext i8 @_bin2bcd(i32 noundef %50) #11
  %arrayidx56 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call53, ptr %arrayidx56, align 1
  %tm_min57 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %52 = ptrtoint ptr %tm_min57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_min57, align 4
  %call68 = call zeroext i8 @_bin2bcd(i32 noundef %53) #11
  %arrayidx73 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %call68, ptr %arrayidx73, align 1
  %tm_hour74 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %55 = ptrtoint ptr %tm_hour74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_hour74, align 4
  %call85 = call zeroext i8 @_bin2bcd(i32 noundef %56) #11
  %57 = ptrtoint ptr %tm_year6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tm_year6, align 4
  %.frozen = freeze i32 %58
  %div90 = sdiv i32 %.frozen, 100
  %div90.tr = trunc i32 %div90 to i8
  %59 = shl i8 %div90.tr, 6
  %60 = add i8 %59, -64
  %conv93 = or i8 %60, %call85
  %arrayidx94 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %61 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv93, ptr %arrayidx94, align 1
  %tm_mday95 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %62 = ptrtoint ptr %tm_mday95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_mday95, align 4
  %call106 = call zeroext i8 @_bin2bcd(i32 noundef %63) #11
  %arrayidx111 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %64 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call106, ptr %arrayidx111, align 1
  %tm_wday112 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %65 = ptrtoint ptr %tm_wday112 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_wday112, align 4
  %add113 = add i32 %66, 1
  %call127 = call zeroext i8 @_bin2bcd(i32 noundef %add113) #11
  %arrayidx132 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %67 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call127, ptr %arrayidx132, align 1
  %tm_mon133 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %68 = ptrtoint ptr %tm_mon133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm_mon133, align 4
  %add134 = add i32 %69, 1
  %call148 = call zeroext i8 @_bin2bcd(i32 noundef %add134) #11
  %arrayidx153 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %70 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %call148, ptr %arrayidx153, align 1
  %71 = mul i32 %div90, 100
  %rem155.decomposed = sub i32 %.frozen, %71
  %call169 = call zeroext i8 @_bin2bcd(i32 noundef %rem155.decomposed) #11
  %arrayidx174 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %72 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %call169, ptr %arrayidx174, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %73 = getelementptr inbounds i8, ptr %t.i, i32 4
  %74 = call ptr @memset(ptr %73, i32 0, i32 92)
  %75 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %76 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 9, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %77 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %78 = call ptr @memset(ptr %77, i32 0, i32 40)
  %79 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %81 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end46.spi_write.exit_crit_edge

if.end46.spi_write.exit_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %84 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %86 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end46.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %spi_w8r8.exit246.thread, %spi_w8r8.exit.thread, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %call.i.i, %spi_write.exit ], [ %call.i, %spi_w8r8.exit.thread ], [ %call.i241, %spi_w8r8.exit246.thread ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m41t93_set_reg(ptr noundef %spi, i8 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #5 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = or i8 %addr, -128
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %buf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_rtc_m41t93__237_201_m41t93_driver_init6, !1, !"__initcall__kmod_rtc_m41t93__237_201_m41t93_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-m41t93.c", i32 201, i32 1}
!2 = !{ptr @__exitcall_m41t93_driver_exit, !1, !"__exitcall_m41t93_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-m41t93.c", i32 203, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-m41t93.c", i32 204, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-m41t93.c", i32 205, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-m41t93.c", i32 206, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-m41t93.c", i32 196, i32 11}
!14 = !{ptr @m41t93_driver, !15, !"m41t93_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-m41t93.c", i32 194, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-m41t93.c", i32 180, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @m41t93_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @m41t93_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @m41t93_rtc_ops, !25, !"m41t93_rtc_ops", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-m41t93.c", i32 163, i32 35}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-m41t93.c", i32 121, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @m41t93_get_time.__UNIQUE_ID_ddebug235, !27, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-m41t93.c", i32 132, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @m41t93_get_time._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @m41t93_get_time._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-m41t93.c", i32 136, i32 3}
!38 = !{ptr @m41t93_get_time._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @m41t93_get_time._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-m41t93.c", i32 153, i32 2}
!42 = !{ptr @m41t93_get_time.__UNIQUE_ID_ddebug236, !41, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!43 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-m41t93.c", i32 52, i32 2}
!46 = !{ptr @m41t93_set_time.__UNIQUE_ID_ddebug234, !45, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-m41t93.c", i32 59, i32 3}
!50 = !{ptr @m41t93_set_time._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @m41t93_set_time._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-m41t93.c", i32 68, i32 3}
!54 = !{ptr @m41t93_set_time._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @m41t93_set_time._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-m41t93.c", i32 79, i32 4}
!58 = !{ptr @m41t93_set_time._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @m41t93_set_time._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i64 2148695623, i64 2148695628, i64 2148695641, i64 2148695685, i64 2148695719, i64 2148695740}
