; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1305.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1305.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ds1305 = type { ptr, ptr, %struct.work_struct, i32, i8, [3 x i8] }
%struct.ds1305_platform_data = type { i8, i8, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ds1305__246_744_ds1305_driver_init6 = internal global ptr @ds1305_driver_init, section ".initcall6.init", align 4
@ds1305_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ds1305_probe, ptr @ds1305_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ds1305_driver_exit = internal global ptr @ds1305_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [62 x i8] c"rtc_ds1305.description=RTC driver for DS1305 and DS1306 chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [39 x i8] c"rtc_ds1305.file=drivers/rtc/rtc-ds1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [23 x i8] c"rtc_ds1305.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [32 x i8] c"rtc_ds1305.alias=spi:rtc-ds1305\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1305\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1305_nvram\00", [19 x i8] zeroinitializer }, align 32
@__const.ds1305_probe.ds1305_nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @ds1305_nvram_read, ptr @ds1305_nvram_write, ptr null, i32 96, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@ds1305_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_ds1305\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1305_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1305.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can't %s, %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ctrl %s: %3ph\0A\00", [17 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RTC chip is not present\0A\00", [39 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip may not be present\0A\00", [39 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clear WP --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ds1305_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 622, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET TIME!\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1305_probe._entry_ptr = internal global ptr @ds1305_probe._entry, section ".printk_index", align 4
@ds1305_probe.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1305_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 -87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read HOUR --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ds1305_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 -85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM/PM\0A\00", [25 x i8] zeroinitializer }, align 32
@ds1305_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1305_get_time, ptr @ds1305_set_time, ptr @ds1305_get_alarm, ptr @ds1305_set_alarm, ptr @ds1305_proc, ptr @ds1305_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1305_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&ds1305->work)\00", [63 x i8] zeroinitializer }, align 32
@ds1305_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 714, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request_irq %d --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ds1305_probe._entry_ptr.21 = internal global ptr @ds1305_probe._entry.18, section ".printk_index", align 4
@ds1305_set_time.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 57, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds1305_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %3ph, %4ph\0A\00", [16 x i8] zeroinitializer }, align 32
@ds1305_set_alarm.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds1305_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %02x %02x %02x %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alm0 write\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2 diodes, \00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1 diode, \00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2k Ohm\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4k Ohm\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8k Ohm\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trickle_charge\09: %s%s\0A\00", [41 x i8] zeroinitializer }, align 32
@ds1305_work.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1305_work\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clear irq --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"ds1305_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 737, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 738, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 551, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 580, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 585, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 593, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 597, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 611, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 622, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 665, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 678, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 684, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"ds1305_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 426, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 709, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 713, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 228, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 360, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 385, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 386, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 392, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 395, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 402, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 405, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 408, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 417, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1305.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 459, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_ds1305_driver_exit, ptr @__initcall__kmod_rtc_ds1305__246_744_ds1305_driver_init6, ptr @ds1305_driver_exit, ptr @ds1305_probe._entry, ptr @ds1305_probe._entry.18, ptr @ds1305_probe._entry_ptr, ptr @ds1305_probe._entry_ptr.21, ptr @ds1305_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ds1305_ops, ptr @ds1305_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1305_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1305_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1305_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1305_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1305_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ds1305_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1305_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ds1305_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_probe(ptr noundef %spi) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %value = alloca i8, align 1
  %ds1305_nvmem_cfg = alloca %struct.nvmem_config, align 4
  %buf = alloca [2 x i8], align 1
  %buf218 = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !100
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ds1305_nvmem_cfg) #6
  %3 = call ptr @memcpy(ptr %ds1305_nvmem_cfg, ptr @__const.ds1305_probe.ds1305_nvmem_cfg, i32 88)
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.cleanup377_crit_edge [
    i8 0, label %entry.lor.lhs.false_crit_edge
    i8 8, label %entry.lor.lhs.false_crit_edge516
  ]

entry.lor.lhs.false_crit_edge516:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

entry.cleanup377_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge516
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %8)
  %cmp4 = icmp ugt i32 %8, 2000000
  br i1 %cmp4, label %lor.lhs.false.cleanup377_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup377_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup377_crit_edge, label %if.end

lor.lhs.false6.cleanup377_crit_edge:              ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

if.end:                                           ; preds = %lor.lhs.false6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 60, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end.cleanup377_crit_edge, label %if.end12

if.end.cleanup377_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

if.end12:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %addr, align 1
  %ctrl = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 5
  %call14 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef %ctrl, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body, label %do.body27

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %cleanup377)) #6
          to label %if.then23 [label %cleanup377], !srcloc !101

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug237, ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call14) #6
  br label %cleanup377

do.body27:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %do.end47)) #6
          to label %if.then41 [label %do.end47], !srcloc !101

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug238, ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %ctrl) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body27
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl, align 1
  %16 = and i8 %15, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp51.not = icmp eq i8 %16, 0
  br i1 %cmp51.not, label %lor.lhs.false53, label %do.end47.do.body61_crit_edge

do.end47.do.body61_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

lor.lhs.false53:                                  ; preds = %do.end47
  %arrayidx55 = getelementptr %struct.ds1305, ptr %call.i, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp58.not = icmp ult i8 %18, 4
  br i1 %cmp58.not, label %if.end80, label %lor.lhs.false53.do.body61_crit_edge

lor.lhs.false53.do.body61_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61

do.body61:                                        ; preds = %lor.lhs.false53.do.body61_crit_edge, %do.end47.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %cleanup377)) #6
          to label %if.then75 [label %cleanup377], !srcloc !101

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug239, ptr noundef %spi, ptr noundef nonnull @.str.8) #6
  br label %cleanup377

if.end80:                                         ; preds = %lor.lhs.false53
  %arrayidx82 = getelementptr %struct.ds1305, ptr %call.i, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp84 = icmp eq i8 %20, 0
  br i1 %cmp84, label %do.body87, label %if.end80.if.end106_crit_edge

if.end80.if.end106_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

do.body87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %if.end106)) #6
          to label %if.then101 [label %if.end106], !srcloc !101

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug240, ptr noundef %spi, ptr noundef nonnull @.str.9) #6
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %do.body87, %if.end80.if.end106_crit_edge
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl, align 1
  %23 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool111.not = icmp eq i8 %23, 0
  br i1 %tobool111.not, label %if.end106.if.end147_crit_edge, label %if.then112

if.end106.if.end147_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then112:                                       ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %25 = and i8 %22, -65
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ctrl, align 1
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -113, ptr %buf, align 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %24, align 1
  %call123 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %do.end142)) #6
          to label %if.then138 [label %do.end142], !srcloc !101

if.then138:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug241, ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %call123) #6
  br label %do.end142

do.end142:                                        ; preds = %if.then138, %if.then112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp143 = icmp slt i32 %call123, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  br i1 %cmp143, label %do.end142.cleanup377_crit_edge, label %if.end147thread-pre-split

do.end142.cleanup377_crit_edge:                   ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

if.end147thread-pre-split:                        ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %ctrl, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.end147thread-pre-split, %if.end106.if.end147_crit_edge
  %30 = phi i8 [ %.pr, %if.end147thread-pre-split ], [ %22, %if.end106.if.end147_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool152.not = icmp sgt i8 %30, -1
  br i1 %tobool152.not, label %if.end147.if.end163_crit_edge, label %if.then153

if.end147.if.end163_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then153:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %and157 = and i8 %30, 127
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %and157, ptr %ctrl, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.11) #9
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %if.end147.if.end163_crit_edge
  %32 = xor i1 %tobool152.not, true
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool166.not = icmp eq i8 %34, 0
  br i1 %tobool166.not, label %if.end163.if.end170_crit_edge, label %if.then167

if.end163.if.end170_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx55, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then167, %if.end163.if.end170_crit_edge
  %write_ctrl.1.off0 = phi i1 [ true, %if.then167 ], [ %32, %if.end163.if.end170_crit_edge ]
  %tobool171.not = icmp eq ptr %2, null
  br i1 %tobool171.not, label %if.end170.if.end215_crit_edge, label %if.then172

if.end170.if.end215_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then172:                                       ; preds = %if.end170
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx82, align 1
  %38 = and i8 %37, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %38)
  %cmp177.not = icmp eq i8 %38, -96
  br i1 %cmp177.not, label %if.then172.if.end184_crit_edge, label %if.then179

if.then172.if.end184_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then179:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %41 = or i8 %40, -96
  %42 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx82, align 1
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %if.then172.if.end184_crit_edge
  %write_ctrl.2.off0 = phi i1 [ true, %if.then179 ], [ %write_ctrl.1.off0, %if.then172.if.end184_crit_edge ]
  %is_ds1306 = getelementptr inbounds %struct.ds1305_platform_data, ptr %2, i32 0, i32 1
  %43 = ptrtoint ptr %is_ds1306 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_ds1306, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool185.not = icmp eq i8 %44, 0
  br i1 %tobool185.not, label %if.end184.if.end215_crit_edge, label %if.then186

if.end184.if.end215_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then186:                                       ; preds = %if.end184
  %en_1hz = getelementptr inbounds %struct.ds1305_platform_data, ptr %2, i32 0, i32 2
  %45 = ptrtoint ptr %en_1hz to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %en_1hz, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool187.not = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctrl, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool205.not = icmp eq i8 %49, 0
  br i1 %tobool187.not, label %if.else, label %if.then188

if.then188:                                       ; preds = %if.then186
  br i1 %tobool205.not, label %if.then194, label %if.then188.if.end215_crit_edge

if.then188.if.end215_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then194:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  %or198 = or i8 %48, 4
  br label %if.then217.sink.split

if.else:                                          ; preds = %if.then186
  br i1 %tobool205.not, label %if.else.if.end215_crit_edge, label %if.then206

if.else.if.end215_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then206:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and210 = and i8 %48, -5
  br label %if.then217.sink.split

if.end215:                                        ; preds = %if.else.if.end215_crit_edge, %if.then188.if.end215_crit_edge, %if.end184.if.end215_crit_edge, %if.end170.if.end215_crit_edge
  %write_ctrl.3.off0 = phi i1 [ %write_ctrl.2.off0, %if.then188.if.end215_crit_edge ], [ %write_ctrl.2.off0, %if.else.if.end215_crit_edge ], [ %write_ctrl.2.off0, %if.end184.if.end215_crit_edge ], [ %write_ctrl.1.off0, %if.end170.if.end215_crit_edge ]
  br i1 %write_ctrl.3.off0, label %if.end215.if.then217_crit_edge, label %if.end215.if.end278_crit_edge

if.end215.if.end278_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end278

if.end215.if.then217_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then217

if.then217.sink.split:                            ; preds = %if.then206, %if.then194
  %and210.sink = phi i8 [ %and210, %if.then206 ], [ %or198, %if.then194 ]
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %and210.sink, ptr %ctrl, align 1
  br label %if.then217

if.then217:                                       ; preds = %if.then217.sink.split, %if.end215.if.then217_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf218) #6
  %51 = getelementptr inbounds [4 x i8], ptr %buf218, i32 0, i32 1
  %52 = getelementptr inbounds [4 x i8], ptr %buf218, i32 0, i32 2
  %53 = getelementptr inbounds [4 x i8], ptr %buf218, i32 0, i32 3
  %54 = ptrtoint ptr %buf218 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -113, ptr %buf218, align 1
  %55 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ctrl, align 1
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %51, align 1
  %58 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx55, align 1
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %52, align 1
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx82, align 1
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %53, align 1
  %call230 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %buf218, i32 noundef 4, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %cmp231 = icmp slt i32 %call230, 0
  br i1 %cmp231, label %do.body234, label %do.body254

do.body234:                                       ; preds = %if.then217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %cleanup275.thread)) #6
          to label %if.then248 [label %cleanup275.thread], !srcloc !101

if.then248:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug242, ptr noundef %spi, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.14, i32 noundef %call230) #6
  br label %cleanup275.thread

do.body254:                                       ; preds = %if.then217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %cleanup275)) #6
          to label %if.then268 [label %cleanup275], !srcloc !101

if.then268:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug243, ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, ptr noundef %ctrl) #6
  br label %cleanup275

cleanup275.thread:                                ; preds = %if.then248, %do.body234
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf218) #6
  br label %cleanup377

cleanup275:                                       ; preds = %if.then268, %do.body254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf218) #6
  br label %if.end278

if.end278:                                        ; preds = %cleanup275, %if.end215.if.end278_crit_edge
  %64 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %addr, align 1
  %call279 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %value, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %cmp280 = icmp slt i32 %call279, 0
  br i1 %cmp280, label %do.body283, label %if.end302

do.body283:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %cleanup377)) #6
          to label %if.then297 [label %cleanup377], !srcloc !101

if.then297:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug244, ptr noundef %spi, ptr noundef nonnull @.str.15, i32 noundef %call279) #6
  br label %cleanup377

if.end302:                                        ; preds = %if.end278
  %65 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %value, align 1
  %67 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp305.not = icmp eq i8 %67, 0
  %hr12 = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 4
  %.lobit = lshr exact i8 %67, 6
  %68 = ptrtoint ptr %hr12 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.lobit, ptr %hr12, align 4
  br i1 %cmp305.not, label %if.end302.if.end330_crit_edge, label %do.body311

if.end302.if.end330_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.body311:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_probe, %if.end330)) #6
          to label %if.then325 [label %if.end330], !srcloc !101

if.then325:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_probe.__UNIQUE_ID_ddebug245, ptr noundef %spi, ptr noundef nonnull @.str.16) #6
  br label %if.end330

if.end330:                                        ; preds = %if.then325, %do.body311, %if.end302.if.end330_crit_edge
  %call332 = call ptr @devm_rtc_allocate_device(ptr noundef %spi) #6
  %rtc = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 1
  %69 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call332, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call332, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then335, label %if.end338

if.then335:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %call332 to i32
  br label %cleanup377

if.end338:                                        ; preds = %if.end330
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call332, i32 0, i32 3
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ds1305_ops, ptr %ops, align 8
  %72 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %73, i32 0, i32 22
  %74 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 946684800, ptr %range_min, align 8
  %75 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %75, i32 0, i32 23
  %76 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 4102444799, ptr %range_max, align 8
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %ds1305_nvmem_cfg, i32 0, i32 21
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %priv, align 4
  %78 = load ptr, ptr %rtc, align 4
  %call343 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.end346, label %if.end338.cleanup377_crit_edge

if.end338.cleanup377_crit_edge:                   ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

if.end346:                                        ; preds = %if.end338
  %79 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rtc, align 4
  %call348 = call i32 @devm_rtc_nvmem_register(ptr noundef %80, ptr noundef nonnull %ds1305_nvmem_cfg) #6
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %81 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool349.not = icmp eq i32 %82, 0
  br i1 %tobool349.not, label %if.end346.cleanup377_crit_edge, label %do.body351

if.end346.cleanup377_crit_edge:                   ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup377

do.body351:                                       ; preds = %if.end346
  %work = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %83 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @ds1305_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry355 = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %entry355 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry355, ptr %entry355, align 4
  %prev.i = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry355, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ds1305, ptr %call.i, i32 0, i32 2, i32 2
  %86 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ds1305_work, ptr %func, align 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %89 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rtc, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %92, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body351.dev_name.exit_crit_edge

do.body351.dev_name.exit_crit_edge:               ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body351
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body351.dev_name.exit_crit_edge
  %retval.0.i504 = phi ptr [ %94, %if.end.i ], [ %92, %do.body351.dev_name.exit_crit_edge ]
  %call.i505 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %88, ptr noundef nonnull @ds1305_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i504, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505)
  %cmp365 = icmp slt i32 %call.i505, 0
  br i1 %cmp365, label %do.end370, label %if.else373

do.end370:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %96, i32 noundef %call.i505) #9
  br label %cleanup377

if.else373:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @device_set_wakeup_capable(ptr noundef %spi, i1 noundef zeroext true) #6
  br label %cleanup377

cleanup377:                                       ; preds = %if.else373, %do.end370, %if.end346.cleanup377_crit_edge, %if.end338.cleanup377_crit_edge, %if.then335, %if.then297, %do.body283, %cleanup275.thread, %do.end142.cleanup377_crit_edge, %if.then75, %do.body61, %if.then23, %do.body, %if.end.cleanup377_crit_edge, %lor.lhs.false6.cleanup377_crit_edge, %lor.lhs.false.cleanup377_crit_edge, %entry.cleanup377_crit_edge
  %retval.3 = phi i32 [ %70, %if.then335 ], [ %call123, %do.end142.cleanup377_crit_edge ], [ -22, %entry.cleanup377_crit_edge ], [ -22, %lor.lhs.false6.cleanup377_crit_edge ], [ -22, %lor.lhs.false.cleanup377_crit_edge ], [ -12, %if.end.cleanup377_crit_edge ], [ %call14, %if.then23 ], [ -19, %if.then75 ], [ %call279, %if.then297 ], [ %call343, %if.end338.cleanup377_crit_edge ], [ 0, %do.end370 ], [ 0, %if.else373 ], [ 0, %if.end346.cleanup377_crit_edge ], [ %call230, %cleanup275.thread ], [ %call14, %do.body ], [ -19, %do.body61 ], [ %call279, %do.body283 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ds1305_nvmem_cfg) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.ds1305, ptr %3, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %spi, i32 noundef %5, ptr noundef %3) #6
  %work = getelementptr inbounds %struct.ds1305, ptr %3, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_nvram_read(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %x = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %x) #6
  %2 = trunc i32 %off to i8
  %conv = add i8 %2, 32
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %addr, align 1
  %4 = getelementptr inbounds i8, ptr %m, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %x, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 188)
  %12 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr, ptr %x, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %m, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %incdec.ptr.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %incdec.ptr.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 1
  %19 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %rx_buf.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 2
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %count, ptr %len2.i, align 4
  %transfer_list.i13.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i15.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i13.i, ptr noundef %22, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i15.i, label %if.end.i.i.i17.i, label %spi_message_add_tail.exit.i.msg_init.exit_crit_edge

spi_message_add_tail.exit.i.msg_init.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %msg_init.exit

if.end.i.i.i17.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i13.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i13.i, align 4
  %prev3.i.i.i16.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i16.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i13.i, ptr %22, align 4
  br label %msg_init.exit

msg_init.exit:                                    ; preds = %if.end.i.i.i17.i, %spi_message_add_tail.exit.i.msg_init.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %x) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_nvram_write(ptr nocapture noundef readonly %priv, i32 noundef %off, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %x = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %x) #6
  %2 = trunc i32 %off to i8
  %conv = add i8 %2, -96
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %addr, align 1
  %4 = getelementptr inbounds i8, ptr %m, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %x, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 188)
  %12 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr, ptr %x, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %m, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %incdec.ptr.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf, ptr %incdec.ptr.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 1
  %19 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rx_buf.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 2
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %count, ptr %len2.i, align 4
  %transfer_list.i13.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i15.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i13.i, ptr noundef %22, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i15.i, label %if.end.i.i.i17.i, label %spi_message_add_tail.exit.i.msg_init.exit_crit_edge

spi_message_add_tail.exit.i.msg_init.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %msg_init.exit

if.end.i.i.i17.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i13.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i13.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i13.i, align 4
  %prev3.i.i.i16.i = getelementptr inbounds %struct.spi_transfer, ptr %x, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i16.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i13.i, ptr %22, align 4
  br label %msg_init.exit

msg_init.exit:                                    ; preds = %if.end.i.i.i17.i, %spi_message_add_tail.exit.i.msg_init.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %x) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds1305_work(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %rtc = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #6
  %ctrl = getelementptr i8, ptr %work, i32 49
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl, align 1
  %8 = and i8 %7, -4
  store i8 %8, ptr %ctrl, align 1
  %arrayidx4 = getelementptr i8, ptr %work, i32 50
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -113, ptr %buf, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %3, align 1
  %call = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_work.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_work, %if.end17)) #6
          to label %if.then16 [label %if.end17], !srcloc !101

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_work.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %call) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body, %entry.if.end17_crit_edge
  %13 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtc, align 4
  %ops_lock19 = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock19) #6
  %flags = getelementptr i8, ptr %work, i32 44
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool21.not = icmp eq i32 %and1.i, 0
  br i1 %tobool21.not, label %if.then22, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %18) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end17.if.end23_crit_edge
  %19 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %20, i32 noundef 1, i32 noundef 160) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_irq(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq(i32 noundef %irq) #6
  %work = getelementptr inbounds %struct.ds1305, ptr %p, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_get_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %time) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #6
  %3 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %7 = call ptr @memset(ptr %buf, i32 255, i32 7)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call1 = call i32 @spi_write_then_read(ptr noundef %9, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %entry
  %10 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %call6 = call i32 @_bcd2bin(i8 noundef zeroext %13) #10
  %14 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call6, ptr %time, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %11, align 1
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %16) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call19, ptr %tm_min, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %10, align 1
  %20 = and i8 %19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %cond.false23.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not.i = icmp eq i8 %21, 0
  %22 = xor i8 %21, -65
  %spec.select.i = and i8 %22, %19
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %spec.select.i) #10
  %add14.i = select i1 %tobool6.not.i, i32 -1, i32 11
  %sub.i = add i32 %call.i, %add14.i
  br label %bcd2hour.exit

cond.false23.i:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i = call i32 @_bcd2bin(i8 noundef zeroext %19) #10
  br label %bcd2hour.exit

bcd2hour.exit:                                    ; preds = %cond.false23.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %call24.i, %cond.false23.i ]
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %conv25 = zext i8 %25 to i32
  %sub = add nsw i32 %conv25, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_wday, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %4, align 1
  %call38 = call i32 @_bcd2bin(i8 noundef zeroext %28) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call38, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 1
  %call53 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %sub56 = add i32 %call53, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub56, ptr %tm_mon, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %call69 = call i32 @_bcd2bin(i8 noundef zeroext %34) #10
  %add72 = add i32 %call69, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add72, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcd2hour.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bcd2hour.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_set_time(ptr noundef %dev, ptr nocapture noundef readonly %time) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %buf, align 1
  %10 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #10
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call4, ptr %2, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %3, align 1
  %hr12 = getelementptr inbounds %struct.ds1305, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %hr12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hr12, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_hour, align 4
  br i1 %tobool.not, label %cond.false24.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %inc.i = add i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i)
  %cmp.i = icmp slt i32 %inc.i, 13
  br i1 %cmp.i, label %cond.end.i, label %cond.end13.i

cond.end.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %inc.i) #10
  %or.i = or i8 %call.i, 64
  br label %hour2bcd.exit

cond.end13.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %19, -11
  %call11.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %20 = or i8 %call11.i, 96
  br label %hour2bcd.exit

cond.false24.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  br label %hour2bcd.exit

hour2bcd.exit:                                    ; preds = %cond.false24.i, %cond.end13.i, %cond.end.i
  %retval.0.in.i = phi i8 [ %or.i, %cond.end.i ], [ %20, %cond.end13.i ], [ %call25.i, %cond.false24.i ]
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %retval.0.in.i, ptr %4, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp = icmp slt i32 %23, 7
  %24 = trunc i32 %23 to i8
  %phi.cast = add i8 %24, 1
  %cond32 = select i1 %cmp, i8 %phi.cast, i8 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond32, ptr %5, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %26 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_mday, align 4
  %call45 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #10
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call45, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %29 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mon, align 4
  %add51 = add i32 %30, 1
  %call65 = tail call zeroext i8 @_bin2bcd(i32 noundef %add51) #10
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call65, ptr %7, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %32 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_year, align 4
  %sub = add i32 %33, -100
  %call84 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #10
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call84, ptr %8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_set_time.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_set_time, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !101

if.then:                                          ; preds = %hour2bcd.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_set_time.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.14, ptr noundef %2, ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %hour2bcd.exit
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call97 = call i32 @spi_write_then_read(ptr noundef %36, ptr noundef nonnull %buf, i32 noundef 8, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 %call97
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_get_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alm) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %buf, align 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %addr, align 1
  %ctrl = getelementptr inbounds %struct.ds1305, ptr %1, i32 0, i32 5
  %call2 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef %ctrl, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl, align 1
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %alm, align 4
  %arrayidx7 = getelementptr %struct.ds1305, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %14 = and i8 %13, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 1
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %pending, align 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %addr, align 1
  %call17 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool25.not = icmp sgt i8 %18, -1
  br i1 %tobool25.not, label %lor.lhs.false, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end21
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool29.not = icmp sgt i8 %20, -1
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool34.not = icmp sgt i8 %22, -1
  br i1 %tobool34.not, label %cond.end, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %lor.lhs.false30
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %18) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %23 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call44, ptr %time, align 4
  %call57 = call i32 @_bcd2bin(i8 noundef zeroext %20) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call57, ptr %tm_min, align 4
  %25 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %cond.false23.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not.i = icmp eq i8 %26, 0
  %27 = xor i8 %26, -65
  %spec.select.i = and i8 %27, %22
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %spec.select.i) #10
  %add14.i = select i1 %tobool6.not.i, i32 -1, i32 11
  %sub.i = add i32 %call.i, %add14.i
  br label %bcd2hour.exit

cond.false23.i:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i = call i32 @_bcd2bin(i8 noundef zeroext %22) #10
  br label %bcd2hour.exit

bcd2hour.exit:                                    ; preds = %cond.false23.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %call24.i, %cond.false23.i ]
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %tm_hour, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcd2hour.exit, %lor.lhs.false30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bcd2hour.exit ], [ %call2, %entry.cleanup_crit_edge ], [ %call17, %if.end.cleanup_crit_edge ], [ -5, %lor.lhs.false30.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_set_alarm(ptr noundef %dev, ptr noundef %alm) #2 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #6
  %4 = call ptr @memset(ptr %tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %9 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  %conv = trunc i64 %call2 to i32
  %call3 = call i32 @ds1305_get_time(ptr noundef %dev, ptr noundef nonnull %tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #6
  %conv6 = trunc i64 %call5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv6)
  %cmp7.not = icmp ugt i32 %conv, %conv6
  br i1 %cmp7.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %sub = sub i32 %conv, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 86400, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 86400
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %ctrl = getelementptr inbounds %struct.ds1305, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end14.if.end32_crit_edge, label %if.then16

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then16:                                        ; preds = %if.end14
  %and20 = and i8 %11, -2
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and20, ptr %ctrl, align 1
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -113, ptr %buf, align 1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and20, ptr %5, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call27 = call i32 @spi_write_then_read(ptr noundef %17, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then16.cleanup_crit_edge, label %if.then16.if.end32_crit_edge

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.then16.if.end32_crit_edge, %if.end14.if.end32_crit_edge
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -121, ptr %buf, align 1
  %19 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time, align 4
  %call42 = call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call42, ptr %5, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_min, align 4
  %call60 = call zeroext i8 @_bin2bcd(i32 noundef %23) #10
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call60, ptr %6, align 1
  %hr12 = getelementptr inbounds %struct.ds1305, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %hr12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hr12, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool66.not = icmp eq i8 %26, 0
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_hour, align 4
  br i1 %tobool66.not, label %cond.false24.i, label %if.then.i

if.then.i:                                        ; preds = %if.end32
  %inc.i = add i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i)
  %cmp.i = icmp slt i32 %inc.i, 13
  br i1 %cmp.i, label %cond.end.i, label %cond.end13.i

cond.end.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %inc.i) #10
  %or.i = or i8 %call.i, 64
  br label %hour2bcd.exit

cond.end13.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %28, -11
  %call11.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #10
  %29 = or i8 %call11.i, 96
  br label %hour2bcd.exit

cond.false24.i:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = call zeroext i8 @_bin2bcd(i32 noundef %28) #10
  br label %hour2bcd.exit

hour2bcd.exit:                                    ; preds = %cond.false24.i, %cond.end13.i, %cond.end.i
  %retval.0.in.i = phi i8 [ %or.i, %cond.end.i ], [ %29, %cond.end13.i ], [ %call25.i, %cond.false24.i ]
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.in.i, ptr %7, align 1
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -128, ptr %8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1305_set_alarm.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1305_set_alarm, %do.end)) #6
          to label %if.then76 [label %do.end], !srcloc !101

if.then76:                                        ; preds = %hour2bcd.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %conv78 = zext i8 %33 to i32
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %conv80 = zext i8 %35 to i32
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  %conv82 = zext i8 %37 to i32
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %8, align 1
  %conv84 = zext i8 %39 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1305_set_alarm.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %conv78, i32 noundef %conv80, i32 noundef %conv82, i32 noundef %conv84) #6
  br label %do.end

do.end:                                           ; preds = %if.then76, %hour2bcd.exit
  %call87 = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 5, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end.cleanup_crit_edge, label %if.end91

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %do.end
  %40 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool92.not = icmp eq i8 %41, 0
  br i1 %tobool92.not, label %if.end91.cleanup_crit_edge, label %if.then93

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %ctrl, align 1
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -113, ptr %buf, align 1
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %5, align 1
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call104 = call i32 @spi_write_then_read(ptr noundef %48, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end91.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -33, %if.end10.cleanup_crit_edge ], [ %call27, %if.then16.cleanup_crit_edge ], [ %call87, %do.end.cleanup_crit_edge ], [ %call104, %if.then93 ], [ %call87, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ds1305, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and)
  %cmp = icmp eq i32 %and, 160
  br i1 %cmp, label %if.then, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then:                                          ; preds = %entry
  %and5 = and i32 %conv, 12
  %4 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and5, label %if.then.done_crit_edge [
    i32 8, label %if.then.sw.epilog_crit_edge
    i32 4, label %sw.bb6
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then.sw.epilog_crit_edge
  %diodes.0 = phi ptr [ @.str.30, %sw.bb6 ], [ @.str.29, %if.then.sw.epilog_crit_edge ]
  %5 = and i8 %3, 3
  %and10 = zext i8 %5 to i32
  %6 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and10, label %sw.default14 [
    i32 1, label %sw.epilog.done_crit_edge
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
  ]

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.default14:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %sw.default14, %sw.bb13, %sw.bb12, %sw.epilog.done_crit_edge, %if.then.done_crit_edge, %entry.done_crit_edge
  %diodes.1 = phi ptr [ @.str.27, %if.then.done_crit_edge ], [ @.str.27, %sw.default14 ], [ %diodes.0, %sw.bb13 ], [ %diodes.0, %sw.bb12 ], [ @.str.27, %entry.done_crit_edge ], [ %diodes.0, %sw.epilog.done_crit_edge ]
  %resistors.0 = phi ptr [ @.str.28, %if.then.done_crit_edge ], [ @.str.28, %sw.default14 ], [ @.str.33, %sw.bb13 ], [ @.str.32, %sw.bb12 ], [ @.str.28, %entry.done_crit_edge ], [ @.str.31, %sw.epilog.done_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, ptr noundef nonnull %diodes.1, ptr noundef nonnull %resistors.0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1305_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -113, ptr %buf, align 1
  %ctrl = getelementptr inbounds %struct.ds1305, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.end, label %if.then.done_crit_edge

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = or i8 %5, 1
  br label %if.end20

if.else:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.else.done_crit_edge, label %if.end15

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and18 = and i8 %5, -2
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.end
  %storemerge = phi i8 [ %and18, %if.end15 ], [ %7, %if.end ]
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %2, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call21 = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp = icmp sgt i32 %call21, -1
  br i1 %cmp, label %if.then23, label %if.end20.done_crit_edge

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ctrl, align 1
  br label %done

done:                                             ; preds = %if.then23, %if.end20.done_crit_edge, %if.else.done_crit_edge, %if.then.done_crit_edge
  %err.0 = phi i32 [ -22, %if.then.done_crit_edge ], [ %call21, %if.then23 ], [ %call21, %if.end20.done_crit_edge ], [ -22, %if.else.done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_rtc_ds1305__246_744_ds1305_driver_init6, !1, !"__initcall__kmod_rtc_ds1305__246_744_ds1305_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1305.c", i32 744, i32 1}
!2 = !{ptr @__exitcall_ds1305_driver_exit, !1, !"__exitcall_ds1305_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1305.c", i32 746, i32 1}
!5 = !{ptr @__UNIQUE_ID_file248, !6, !"__UNIQUE_ID_file248", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1305.c", i32 747, i32 1}
!7 = !{ptr @__UNIQUE_ID_license249, !6, !"__UNIQUE_ID_license249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias250, !9, !"__UNIQUE_ID_alias250", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-ds1305.c", i32 748, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds1305.c", i32 738, i32 17}
!12 = !{ptr @ds1305_driver, !13, !"ds1305_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1305.c", i32 737, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1305.c", i32 551, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-ds1305.c", i32 580, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug237, !17, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!22 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-ds1305.c", i32 585, i32 2}
!25 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug238, !24, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-ds1305.c", i32 593, i32 3}
!28 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug239, !27, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1305.c", i32 597, i32 3}
!31 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ds1305.c", i32 611, i32 3}
!34 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug241, !33, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-ds1305.c", i32 622, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ds1305_probe._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @ds1305_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug242, !42, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-ds1305.c", i32 665, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug243, !45, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-ds1305.c", i32 670, i32 3}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-ds1305.c", i32 678, i32 3}
!48 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug244, !47, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-ds1305.c", i32 684, i32 3}
!51 = !{ptr @ds1305_probe.__UNIQUE_ID_ddebug245, !50, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!52 = !{ptr @ds1305_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-ds1305.c", i32 709, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ds1305.c", i32 713, i32 4}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ds1305_probe._entry.18, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ds1305_probe._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ds1305_ops, !61, !"ds1305_ops", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-ds1305.c", i32 426, i32 35}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-ds1305.c", i32 228, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ds1305_set_time.__UNIQUE_ID_ddebug234, !63, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-ds1305.c", i32 360, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ds1305_set_alarm.__UNIQUE_ID_ddebug235, !67, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!70 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-ds1305.c", i32 385, i32 18}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-ds1305.c", i32 386, i32 21}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-ds1305.c", i32 392, i32 13}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-ds1305.c", i32 395, i32 13}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-ds1305.c", i32 402, i32 16}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-ds1305.c", i32 405, i32 16}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-ds1305.c", i32 408, i32 16}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-ds1305.c", i32 417, i32 18}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-ds1305.c", i32 459, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ds1305_work.__UNIQUE_ID_ddebug236, !88, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = !{i64 2148709513, i64 2148709518, i64 2148709531, i64 2148709575, i64 2148709609, i64 2148709630}
!102 = !{i8 0, i8 2}
