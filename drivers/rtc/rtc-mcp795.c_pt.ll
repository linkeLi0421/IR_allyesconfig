; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mcp795.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mcp795.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_mcp795__241_448_mcp795_driver_init6 = internal global ptr @mcp795_driver_init, section ".initcall6.init", align 4
@mcp795_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp795_spi_ids, ptr @mcp795_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp795_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcp795_driver_exit = internal global ptr @mcp795_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [45 x i8] c"rtc_mcp795.description=MCP795 RTC SPI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [48 x i8] c"rtc_mcp795.author=Josef Gajdusek <atx@atx.name>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [39 x i8] c"rtc_mcp795.file=drivers/rtc/rtc-mcp795\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"rtc_mcp795.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [28 x i8] c"rtc_mcp795.alias=spi:mcp795\00", section ".modinfo", align 1
@mcp795_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-mcp795\00", [21 x i8] zeroinitializer }, align 32
@mcp795_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,mcp795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mcp795_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unable to setup SPI\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp795_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-mcp795.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp795_probe._entry_ptr = internal global ptr @mcp795_probe._entry, section ".printk_index", align 4
@mcp795_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @mcp795_read_time, ptr @mcp795_set_time, ptr @mcp795_read_alarm, ptr @mcp795_set_alarm, ptr null, ptr @mcp795_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mcp795_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_mcp795\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Alarm support enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@mcp795_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request IRQ: %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mcp795_probe._entry_ptr.10 = internal global ptr @mcp795_probe._entry.8, section ".printk_index", align 4
@mcp795_rtcc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 72, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed reading %d bytes from address %x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp795_rtcc_read\00", [47 x i8] zeroinitializer }, align 32
@mcp795_rtcc_read._entry_ptr = internal global ptr @mcp795_rtcc_read._entry, section ".printk_index", align 4
@mcp795_rtcc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write %d bytes to address %x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp795_rtcc_write\00", [46 x i8] zeroinitializer }, align 32
@mcp795_rtcc_write._entry_ptr = internal global ptr @mcp795_rtcc_write._entry, section ".printk_index", align 4
@mcp795_read_time.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp795_read_time\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Read from mcp795: %ptR\0A\00", [40 x i8] zeroinitializer }, align 32
@mcp795_set_time.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcp795_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set mcp795: %ptR\0A\00", [46 x i8] zeroinitializer }, align 32
@mcp795_read_alarm.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcp795_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Read alarm: %ptRdr(%d) %ptRt\0A\00", [34 x i8] zeroinitializer }, align 32
@mcp795_set_alarm.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp795_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Alarm IRQ armed\0A\00", [47 x i8] zeroinitializer }, align 32
@mcp795_set_alarm.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set alarm: %ptRdr(%d) %ptRt\0A\00", [35 x i8] zeroinitializer }, align 32
@mcp795_update_alarm.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcp795_update_alarm\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s alarm\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@mcp795_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to disable alarm in IRQ (ret=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcp795_irq\00", [21 x i8] zeroinitializer }, align 32
@mcp795_irq._entry_ptr = internal global ptr @mcp795_irq._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"mcp795_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 439, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"mcp795_spi_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 433, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 441, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mcp795_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 426, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 389, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"mcp795_rtc_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 372, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 406, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 417, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 71, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 90, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 255, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 232, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 339, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 312, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 314, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 164, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [28 x i8] c"../drivers/rtc/rtc-mcp795.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 363, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_mcp795_driver_exit, ptr @__initcall__kmod_rtc_mcp795__241_448_mcp795_driver_init6, ptr @mcp795_driver_exit, ptr @mcp795_irq._entry, ptr @mcp795_irq._entry_ptr, ptr @mcp795_probe._entry, ptr @mcp795_probe._entry.8, ptr @mcp795_probe._entry_ptr, ptr @mcp795_probe._entry_ptr.10, ptr @mcp795_rtcc_read._entry, ptr @mcp795_rtcc_read._entry_ptr, ptr @mcp795_rtcc_write._entry, ptr @mcp795_rtcc_write._entry_ptr, ptr @mcp795_driver, ptr @mcp795_spi_ids, ptr @.str, ptr @mcp795_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mcp795_rtc_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_rtcc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_rtcc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp795_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp795_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp795_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp795_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %spi, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext -128) #6
  %call4 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %spi, i8 noundef zeroext 3, i8 noundef zeroext 64, i8 noundef zeroext 0)
  %call6 = tail call ptr @devm_rtc_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef nonnull @mcp795_rtc_ops, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.body12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body12:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_probe, %do.end22)) #6
          to label %if.then18 [label %do.end22], !srcloc !87

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_probe.__UNIQUE_ID_ddebug240, ptr noundef %spi, ptr noundef nonnull @.str.7) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.body12
  %call24 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %spi, i8 noundef zeroext 15, i8 noundef zeroext 8, i8 noundef zeroext 0)
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end22.dev_name.exit_crit_edge

do.end22.dev_name.exit_crit_edge:                 ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end22.dev_name.exit_crit_edge
  %retval.0.i64 = phi ptr [ %11, %if.end.i ], [ %9, %do.end22.dev_name.exit_crit_edge ]
  %call29 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %7, ptr noundef null, ptr noundef nonnull @mcp795_irq, i32 noundef 8194, ptr noundef %retval.0.i64, ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %do.end34

do.end34:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef %13, i32 noundef %call29) #9
  br label %cleanup

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 @device_init_wakeup(ptr noundef %spi, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end34, %if.end10.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %2, %if.then8 ], [ 0, %do.end34 ], [ 0, %if.else ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp795_start_oscillator(ptr noundef %dev, ptr noundef readonly %extosc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %extosc, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %extosc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extosc, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %conv = select i1 %tobool1.not, i8 0, i8 8
  %call = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext -128)
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ %call6, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %tx.i20 = alloca [257 x i8], align 1
  %tx.i = alloca [2 x i8], align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %1 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 19, ptr %tx.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %addr, ptr %1, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef nonnull %tmp, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end, label %mcp795_rtcc_read.exit

mcp795_rtcc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %conv4.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmp, align 1
  %and19 = and i8 %5, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and19, i8 %state)
  %cmp.not = icmp eq i8 %and19, %state
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %neg = xor i8 %mask, -1
  %and7 = and i8 %5, %neg
  %or = or i8 %and7, %state
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %tx.i20) #6
  %7 = getelementptr inbounds i8, ptr %tx.i20, i32 2
  %8 = getelementptr inbounds i8, ptr %tx.i20, i32 3
  %9 = call ptr @memset(ptr %8, i32 255, i32 254)
  %10 = ptrtoint ptr %tx.i20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 18, ptr %tx.i20, align 1
  %arrayidx1.i = getelementptr inbounds [257 x i8], ptr %tx.i20, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %addr, ptr %arrayidx1.i, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %13 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx.i20, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %17 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then4.spi_write.exit.i_crit_edge

if.then4.spi_write.exit.i_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.then4.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i21 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i21, label %spi_write.exit.i.mcp795_rtcc_write.exit_crit_edge, label %do.end.i22

spi_write.exit.i.mcp795_rtcc_write.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_write.exit

do.end.i22:                                       ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %conv6.i) #9
  br label %mcp795_rtcc_write.exit

mcp795_rtcc_write.exit:                           ; preds = %do.end.i22, %spi_write.exit.i.mcp795_rtcc_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx.i20) #6
  br label %cleanup

cleanup:                                          ; preds = %mcp795_rtcc_write.exit, %if.end.cleanup_crit_edge, %mcp795_rtcc_read.exit
  %retval.0 = phi i32 [ %call2.i, %mcp795_rtcc_read.exit ], [ %call.i.i.i, %mcp795_rtcc_write.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_update_alarm.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_irq, %mcp795_update_alarm.exit)) #6
          to label %if.then.i [label %mcp795_update_alarm.exit], !srcloc !87

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_update_alarm.__UNIQUE_ID_ddebug234, ptr noundef %data, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #6
  br label %mcp795_update_alarm.exit

mcp795_update_alarm.exit:                         ; preds = %if.then.i, %entry
  %call13.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %data, i8 noundef zeroext 8, i8 noundef zeroext 48, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %mcp795_update_alarm.exit.if.end_crit_edge, label %do.end

mcp795_update_alarm.exit.if.end_crit_edge:        ; preds = %mcp795_update_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %mcp795_update_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.28, i32 noundef %call13.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %mcp795_update_alarm.exit.if.end_crit_edge
  tail call void @rtc_update_irq(ptr noundef %1, i32 noundef 1, i32 noundef 160) #6
  tail call void @mutex_unlock(ptr noundef %ops_lock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp795_rtcc_write(ptr noundef %dev, i8 noundef zeroext %addr, ptr nocapture noundef readonly %data, i8 noundef zeroext %count) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %tx = alloca [257 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %tx) #6
  %0 = getelementptr inbounds i8, ptr %tx, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 255)
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %tx, align 1
  %arrayidx1 = getelementptr inbounds [257 x i8], ptr %tx, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %addr, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [257 x i8], ptr %tx, i32 0, i32 2
  %conv = zext i8 %count to i32
  %4 = call ptr @memcpy(ptr %arrayidx2, ptr %data, i32 %conv)
  %add = add nuw nsw i32 %conv, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %5 = getelementptr inbounds i8, ptr %t.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %spi_write.exit.if.end_crit_edge, label %do.end

spi_write.exit.if.end_crit_edge:                  ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_write.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_read_time(ptr noundef %dev, ptr noundef %tim) #2 align 64 {
entry:
  %tx.i = alloca [2 x i8], align 1
  %data = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %1 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 19, ptr %tx.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %1, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end, label %mcp795_rtcc_read.exit

mcp795_rtcc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %9 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = and i8 %11, 127
  %call13 = call i32 @_bcd2bin(i8 noundef zeroext %12) #10
  %13 = ptrtoint ptr %tim to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call13, ptr %tim, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %9, align 1
  %16 = and i8 %15, 127
  %call34 = call i32 @_bcd2bin(i8 noundef zeroext %16) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call34, ptr %tm_min, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %20 = and i8 %19, 63
  %call57 = call i32 @_bcd2bin(i8 noundef zeroext %20) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 2
  %21 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call57, ptr %tm_hour, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 1
  %24 = and i8 %23, 7
  %call80 = call i32 @_bcd2bin(i8 noundef zeroext %24) #10
  %sub = add i32 %call80, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 6
  %25 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %tm_wday, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %28 = and i8 %27, 63
  %call103 = call i32 @_bcd2bin(i8 noundef zeroext %28) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call103, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 1
  %32 = and i8 %31, 31
  %call126 = call i32 @_bcd2bin(i8 noundef zeroext %32) #10
  %sub129 = add i32 %call126, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 4
  %33 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub129, ptr %tm_mon, align 4
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %call142 = call i32 @_bcd2bin(i8 noundef zeroext %35) #10
  %add145 = add i32 %call142, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 5
  %36 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add145, ptr %tm_year, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_read_time.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_read_time, %cleanup)) #6
          to label %if.then151 [label %cleanup], !srcloc !87

if.then151:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_read_time.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %tim) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %if.end, %mcp795_rtcc_read.exit
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_set_time(ptr noundef %dev, ptr noundef %tim) #2 align 64 {
entry:
  %msg.i.i.i214 = alloca %struct.spi_message, align 4
  %t.i.i215 = alloca %struct.spi_transfer, align 4
  %tx.i216 = alloca [257 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %tx.i210 = alloca [257 x i8], align 1
  %tx.i = alloca [2 x i8], align 1
  %tx.i35.i = alloca [2 x i8], align 1
  %tx.i.i = alloca [2 x i8], align 1
  %data.i = alloca i8, align 1
  %data = alloca [7 x i8], align 1
  %extosc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data) #6
  %0 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %data, i32 0, i32 6
  %6 = call ptr @memset(ptr %data, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %extosc) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data.i, align 1, !annotation !89
  %call.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mcp795_stop_oscillator.exit_crit_edge

entry.mcp795_stop_oscillator.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_stop_oscillator.exit

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i.i) #6
  %8 = getelementptr inbounds [2 x i8], ptr %tx.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 19, ptr %tx.i.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %8, align 1
  %call2.i.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i, label %mcp795_rtcc_read.exit.i

mcp795_rtcc_read.exit.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  br label %mcp795_stop_oscillator.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i.i) #6
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i, align 1
  %13 = lshr i8 %12, 3
  %.lobit.i = and i8 %13, 1
  %14 = ptrtoint ptr %extosc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.lobit.i, ptr %extosc, align 1
  %call7.i = call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body.preheader.i, label %if.end4.i.mcp795_stop_oscillator.exit_crit_edge

if.end4.i.mcp795_stop_oscillator.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_stop_oscillator.exit

do.body.preheader.i:                              ; preds = %if.end4.i
  %15 = getelementptr inbounds [2 x i8], ptr %tx.i35.i, i32 0, i32 1
  call void @usleep_range_state(i32 noundef 700, i32 noundef 800, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %16 = ptrtoint ptr %tx.i35.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 19, ptr %tx.i35.i, align 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %15, align 1
  %call2.i36.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i35.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call2.i36.i, 0
  br i1 %tobool.not.i37.i, label %if.end14.i, label %do.body.preheader.i.mcp795_rtcc_read.exit39.i_crit_edge

do.body.preheader.i.mcp795_rtcc_read.exit39.i_crit_edge: ; preds = %do.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_read.exit39.i

mcp795_rtcc_read.exit39.i:                        ; preds = %do.cond.3.i.mcp795_rtcc_read.exit39.i_crit_edge, %do.cond.2.i.mcp795_rtcc_read.exit39.i_crit_edge, %do.cond.1.i.mcp795_rtcc_read.exit39.i_crit_edge, %do.cond.i.mcp795_rtcc_read.exit39.i_crit_edge, %do.body.preheader.i.mcp795_rtcc_read.exit39.i_crit_edge
  %call2.i36.lcssa.i = phi i32 [ %call2.i36.i, %do.body.preheader.i.mcp795_rtcc_read.exit39.i_crit_edge ], [ %call2.i36.1.i, %do.cond.i.mcp795_rtcc_read.exit39.i_crit_edge ], [ %call2.i36.2.i, %do.cond.1.i.mcp795_rtcc_read.exit39.i_crit_edge ], [ %call2.i36.3.i, %do.cond.2.i.mcp795_rtcc_read.exit39.i_crit_edge ], [ %call2.i36.4.i, %do.cond.3.i.mcp795_rtcc_read.exit39.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  br label %mcp795_stop_oscillator.exit

if.end14.i:                                       ; preds = %do.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 1
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not.i = icmp eq i8 %20, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end_crit_edge, label %do.cond.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.i:                                        ; preds = %if.end14.i
  call void @usleep_range_state(i32 noundef 700, i32 noundef 800, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %21 = ptrtoint ptr %tx.i35.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 19, ptr %tx.i35.i, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %15, align 1
  %call2.i36.1.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i35.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36.1.i)
  %tobool.not.i37.1.i = icmp eq i32 %call2.i36.1.i, 0
  br i1 %tobool.not.i37.1.i, label %if.end14.1.i, label %do.cond.i.mcp795_rtcc_read.exit39.i_crit_edge

do.cond.i.mcp795_rtcc_read.exit39.i_crit_edge:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_read.exit39.i

if.end14.1.i:                                     ; preds = %do.cond.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not.1.i = icmp eq i8 %25, 0
  br i1 %tobool17.not.1.i, label %if.end14.1.i.if.end_crit_edge, label %do.cond.1.i

if.end14.1.i.if.end_crit_edge:                    ; preds = %if.end14.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.1.i:                                      ; preds = %if.end14.1.i
  call void @usleep_range_state(i32 noundef 700, i32 noundef 800, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %26 = ptrtoint ptr %tx.i35.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 19, ptr %tx.i35.i, align 1
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %15, align 1
  %call2.i36.2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i35.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36.2.i)
  %tobool.not.i37.2.i = icmp eq i32 %call2.i36.2.i, 0
  br i1 %tobool.not.i37.2.i, label %if.end14.2.i, label %do.cond.1.i.mcp795_rtcc_read.exit39.i_crit_edge

do.cond.1.i.mcp795_rtcc_read.exit39.i_crit_edge:  ; preds = %do.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_read.exit39.i

if.end14.2.i:                                     ; preds = %do.cond.1.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.i, align 1
  %30 = and i8 %29, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not.2.i = icmp eq i8 %30, 0
  br i1 %tobool17.not.2.i, label %if.end14.2.i.if.end_crit_edge, label %do.cond.2.i

if.end14.2.i.if.end_crit_edge:                    ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.2.i:                                      ; preds = %if.end14.2.i
  call void @usleep_range_state(i32 noundef 700, i32 noundef 800, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %31 = ptrtoint ptr %tx.i35.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 19, ptr %tx.i35.i, align 1
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %15, align 1
  %call2.i36.3.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i35.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36.3.i)
  %tobool.not.i37.3.i = icmp eq i32 %call2.i36.3.i, 0
  br i1 %tobool.not.i37.3.i, label %if.end14.3.i, label %do.cond.2.i.mcp795_rtcc_read.exit39.i_crit_edge

do.cond.2.i.mcp795_rtcc_read.exit39.i_crit_edge:  ; preds = %do.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_read.exit39.i

if.end14.3.i:                                     ; preds = %do.cond.2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i, align 1
  %35 = and i8 %34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not.3.i = icmp eq i8 %35, 0
  br i1 %tobool17.not.3.i, label %if.end14.3.i.if.end_crit_edge, label %do.cond.3.i

if.end14.3.i.if.end_crit_edge:                    ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.cond.3.i:                                      ; preds = %if.end14.3.i
  call void @usleep_range_state(i32 noundef 700, i32 noundef 800, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %36 = ptrtoint ptr %tx.i35.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 19, ptr %tx.i35.i, align 1
  %37 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %15, align 1
  %call2.i36.4.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i35.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36.4.i)
  %tobool.not.i37.4.i = icmp eq i32 %call2.i36.4.i, 0
  br i1 %tobool.not.i37.4.i, label %if.end14.4.i, label %do.cond.3.i.mcp795_rtcc_read.exit39.i_crit_edge

do.cond.3.i.mcp795_rtcc_read.exit39.i_crit_edge:  ; preds = %do.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_rtcc_read.exit39.i

if.end14.4.i:                                     ; preds = %do.cond.3.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i35.i) #6
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data.i, align 1
  %40 = and i8 %39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool17.not.4.i = icmp eq i8 %40, 0
  br i1 %tobool17.not.4.i, label %if.end14.4.i.if.end_crit_edge, label %if.end14.4.i.mcp795_stop_oscillator.exit_crit_edge

if.end14.4.i.mcp795_stop_oscillator.exit_crit_edge: ; preds = %if.end14.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_stop_oscillator.exit

if.end14.4.i.if.end_crit_edge:                    ; preds = %if.end14.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

mcp795_stop_oscillator.exit:                      ; preds = %if.end14.4.i.mcp795_stop_oscillator.exit_crit_edge, %mcp795_rtcc_read.exit39.i, %if.end4.i.mcp795_stop_oscillator.exit_crit_edge, %mcp795_rtcc_read.exit.i, %entry.mcp795_stop_oscillator.exit_crit_edge
  %retval.0.i207 = phi i32 [ %call.i, %entry.mcp795_stop_oscillator.exit_crit_edge ], [ %call2.i.i, %mcp795_rtcc_read.exit.i ], [ %call7.i, %if.end4.i.mcp795_stop_oscillator.exit_crit_edge ], [ %call2.i36.lcssa.i, %mcp795_rtcc_read.exit39.i ], [ -5, %if.end14.4.i.mcp795_stop_oscillator.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end14.4.i.if.end_crit_edge, %if.end14.3.i.if.end_crit_edge, %if.end14.2.i.if.end_crit_edge, %if.end14.1.i.if.end_crit_edge, %if.end14.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %41 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  %42 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 19, ptr %tx.i, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %41, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef nonnull %data, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i208 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i208, label %if.end4, label %mcp795_rtcc_read.exit

mcp795_rtcc_read.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data, align 1
  %46 = and i8 %45, -128
  %47 = ptrtoint ptr %tim to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tim, align 4
  %call9 = call zeroext i8 @_bin2bcd(i32 noundef %48) #10
  %conv11 = or i8 %46, %call9
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv11, ptr %data, align 1
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %0, align 1
  %52 = and i8 %51, -128
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 1
  %53 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm_min, align 4
  %call26 = call zeroext i8 @_bin2bcd(i32 noundef %54) #10
  %conv31 = or i8 %52, %call26
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv31, ptr %0, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 2
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_hour, align 4
  %call43 = call zeroext i8 @_bin2bcd(i32 noundef %57) #10
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call43, ptr %1, align 1
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %2, align 1
  %61 = and i8 %60, -8
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 6
  %62 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_wday, align 4
  %add52 = add i32 %63, 1
  %call66 = call zeroext i8 @_bin2bcd(i32 noundef %add52) #10
  %conv71 = or i8 %61, %call66
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv71, ptr %2, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 3
  %65 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_mday, align 4
  %call83 = call zeroext i8 @_bin2bcd(i32 noundef %66) #10
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %call83, ptr %3, align 1
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %4, align 1
  %70 = and i8 %69, 32
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 4
  %71 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tm_mon, align 4
  %add92 = add i32 %72, 1
  %call106 = call zeroext i8 @_bin2bcd(i32 noundef %add92) #10
  %conv111 = or i8 %70, %call106
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv111, ptr %4, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tim, i32 0, i32 5
  %74 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %75)
  %cmp = icmp sgt i32 %75, 100
  br i1 %cmp, label %if.then114, label %if.end4.cond.end130_crit_edge

if.end4.cond.end130_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end130

if.then114:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %75, -100
  %76 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %sub, ptr %tm_year, align 4
  br label %cond.end130

cond.end130:                                      ; preds = %if.then114, %if.end4.cond.end130_crit_edge
  %77 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tm_year, align 4
  %call128 = call zeroext i8 @_bin2bcd(i32 noundef %78) #10
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %call128, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %tx.i210) #6
  %80 = getelementptr inbounds i8, ptr %tx.i210, i32 2
  %81 = ptrtoint ptr %tx.i210 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 18, ptr %tx.i210, align 1
  %arrayidx1.i = getelementptr inbounds [257 x i8], ptr %tx.i210, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %arrayidx1.i, align 1
  %83 = getelementptr inbounds i8, ptr %tx.i210, i32 7
  %84 = call ptr @memset(ptr %83, i32 255, i32 250)
  %85 = call ptr @memcpy(ptr %80, ptr %data, i32 5)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %86 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %87 = call ptr @memset(ptr %86, i32 0, i32 92)
  %88 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %tx.i210, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 7, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %90 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 40)
  %92 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %94 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %cond.end130.spi_write.exit.i_crit_edge

cond.end130.spi_write.exit.i_crit_edge:           ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %cond.end130
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %cond.end130.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i211 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i211, label %if.end138, label %mcp795_rtcc_write.exit

mcp795_rtcc_write.exit:                           ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx.i210) #6
  br label %cleanup

if.end138:                                        ; preds = %spi_write.exit.i
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx.i210) #6
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %tx.i216) #6
  %100 = getelementptr inbounds i8, ptr %tx.i216, i32 2
  %101 = getelementptr inbounds i8, ptr %tx.i216, i32 4
  %102 = call ptr @memset(ptr %101, i32 255, i32 253)
  %103 = ptrtoint ptr %tx.i216 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 18, ptr %tx.i216, align 1
  %arrayidx1.i217 = getelementptr inbounds [257 x i8], ptr %tx.i216, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx1.i217 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 6, ptr %arrayidx1.i217, align 1
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %4, align 1
  %107 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 2)
  store i16 %106, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i215) #6
  %108 = getelementptr inbounds i8, ptr %t.i.i215, i32 4
  %109 = call ptr @memset(ptr %108, i32 0, i32 92)
  %110 = ptrtoint ptr %t.i.i215 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %tx.i216, ptr %t.i.i215, align 4
  %len1.i.i219 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i215, i32 0, i32 2
  %111 = ptrtoint ptr %len1.i.i219 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %len1.i.i219, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i214) #6
  %112 = getelementptr inbounds i8, ptr %msg.i.i.i214, i32 8
  %113 = call ptr @memset(ptr %112, i32 0, i32 40)
  %114 = ptrtoint ptr %msg.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %msg.i.i.i214, ptr %msg.i.i.i214, align 4
  %prev.i.i.i.i.i.i.i220 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i214, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i.i.i.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %msg.i.i.i214, ptr %prev.i.i.i.i.i.i.i220, align 4
  %resources.i.i.i.i.i.i221 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i214, i32 0, i32 10
  %116 = ptrtoint ptr %resources.i.i.i.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %resources.i.i.i.i.i.i221, ptr %resources.i.i.i.i.i.i221, align 4
  %prev.i2.i.i.i.i.i.i222 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i214, i32 0, i32 10, i32 1
  %117 = ptrtoint ptr %prev.i2.i.i.i.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %resources.i.i.i.i.i.i221, ptr %prev.i2.i.i.i.i.i.i222, align 4
  %transfer_list.i.i.i.i.i223 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i215, i32 0, i32 18
  %call.i.i.i.i.i.i.i224 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i223, ptr noundef nonnull %msg.i.i.i214, ptr noundef nonnull %msg.i.i.i214) #6
  br i1 %call.i.i.i.i.i.i.i224, label %if.end.i.i.i.i.i.i.i226, label %if.end138.spi_write.exit.i229_crit_edge

if.end138.spi_write.exit.i229_crit_edge:          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i229

if.end.i.i.i.i.i.i.i226:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %prev.i.i.i.i.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %transfer_list.i.i.i.i.i223, ptr %prev.i.i.i.i.i.i.i220, align 4
  %119 = ptrtoint ptr %transfer_list.i.i.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %msg.i.i.i214, ptr %transfer_list.i.i.i.i.i223, align 4
  %prev3.i.i.i.i.i.i.i225 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i215, i32 0, i32 18, i32 1
  %120 = ptrtoint ptr %prev3.i.i.i.i.i.i.i225 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %msg.i.i.i214, ptr %prev3.i.i.i.i.i.i.i225, align 4
  %121 = ptrtoint ptr %msg.i.i.i214 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %transfer_list.i.i.i.i.i223, ptr %msg.i.i.i214, align 4
  br label %spi_write.exit.i229

spi_write.exit.i229:                              ; preds = %if.end.i.i.i.i.i.i.i226, %if.end138.spi_write.exit.i229_crit_edge
  %call.i.i.i227 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i.i214) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i214) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i215) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i227)
  %tobool.not.i228 = icmp eq i32 %call.i.i.i227, 0
  br i1 %tobool.not.i228, label %if.end143, label %mcp795_rtcc_write.exit232

mcp795_rtcc_write.exit232:                        ; preds = %spi_write.exit.i229
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 6) #9
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx.i216) #6
  br label %cleanup

if.end143:                                        ; preds = %spi_write.exit.i229
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %tx.i216) #6
  %122 = ptrtoint ptr %extosc to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %extosc, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool144.not = icmp eq i8 %123, 0
  %extosc. = select i1 %tobool144.not, ptr null, ptr %extosc
  %call150 = call fastcc i32 @mcp795_start_oscillator(ptr noundef %dev, ptr noundef %extosc.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.body, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_set_time.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_set_time, %cleanup)) #6
          to label %if.then159 [label %cleanup], !srcloc !87

if.then159:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_set_time.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %tim) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %do.body, %if.end143.cleanup_crit_edge, %mcp795_rtcc_write.exit232, %mcp795_rtcc_write.exit, %mcp795_rtcc_read.exit, %mcp795_stop_oscillator.exit
  %retval.0 = phi i32 [ %retval.0.i207, %mcp795_stop_oscillator.exit ], [ %call2.i, %mcp795_rtcc_read.exit ], [ %call.i.i.i, %mcp795_rtcc_write.exit ], [ %call.i.i.i227, %mcp795_rtcc_write.exit232 ], [ %call150, %if.end143.cleanup_crit_edge ], [ 0, %if.then159 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %extosc) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_read_alarm(ptr noundef %dev, ptr noundef %alm) #2 align 64 {
entry:
  %tx.i = alloca [2 x i8], align 1
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %1 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  %2 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 19, ptr %tx.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %1, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef nonnull %data, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end, label %mcp795_rtcc_read.exit

mcp795_rtcc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %8 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %11 = and i8 %10, 127
  %call13 = call i32 @_bcd2bin(i8 noundef zeroext %11) #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %12 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call13, ptr %time, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %8, align 1
  %15 = and i8 %14, 127
  %call34 = call i32 @_bcd2bin(i8 noundef zeroext %15) #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call34, ptr %tm_min, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %7, align 1
  %19 = and i8 %18, 31
  %call58 = call i32 @_bcd2bin(i8 noundef zeroext %19) #10
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call58, ptr %tm_hour, align 4
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %6, align 1
  %23 = and i8 %22, 7
  %call82 = call i32 @_bcd2bin(i8 noundef zeroext %23) #10
  %sub = add i32 %call82, -1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %tm_wday, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  %27 = and i8 %26, 63
  %call106 = call i32 @_bcd2bin(i8 noundef zeroext %27) #10
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call106, ptr %tm_mday, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 31
  %call130 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %sub133 = add i32 %call130, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub133, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %33 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %tm_year, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 8
  %34 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %tm_isdst, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %tm_yday, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_read_alarm.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_read_alarm, %cleanup)) #6
          to label %if.then143 [label %cleanup], !srcloc !87

if.then143:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_read_alarm.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %time, i32 noundef %37, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.end, %mcp795_rtcc_read.exit
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #6
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_set_alarm(ptr noundef %dev, ptr noundef %alm) #2 align 64 {
entry:
  %tx.i = alloca [2 x i8], align 1
  %now_tm = alloca %struct.rtc_time, align 4
  %tmp = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now_tm) #6
  %0 = call ptr @memset(ptr %now_tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tmp) #6
  %1 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %tmp, i32 0, i32 5
  %6 = call ptr @memset(ptr %tmp, i32 255, i32 6)
  %call = call i32 @mcp795_read_time(ptr noundef %dev, ptr noundef nonnull %now_tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now_tm) #6
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %call2 = call i64 @rtc_tm_to_time64(ptr noundef %time) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %call1)
  %cmp.not = icmp sgt i64 %call2, %call1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub = sub i64 %call2, %call1
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %7 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tm_year, align 4
  %rem.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %8, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.i.not = and i1 %tobool.not.i, %tobool2.not.i
  %rem3.i = urem i32 %8, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i = icmp eq i32 %rem3.i, 0
  %or.cond = select i1 %or.cond.i.not, i1 true, i1 %tobool4.not.i
  %9 = select i1 %or.cond, i64 31622400, i64 31536000
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %9)
  %cmp8.not = icmp slt i64 %sub, %9
  br i1 %cmp8.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_update_alarm.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_set_alarm, %mcp795_update_alarm.exit)) #6
          to label %if.then.i [label %mcp795_update_alarm.exit], !srcloc !87

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_update_alarm.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27) #6
  br label %mcp795_update_alarm.exit

mcp795_update_alarm.exit:                         ; preds = %if.then.i, %if.end11
  %call13.i = call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 48, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool13.not = icmp eq i32 %call13.i, 0
  br i1 %tobool13.not, label %if.end15, label %mcp795_update_alarm.exit.cleanup_crit_edge

mcp795_update_alarm.exit.cleanup_crit_edge:       ; preds = %mcp795_update_alarm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %mcp795_update_alarm.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  %11 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 19, ptr %tx.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %10, align 1
  %call2.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %tx.i, i32 noundef 2, ptr noundef nonnull %tmp, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i269 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i269, label %if.end19, label %mcp795_rtcc_read.exit

mcp795_rtcc_read.exit:                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #6
  %13 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tm_year, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tm_isdst, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %tm_yday, align 4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp, align 1
  %18 = and i8 %17, -128
  %19 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time, align 4
  %call34 = call zeroext i8 @_bin2bcd(i32 noundef %20) #10
  %conv36 = or i8 %18, %call34
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv36, ptr %tmp, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %24 = and i8 %23, -128
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_min, align 4
  %call55 = call zeroext i8 @_bin2bcd(i32 noundef %26) #10
  %conv60 = or i8 %24, %call55
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv60, ptr %1, align 1
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %30 = and i8 %29, -32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_hour, align 4
  %call79 = call zeroext i8 @_bin2bcd(i32 noundef %32) #10
  %conv84 = or i8 %30, %call79
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv84, ptr %2, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %36 = and i8 %35, -128
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 6
  %37 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_wday, align 4
  %add90 = add i32 %38, 1
  %call107 = call zeroext i8 @_bin2bcd(i32 noundef %add90) #10
  %conv112 = or i8 %36, %call107
  %39 = or i8 %conv112, 112
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %3, align 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %4, align 1
  %43 = and i8 %42, -64
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mday, align 4
  %call135 = call zeroext i8 @_bin2bcd(i32 noundef %45) #10
  %conv140 = or i8 %43, %call135
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv140, ptr %4, align 1
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  %49 = and i8 %48, -32
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_mon, align 4
  %add146 = add i32 %51, 1
  %call163 = call zeroext i8 @_bin2bcd(i32 noundef %add146) #10
  %conv168 = or i8 %49, %call163
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv168, ptr %5, align 1
  %call171 = call fastcc i32 @mcp795_rtcc_write(ptr noundef %dev, i8 noundef zeroext 12, ptr noundef nonnull %tmp, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end174, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end174:                                        ; preds = %if.end19
  %53 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool175.not = icmp eq i8 %54, 0
  br i1 %tobool175.not, label %if.end174.do.body190_crit_edge, label %if.then176

if.end174.do.body190_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body190

if.then176:                                       ; preds = %if.end174
  %call177 = call fastcc i32 @mcp795_update_alarm(ptr noundef %dev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %do.body, label %if.then176.cleanup_crit_edge

if.then176.cleanup_crit_edge:                     ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_set_alarm.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_set_alarm, %do.body190)) #6
          to label %if.then187 [label %do.body190], !srcloc !87

if.then187:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_set_alarm.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.22) #6
  br label %do.body190

do.body190:                                       ; preds = %if.then187, %do.body, %if.end174.do.body190_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_set_alarm.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_set_alarm, %cleanup)) #6
          to label %if.then204 [label %cleanup], !srcloc !87

if.then204:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_set_alarm.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %time, i32 noundef %56, ptr noundef %time) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then204, %do.body190, %if.then176.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %mcp795_rtcc_read.exit, %mcp795_update_alarm.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -33, %if.end4.cleanup_crit_edge ], [ %call13.i, %mcp795_update_alarm.exit.cleanup_crit_edge ], [ %call2.i, %mcp795_rtcc_read.exit ], [ %call171, %if.end19.cleanup_crit_edge ], [ %call177, %if.then176.cleanup_crit_edge ], [ 0, %if.then204 ], [ 0, %do.body190 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now_tm) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp795_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_update_alarm.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_alarm_irq_enable, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !87

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool.not, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_update_alarm.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  br i1 %tobool.not, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.end.i
  %call8.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then7.i.mcp795_update_alarm.exit_crit_edge

if.then7.i.mcp795_update_alarm.exit_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcp795_update_alarm.exit

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 16) #6
  br label %mcp795_update_alarm.exit

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 48, i8 noundef zeroext 0) #6
  br label %mcp795_update_alarm.exit

mcp795_update_alarm.exit:                         ; preds = %if.else.i, %if.end11.i, %if.then7.i.mcp795_update_alarm.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.then7.i.mcp795_update_alarm.exit_crit_edge ], [ %call12.i, %if.end11.i ], [ %call13.i, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp795_update_alarm(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp795_update_alarm.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp795_update_alarm, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp795_update_alarm.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %enable, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  %call8 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext 8, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 16)
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call fastcc i32 @mcp795_rtcc_set_bits(ptr noundef %dev, i8 noundef zeroext 8, i8 noundef zeroext 48, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end11, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7.cleanup_crit_edge ], [ %call12, %if.end11 ], [ %call13, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_rtc_mcp795__241_448_mcp795_driver_init6, !1, !"__initcall__kmod_rtc_mcp795__241_448_mcp795_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mcp795.c", i32 448, i32 1}
!2 = !{ptr @__exitcall_mcp795_driver_exit, !1, !"__exitcall_mcp795_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-mcp795.c", i32 450, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-mcp795.c", i32 451, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-mcp795.c", i32 452, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias246, !11, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-mcp795.c", i32 453, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-mcp795.c", i32 441, i32 13}
!14 = !{ptr @mcp795_driver, !15, !"mcp795_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-mcp795.c", i32 439, i32 26}
!16 = !{ptr @mcp795_spi_ids, !17, !"mcp795_spi_ids", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-mcp795.c", i32 433, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-mcp795.c", i32 389, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mcp795_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mcp795_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-mcp795.c", i32 406, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mcp795_probe.__UNIQUE_ID_ddebug240, !27, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-mcp795.c", i32 417, i32 4}
!32 = !{ptr @mcp795_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mcp795_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-mcp795.c", i32 71, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mcp795_rtcc_read._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mcp795_rtcc_read._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-mcp795.c", i32 90, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mcp795_rtcc_write._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mcp795_rtcc_write._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mcp795_rtc_ops, !45, !"mcp795_rtc_ops", i1 false, i1 false}
!45 = !{!"../drivers/rtc/rtc-mcp795.c", i32 372, i32 35}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-mcp795.c", i32 255, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mcp795_read_time.__UNIQUE_ID_ddebug236, !47, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-mcp795.c", i32 232, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mcp795_set_time.__UNIQUE_ID_ddebug235, !51, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-mcp795.c", i32 339, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mcp795_read_alarm.__UNIQUE_ID_ddebug239, !55, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/rtc/rtc-mcp795.c", i32 312, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mcp795_set_alarm.__UNIQUE_ID_ddebug237, !59, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-mcp795.c", i32 314, i32 2}
!64 = !{ptr @mcp795_set_alarm.__UNIQUE_ID_ddebug238, !63, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-mcp795.c", i32 164, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mcp795_update_alarm.__UNIQUE_ID_ddebug234, !66, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!69 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-mcp795.c", i32 363, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mcp795_irq._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mcp795_irq._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mcp795_of_match, !77, !"mcp795_of_match", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-mcp795.c", i32 426, i32 34}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148962885, i64 2148962890, i64 2148962903, i64 2148962947, i64 2148962981, i64 2148963002}
!88 = !{i8 0, i8 2}
!89 = !{!"auto-init"}
