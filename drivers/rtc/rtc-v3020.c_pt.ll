; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-v3020.c_pt.bc'
source_filename = "../drivers/rtc/rtc-v3020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v3020_chip_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio = type { i32, i32, ptr }
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
%struct.v3020_platform_data = type { i32, i8, i32, i32, i32, i32 }
%struct.v3020 = type { ptr, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_v3020__242_364_rtc_device_driver_init6 = internal global ptr @rtc_device_driver_init, section ".initcall6.init", align 4
@rtc_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtc_probe, ptr @rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtc_device_driver_exit = internal global ptr @rtc_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [32 x i8] c"rtc_v3020.description=V3020 RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [33 x i8] c"rtc_v3020.author=Raphael Assenat\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [37 x i8] c"rtc_v3020.file=drivers/rtc/rtc-v3020\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [22 x i8] c"rtc_v3020.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [31 x i8] c"rtc_v3020.alias=platform:v3020\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v3020\00", [26 x i8] zeroinitializer }, align 32
@v3020_gpio_ops = internal constant { %struct.v3020_chip_ops, [16 x i8] } { %struct.v3020_chip_ops { ptr @v3020_gpio_map, ptr @v3020_gpio_unmap, ptr @v3020_gpio_read_bit, ptr @v3020_gpio_write_bit }, [16 x i8] zeroinitializer }, align 32
@v3020_mmio_ops = internal constant { %struct.v3020_chip_ops, [16 x i8] } { %struct.v3020_chip_ops { ptr @v3020_mmio_map, ptr @v3020_mmio_unmap, ptr @v3020_mmio_read_bit, ptr @v3020_mmio_write_bit }, [16 x i8] zeroinitializer }, align 32
@rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chip available at GPIOs %d, %d, %d, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-v3020.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtc_probe._entry_ptr = internal global ptr @rtc_probe._entry, section ".printk_index", align 4
@rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Chip available at physical address 0x%llx,data connected to D%d\0A\00", [63 x i8] zeroinitializer }, align 32
@rtc_probe._entry_ptr.8 = internal global ptr @rtc_probe._entry.6, section ".printk_index", align 4
@v3020_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @v3020_read_time, ptr @v3020_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@v3020_gpio = internal global { [4 x %struct.gpio], [48 x i8] } { [4 x %struct.gpio] [%struct.gpio { i32 0, i32 2, ptr @.str.9 }, %struct.gpio { i32 0, i32 2, ptr @.str.10 }, %struct.gpio { i32 0, i32 2, ptr @.str.11 }, %struct.gpio { i32 0, i32 2, ptr @.str.12 }], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTC CS\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTC WR\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTC RD\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RTC IO\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@v3020_read_time.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_v3020\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"v3020_read_time\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0A%s : Read RTC values\0A\00", [41 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_hour: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_min : %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.18, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_sec : %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.19, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_year: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.20, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_mon : %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.21, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_mday: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_read_time.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.22, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tm_wday: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@v3020_set_time.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"v3020_set_time\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A%s : Setting RTC values\0A\00", [38 x i8] zeroinitializer }, align 32
@v3020_set_time.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.18, i8 0, i8 62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@v3020_set_time.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.17, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@v3020_set_time.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.16, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@v3020_set_time.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.21, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@v3020_set_time.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.22, i8 0, i8 63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@v3020_set_time.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.19, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"rtc_device_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 356, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 360, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"v3020_gpio_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 157, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"v3020_mmio_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 94, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 319, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 324, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"v3020_rtc_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 276, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"v3020_gpio\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 101, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 102, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 103, i32 28 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 104, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 105, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 232, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 233, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 234, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 235, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 236, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 237, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 238, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 239, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [27 x i8] c"../drivers/rtc/rtc-v3020.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 249, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_rtc_device_driver_exit, ptr @__initcall__kmod_rtc_v3020__242_364_rtc_device_driver_init6, ptr @rtc_device_driver_exit, ptr @rtc_probe._entry, ptr @rtc_probe._entry.6, ptr @rtc_probe._entry_ptr, ptr @rtc_probe._entry_ptr.8, ptr @rtc_device_driver, ptr @.str, ptr @v3020_gpio_ops, ptr @v3020_mmio_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @v3020_rtc_ops, ptr @v3020_gpio, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3020_gpio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3020_mmio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3020_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v3020_gpio to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtc_device_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtc_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtc_device_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_gpio = getelementptr inbounds %struct.v3020_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %use_gpio to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool4.not, ptr @v3020_mmio_ops, ptr @v3020_gpio_ops
  %3 = getelementptr inbounds %struct.v3020, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %3, align 4
  %5 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec.select, align 4
  %call9 = tail call i32 %6(ptr noundef nonnull %call.i, ptr noundef %pdev, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %read_bit = getelementptr inbounds %struct.v3020_chip_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %read_bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_bit, align 4
  %call14 = tail call zeroext i8 %10(ptr noundef nonnull %call.i) #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %read_bit.1 = getelementptr inbounds %struct.v3020_chip_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_bit.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_bit.1, align 4
  %call14.1 = tail call zeroext i8 %14(ptr noundef nonnull %call.i) #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %read_bit.2 = getelementptr inbounds %struct.v3020_chip_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read_bit.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_bit.2, align 4
  %call14.2 = tail call zeroext i8 %18(ptr noundef nonnull %call.i) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %read_bit.3 = getelementptr inbounds %struct.v3020_chip_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read_bit.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read_bit.3, align 4
  %call14.3 = tail call zeroext i8 %22(ptr noundef nonnull %call.i) #6
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %read_bit.4 = getelementptr inbounds %struct.v3020_chip_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read_bit.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_bit.4, align 4
  %call14.4 = tail call zeroext i8 %26(ptr noundef nonnull %call.i) #6
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %read_bit.5 = getelementptr inbounds %struct.v3020_chip_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read_bit.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_bit.5, align 4
  %call14.5 = tail call zeroext i8 %30(ptr noundef nonnull %call.i) #6
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %read_bit.6 = getelementptr inbounds %struct.v3020_chip_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read_bit.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_bit.6, align 4
  %call14.6 = tail call zeroext i8 %34(ptr noundef nonnull %call.i) #6
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %read_bit.7 = getelementptr inbounds %struct.v3020_chip_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_bit.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_bit.7, align 4
  %call14.7 = tail call zeroext i8 %38(ptr noundef nonnull %call.i) #6
  tail call fastcc void @v3020_set_reg(ptr noundef nonnull %call.i, i8 noundef zeroext 2, i8 noundef zeroext 51)
  %call15 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef nonnull %call.i, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %call15)
  %cmp16.not = icmp eq i8 %call15, 51
  br i1 %cmp16.not, label %if.end19, label %for.body.preheader.err_io_crit_edge

for.body.preheader.err_io_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_io

if.end19:                                         ; preds = %for.body.preheader
  tail call fastcc void @v3020_set_reg(ptr noundef nonnull %call.i, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %39 = ptrtoint ptr %use_gpio to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load21 = load i8, ptr %use_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load21)
  %tobool24.not = icmp sgt i8 %bf.load21, -1
  br i1 %tobool24.not, label %do.end40, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %gpio = getelementptr inbounds %struct.v3020, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpio, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %arrayidx29 = getelementptr %struct.gpio, ptr %41, i32 1
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx29, align 4
  %arrayidx32 = getelementptr %struct.gpio, ptr %41, i32 2
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx32, align 4
  %arrayidx35 = getelementptr %struct.gpio, ptr %41, i32 3
  %48 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx35, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #9
  br label %if.end44

do.end40:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %50 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %conv43 = zext i32 %53 to i64
  %leftshift = getelementptr inbounds %struct.v3020, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %leftshift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %leftshift, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %conv43, i32 noundef %55) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %do.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @v3020_rtc_ops, ptr noundef null) #6
  %rtc = getelementptr inbounds %struct.v3020, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call46, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %call46 to i32
  br label %err_io

err_io:                                           ; preds = %if.then49, %for.body.preheader.err_io_crit_edge
  %retval1.0 = phi i32 [ %58, %if.then49 ], [ -19, %for.body.preheader.err_io_crit_edge ]
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %unmap_io = getelementptr inbounds %struct.v3020_chip_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %unmap_io to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %unmap_io, align 4
  tail call void %62(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_io, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_io ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.v3020, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %unmap_io = getelementptr inbounds %struct.v3020_chip_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unmap_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unmap_io, align 4
  tail call void %5(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @v3020_set_reg(ptr noundef %chip, i8 noundef zeroext %address, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write_bit = getelementptr inbounds %struct.v3020_chip_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %write_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_bit, align 4
  %and = and i8 %address, 1
  tail call void %3(ptr noundef %chip, i8 noundef zeroext %and) #6
  %4 = lshr i8 %address, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_bit.1 = getelementptr inbounds %struct.v3020_chip_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write_bit.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_bit.1, align 4
  %and.1 = and i8 %4, 1
  tail call void %9(ptr noundef %chip, i8 noundef zeroext %and.1) #6
  %10 = lshr i8 %address, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_bit.2 = getelementptr inbounds %struct.v3020_chip_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write_bit.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_bit.2, align 4
  %and.2 = and i8 %10, 1
  tail call void %15(ptr noundef %chip, i8 noundef zeroext %and.2) #6
  %16 = lshr i8 %address, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %write_bit.3 = getelementptr inbounds %struct.v3020_chip_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_bit.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_bit.3, align 4
  %and.3 = and i8 %16, 1
  tail call void %21(ptr noundef %chip, i8 noundef zeroext %and.3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %address)
  %cmp5 = icmp ugt i8 %address, 13
  br i1 %cmp5, label %entry.if.end_crit_edge, label %for.cond7.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond7.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %write_bit12 = getelementptr inbounds %struct.v3020_chip_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_bit12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_bit12, align 4
  %and14 = and i8 %data, 1
  tail call void %26(ptr noundef %chip, i8 noundef zeroext %and14) #6
  %27 = lshr i8 %data, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %write_bit12.1 = getelementptr inbounds %struct.v3020_chip_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %write_bit12.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_bit12.1, align 4
  %and14.1 = and i8 %27, 1
  tail call void %32(ptr noundef %chip, i8 noundef zeroext %and14.1) #6
  %33 = lshr i8 %data, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #6
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %write_bit12.2 = getelementptr inbounds %struct.v3020_chip_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %write_bit12.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_bit12.2, align 4
  %and14.2 = and i8 %33, 1
  tail call void %38(ptr noundef %chip, i8 noundef zeroext %and14.2) #6
  %39 = lshr i8 %data, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #6
  %41 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops, align 4
  %write_bit12.3 = getelementptr inbounds %struct.v3020_chip_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %write_bit12.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_bit12.3, align 4
  %and14.3 = and i8 %39, 1
  tail call void %44(ptr noundef %chip, i8 noundef zeroext %and14.3) #6
  %45 = lshr i8 %data, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #6
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %write_bit12.4 = getelementptr inbounds %struct.v3020_chip_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_bit12.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_bit12.4, align 4
  %and14.4 = and i8 %45, 1
  tail call void %50(ptr noundef %chip, i8 noundef zeroext %and14.4) #6
  %51 = lshr i8 %data, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #6
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %write_bit12.5 = getelementptr inbounds %struct.v3020_chip_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %write_bit12.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_bit12.5, align 4
  %and14.5 = and i8 %51, 1
  tail call void %56(ptr noundef %chip, i8 noundef zeroext %and14.5) #6
  %57 = lshr i8 %data, 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #6
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %write_bit12.6 = getelementptr inbounds %struct.v3020_chip_ops, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %write_bit12.6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_bit12.6, align 4
  %and14.6 = and i8 %57, 1
  tail call void %62(ptr noundef %chip, i8 noundef zeroext %and14.6) #6
  %63 = lshr i8 %data, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #6
  %65 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops, align 4
  %write_bit12.7 = getelementptr inbounds %struct.v3020_chip_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_bit12.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_bit12.7, align 4
  tail call void %68(ptr noundef %chip, i8 noundef zeroext %63) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #6
  br label %if.end

if.end:                                           ; preds = %for.cond7.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @v3020_get_reg(ptr noundef %chip, i8 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write_bit = getelementptr inbounds %struct.v3020_chip_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %write_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_bit, align 4
  %and = and i8 %address, 1
  tail call void %3(ptr noundef %chip, i8 noundef zeroext %and) #6
  %4 = lshr i8 %address, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_bit.1 = getelementptr inbounds %struct.v3020_chip_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write_bit.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_bit.1, align 4
  %and.1 = and i8 %4, 1
  tail call void %9(ptr noundef %chip, i8 noundef zeroext %and.1) #6
  %10 = lshr i8 %address, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write_bit.2 = getelementptr inbounds %struct.v3020_chip_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write_bit.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_bit.2, align 4
  %and.2 = and i8 %10, 1
  tail call void %15(ptr noundef %chip, i8 noundef zeroext %and.2) #6
  %16 = lshr i8 %address, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %write_bit.3 = getelementptr inbounds %struct.v3020_chip_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_bit.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_bit.3, align 4
  %and.3 = and i8 %16, 1
  tail call void %21(ptr noundef %chip, i8 noundef zeroext %and.3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %read_bit = getelementptr inbounds %struct.v3020_chip_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read_bit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_bit, align 4
  %call = tail call zeroext i8 %26(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp ne i8 %call, 0
  %spec.select = zext i1 %tobool.not to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %read_bit.1 = getelementptr inbounds %struct.v3020_chip_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %read_bit.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read_bit.1, align 4
  %call.1 = tail call zeroext i8 %31(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.1)
  %tobool.not.1 = icmp eq i8 %call.1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #6
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %read_bit.2 = getelementptr inbounds %struct.v3020_chip_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %read_bit.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_bit.2, align 4
  %call.2 = tail call zeroext i8 %36(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.2)
  %tobool.not.2 = icmp eq i8 %call.2, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %read_bit.3 = getelementptr inbounds %struct.v3020_chip_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read_bit.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_bit.3, align 4
  %call.3 = tail call zeroext i8 %41(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.3)
  %tobool.not.3 = icmp eq i8 %call.3, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %read_bit.4 = getelementptr inbounds %struct.v3020_chip_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %read_bit.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read_bit.4, align 4
  %call.4 = tail call zeroext i8 %46(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.4)
  %tobool.not.4 = icmp eq i8 %call.4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #6
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %read_bit.5 = getelementptr inbounds %struct.v3020_chip_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %read_bit.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_bit.5, align 4
  %call.5 = tail call zeroext i8 %51(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.5)
  %tobool.not.5 = icmp eq i8 %call.5, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #6
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %read_bit.6 = getelementptr inbounds %struct.v3020_chip_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %read_bit.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read_bit.6, align 4
  %call.6 = tail call zeroext i8 %56(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.6)
  %tobool.not.6 = icmp eq i8 %call.6, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #6
  %58 = or i32 %spec.select, 2
  %59 = select i1 %tobool.not.1, i32 %spec.select, i32 %58
  %60 = or i32 %59, 4
  %61 = select i1 %tobool.not.2, i32 %59, i32 %60
  %62 = or i32 %61, 8
  %63 = select i1 %tobool.not.3, i32 %61, i32 %62
  %64 = or i32 %63, 16
  %65 = select i1 %tobool.not.4, i32 %63, i32 %64
  %66 = or i32 %65, 32
  %67 = select i1 %tobool.not.5, i32 %65, i32 %66
  %68 = or i32 %67, 64
  %shr8.7 = select i1 %tobool.not.6, i32 %67, i32 %68
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %read_bit.7 = getelementptr inbounds %struct.v3020_chip_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %read_bit.7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read_bit.7, align 4
  %call.7 = tail call zeroext i8 %72(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.7)
  %tobool.not.7 = icmp eq i8 %call.7, 0
  %or.7 = or i32 %shr8.7, 128
  %spec.select.7 = select i1 %tobool.not.7, i32 %shr8.7, i32 %or.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748) #6
  %conv13 = trunc i32 %spec.select.7 to i8
  ret i8 %conv13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3020_gpio_map(ptr nocapture noundef writeonly %chip, ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_cs = getelementptr inbounds %struct.v3020_platform_data, ptr %pdata, i32 0, i32 2
  %0 = ptrtoint ptr %gpio_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_cs, align 4
  store i32 %1, ptr @v3020_gpio, align 4
  %gpio_wr = getelementptr inbounds %struct.v3020_platform_data, ptr %pdata, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_wr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_wr, align 4
  store i32 %3, ptr getelementptr inbounds ([4 x %struct.gpio], ptr @v3020_gpio, i32 0, i32 1), align 4
  %gpio_rd = getelementptr inbounds %struct.v3020_platform_data, ptr %pdata, i32 0, i32 4
  %4 = ptrtoint ptr %gpio_rd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_rd, align 4
  store i32 %5, ptr getelementptr inbounds ([4 x %struct.gpio], ptr @v3020_gpio, i32 0, i32 2), align 4
  %gpio_io = getelementptr inbounds %struct.v3020_platform_data, ptr %pdata, i32 0, i32 5
  %6 = ptrtoint ptr %gpio_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio_io, align 4
  store i32 %7, ptr getelementptr inbounds ([4 x %struct.gpio], ptr @v3020_gpio, i32 0, i32 3), align 4
  %call = tail call i32 @gpio_request_array(ptr noundef nonnull @v3020_gpio, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gpio = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @v3020_gpio, ptr %gpio, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3020_gpio_unmap(ptr nocapture noundef readnone %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gpio_free_array(ptr noundef nonnull @v3020_gpio, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @v3020_gpio_read_bit(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %arrayidx = getelementptr %struct.gpio, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  %call1.i = tail call i32 @gpiod_direction_input(ptr noundef %call.i) #6
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i24 = tail call ptr @gpio_to_desc(i32 noundef %7) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i24, i32 noundef 0) #6
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio, align 4
  %arrayidx6 = getelementptr %struct.gpio, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call.i25 = tail call ptr @gpio_to_desc(i32 noundef %11) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i25, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio, align 4
  %arrayidx9 = getelementptr %struct.gpio, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %call.i26 = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  %call1.i27 = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool = icmp ne i32 %call1.i27, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %18 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio, align 4
  %arrayidx14 = getelementptr %struct.gpio, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14, align 4
  %call.i28 = tail call ptr @gpio_to_desc(i32 noundef %21) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i28, i32 noundef 1) #6
  %22 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call.i29 = tail call ptr @gpio_to_desc(i32 noundef %25) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i29, i32 noundef 1) #6
  %conv = zext i1 %tobool to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3020_gpio_write_bit(ptr nocapture noundef readonly %chip, i8 noundef zeroext %bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %arrayidx = getelementptr %struct.gpio, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = zext i8 %bit to i32
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %conv) #6
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i18 = tail call ptr @gpio_to_desc(i32 noundef %7) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i18, i32 noundef 0) #6
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio, align 4
  %arrayidx6 = getelementptr %struct.gpio, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %call.i19 = tail call ptr @gpio_to_desc(i32 noundef %11) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i19, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio, align 4
  %arrayidx9 = getelementptr %struct.gpio, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %call.i20 = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i20, i32 noundef 1) #6
  %17 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %call.i21 = tail call ptr @gpio_to_desc(i32 noundef %20) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i21, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3020_mmio_map(ptr nocapture noundef writeonly %chip, ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 8
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp1.not = icmp eq i32 %5, 512
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdata, align 4
  %leftshift4 = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 1
  %8 = ptrtoint ptr %leftshift4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %leftshift4, align 4
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call = tail call ptr @ioremap(i32 noundef %12, i32 noundef 1) #6
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %chip, align 4
  %cmp8 = icmp eq ptr %call, null
  %. = select i1 %cmp8, i32 -16, i32 0
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ -16, %if.end.return_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3020_mmio_unmap(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  tail call void @iounmap(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @v3020_mmio_read_bit(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !95
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %leftshift = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %leftshift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %leftshift, align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %conv = zext i1 %tobool to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v3020_mmio_write_bit(ptr nocapture noundef readonly %chip, i8 noundef zeroext %bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %conv = zext i8 %bit to i32
  %leftshift = getelementptr inbounds %struct.v3020, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %leftshift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leftshift, align 4
  %shl = shl i32 %conv, %1
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #6, !srcloc !98
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3020_read_time(ptr noundef %dev, ptr nocapture noundef %dt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops.i = getelementptr inbounds %struct.v3020, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_bit.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_bit.i, align 4
  tail call void %5(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %write_bit.1.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %write_bit.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_bit.1.i, align 4
  tail call void %10(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write_bit.2.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write_bit.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_bit.2.i, align 4
  tail call void %15(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %write_bit.3.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write_bit.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_bit.3.i, align 4
  tail call void %20(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %call1 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 2)
  %call4 = tail call i32 @_bcd2bin(i8 noundef zeroext %call1) #10
  %22 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call4, ptr %dt, align 4
  %call5 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 3)
  %call15 = tail call i32 @_bcd2bin(i8 noundef zeroext %call5) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call15, ptr %tm_min, align 4
  %call18 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 4)
  %call28 = tail call i32 @_bcd2bin(i8 noundef zeroext %call18) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call28, ptr %tm_hour, align 4
  %call31 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 5)
  %call41 = tail call i32 @_bcd2bin(i8 noundef zeroext %call31) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call41, ptr %tm_mday, align 4
  %call44 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 6)
  %call54 = tail call i32 @_bcd2bin(i8 noundef zeroext %call44) #10
  %sub = add i32 %call54, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %call57 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 8)
  %call67 = tail call i32 @_bcd2bin(i8 noundef zeroext %call57) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %27 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call67, ptr %tm_wday, align 4
  %call70 = tail call fastcc zeroext i8 @v3020_get_reg(ptr noundef %1, i8 noundef zeroext 7)
  %call80 = tail call i32 @_bcd2bin(i8 noundef zeroext %call70) #10
  %add83 = add i32 %call80, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add83, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body89)) #6
          to label %if.then [label %do.body89], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #6
  br label %do.body89

do.body89:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body108)) #6
          to label %if.then103 [label %do.body108], !srcloc !99

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_hour, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %30) #6
  br label %do.body108

do.body108:                                       ; preds = %if.then103, %do.body89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body127)) #6
          to label %if.then122 [label %do.body127], !srcloc !99

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_min, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %32) #6
  br label %do.body127

do.body127:                                       ; preds = %if.then122, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body146)) #6
          to label %if.then141 [label %do.body146], !srcloc !99

if.then141:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %34) #6
  br label %do.body146

do.body146:                                       ; preds = %if.then141, %do.body127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body165)) #6
          to label %if.then160 [label %do.body165], !srcloc !99

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_year, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %36) #6
  br label %do.body165

do.body165:                                       ; preds = %if.then160, %do.body146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body184)) #6
          to label %if.then179 [label %do.body184], !srcloc !99

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_mon, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %38) #6
  br label %do.body184

do.body184:                                       ; preds = %if.then179, %do.body165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.body203)) #6
          to label %if.then198 [label %do.body203], !srcloc !99

if.then198:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_mday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %40) #6
  br label %do.body203

do.body203:                                       ; preds = %if.then198, %do.body184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_read_time.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_read_time, %do.end221)) #6
          to label %if.then217 [label %do.end221], !srcloc !99

if.then217:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_read_time.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %42) #6
  br label %do.end221

do.end221:                                        ; preds = %if.then217, %do.body203
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v3020_set_time(ptr noundef %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body5)) #6
          to label %if.then [label %do.body5], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body23)) #6
          to label %if.then19 [label %do.body23], !srcloc !99

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %3) #6
  br label %do.body23

do.body23:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body41)) #6
          to label %if.then37 [label %do.body41], !srcloc !99

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %5) #6
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body59)) #6
          to label %if.then55 [label %do.body59], !srcloc !99

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %7) #6
  br label %do.body59

do.body59:                                        ; preds = %if.then55, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body77)) #6
          to label %if.then73 [label %do.body77], !srcloc !99

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %9) #6
  br label %do.body77

do.body77:                                        ; preds = %if.then73, %do.body59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %do.body95)) #6
          to label %if.then91 [label %do.body95], !srcloc !99

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %10 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %11) #6
  br label %do.body95

do.body95:                                        ; preds = %if.then91, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @v3020_set_time.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@v3020_set_time, %cond.end)) #6
          to label %if.then109 [label %cond.end], !srcloc !99

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @v3020_set_time.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %13) #6
  br label %cond.end

cond.end:                                         ; preds = %if.then109, %do.body95
  %14 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dt, align 4
  %call117 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %call117)
  %tm_min120 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min120 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min120, align 4
  %call131 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %call131)
  %tm_hour136 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour136 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_hour136, align 4
  %call147 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %call147)
  %tm_mday152 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday152 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday152, align 4
  %call163 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %call163)
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add168 = add i32 %23, 1
  %call182 = tail call zeroext i8 @_bin2bcd(i32 noundef %add168) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %call182)
  %tm_wday187 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %24 = ptrtoint ptr %tm_wday187 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_wday187, align 4
  %call198 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %call198)
  %tm_year203 = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year203 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year203, align 4
  %rem204 = srem i32 %27, 100
  %call218 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem204) #10
  tail call fastcc void @v3020_set_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %call218)
  %ops.i = getelementptr inbounds %struct.v3020, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %write_bit.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %write_bit.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_bit.i, align 4
  tail call void %31(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #6
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %write_bit.1.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %write_bit.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_bit.1.i, align 4
  tail call void %36(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #6
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %write_bit.2.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_bit.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_bit.2.i, align 4
  tail call void %41(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #6
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %write_bit.3.i = getelementptr inbounds %struct.v3020_chip_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_bit.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_bit.3.i, align 4
  tail call void %46(ptr noundef %1, i8 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_rtc_v3020__242_364_rtc_device_driver_init6, !1, !"__initcall__kmod_rtc_v3020__242_364_rtc_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-v3020.c", i32 364, i32 1}
!2 = !{ptr @__exitcall_rtc_device_driver_exit, !1, !"__exitcall_rtc_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-v3020.c", i32 366, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-v3020.c", i32 367, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-v3020.c", i32 368, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias247, !11, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-v3020.c", i32 369, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-v3020.c", i32 360, i32 11}
!14 = !{ptr @rtc_device_driver, !15, !"rtc_device_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-v3020.c", i32 356, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-v3020.c", i32 319, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-v3020.c", i32 324, i32 3}
!26 = !{ptr @rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @v3020_gpio_ops, !29, !"v3020_gpio_ops", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-v3020.c", i32 157, i32 36}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-v3020.c", i32 102, i32 28}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-v3020.c", i32 103, i32 28}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-v3020.c", i32 104, i32 28}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-v3020.c", i32 105, i32 28}
!38 = !{ptr @v3020_gpio, !39, !"v3020_gpio", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-v3020.c", i32 101, i32 20}
!40 = !{ptr @v3020_mmio_ops, !41, !"v3020_mmio_ops", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-v3020.c", i32 94, i32 36}
!42 = !{ptr @v3020_rtc_ops, !43, !"v3020_rtc_ops", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-v3020.c", i32 276, i32 35}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-v3020.c", i32 232, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug227, !45, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-v3020.c", i32 233, i32 2}
!51 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug228, !50, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-v3020.c", i32 234, i32 2}
!54 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug229, !53, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-v3020.c", i32 235, i32 2}
!57 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug230, !56, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-v3020.c", i32 236, i32 2}
!60 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug231, !59, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-v3020.c", i32 237, i32 2}
!63 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug232, !62, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-v3020.c", i32 238, i32 2}
!66 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug233, !65, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-v3020.c", i32 239, i32 2}
!69 = !{ptr @v3020_read_time.__UNIQUE_ID_ddebug234, !68, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-v3020.c", i32 249, i32 2}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug235, !71, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!74 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug236, !75, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-v3020.c", i32 250, i32 2}
!76 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug237, !77, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-v3020.c", i32 251, i32 2}
!78 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug238, !79, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-v3020.c", i32 252, i32 2}
!80 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug239, !81, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-v3020.c", i32 253, i32 2}
!82 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug240, !83, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-v3020.c", i32 254, i32 2}
!84 = !{ptr @v3020_set_time.__UNIQUE_ID_ddebug241, !85, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-v3020.c", i32 255, i32 2}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 4888707}
!96 = !{i64 2154012444}
!97 = !{i64 2154011736}
!98 = !{i64 4888289}
!99 = !{i64 2148296979, i64 2148296984, i64 2148296997, i64 2148297041, i64 2148297075, i64 2148297096}
